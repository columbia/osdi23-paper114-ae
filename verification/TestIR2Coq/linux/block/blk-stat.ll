; ModuleID = 'block/blk-stat.c'
source_filename = "block/blk-stat.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpumask = type { [4 x i64] }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.72, %union.anon.73, %union.anon.74, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.77, void (%struct.request*, i8)*, i8* }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, {}*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.37, %union.anon.38, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.module = type opaque
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type { %struct.list_head, %struct.spinlock, i8 }
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type opaque
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.21, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.56 }
%union.anon.56 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.58 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.52, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.ucounts = type opaque
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.51, i32, [12 x i8] }
%union.anon.51 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.4, %union.anon.66, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.66 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.53, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.53 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.19, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.20, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.19 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.20 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.60, %struct.qspinlock }
%union.anon.60 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
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
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.26, i32 }
%union.anon.26 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.mtd_info = type opaque
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
%struct.qstr = type { %union.anon.22, i8* }
%union.anon.22 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.67 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.54, %struct.list_head, %struct.list_head, %union.anon.55 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }
%struct.blk_mq_ctx = type { %struct.anon.3, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.3 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.lockdep_map = type {}
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.36, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.36 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { %struct.rb_node }
%union.anon.74 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.77 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }

@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_rq_stat_init(%struct.blk_rq_stat* nocapture noundef writeonly %stat) local_unnamed_addr #0 {
entry:
  %min = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 1
  store i64 -1, i64* %min, align 8
  %mean = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 0
  store i64 0, i64* %mean, align 8
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 3
  store i32 0, i32* %nr_samples, align 8
  %max = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 2
  store i64 0, i64* %max, align 8
  %batch = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 4
  store i64 0, i64* %batch, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_rq_stat_sum(%struct.blk_rq_stat* nocapture noundef %dst, %struct.blk_rq_stat* nocapture noundef readonly %src) local_unnamed_addr #1 {
entry:
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %src, i64 0, i32 3
  %0 = load i32, i32* %nr_samples, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %min = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %dst, i64 0, i32 1
  %1 = load i64, i64* %min, align 8
  %min1 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %src, i64 0, i32 1
  %2 = load i64, i64* %min1, align 8
  %cmp = icmp ult i64 %1, %2
  %cond = select i1 %cmp, i64 %1, i64 %2
  store i64 %cond, i64* %min, align 8
  %max = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %dst, i64 0, i32 2
  %3 = load i64, i64* %max, align 8
  %max3 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %src, i64 0, i32 2
  %4 = load i64, i64* %max3, align 8
  %cmp5 = icmp ugt i64 %3, %4
  %cond9 = select i1 %cmp5, i64 %3, i64 %4
  store i64 %cond9, i64* %max, align 8
  %batch = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %src, i64 0, i32 4
  %5 = load i64, i64* %batch, align 8
  %mean = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %dst, i64 0, i32 0
  %6 = load i64, i64* %mean, align 8
  %nr_samples11 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %dst, i64 0, i32 3
  %7 = load i32, i32* %nr_samples11, align 8
  %conv = zext i32 %7 to i64
  %mul = mul i64 %6, %conv
  %add = add i64 %mul, %5
  %8 = load i32, i32* %nr_samples, align 8
  %add14 = add i32 %8, %7
  %call = call fastcc i64 @div_u64(i64 noundef %add, i32 noundef %add14) #14
  store i64 %call, i64* %mean, align 8
  %9 = load i32, i32* %nr_samples, align 8
  %10 = load i32, i32* %nr_samples11, align 8
  %add18 = add i32 %10, %9
  store i32 %add18, i32* %nr_samples11, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #3 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* noundef nonnull %remainder) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_rq_stat_add(%struct.blk_rq_stat* nocapture noundef %stat, i64 noundef %value) local_unnamed_addr #4 {
entry:
  %min = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 1
  %0 = load i64, i64* %min, align 8
  %cmp = icmp ult i64 %0, %value
  %cond = select i1 %cmp, i64 %0, i64 %value
  store i64 %cond, i64* %min, align 8
  %max = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 2
  %1 = load i64, i64* %max, align 8
  %cmp3 = icmp ugt i64 %1, %value
  %cond7 = select i1 %cmp3, i64 %1, i64 %value
  store i64 %cond7, i64* %max, align 8
  %batch = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 4
  %2 = load i64, i64* %batch, align 8
  %add = add i64 %2, %value
  store i64 %add, i64* %batch, align 8
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %stat, i64 0, i32 3
  %3 = load i32, i32* %nr_samples, align 8
  %inc = add i32 %3, 1
  store i32 %inc, i32* %nr_samples, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_stat_add(%struct.request* noundef %rq, i64 noundef %now) local_unnamed_addr #5 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %io_start_time_ns = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 18
  %1 = load i64, i64* %io_start_time_ns, align 8
  %2 = call i64 @llvm.usub.sat.i64(i64 %now, i64 %1)
  call fastcc void @__rcu_read_lock() #16
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %stats = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 3
  %5 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %next = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %5, i64 0, i32 0, i32 0
  %cb.0.in68 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %callbacks1469 = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %5, i64 0, i32 0
  %cmp15.not70 = icmp eq %struct.list_head* %cb.0.in68, %callbacks1469
  br i1 %cmp15.not70, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %cb.0.in71 = phi %struct.list_head* [ %cb.0.in68, %for.body.lr.ph ], [ %cb.0.in, %for.inc ]
  %cb.0 = bitcast %struct.list_head* %cb.0.in71 to %struct.blk_stat_callback*
  %call16 = call fastcc i1 @blk_stat_is_active(%struct.blk_stat_callback* noundef %cb.0) #14
  br i1 %call16, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %bucket_fn = getelementptr inbounds %struct.list_head, %struct.list_head* %cb.0.in71, i64 4
  %6 = bitcast %struct.list_head* %bucket_fn to i32 (%struct.request*)**
  %7 = load i32 (%struct.request*)*, i32 (%struct.request*)** %6, align 8
  %call17 = call i32 %7(%struct.request* noundef %rq) #16
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %for.inc, label %do.body21

do.body21:                                        ; preds = %if.end
  %cpu_stat = getelementptr inbounds %struct.list_head, %struct.list_head* %cb.0.in71, i64 3, i32 1
  %8 = bitcast %struct.list_head** %cpu_stat to %struct.blk_rq_stat**
  %9 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %8, align 8
  %10 = ptrtoint %struct.blk_rq_stat* %9 to i64
  %11 = load i64, i64* %arrayidx, align 8
  %add28 = add i64 %11, %10
  %12 = inttoptr i64 %add28 to %struct.blk_rq_stat*
  %idxprom2967 = zext i32 %call17 to i64
  %arrayidx30 = getelementptr %struct.blk_rq_stat, %struct.blk_rq_stat* %12, i64 %idxprom2967
  call void @blk_rq_stat_add(%struct.blk_rq_stat* noundef %arrayidx30, i64 noundef %2) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body, %do.body21
  %next37 = getelementptr %struct.list_head, %struct.list_head* %cb.0.in71, i64 0, i32 0
  %cb.0.in = load volatile %struct.list_head*, %struct.list_head** %next37, align 8
  %13 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %callbacks14 = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %13, i64 0, i32 0
  %cmp15.not = icmp eq %struct.list_head* %cb.0.in, %callbacks14
  br i1 %cmp15.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  call fastcc void @rcu_read_unlock() #14
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !10
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_stat_is_active(%struct.blk_stat_callback* noundef %cb) unnamed_addr #7 {
entry:
  %timer = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 1
  %call = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #14
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.blk_stat_callback* @blk_stat_alloc_callback(void (%struct.blk_stat_callback*)* noundef %timer_fn, i32 (%struct.request*)* noundef %bucket_fn, i32 noundef %buckets, i8* noundef %data) local_unnamed_addr #5 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #16
  %1 = bitcast i8* %call.i.i to %struct.blk_stat_callback*
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i32 %buckets to i64
  %call1 = call fastcc i8* @kmalloc_array(i64 noundef %conv) #14
  %stat = getelementptr inbounds i8, i8* %call.i.i, i64 80
  %2 = bitcast i8* %stat to i8**
  store i8* %call1, i8** %2, align 8
  %tobool3.not = icmp eq i8* %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call.i.i) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mul = mul nuw nsw i64 %conv, 40
  %call7 = call i8* @__alloc_percpu(i64 noundef %mul, i64 noundef 8) #16
  %cpu_stat = getelementptr inbounds i8, i8* %call.i.i, i64 56
  %3 = bitcast i8* %cpu_stat to i8**
  store i8* %call7, i8** %3, align 8
  %tobool9.not = icmp eq i8* %call7, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @kfree(i8* noundef nonnull %call1) #16
  call void @kfree(i8* noundef nonnull %call.i.i) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %timer_fn13 = getelementptr inbounds i8, i8* %call.i.i, i64 88
  %4 = bitcast i8* %timer_fn13 to void (%struct.blk_stat_callback*)**
  store void (%struct.blk_stat_callback*)* %timer_fn, void (%struct.blk_stat_callback*)** %4, align 8
  %bucket_fn14 = getelementptr inbounds i8, i8* %call.i.i, i64 64
  %5 = bitcast i8* %bucket_fn14 to i32 (%struct.request*)**
  store i32 (%struct.request*)* %bucket_fn, i32 (%struct.request*)** %5, align 8
  %data15 = getelementptr inbounds i8, i8* %call.i.i, i64 96
  %6 = bitcast i8* %data15 to i8**
  store i8* %data, i8** %6, align 8
  %buckets16 = getelementptr inbounds i8, i8* %call.i.i, i64 72
  %7 = bitcast i8* %buckets16 to i32*
  store i32 %buckets, i32* %7, align 8
  %timer = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %8 = bitcast i8* %timer to %struct.timer_list*
  call void @init_timer_key(%struct.timer_list* noundef %8, void (%struct.timer_list*)* noundef nonnull @blk_stat_timer_fn, i32 noundef 0, i8* noundef null, %struct.lock_class_key* noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then10, %if.then4
  %retval.0 = phi %struct.blk_stat_callback* [ %1, %if.end12 ], [ null, %if.then10 ], [ null, %if.then4 ], [ null, %entry ]
  ret %struct.blk_stat_callback* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #5 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 40)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_stat_timer_fn(%struct.timer_list* noundef %t) #5 {
entry:
  %add.ptr = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -1, i32 2
  %buckets = getelementptr inbounds void (%struct.timer_list*)*, void (%struct.timer_list*)** %add.ptr, i64 9
  %0 = bitcast void (%struct.timer_list*)** %buckets to i32*
  %1 = load i32, i32* %0, align 8
  %cmp50.not = icmp eq i32 %1, 0
  br i1 %cmp50.not, label %for.cond1.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %stat = getelementptr inbounds void (%struct.timer_list*)*, void (%struct.timer_list*)** %add.ptr, i64 10
  %2 = bitcast void (%struct.timer_list*)** %stat to %struct.blk_rq_stat**
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body, %entry
  %3 = phi i32 [ 0, %entry ], [ %8, %for.body ]
  %call54 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #18
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp255 = icmp ult i32 %call54, %4
  br i1 %cmp255, label %for.body3.lr.ph, label %for.end26

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %cpu_stat8 = getelementptr inbounds void (%struct.timer_list*)*, void (%struct.timer_list*)** %add.ptr, i64 7
  %5 = bitcast void (%struct.timer_list*)** %cpu_stat8 to %struct.blk_rq_stat**
  %stat16 = getelementptr inbounds void (%struct.timer_list*)*, void (%struct.timer_list*)** %add.ptr, i64 10
  %6 = bitcast void (%struct.timer_list*)** %stat16 to %struct.blk_rq_stat**
  br label %for.body3

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %2, align 8
  %arrayidx = getelementptr %struct.blk_rq_stat, %struct.blk_rq_stat* %7, i64 %indvars.iv
  call void @blk_rq_stat_init(%struct.blk_rq_stat* noundef %arrayidx) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, i32* %0, align 8
  %9 = zext i32 %8 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %9
  br i1 %cmp, label %for.body, label %for.cond1.preheader

for.cond1.loopexit.loopexit:                      ; preds = %for.body15
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond1.loopexit

for.cond1.loopexit:                               ; preds = %for.cond1.loopexit.loopexit, %for.body3
  %10 = phi i32 [ %.pre, %for.cond1.loopexit.loopexit ], [ %12, %for.body3 ]
  %11 = phi i32 [ %19, %for.cond1.loopexit.loopexit ], [ 0, %for.body3 ]
  %call = call i32 @cpumask_next(i32 noundef %call56, %struct.cpumask* noundef nonnull @__cpu_online_mask) #18
  %cmp2 = icmp ult i32 %call, %10
  br i1 %cmp2, label %for.body3, label %for.end26

for.body3:                                        ; preds = %for.body3.lr.ph, %for.cond1.loopexit
  %12 = phi i32 [ %4, %for.body3.lr.ph ], [ %10, %for.cond1.loopexit ]
  %13 = phi i32 [ %3, %for.body3.lr.ph ], [ %11, %for.cond1.loopexit ]
  %call56 = phi i32 [ %call54, %for.body3.lr.ph ], [ %call, %for.cond1.loopexit ]
  %14 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %5, align 8
  %15 = ptrtoint %struct.blk_rq_stat* %14 to i64
  %idxprom10 = sext i32 %call56 to i64
  %arrayidx11 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom10
  %16 = load i64, i64* %arrayidx11, align 8
  %add = add i64 %16, %15
  %17 = inttoptr i64 %add to %struct.blk_rq_stat*
  %cmp1452.not = icmp eq i32 %13, 0
  br i1 %cmp1452.not, label %for.cond1.loopexit, label %for.body15

for.body15:                                       ; preds = %for.body3, %for.body15
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body15 ], [ 0, %for.body3 ]
  %18 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %6, align 8
  %arrayidx18 = getelementptr %struct.blk_rq_stat, %struct.blk_rq_stat* %18, i64 %indvars.iv58
  %arrayidx20 = getelementptr %struct.blk_rq_stat, %struct.blk_rq_stat* %17, i64 %indvars.iv58
  call void @blk_rq_stat_sum(%struct.blk_rq_stat* noundef %arrayidx18, %struct.blk_rq_stat* noundef %arrayidx20) #14
  call void @blk_rq_stat_init(%struct.blk_rq_stat* noundef %arrayidx20) #14
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %19 = load i32, i32* %0, align 8
  %20 = zext i32 %19 to i64
  %cmp14 = icmp ult i64 %indvars.iv.next59, %20
  br i1 %cmp14, label %for.body15, label %for.cond1.loopexit.loopexit

for.end26:                                        ; preds = %for.cond1.loopexit, %for.cond1.preheader
  %21 = bitcast void (%struct.timer_list*)** %add.ptr to %struct.blk_stat_callback*
  %timer_fn = getelementptr inbounds void (%struct.timer_list*)*, void (%struct.timer_list*)** %add.ptr, i64 11
  %22 = bitcast void (%struct.timer_list*)** %timer_fn to void (%struct.blk_stat_callback*)**
  %23 = load void (%struct.blk_stat_callback*)*, void (%struct.blk_stat_callback*)** %22, align 8
  call void %23(%struct.blk_stat_callback* noundef %21) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_stat_add_callback(%struct.request_queue* noundef %q, %struct.blk_stat_callback* noundef %cb) local_unnamed_addr #5 {
entry:
  %call40 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp41 = icmp ult i32 %call40, %0
  br i1 %cmp41, label %for.body.lr.ph, label %do.body10

for.body.lr.ph:                                   ; preds = %entry
  %cpu_stat1 = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 2
  %buckets = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 4
  %.pre = load i32, i32* %buckets, align 8
  br label %for.body

for.cond.loopexit.loopexit:                       ; preds = %for.body5
  %.pre44 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond.loopexit

for.cond.loopexit:                                ; preds = %for.cond.loopexit.loopexit, %for.body
  %1 = phi i32 [ %.pre44, %for.cond.loopexit.loopexit ], [ %3, %for.body ]
  %2 = phi i32 [ %9, %for.cond.loopexit.loopexit ], [ 0, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %call42, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %do.body10

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %3 = phi i32 [ %0, %for.body.lr.ph ], [ %1, %for.cond.loopexit ]
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %2, %for.cond.loopexit ]
  %call42 = phi i32 [ %call40, %for.body.lr.ph ], [ %call, %for.cond.loopexit ]
  %5 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %cpu_stat1, align 8
  %6 = ptrtoint %struct.blk_rq_stat* %5 to i64
  %idxprom = sext i32 %call42 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  %add = add i64 %7, %6
  %8 = inttoptr i64 %add to %struct.blk_rq_stat*
  %cmp438.not = icmp eq i32 %4, 0
  br i1 %cmp438.not, label %for.cond.loopexit, label %for.body5

for.body5:                                        ; preds = %for.body, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.body ]
  %arrayidx7 = getelementptr %struct.blk_rq_stat, %struct.blk_rq_stat* %8, i64 %indvars.iv
  call void @blk_rq_stat_init(%struct.blk_rq_stat* noundef %arrayidx7) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %buckets, align 8
  %10 = zext i32 %9 to i64
  %cmp4 = icmp ult i64 %indvars.iv.next, %10
  br i1 %cmp4, label %for.body5, label %for.cond.loopexit.loopexit

do.body10:                                        ; preds = %for.cond.loopexit, %entry
  %stats = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 3
  %11 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %rlock.i = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %11, i64 0, i32 1, i32 0, i32 0
  %call14 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %list = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 0
  %12 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %12, i64 0, i32 0
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %list, %struct.list_head* noundef %callbacks) #14
  call void @blk_queue_flag_set(i32 noundef 20, %struct.request_queue* noundef %q) #16
  %13 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %rlock.i37 = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %13, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i37, i64 noundef %call14) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_stat_remove_callback(%struct.request_queue* noundef %q, %struct.blk_stat_callback* noundef %cb) local_unnamed_addr #5 {
entry:
  %stats = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 3
  %0 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %rlock.i = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %0, i64 0, i32 1, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %list = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 0
  call fastcc void @list_del_rcu(%struct.list_head* noundef %list) #14
  %1 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %1, i64 0, i32 0
  %call6 = call fastcc i32 @list_empty(%struct.list_head* noundef %callbacks) #14
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %enable_accounting = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %2, i64 0, i32 2
  %3 = load i8, i8* %enable_accounting, align 4, !range !13
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @blk_queue_flag_clear(i32 noundef 20, %struct.request_queue* noundef %q) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %rlock.i18 = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %4, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i18, i64 noundef %call2) #16
  %timer = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 1
  %call11 = call i32 @del_timer_sync(%struct.timer_list* noundef %timer) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_stat_free_callback(%struct.blk_stat_callback* noundef %cb) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.blk_stat_callback* %cb, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rcu = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 8
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @blk_stat_free_callback_rcu) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_stat_free_callback_rcu(%struct.callback_head* noundef %head) #5 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -7, i32 1
  %0 = bitcast void (%struct.callback_head*)** %add.ptr to i8*
  %cpu_stat = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 7
  %1 = bitcast void (%struct.callback_head*)** %cpu_stat to i8**
  %2 = load i8*, i8** %1, align 8
  call void @free_percpu(i8* noundef %2) #16
  %stat = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 10
  %3 = bitcast void (%struct.callback_head*)** %stat to i8**
  %4 = load i8*, i8** %3, align 8
  call void @kfree(i8* noundef %4) #16
  call void @kfree(i8* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_stat_enable_accounting(%struct.request_queue* noundef %q) local_unnamed_addr #5 {
entry:
  %stats = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 3
  %0 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %rlock.i = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %0, i64 0, i32 1, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %1 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %enable_accounting = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %1, i64 0, i32 2
  store i8 1, i8* %enable_accounting, align 4
  call void @blk_queue_flag_set(i32 noundef 20, %struct.request_queue* noundef %q) #16
  %2 = load %struct.blk_queue_stats*, %struct.blk_queue_stats** %stats, align 8
  %rlock.i12 = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %2, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i12, i64 noundef %call2) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.blk_queue_stats* @blk_alloc_queue_stats() local_unnamed_addr #5 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #16
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call.i.i to %struct.blk_queue_stats*
  %callbacks = bitcast i8* %call.i.i to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %callbacks) #14
  %lock = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %2 = bitcast i8* %lock to i32*
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds i8, i8* %call.i.i, i64 20
  store i8 0, i8* %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.blk_queue_stats* [ %1, %if.end ], [ null, %entry ]
  ret %struct.blk_queue_stats* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_free_queue_stats(%struct.blk_queue_stats* noundef %stats) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.blk_queue_stats* %stats, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %callbacks = getelementptr inbounds %struct.blk_queue_stats, %struct.blk_queue_stats* %stats, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %callbacks) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then10, label %if.end11, !prof !11

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-stat.c\22; .popsection; .long 14472b - 14470b; .short 218; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !14
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %0 = bitcast %struct.blk_queue_stats* %stats to i8*
  call void @kfree(i8* noundef nonnull %0) #16
  br label %return

return:                                           ; preds = %entry, %if.end11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* nocapture noundef writeonly %remainder) unnamed_addr #0 {
entry:
  %conv = zext i32 %divisor to i64
  %div = udiv i64 %dividend, %conv
  %0 = mul i64 %div, %conv
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #5 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) unnamed_addr #7 {
entry:
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0
  %call = call fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %entry1) #14
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %h) unnamed_addr #7 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load volatile %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #5 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  call void @rcu_read_unlock_strict() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #5 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !17

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #5 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #15, !srcloc !18
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #5 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #15, !srcloc !19
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #5 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #15, !srcloc !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #5 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #5 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #15, !srcloc !21
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #15, !srcloc !22
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #5 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #15, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #5 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #15, !srcloc !25
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind readonly }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{i64 2154344253}
!9 = !{i64 2154383227}
!10 = !{i64 2148985593, i64 2148985640, i64 2148985646, i64 2148985683, i64 2148985701, i64 2148986628, i64 2148986676, i64 2148986724, i64 2148986787, i64 2148986836, i64 2148985779, i64 2148985804, i64 2148985830, i64 2148985836, i64 2148985873, i64 2148985879, i64 2148985929, i64 2148985975, i64 2148986008}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2149745026}
!13 = !{i8 0, i8 2}
!14 = !{i64 2154393137}
!15 = !{i64 2149358980}
!16 = !{i64 2149359197}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148842287, i64 2148842334, i64 2148842340, i64 2148842377, i64 2148842395, i64 2148843706, i64 2148843754, i64 2148843802, i64 2148843865, i64 2148843914, i64 2148842473, i64 2148842498, i64 2148842524, i64 2148842530, i64 2148843372, i64 2148843412, i64 2148843430, i64 2148843462, i64 2148843490, i64 2148843544, i64 2148843564, i64 2148843661, i64 2148842553, i64 2148842567, i64 2148842573, i64 2148842623, i64 2148842669, i64 2148842702}
!19 = !{i64 2148844466, i64 2148844513, i64 2148844519, i64 2148844556, i64 2148844574, i64 2148845517, i64 2148845565, i64 2148845613, i64 2148845676, i64 2148845725, i64 2148844652, i64 2148844677, i64 2148844703, i64 2148844709, i64 2148844746, i64 2148844752, i64 2148844802, i64 2148844848, i64 2148844881}
!20 = !{i64 2148836584, i64 2148836631, i64 2148836637, i64 2148836674, i64 2148836692, i64 2148838033, i64 2148838081, i64 2148838129, i64 2148838192, i64 2148838241, i64 2148836770, i64 2148836795, i64 2148836821, i64 2148836827, i64 2148837699, i64 2148837739, i64 2148837757, i64 2148837789, i64 2148837817, i64 2148837871, i64 2148837891, i64 2148837988, i64 2148836850, i64 2148836864, i64 2148836870, i64 2148836920, i64 2148836966, i64 2148836999}
!21 = !{i64 2147820161, i64 2147820194, i64 2147820247, i64 2147820306, i64 2147820340, i64 2147820395, i64 2147820424, i64 2147820444}
!22 = !{i64 2149380908}
!23 = !{i64 2149770869}
!24 = !{i64 2149714156}
!25 = !{i64 2148848300, i64 2148848347, i64 2148848353, i64 2148848390, i64 2148848408, i64 2148849719, i64 2148849767, i64 2148849815, i64 2148849878, i64 2148849927, i64 2148848486, i64 2148848511, i64 2148848537, i64 2148848543, i64 2148849385, i64 2148849425, i64 2148849443, i64 2148849475, i64 2148849503, i64 2148849557, i64 2148849577, i64 2148849674, i64 2148848566, i64 2148848580, i64 2148848586, i64 2148848636, i64 2148848682, i64 2148848715}
