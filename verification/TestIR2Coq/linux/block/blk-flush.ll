; ModuleID = 'block/blk-flush.c'
source_filename = "block/blk-flush.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.68, %union.anon.69, %union.anon.70, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.73, void (%struct.request*, i8)*, i8* }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.kmem_cache = type opaque
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
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
%struct.blk_queue_stats = type opaque
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.77, i32, i8* }
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
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.77 = type { %struct.pipe_inode_info* }
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
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
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
%union.anon.68 = type { %struct.hlist_node }
%union.anon.69 = type { %struct.rb_node }
%union.anon.70 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
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
%union.anon.73 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }

@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @is_flush_rq(%struct.request* nocapture noundef readonly %rq) local_unnamed_addr #0 {
entry:
  %end_io = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 28
  %0 = load void (%struct.request*, i8)*, void (%struct.request*, i8)** %end_io, align 8
  %cmp = icmp eq void (%struct.request*, i8)* %0, @flush_end_io
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @flush_end_io(%struct.request* noundef %flush_rq, i8 noundef %error) #1 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %flush_rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %flush_rq, i64 0, i32 1
  %1 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %call = call fastcc %struct.blk_flush_queue* @blk_get_flush_queue(%struct.blk_mq_ctx* noundef %1) #13
  %rlock.i = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %call, i64 0, i32 6, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %ref = getelementptr inbounds %struct.request, %struct.request* %flush_rq, i64 0, i32 24
  %call7 = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %ref) #13
  br i1 %call7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rq_status = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %call, i64 0, i32 1
  store i8 %error, i8* %rq_status, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @blk_account_io_flush(%struct.request* noundef %flush_rq) #13
  %state = getelementptr inbounds %struct.request, %struct.request* %flush_rq, i64 0, i32 23
  store volatile i32 0, i32* %state, align 8
  %rq_status18 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %call, i64 0, i32 1
  %2 = load i8, i8* %rq_status18, align 1
  %cmp20.not = icmp eq i8 %2, 0
  %spec.select = select i1 %cmp20.not, i8 %error, i8 %2
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %3 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %3, null
  br i1 %tobool.not, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  %tag = getelementptr inbounds %struct.request, %struct.request* %flush_rq, i64 0, i32 5
  store i32 -1, i32* %tag, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end
  call fastcc void @blk_mq_put_driver_tag(%struct.request* noundef %flush_rq) #13
  %internal_tag = getelementptr inbounds %struct.request, %struct.request* %flush_rq, i64 0, i32 6
  store i32 -1, i32* %internal_tag, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  %4 = getelementptr %struct.blk_flush_queue, %struct.blk_flush_queue* %call, i64 0, i32 0
  %bf.load = load i8, i8* %4, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %idxprom = zext i8 %bf.clear to i64
  %arrayidx = getelementptr %struct.blk_flush_queue, %struct.blk_flush_queue* %call, i64 0, i32 3, i64 %idxprom
  %bf.clear29 = and i8 %bf.load, 1
  %cmp35 = icmp eq i8 %bf.clear29, %bf.clear
  br i1 %cmp35, label %do.body41, label %do.end49, !prof !8

do.body41:                                        ; preds = %if.end26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-flush.c\22; .popsection; .long 14472b - 14470b; .short 249; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  unreachable

do.end49:                                         ; preds = %if.end26
  %5 = shl nuw nsw i8 %bf.clear, 1
  %bf.clear55 = and i8 %bf.load, -3
  %6 = or i8 %5, %bf.clear55
  %bf.set = xor i8 %6, 2
  store i8 %bf.set, i8* %4, align 8
  %7 = bitcast %struct.list_head* %arrayidx to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.list_head*
  %cmp69.not156 = icmp eq %struct.list_head* %arrayidx, %9
  br i1 %cmp69.not156, label %cleanup, label %for.body

for.body:                                         ; preds = %do.end49, %do.end95
  %.pn158.in.in = phi i8* [ %.pn158, %do.end95 ], [ %8, %do.end49 ]
  %rq.0157.in = getelementptr i8, i8* %.pn158.in.in, i64 -136
  %rq.0157 = bitcast i8* %rq.0157.in to %struct.request*
  %.pn158.in = bitcast i8* %.pn158.in.in to i8**
  %.pn158 = load i8*, i8** %.pn158.in, align 8
  %call73 = call fastcc i32 @blk_flush_cur_seq(%struct.request* noundef %rq.0157) #13
  switch i32 %call73, label %do.body87 [
    i32 4, label %do.end95
    i32 1, label %do.end95
  ]

do.body87:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-flush.c\22; .popsection; .long 14472b - 14470b; .short 258; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  unreachable

do.end95:                                         ; preds = %for.body, %for.body
  call fastcc void @blk_flush_complete_seq(%struct.request* noundef %rq.0157, %struct.blk_flush_queue* noundef %call, i32 noundef %call73, i8 noundef %spec.select) #13
  %10 = bitcast i8* %.pn158 to %struct.list_head*
  %cmp69.not = icmp eq %struct.list_head* %arrayidx, %10
  br i1 %cmp69.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %do.end95, %do.end49, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_insert_flush(%struct.request* noundef %rq) local_unnamed_addr #1 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 11
  %1 = load i64, i64* %queue_flags, align 8
  %call = call fastcc i32 @blk_flush_policy(i64 noundef %1, %struct.request* noundef %rq) #13
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %2 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %call2 = call fastcc %struct.blk_flush_queue* @blk_get_flush_queue(%struct.blk_mq_ctx* noundef %2) #13
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %3 = load i32, i32* %cmd_flags, align 8
  %and4 = and i64 %1, 262144
  %tobool.not = icmp eq i64 %and4, 0
  %spec.select.v = select i1 %tobool.not, i32 -395265, i32 -264193
  %spec.select = and i32 %3, %spec.select.v
  %4 = or i32 %spec.select, 2048
  store i32 %4, i32* %cmd_flags, align 8
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then13, label %do.body

if.then13:                                        ; preds = %entry
  call void @blk_mq_end_request(%struct.request* noundef %rq, i8 noundef 0) #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %5 = load %struct.bio*, %struct.bio** %bio, align 8
  %biotail = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 10
  %6 = load %struct.bio*, %struct.bio** %biotail, align 8
  %cmp.not = icmp eq %struct.bio* %5, %6
  br i1 %cmp.not, label %do.end26, label %do.body20, !prof !11

do.body20:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-flush.c\22; .popsection; .long 14472b - 14470b; .short 415; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !12
  unreachable

do.end26:                                         ; preds = %do.body
  %7 = and i32 %call, 7
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.end26
  call void @blk_mq_request_bypass_insert(%struct.request* noundef %rq, i1 noundef false, i1 noundef false) #15
  br label %cleanup

if.end32:                                         ; preds = %do.end26
  %flush = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0
  %9 = bitcast %struct.anon.72* %flush to i8*
  %call33 = call i8* @memset(i8* noundef %9, i32 noundef 0, i64 noundef 32) #15
  %list = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #13
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %10 = load i32, i32* %rq_flags, align 4
  %or35 = or i32 %10, 16
  store i32 %or35, i32* %rq_flags, align 4
  %end_io = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 28
  %11 = load void (%struct.request*, i8)*, void (%struct.request*, i8)** %end_io, align 8
  %saved_end_io = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0, i32 2
  store void (%struct.request*, i8)* %11, void (%struct.request*, i8)** %saved_end_io, align 8
  store void (%struct.request*, i8)* @mq_flush_data_end_io, void (%struct.request*, i8)** %end_io, align 8
  %rlock.i = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %call2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  %and38 = xor i32 %7, 7
  call fastcc void @blk_flush_complete_seq(%struct.request* noundef %rq, %struct.blk_flush_queue* noundef %call2, i32 noundef %and38, i8 noundef 0) #13
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then31, %if.then13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_flush_policy(i64 noundef %fflags, %struct.request* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %rq) #13
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 2
  %and = and i64 %fflags, 131072
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end17, label %if.then2

if.then2:                                         ; preds = %entry
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %1 = lshr i32 %0, 18
  %2 = and i32 %1, 1
  %3 = or i32 %2, %spec.select
  %and8 = and i64 %fflags, 262144
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.then2
  %4 = lshr i32 %0, 15
  %5 = and i32 %4, 4
  %6 = or i32 %3, %5
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.then2, %entry
  %policy.2 = phi i32 [ %3, %if.then2 ], [ %spec.select, %entry ], [ %6, %land.lhs.true ]
  ret i32 %policy.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_flush_queue* @blk_get_flush_queue(%struct.blk_mq_ctx* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue(%struct.blk_mq_ctx* noundef %ctx) #13
  %fq = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %call, i64 0, i32 8
  %0 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %fq, align 8
  ret %struct.blk_flush_queue* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(%struct.request* noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_request_bypass_insert(%struct.request* noundef, i1 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @mq_flush_data_end_io(%struct.request* noundef %rq, i8 noundef %error) #1 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %1 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %2 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %call = call fastcc %struct.blk_flush_queue* @blk_get_flush_queue(%struct.blk_mq_ctx* noundef %2) #13
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %3 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %3, null
  br i1 %tobool.not, label %do.body18, label %if.then

if.then:                                          ; preds = %entry
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %4 = load i32, i32* %tag, align 8
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then9, label %if.end, !prof !8

if.then9:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-flush.c\22; .popsection; .long 14472b - 14470b; .short 358; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  call fastcc void @blk_mq_put_driver_tag(%struct.request* noundef %rq) #13
  br label %do.body18

do.body18:                                        ; preds = %if.end, %entry
  %rlock.i = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %call, i64 0, i32 6, i32 0, i32 0
  %call23 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  call fastcc void @blk_flush_complete_seq(%struct.request* noundef %rq, %struct.blk_flush_queue* noundef %call, i32 noundef 2, i8 noundef %error) #13
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call23) #15
  call void @blk_mq_sched_restart(%struct.blk_mq_hw_ctx* noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_flush_complete_seq(%struct.request* noundef %rq, %struct.blk_flush_queue* noundef %fq, i32 noundef %seq, i8 noundef %error) unnamed_addr #1 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %1 = getelementptr %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 0
  %bf.load = load i8, i8* %1, align 8
  %bf.clear = and i8 %bf.load, 1
  %idxprom = zext i8 %bf.clear to i64
  %arrayidx = getelementptr %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 3, i64 %idxprom
  %seq2 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0, i32 0
  %2 = load i32, i32* %seq2, align 8
  %and = and i32 %2, %seq
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-flush.c\22; .popsection; .long 14472b - 14470b; .short 171; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  unreachable

do.end10:                                         ; preds = %entry
  %or = or i32 %2, %seq
  store i32 %or, i32* %seq2, align 8
  %cmd_flags13 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %3 = load i32, i32* %cmd_flags13, align 8
  %tobool14.not = icmp eq i8 %error, 0
  br i1 %tobool14.not, label %if.end25, label %do.body35, !prof !11

if.end25:                                         ; preds = %do.end10
  %call = call fastcc i32 @blk_flush_cur_seq(%struct.request* noundef %rq) #13
  switch i32 %call, label %do.body59 [
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 2, label %sw.bb31
    i32 8, label %do.body35
  ]

sw.bb:                                            ; preds = %if.end25, %if.end25
  %call26 = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %sw.bb
  %4 = load volatile i64, i64* @jiffies, align 64
  %flush_pending_since = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 2
  store i64 %4, i64* %flush_pending_since, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %sw.bb
  %list = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0, i32 1
  call fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %arrayidx) #13
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end25
  %list33 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0, i32 1
  %flush_data_in_flight = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 4
  call fastcc void @list_move_tail(%struct.list_head* noundef %list33, %struct.list_head* noundef %flush_data_in_flight) #13
  call fastcc void @blk_flush_queue_rq(%struct.request* noundef %rq, i1 noundef true) #13
  br label %sw.epilog

do.body35:                                        ; preds = %do.end10, %if.end25
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  %call36 = call fastcc i32 @list_empty(%struct.list_head* noundef %queuelist) #13
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.body48, label %do.end56, !prof !8

do.body48:                                        ; preds = %do.body35
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-flush.c\22; .popsection; .long 14472b - 14470b; .short 201; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  unreachable

do.end56:                                         ; preds = %do.body35
  %list58 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0, i32 1
  call fastcc void @list_del_init(%struct.list_head* noundef %list58) #13
  call fastcc void @blk_flush_restore_request(%struct.request* noundef %rq) #13
  call void @blk_mq_end_request(%struct.request* noundef %rq, i8 noundef %error) #15
  br label %sw.epilog

do.body59:                                        ; preds = %if.end25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-flush.c\22; .popsection; .long 14472b - 14470b; .short 208; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  unreachable

sw.epilog:                                        ; preds = %do.end56, %sw.bb31, %if.end29
  call fastcc void @blk_kick_flush(%struct.request_queue* noundef %0, %struct.blk_flush_queue* noundef %fq, i32 noundef %3) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blkdev_issue_flush(%struct.block_device* noundef %bdev) local_unnamed_addr #1 {
entry:
  %bio = alloca %struct.bio, align 8
  %0 = bitcast %struct.bio* %bio to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false), !annotation !17
  call void @bio_init(%struct.bio* noundef nonnull %bio, %struct.bio_vec* noundef null, i16 noundef 0) #15
  call fastcc void @bio_clear_flag(%struct.bio* noundef nonnull %bio, i32 noundef 11) #13
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp.not = icmp eq %struct.block_device* %1, %bdev
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @bio_clear_flag(%struct.bio* noundef nonnull %bio, i32 noundef 7) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.block_device* %bdev, %struct.block_device** %bi_bdev, align 8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 262145, i32* %bi_opf, align 8
  %call = call i32 @submit_bio_wait(%struct.bio* noundef nonnull %bio) #15
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #14
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(%struct.bio* noundef, %struct.bio_vec* noundef, i16 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #6 {
entry:
  %shl = shl nuw i32 1, %bit
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = trunc i32 %shl to i16
  %2 = xor i16 %1, -1
  %conv1 = and i16 %0, %2
  store i16 %conv1, i16* %bi_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(%struct.bio* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.blk_flush_queue* @blk_alloc_flush_queue(i32 noundef %node, i32 noundef %cmd_size, i32 noundef %flags) local_unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kzalloc_node(i64 noundef 80, i32 noundef %flags) #13
  %0 = bitcast i8* %call to %struct.blk_flush_queue*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %mq_flush_lock = getelementptr inbounds i8, i8* %call, i64 72
  %1 = bitcast i8* %mq_flush_lock to i32*
  store i32 0, i32* %1, align 8
  %sub = add i32 %cmd_size, 271
  %call3 = call i32 @cache_line_size() #15
  %sub4 = add i32 %call3, -1
  %or = or i32 %sub4, %sub
  %add5 = add i32 %or, 1
  %conv = sext i32 %add5 to i64
  %call6 = call fastcc i8* @kzalloc_node(i64 noundef %conv, i32 noundef %flags) #13
  %flush_rq = getelementptr inbounds i8, i8* %call, i64 64
  %2 = bitcast i8* %flush_rq to i8**
  store i8* %call6, i8** %2, align 8
  %tobool8.not = icmp eq i8* %call6, null
  br i1 %tobool8.not, label %fail_rq, label %if.end10

if.end10:                                         ; preds = %do.body
  %flush_queue = getelementptr inbounds i8, i8* %call, i64 16
  %arrayidx = bitcast i8* %flush_queue to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx) #13
  %arrayidx12 = getelementptr i8, i8* %call, i64 32
  %3 = bitcast i8* %arrayidx12 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %3) #13
  %flush_data_in_flight = getelementptr inbounds i8, i8* %call, i64 48
  %4 = bitcast i8* %flush_data_in_flight to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %4) #13
  br label %cleanup

fail_rq:                                          ; preds = %do.body
  call void @kfree(i8* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %fail_rq, %entry, %if.end10
  %retval.0 = phi %struct.blk_flush_queue* [ %0, %if.end10 ], [ null, %entry ], [ null, %fail_rq ]
  ret %struct.blk_flush_queue* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc_node(i64 noundef %size, i32 noundef %flags) unnamed_addr #1 {
entry:
  %or = or i32 %flags, 256
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %or) #15
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_line_size() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_free_flush_queue(%struct.blk_flush_queue* noundef %fq) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.blk_flush_queue* %fq, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %flush_rq = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 5
  %0 = bitcast %struct.request** %flush_rq to i8**
  %1 = load i8*, i8** %0, align 8
  call void @kfree(i8* noundef %1) #15
  %2 = getelementptr %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 0
  call void @kfree(i8* noundef %2) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @blk_mq_hctx_set_fq_lock_class(%struct.blk_mq_hw_ctx* nocapture noundef %hctx, %struct.lock_class_key* nocapture noundef %key) local_unnamed_addr #7 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_account_io_flush(%struct.request* nocapture noundef readonly %rq) unnamed_addr #1 {
entry:
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 15
  %0 = load %struct.gendisk*, %struct.gendisk** %rq_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 7
  %1 = load %struct.block_device*, %struct.block_device** %part0, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 1
  %2 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %arrayidx = getelementptr %struct.disk_stats, %struct.disk_stats* %2, i64 0, i32 2, i64 3
  %3 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, %3
  %4 = inttoptr i64 %add to i64*
  %5 = load i64, i64* %4, align 8
  %add9 = add i64 %5, 1
  store i64 %add9, i64* %4, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 14
  %6 = load i8, i8* %bd_partno, align 8
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body40, label %if.then

if.then:                                          ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 16
  %7 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part026 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i64 0, i32 7
  %8 = load %struct.block_device*, %struct.block_device** %part026, align 8
  %bd_stats27 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i64 0, i32 1
  %9 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats27, align 8
  %arrayidx29 = getelementptr %struct.disk_stats, %struct.disk_stats* %9, i64 0, i32 2, i64 3
  %10 = ptrtoint i64* %arrayidx29 to i64
  %call31 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add32 = add i64 %call31, %10
  %11 = inttoptr i64 %add32 to i64*
  %12 = load i64, i64* %11, align 8
  %add33 = add i64 %12, 1
  store i64 %add33, i64* %11, align 8
  br label %do.body40

do.body40:                                        ; preds = %entry, %if.then
  %call47 = call fastcc i64 @ktime_get_ns() #13
  %start_time_ns = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 17
  %13 = load i64, i64* %start_time_ns, align 8
  %sub = sub i64 %call47, %13
  %14 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %arrayidx55 = getelementptr %struct.disk_stats, %struct.disk_stats* %14, i64 0, i32 0, i64 3
  %15 = ptrtoint i64* %arrayidx55 to i64
  %call57 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add58 = add i64 %call57, %15
  %16 = inttoptr i64 %add58 to i64*
  %17 = load i64, i64* %16, align 8
  %add59 = add i64 %sub, %17
  store i64 %add59, i64* %16, align 8
  %18 = load i8, i8* %bd_partno, align 8
  %tobool65.not = icmp eq i8 %18, 0
  br i1 %tobool65.not, label %do.end97, label %if.then66

if.then66:                                        ; preds = %do.body40
  %call73 = call fastcc i64 @ktime_get_ns() #13
  %19 = load i64, i64* %start_time_ns, align 8
  %sub75 = sub i64 %call73, %19
  %bd_disk82 = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 16
  %20 = load %struct.gendisk*, %struct.gendisk** %bd_disk82, align 8
  %part083 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %20, i64 0, i32 7
  %21 = load %struct.block_device*, %struct.block_device** %part083, align 8
  %bd_stats84 = getelementptr inbounds %struct.block_device, %struct.block_device* %21, i64 0, i32 1
  %22 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats84, align 8
  %arrayidx86 = getelementptr %struct.disk_stats, %struct.disk_stats* %22, i64 0, i32 0, i64 3
  %23 = ptrtoint i64* %arrayidx86 to i64
  %call88 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add89 = add i64 %call88, %23
  %24 = inttoptr i64 %add89 to i64*
  %25 = load i64, i64* %24, align 8
  %add90 = add i64 %sub75, %25
  store i64 %add90, i64* %24, align 8
  br label %do.end97

do.end97:                                         ; preds = %if.then66, %do.body40
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_put_driver_tag(%struct.request* nocapture noundef %rq) unnamed_addr #1 {
entry:
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %0 = load i32, i32* %tag, align 8
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %internal_tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 6
  %1 = load i32, i32* %internal_tag, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  call fastcc void @__blk_mq_put_driver_tag(%struct.blk_mq_hw_ctx* noundef %2, %struct.request* noundef %rq) #13
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_flush_cur_seq(%struct.request* nocapture noundef readonly %rq) unnamed_addr #8 {
entry:
  %seq = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0, i32 0
  %0 = load i32, i32* %seq, align 8
  %neg = xor i32 %0, -1
  %conv = zext i32 %neg to i64
  %1 = call i64 @llvm.cttz.i64(i64 %conv, i1 false) #14, !range !21
  %sh_prom = trunc i64 %1 to i32
  %shl = shl nuw i32 1, %sh_prom
  ret i32 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #13
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #14, !srcloc !22
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #14, !srcloc !23
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #13
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #9 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #15
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #14, !srcloc !26
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !11

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !27
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #14, !srcloc !30
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #16, !srcloc !31
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_ns() unnamed_addr #1 {
entry:
  %call = call i64 @ktime_get() #15
  ret i64 %call
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_put_driver_tag(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* nocapture noundef %rq) unnamed_addr #1 {
entry:
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %1 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %2 = load i32, i32* %tag, align 8
  call void @blk_mq_put_tag(%struct.blk_mq_tags* noundef %0, %struct.blk_mq_ctx* noundef %1, i32 noundef %2) #15
  store i32 -1, i32* %tag, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %3 = load i32, i32* %rq_flags, align 4
  %and = and i32 %3, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i32 %3, -65
  store i32 %and3, i32* %rq_flags, align 4
  call fastcc void @__blk_mq_dec_active_requests(%struct.blk_mq_hw_ctx* noundef %hctx) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_tag(%struct.blk_mq_tags* noundef, %struct.blk_mq_ctx* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_dec_active_requests(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %conv = trunc i64 %0 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #13
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %nr_active_requests_shared_sbitmap = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 27
  br label %if.end

if.else:                                          ; preds = %entry
  %nr_active = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nr_active.sink = phi %struct.atomic_t* [ %nr_active, %if.else ], [ %nr_active_requests_shared_sbitmap, %if.then ]
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_active.sink) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %flags) unnamed_addr #7 {
entry:
  %and = and i32 %flags, 8
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_sectors(%struct.request* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #13
  %shr = lshr i32 %call, 9
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_bytes(%struct.request* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  %0 = load i32, i32* %__data_len, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue(%struct.blk_mq_ctx* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 3, i64 0
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  ret %struct.blk_mq_hw_ctx* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_restart(%struct.blk_mq_hw_ctx* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #13
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_flush_queue_rq(%struct.request* noundef %rq, i1 noundef %add_front) unnamed_addr #1 {
entry:
  call void @blk_mq_add_to_requeue_list(%struct.request* noundef %rq, i1 noundef %add_front, i1 noundef true) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #13
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @blk_flush_restore_request(%struct.request* nocapture noundef %rq) unnamed_addr #6 {
entry:
  %biotail = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 10
  %0 = load %struct.bio*, %struct.bio** %biotail, align 8
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  store %struct.bio* %0, %struct.bio** %bio, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %1 = load i32, i32* %rq_flags, align 4
  %and = and i32 %1, -17
  store i32 %and, i32* %rq_flags, align 4
  %saved_end_io = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14, i32 0, i32 2
  %2 = load void (%struct.request*, i8)*, void (%struct.request*, i8)** %saved_end_io, align 8
  %end_io = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 28
  store void (%struct.request*, i8)* %2, void (%struct.request*, i8)** %end_io, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_kick_flush(%struct.request_queue* noundef %q, %struct.blk_flush_queue* noundef %fq, i32 noundef %flags) unnamed_addr #1 {
entry:
  %0 = getelementptr %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 0
  %bf.load = load i8, i8* %0, align 8
  %bf.clear = and i8 %bf.load, 1
  %idxprom = zext i8 %bf.clear to i64
  %arrayidx = getelementptr %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 3, i64 %idxprom
  %1 = bitcast %struct.list_head* %arrayidx to i8**
  %2 = load i8*, i8** %1, align 8
  %flush_rq1 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 5
  %3 = load %struct.request*, %struct.request** %flush_rq1, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear6 = and i8 %bf.lshr, 1
  %cmp.not = icmp eq i8 %bf.clear, %bf.clear6
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flush_data_in_flight = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 4
  %call8 = call fastcc i32 @list_empty(%struct.list_head* noundef %flush_data_in_flight) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %4 = load volatile i64, i64* @jiffies, align 64
  %flush_pending_since = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %fq, i64 0, i32 2
  %5 = load i64, i64* %flush_pending_since, align 8
  %add.neg = add i64 %4, -1250
  %sub = sub i64 %add.neg, %5
  %cmp10 = icmp slt i64 %sub, 0
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end
  %bf.load13 = load i8, i8* %0, align 8
  %bf.set = xor i8 %bf.load13, 1
  store i8 %bf.set, i8* %0, align 8
  call void @blk_rq_init(%struct.request_queue* noundef %q, %struct.request* noundef %3) #15
  %mq_ctx = getelementptr i8, i8* %2, i64 -128
  %6 = bitcast i8* %mq_ctx to %struct.blk_mq_ctx**
  %7 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %6, align 8
  %mq_ctx18 = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 1
  store %struct.blk_mq_ctx* %7, %struct.blk_mq_ctx** %mq_ctx18, align 8
  %mq_hctx = getelementptr i8, i8* %2, i64 -120
  %8 = bitcast i8* %mq_hctx to %struct.blk_mq_hw_ctx**
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %mq_hctx19 = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 2
  store %struct.blk_mq_hw_ctx* %9, %struct.blk_mq_hw_ctx** %mq_hctx19, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %10 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool20.not = icmp eq %struct.elevator_queue* %10, null
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end12
  %tag = getelementptr i8, i8* %2, i64 -104
  %11 = bitcast i8* %tag to i32*
  %12 = load i32, i32* %11, align 8
  %tag22 = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 5
  store i32 %12, i32* %tag22, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 4
  %13 = load i32, i32* %rq_flags, align 4
  %or = or i32 %13, 64
  br label %if.end24

if.else:                                          ; preds = %if.end12
  %internal_tag = getelementptr i8, i8* %2, i64 -100
  %14 = bitcast i8* %internal_tag to i32*
  %15 = load i32, i32* %14, align 4
  %internal_tag23 = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 6
  store i32 %15, i32* %internal_tag23, align 4
  %rq_flags32.phi.trans.insert = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 4
  %.pre = load i32, i32* %rq_flags32.phi.trans.insert, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %16 = phi i32 [ %.pre, %if.else ], [ %or, %if.then21 ]
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 3
  %17 = and i32 %flags, 33556224
  %18 = or i32 %17, 262146
  store i32 %18, i32* %cmd_flags, align 8
  %rq_flags32 = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 4
  %or33 = or i32 %16, 16
  store i32 %or33, i32* %rq_flags32, align 4
  %rq_disk = getelementptr i8, i8* %2, i64 24
  %19 = bitcast i8* %rq_disk to %struct.gendisk**
  %20 = load %struct.gendisk*, %struct.gendisk** %19, align 8
  %rq_disk34 = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 15
  store %struct.gendisk* %20, %struct.gendisk** %rq_disk34, align 8
  %end_io = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 28
  store void (%struct.request*, i8)* @flush_end_io, void (%struct.request*, i8)** %end_io, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !34
  %ref = getelementptr inbounds %struct.request, %struct.request* %3, i64 0, i32 24
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %ref) #13
  call fastcc void @blk_flush_queue_rq(%struct.request* noundef %3, i1 noundef false) #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_add_to_requeue_list(%struct.request* noundef, i1 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_rq_init(%struct.request_queue* noundef, %struct.request* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call fastcc void @arch_local_irq_enable() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #14, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2154362363}
!10 = !{i64 2154371301}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154377958}
!13 = !{i64 2154376094}
!14 = !{i64 2154355893}
!15 = !{i64 2154357312}
!16 = !{i64 2154358565}
!17 = !{!"auto-init"}
!18 = !{i64 2149470072}
!19 = !{i64 2154326454}
!20 = !{i64 2154354830}
!21 = !{i64 0, i64 65}
!22 = !{i64 2149249243, i64 2149249290, i64 2149249296, i64 2149249333, i64 2149249351, i64 2149250662, i64 2149250710, i64 2149250758, i64 2149250821, i64 2149250870, i64 2149249429, i64 2149249454, i64 2149249480, i64 2149249486, i64 2149250328, i64 2149250368, i64 2149250386, i64 2149250418, i64 2149250446, i64 2149250500, i64 2149250520, i64 2149250617, i64 2149249509, i64 2149249523, i64 2149249529, i64 2149249579, i64 2149249625, i64 2149249658}
!23 = !{i64 2149251422, i64 2149251469, i64 2149251475, i64 2149251512, i64 2149251530, i64 2149252473, i64 2149252521, i64 2149252569, i64 2149252632, i64 2149252681, i64 2149251608, i64 2149251633, i64 2149251659, i64 2149251665, i64 2149251702, i64 2149251708, i64 2149251758, i64 2149251804, i64 2149251837}
!24 = !{i64 2149243540, i64 2149243587, i64 2149243593, i64 2149243630, i64 2149243648, i64 2149244989, i64 2149245037, i64 2149245085, i64 2149245148, i64 2149245197, i64 2149243726, i64 2149243751, i64 2149243777, i64 2149243783, i64 2149244655, i64 2149244695, i64 2149244713, i64 2149244745, i64 2149244773, i64 2149244827, i64 2149244847, i64 2149244944, i64 2149243806, i64 2149243820, i64 2149243826, i64 2149243876, i64 2149243922, i64 2149243955}
!25 = !{i64 2147830950, i64 2147830983, i64 2147831036, i64 2147831095, i64 2147831129, i64 2147831184, i64 2147831213, i64 2147831233}
!26 = !{i64 2150041964}
!27 = !{i64 2147752834, i64 2147753508, i64 2147753538, i64 2147753570, i64 2147753604, i64 2147753640, i64 2147753665}
!28 = !{i64 2149495915}
!29 = !{i64 2149295436}
!30 = !{i64 2149259317, i64 2149259364, i64 2149259370, i64 2149259407, i64 2149259425, i64 2149260736, i64 2149260784, i64 2149260832, i64 2149260895, i64 2149260944, i64 2149259503, i64 2149259528, i64 2149259554, i64 2149259560, i64 2149260402, i64 2149260442, i64 2149260460, i64 2149260492, i64 2149260520, i64 2149260574, i64 2149260594, i64 2149260691, i64 2149259583, i64 2149259597, i64 2149259603, i64 2149259653, i64 2149259699, i64 2149259732}
!31 = !{i64 2149015608, i64 2149015655, i64 2149015661, i64 2149015698, i64 2149015716, i64 2149016643, i64 2149016691, i64 2149016739, i64 2149016802, i64 2149016851, i64 2149015794, i64 2149015819, i64 2149015845, i64 2149015851, i64 2149015888, i64 2149015894, i64 2149015944, i64 2149015990, i64 2149016023}
!32 = !{i64 2147744809, i64 2147745325, i64 2147745355, i64 2147745382, i64 2147745416, i64 2147745446}
!33 = !{i64 2149474365}
!34 = !{i64 2154374784}
!35 = !{i64 2149499218}
!36 = !{i64 2149234084, i64 2149234131, i64 2149234137, i64 2149234174, i64 2149234192, i64 2149235532, i64 2149235580, i64 2149235628, i64 2149235691, i64 2149235740, i64 2149234270, i64 2149234295, i64 2149234321, i64 2149234327, i64 2149235198, i64 2149235238, i64 2149235256, i64 2149235288, i64 2149235316, i64 2149235370, i64 2149235390, i64 2149235487, i64 2149234350, i64 2149234364, i64 2149234370, i64 2149234420, i64 2149234466, i64 2149234499}
