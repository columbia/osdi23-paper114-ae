; ModuleID = 'block/blk-map.c'
source_filename = "block/blk-map.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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
%struct.atomic_t = type { i32 }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.36, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.36 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.rq_map_data = type { %struct.page**, i32, i32, i64, i32, i32 }
%struct.bio_map_data = type { i8, %struct.iov_iter, [0 x %struct.iovec] }
%struct.bvec_iter_all = type { %struct.bio_vec, i32, i32 }
%struct.nodemask_t = type { [1 x i64] }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_rq_append_bio(%struct.request* noundef %rq, %struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.bvec_iter, align 8
  %0 = bitcast %struct.bvec_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #15
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8
  %1 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %1, i64 24, i1 false)
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %2 = load i32, i32* %bi_size, align 8
  %tobool.not59 = icmp eq i32 %2, 0
  br i1 %tobool.not59, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %land.rhs
  %3 = phi i32 [ %2, %land.rhs.lr.ph ], [ %8, %land.rhs ]
  %nr_segs.060 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %land.rhs ]
  %4 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %5 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %5 to i64
  %bv_len7 = getelementptr %struct.bio_vec, %struct.bio_vec* %4, i64 %idxprom, i32 1
  %6 = load i32, i32* %bv_len7, align 8
  %7 = load i32, i32* %bi_bvec_done, align 8
  %sub = sub i32 %6, %7
  %cmp = icmp ult i32 %3, %sub
  %cond = select i1 %cmp, i32 %3, i32 %sub
  %inc = add i32 %nr_segs.060, 1
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef %bio, %struct.bvec_iter* noundef nonnull %iter, i32 noundef %cond) #16
  %8 = load i32, i32* %bi_size, align 8
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %entry
  %nr_segs.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %land.rhs ]
  %bio15 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %9 = load %struct.bio*, %struct.bio** %bio15, align 8
  %tobool16.not = icmp eq %struct.bio* %9, null
  br i1 %tobool16.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  call fastcc void @blk_rq_bio_prep(%struct.request* noundef %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs.0.lcssa) #16
  br label %cleanup

if.else:                                          ; preds = %for.end
  %call = call i32 @ll_back_merge_fn(%struct.request* noundef %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs.0.lcssa) #17
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.else
  %biotail = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 10
  %10 = load %struct.bio*, %struct.bio** %biotail, align 8
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %10, i64 0, i32 0
  store %struct.bio* %bio, %struct.bio** %bi_next, align 8
  store %struct.bio* %bio, %struct.bio** %biotail, align 8
  %bi_size21 = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %11 = load i32, i32* %bi_size21, align 8
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  %12 = load i32, i32* %__data_len, align 8
  %add22 = add i32 %12, %11
  store i32 %add22, i32* %__data_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end, %if.else
  %retval.0 = phi i32 [ -22, %if.else ], [ 0, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_advance_iter_single(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #4 {
entry:
  %shr = lshr i32 %bytes, 9
  %conv = zext i32 %shr to i64
  %bi_sector = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %bi_sector, align 8
  %add = add i64 %0, %conv
  store i64 %add, i64* %bi_sector, align 8
  %call = call fastcc i1 @bio_no_advance_iter(%struct.bio* noundef %bio) #16
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %1, %bytes
  store i32 %sub, i32* %bi_size, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  call fastcc void @bvec_iter_advance_single(%struct.bio_vec* noundef %2, %struct.bvec_iter* noundef %iter, i32 noundef %bytes) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @blk_rq_bio_prep(%struct.request* nocapture noundef writeonly %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs) unnamed_addr #4 {
entry:
  %conv = trunc i32 %nr_segs to i16
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 20
  store i16 %conv, i16* %nr_phys_segments, align 2
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  store i32 %0, i32* %__data_len, align 8
  %biotail = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 10
  store %struct.bio* %bio, %struct.bio** %biotail, align 8
  %bio1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  store %struct.bio* %bio, %struct.bio** %bio1, align 8
  %bi_ioprio = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 4
  %1 = load i16, i16* %bi_ioprio, align 2
  %ioprio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 22
  store i16 %1, i16* %ioprio, align 2
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %2 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %tobool.not = icmp eq %struct.block_device* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %2, i64 0, i32 16
  %3 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 15
  store %struct.gendisk* %3, %struct.gendisk** %rq_disk, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ll_back_merge_fn(%struct.request* noundef, %struct.bio* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_rq_map_user_iov(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.rq_map_data* noundef %map_data, %struct.iov_iter* noundef %iter, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.iov_iter, align 8
  %dma_pad_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 19
  %0 = load i32, i32* %dma_pad_mask, align 8
  %call = call fastcc i32 @queue_dma_alignment(%struct.request_queue* noundef %q) #16
  %or = or i32 %call, %0
  %conv = zext i32 %or to i64
  %1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #15
  %call1 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %iter) #16
  br i1 %call1, label %if.end, label %fail

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.rq_map_data* %map_data, null
  br i1 %tobool.not, label %if.else, label %if.end20

if.else:                                          ; preds = %if.end
  %call6 = call i64 @iov_iter_alignment(%struct.iov_iter* noundef %iter) #17
  %and = and i64 %call6, %conv
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %if.else9, label %if.end20

if.else9:                                         ; preds = %if.else
  %call10 = call fastcc i64 @queue_virt_boundary(%struct.request_queue* noundef %q) #16
  %tobool11.not = icmp eq i64 %call10, 0
  br i1 %tobool11.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %if.else9
  %call14 = call i64 @iov_iter_gap_alignment(%struct.iov_iter* noundef %iter) #17
  %and15 = and i64 %call14, %call10
  %tobool16 = icmp ne i64 %and15, 0
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end, %if.else9, %if.then12
  %copy.0.off0 = phi i1 [ %tobool16, %if.then12 ], [ false, %if.else9 ], [ true, %if.end ], [ true, %if.else ]
  %2 = getelementptr %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8* noundef align 8 dereferenceable(40) %2, i64 40, i1 false)
  %bio32 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end20
  %bio.0 = phi %struct.bio* [ null, %if.end20 ], [ %bio.1, %do.cond ]
  br i1 %copy.0.off0, label %if.then22, label %if.else24

if.then22:                                        ; preds = %do.body
  %call23 = call fastcc i32 @bio_copy_user_iov(%struct.request* noundef %rq, %struct.rq_map_data* noundef %map_data, %struct.iov_iter* noundef nonnull %i, i32 noundef %gfp_mask) #16
  br label %if.end26

if.else24:                                        ; preds = %do.body
  %call25 = call fastcc i32 @bio_map_user_iov(%struct.request* noundef %rq, %struct.iov_iter* noundef nonnull %i, i32 noundef %gfp_mask) #16
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then22
  %ret.0 = phi i32 [ %call23, %if.then22 ], [ %call25, %if.else24 ]
  %tobool27.not = icmp eq i32 %ret.0, 0
  br i1 %tobool27.not, label %if.end29, label %unmap_rq

if.end29:                                         ; preds = %if.end26
  %tobool30.not = icmp eq %struct.bio* %bio.0, null
  br i1 %tobool30.not, label %if.then31, label %do.cond

if.then31:                                        ; preds = %if.end29
  %3 = load %struct.bio*, %struct.bio** %bio32, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end29, %if.then31
  %bio.1 = phi %struct.bio* [ %bio.0, %if.end29 ], [ %3, %if.then31 ]
  %call34 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef nonnull %i) #16
  %tobool35.not = icmp eq i64 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %do.body

unmap_rq:                                         ; preds = %if.end26
  %call36 = call i32 @blk_rq_unmap_user(%struct.bio* noundef %bio.0) #16
  br label %fail

fail:                                             ; preds = %entry, %unmap_rq
  %ret.1 = phi i32 [ %ret.0, %unmap_rq ], [ -22, %entry ]
  %bio37 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  store %struct.bio* null, %struct.bio** %bio37, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.cond, %fail
  %retval.0 = phi i32 [ %ret.1, %fail ], [ 0, %do.cond ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_dma_alignment(%struct.request_queue* noundef readonly %q) unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.request_queue* %q, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %dma_alignment = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 20
  %0 = load i32, i32* %dma_alignment, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 511, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iter_is_iovec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #16
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iov_iter_alignment(%struct.iov_iter* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @queue_virt_boundary(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #6 {
entry:
  %virt_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 2
  %0 = load i64, i64* %virt_boundary_mask, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iov_iter_gap_alignment(%struct.iov_iter* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_copy_user_iov(%struct.request* noundef %rq, %struct.rq_map_data* noundef %map_data, %struct.iov_iter* noundef %iter, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %conv = trunc i64 %0 to i32
  %tobool.not = icmp eq %struct.rq_map_data* %map_data, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %offset1 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 3
  %1 = load i64, i64* %offset1, align 8
  %and = and i64 %1, 4095
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %and, %cond.true ], [ 0, %entry ]
  %conv2 = trunc i64 %cond to i32
  %call = call fastcc %struct.bio_map_data* @bio_alloc_map_data(%struct.iov_iter* noundef %iter, i32 noundef %gfp_mask) #16
  %tobool3.not = icmp eq %struct.bio_map_data* %call, null
  br i1 %tobool3.not, label %cleanup94, label %if.end

if.end:                                           ; preds = %cond.end
  %2 = getelementptr %struct.bio_map_data, %struct.bio_map_data* %call, i64 0, i32 0
  %3 = zext i1 %tobool.not to i8
  %bf.load = load i8, i8* %2, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %3
  store i8 %bf.set, i8* %2, align 8
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end:                                         ; preds = %if.end
  %null_mapped = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 4
  %4 = load i32, i32* %null_mapped, align 8
  %tobool7.not = icmp eq i32 %4, 0
  %spec.select201 = select i1 %tobool7.not, i8 0, i8 2
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %if.end
  %5 = phi i8 [ 0, %if.end ], [ %spec.select201, %land.end ]
  %bf.clear9 = and i8 %bf.set, -3
  %bf.set10 = or i8 %5, %bf.clear9
  store i8 %bf.set10, i8* %2, align 8
  %add = add i64 %cond, %0
  %conv12 = and i64 %add, 4294967295
  %sub = add nuw nsw i64 %conv12, 4095
  %div = lshr i64 %sub, 12
  %conv14 = trunc i64 %div to i32
  %call15 = call fastcc i32 @bio_max_segs(i32 noundef %conv14) #16
  %conv16 = trunc i32 %call15 to i16
  %call17 = call %struct.bio* @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef %conv16) #17
  %tobool18.not = icmp eq %struct.bio* %call17, null
  br i1 %tobool18.not, label %out_bmd, label %if.end20

if.end20:                                         ; preds = %land.end.thread
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %6 = load i32, i32* %cmd_flags, align 8
  %and21 = and i32 %6, 255
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %call17, i64 0, i32 2
  %7 = load i32, i32* %bi_opf, align 8
  %or = or i32 %7, %and21
  store i32 %or, i32* %bi_opf, align 8
  br i1 %tobool.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end20
  %page_order = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 1
  %8 = load i32, i32* %page_order, align 8
  %shl = shl nuw i32 1, %8
  %offset24 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 3
  %9 = load i64, i64* %offset24, align 8
  %div25 = lshr i64 %9, 12
  %conv26 = trunc i64 %div25 to i32
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20
  %i.0 = phi i32 [ %conv26, %if.then23 ], [ 0, %if.end20 ]
  %nr_pages.0 = phi i32 [ %shl, %if.then23 ], [ %call15, %if.end20 ]
  %tobool28.not203 = icmp eq i32 %conv, 0
  br i1 %tobool28.not203, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end27
  %nr_entries = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 2
  %pages = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 0
  %q175 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %or40 = or i32 %gfp_mask, 3072
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %offset.0206 = phi i32 [ %conv2, %while.body.lr.ph ], [ 0, %cleanup ]
  %len.0205 = phi i32 [ %conv, %while.body.lr.ph ], [ %sub54, %cleanup ]
  %i.1204 = phi i32 [ %i.0, %while.body.lr.ph ], [ %i.2179, %cleanup ]
  %sub29 = sub nuw nsw i32 4096, %offset.0206
  %cmp = icmp ugt i32 %sub29, %len.0205
  %spec.select = select i1 %cmp, i32 %len.0205, i32 %sub29
  br i1 %tobool.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %while.body
  %10 = load i32, i32* %nr_entries, align 4
  %mul = mul i32 %10, %nr_pages.0
  %cmp35 = icmp eq i32 %i.1204, %mul
  br i1 %cmp35, label %if.end93, label %if.end45.thread

if.else:                                          ; preds = %while.body
  %call41 = call fastcc %struct.page* @alloc_pages(i32 noundef %or40) #16
  %tobool42.not = icmp eq %struct.page* %call41, null
  br i1 %tobool42.not, label %if.then92, label %if.end45

if.end45:                                         ; preds = %if.else
  %11 = load %struct.request_queue*, %struct.request_queue** %q175, align 8
  %call46 = call i32 @bio_add_pc_page(%struct.request_queue* noundef %11, %struct.bio* noundef nonnull %call17, %struct.page* noundef nonnull %call41, i32 noundef %spec.select, i32 noundef %offset.0206) #17
  %cmp47 = icmp ult i32 %call46, %spec.select
  br i1 %cmp47, label %while.end.thread, label %cleanup

if.end45.thread:                                  ; preds = %if.then34
  %12 = load %struct.page**, %struct.page*** %pages, align 8
  %i.1204.frozen = freeze i32 %i.1204
  %nr_pages.0.frozen = freeze i32 %nr_pages.0
  %div39 = sdiv i32 %i.1204.frozen, %nr_pages.0.frozen
  %idxprom = sext i32 %div39 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %12, i64 %idxprom
  %13 = load %struct.page*, %struct.page** %arrayidx, align 8
  %14 = mul i32 %div39, %nr_pages.0.frozen
  %rem.decomposed = sub i32 %i.1204.frozen, %14
  %idx.ext = sext i32 %rem.decomposed to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %13, i64 %idx.ext
  %inc = add i32 %i.1204, 1
  %15 = load %struct.request_queue*, %struct.request_queue** %q175, align 8
  %call46176 = call i32 @bio_add_pc_page(%struct.request_queue* noundef %15, %struct.bio* noundef nonnull %call17, %struct.page* noundef %add.ptr, i32 noundef %spec.select, i32 noundef %offset.0206) #17
  %cmp47177 = icmp ult i32 %call46176, %spec.select
  br i1 %cmp47177, label %if.end60.thread, label %cleanup

while.end.thread:                                 ; preds = %if.end45
  call void @__free_pages(%struct.page* noundef nonnull %call41, i32 noundef 0) #17
  br label %if.end60

cleanup:                                          ; preds = %if.end45, %if.end45.thread
  %i.2179 = phi i32 [ %inc, %if.end45.thread ], [ %i.1204, %if.end45 ]
  %sub54 = sub i32 %len.0205, %spec.select
  %tobool28.not = icmp eq i32 %sub54, 0
  br i1 %tobool28.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.end27
  br i1 %tobool.not, label %if.end60, label %if.end60.thread

if.end60:                                         ; preds = %while.end.thread, %while.end
  %call61 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #16
  %cmp63 = icmp eq i8 %call61, 1
  br i1 %cmp63, label %if.then72, label %if.else77

if.end60.thread:                                  ; preds = %if.end45.thread, %while.end
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %call17, i64 0, i32 8, i32 1
  %16 = load i32, i32* %bi_size, align 8
  %conv57 = zext i32 %16 to i64
  %offset58 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 3
  %17 = load i64, i64* %offset58, align 8
  %add59 = add i64 %17, %conv57
  store i64 %add59, i64* %offset58, align 8
  %call61193 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #16
  %cmp63194 = icmp eq i8 %call61193, 1
  br i1 %cmp63194, label %lor.lhs.false, label %land.lhs.true70

lor.lhs.false:                                    ; preds = %if.end60.thread
  %null_mapped66 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 4
  %18 = load i32, i32* %null_mapped66, align 8
  %tobool67.not = icmp eq i32 %18, 0
  br i1 %tobool67.not, label %if.then72, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.end60.thread, %lor.lhs.false
  %from_user = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %map_data, i64 0, i32 5
  %19 = load i32, i32* %from_user, align 4
  %tobool71.not = icmp eq i32 %19, 0
  br i1 %tobool71.not, label %if.else77, label %if.then72

if.then72:                                        ; preds = %if.end60, %land.lhs.true70, %lor.lhs.false
  %call73 = call fastcc i32 @bio_copy_from_iter(%struct.bio* noundef nonnull %call17, %struct.iov_iter* noundef %iter) #16
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end85, label %cleanup90

if.else77:                                        ; preds = %if.end60, %land.lhs.true70
  %bf.load78 = load i8, i8* %2, align 8
  %20 = and i8 %bf.load78, 1
  %bf.cast.not = icmp eq i8 %20, 0
  br i1 %bf.cast.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.else77
  call void @zero_fill_bio(%struct.bio* noundef nonnull %call17) #17
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.else77
  %bi_size83 = getelementptr inbounds %struct.bio, %struct.bio* %call17, i64 0, i32 8, i32 1
  %21 = load i32, i32* %bi_size83, align 8
  %conv84 = zext i32 %21 to i64
  call void @iov_iter_advance(%struct.iov_iter* noundef %iter, i64 noundef %conv84) #17
  br label %if.end85

if.end85:                                         ; preds = %if.then72, %if.end81
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %call17, i64 0, i32 10
  store i8* %2, i8** %bi_private, align 8
  %call86 = call i32 @blk_rq_append_bio(%struct.request* noundef %rq, %struct.bio* noundef nonnull %call17) #16
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup94, label %cleanup90

cleanup90:                                        ; preds = %if.end85, %if.then72
  %ret.2 = phi i32 [ %call73, %if.then72 ], [ %call86, %if.end85 ]
  br i1 %tobool.not, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.else, %cleanup90
  %ret.2198 = phi i32 [ %ret.2, %cleanup90 ], [ -12, %if.else ]
  call void @bio_free_pages(%struct.bio* noundef nonnull %call17) #17
  br label %if.end93

if.end93:                                         ; preds = %if.then34, %if.then92, %cleanup90
  %ret.2197 = phi i32 [ %ret.2198, %if.then92 ], [ %ret.2, %cleanup90 ], [ -12, %if.then34 ]
  call void @bio_put(%struct.bio* noundef nonnull %call17) #17
  br label %out_bmd

out_bmd:                                          ; preds = %land.end.thread, %if.end93
  %ret.3 = phi i32 [ %ret.2197, %if.end93 ], [ -12, %land.end.thread ]
  call void @kfree(i8* noundef %2) #17
  br label %cleanup94

cleanup94:                                        ; preds = %if.end85, %cond.end, %out_bmd
  %retval.0 = phi i32 [ %ret.3, %out_bmd ], [ -12, %cond.end ], [ 0, %if.end85 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_map_user_iov(%struct.request* noundef %rq, %struct.iov_iter* noundef %iter, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %pages = alloca %struct.page**, align 8
  %offs = alloca i64, align 8
  %same_page = alloca i8, align 4
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %call = call fastcc i32 @queue_max_hw_sectors(%struct.request_queue* noundef %0) #16
  %call1 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %cleanup81, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @iov_iter_npages(%struct.iov_iter* noundef %iter, i32 noundef 256) #17
  %conv = trunc i32 %call2 to i16
  %call3 = call %struct.bio* @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef %conv) #17
  %tobool4.not = icmp eq %struct.bio* %call3, null
  br i1 %tobool4.not, label %cleanup81, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %1 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %1, 255
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %call3, i64 0, i32 2
  %2 = load i32, i32* %bi_opf, align 8
  %or = or i32 %2, %and
  store i32 %or, i32* %bi_opf, align 8
  %call7154 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #16
  %tobool8.not155 = icmp eq i64 %call7154, 0
  br i1 %tobool8.not155, label %while.end76, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end6
  %3 = bitcast %struct.page*** %pages to i8*
  %4 = bitcast i64* %offs to i8*
  %5 = bitcast %struct.page*** %pages to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #15
  store %struct.page** null, %struct.page*** %pages, align 8, !annotation !8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #15
  store i64 0, i64* %offs, align 8, !annotation !8
  %call9 = call i64 @iov_iter_get_pages_alloc(%struct.iov_iter* noundef %iter, %struct.page*** noundef nonnull %pages, i64 noundef 9223372036854775807, i64* noundef nonnull %offs) #17
  %cmp = icmp slt i64 %call9, 1
  br i1 %cmp, label %cleanup69.thread132, label %if.end17, !prof !9

cleanup69.thread132:                              ; preds = %while.body
  %tobool15.not = icmp eq i64 %call9, 0
  %6 = trunc i64 %call9 to i32
  %conv16 = select i1 %tobool15.not, i32 -14, i32 %6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  br label %out_unmap

if.end17:                                         ; preds = %while.body
  %7 = load i64, i64* %offs, align 8
  %add = add nuw i64 %call9, 4095
  %sub = add i64 %add, %7
  %div = lshr i64 %sub, 12
  %conv19 = trunc i64 %div to i32
  %8 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %call21 = call fastcc i32 @queue_dma_alignment(%struct.request_queue* noundef %8) #16
  %conv22 = sext i32 %call21 to i64
  %and23 = and i64 %7, %conv22
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %for.cond.preheader, label %if.end58, !prof !10

for.cond.preheader:                               ; preds = %if.end17
  %cmp33146 = icmp sgt i32 %conv19, 0
  br i1 %cmp33146, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = and i64 %div, 4294967295
  %9 = load %struct.page**, %struct.page*** %pages, align 8
  %10 = load %struct.page*, %struct.page** %9, align 8
  %11 = trunc i64 %7 to i32
  %conv36180 = sub i32 4096, %11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %same_page) #15
  store i8 0, i8* %same_page, align 4
  %conv37181 = zext i32 %conv36180 to i64
  %cmp38182 = icmp slt i64 %call9, %conv37181
  %conv41183 = trunc i64 %call9 to i32
  %spec.select184 = select i1 %cmp38182, i32 %conv41183, i32 %conv36180
  %call45185 = call i32 @bio_add_hw_page(%struct.request_queue* noundef %8, %struct.bio* noundef nonnull %call3, %struct.page* noundef %10, i32 noundef %spec.select184, i32 noundef %11, i32 noundef %call, i8* noundef nonnull %same_page) #17
  %tobool46.not186 = icmp eq i32 %call45185, 0
  br i1 %tobool46.not186, label %if.then47, label %for.inc

if.then47:                                        ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv.lcssa = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %added.0149.lcssa = phi i64 [ 0, %for.body.preheader ], [ %add53, %for.inc.for.body_crit_edge ]
  %bytes.0148.lcssa = phi i64 [ %call9, %for.body.preheader ], [ %sub55, %for.inc.for.body_crit_edge ]
  %.lcssa = phi %struct.page* [ %10, %for.body.preheader ], [ %15, %for.inc.for.body_crit_edge ]
  %12 = trunc i64 %indvars.iv.lcssa to i32
  %13 = load i8, i8* %same_page, align 4, !range !11
  %tobool48.not = icmp eq i8 %13, 0
  br i1 %tobool48.not, label %cleanup.thread, label %if.then49

if.then49:                                        ; preds = %if.then47
  call fastcc void @put_page(%struct.page* noundef %.lcssa) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then49, %if.then47
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %same_page) #15
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader, %for.inc.for.body_crit_edge
  %spec.select190 = phi i32 [ %17, %for.inc.for.body_crit_edge ], [ %spec.select184, %for.body.preheader ]
  %bytes.0148189 = phi i64 [ %sub55, %for.inc.for.body_crit_edge ], [ %call9, %for.body.preheader ]
  %added.0149188 = phi i64 [ %add53, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %indvars.iv187 = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %conv52 = zext i32 %spec.select190 to i64
  %add53 = add i64 %added.0149188, %conv52
  %sub55 = sub i64 %bytes.0148189, %conv52
  store i64 0, i64* %offs, align 8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %same_page) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv187, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %14 = load %struct.page**, %struct.page*** %pages, align 8
  %arrayidx = getelementptr %struct.page*, %struct.page** %14, i64 %indvars.iv.next
  %15 = load %struct.page*, %struct.page** %arrayidx, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %same_page) #15
  store i8 0, i8* %same_page, align 4
  %16 = icmp slt i64 %sub55, 4096
  %spec.select194 = select i1 %16, i64 %sub55, i64 4096
  %17 = trunc i64 %spec.select194 to i32
  %call45 = call i32 @bio_add_hw_page(%struct.request_queue* noundef %.pre, %struct.bio* noundef nonnull %call3, %struct.page* noundef %15, i32 noundef %17, i32 noundef 0, i32 noundef %call, i8* noundef nonnull %same_page) #17
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %for.inc

for.end:                                          ; preds = %for.inc, %for.cond.preheader, %cleanup.thread
  %j.0140 = phi i32 [ %12, %cleanup.thread ], [ 0, %for.cond.preheader ], [ %conv19, %for.inc ]
  %bytes.0138 = phi i64 [ %bytes.0148.lcssa, %cleanup.thread ], [ %call9, %for.cond.preheader ], [ %sub55, %for.inc ]
  %added.0136 = phi i64 [ %added.0149.lcssa, %cleanup.thread ], [ 0, %for.cond.preheader ], [ %add53, %for.inc ]
  call void @iov_iter_advance(%struct.iov_iter* noundef %iter, i64 noundef %added.0136) #17
  br label %if.end58

if.end58:                                         ; preds = %if.end17, %for.end
  %j.1 = phi i32 [ %j.0140, %for.end ], [ 0, %if.end17 ]
  %bytes.3 = phi i64 [ %bytes.0138, %for.end ], [ 1, %if.end17 ]
  %cmp60152 = icmp slt i32 %j.1, %conv19
  br i1 %cmp60152, label %while.body62.preheader, label %while.end

while.body62.preheader:                           ; preds = %if.end58
  %18 = zext i32 %j.1 to i64
  %wide.trip.count166 = and i64 %div, 4294967295
  br label %while.body62

while.body62:                                     ; preds = %while.body62.preheader, %while.body62
  %indvars.iv163 = phi i64 [ %18, %while.body62.preheader ], [ %indvars.iv.next164, %while.body62 ]
  %19 = load %struct.page**, %struct.page*** %pages, align 8
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  %arrayidx65 = getelementptr %struct.page*, %struct.page** %19, i64 %indvars.iv163
  %20 = load %struct.page*, %struct.page** %arrayidx65, align 8
  call fastcc void @put_page(%struct.page* noundef %20) #16
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %while.end, label %while.body62

while.end:                                        ; preds = %while.body62, %if.end58
  %21 = load i8*, i8** %5, align 8
  call void @kvfree(i8* noundef %21) #17
  %tobool66.not = icmp eq i64 %bytes.3, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  br i1 %tobool66.not, label %cleanup69, label %while.end76

cleanup69:                                        ; preds = %while.end
  %call7 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #16
  %tobool8.not = icmp eq i64 %call7, 0
  br i1 %tobool8.not, label %while.end76, label %while.body

while.end76:                                      ; preds = %cleanup69, %while.end, %if.end6
  %call77 = call i32 @blk_rq_append_bio(%struct.request* noundef %rq, %struct.bio* noundef nonnull %call3) #16
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %cleanup81, label %out_unmap

out_unmap:                                        ; preds = %cleanup69.thread132, %while.end76
  %ret.3 = phi i32 [ %call77, %while.end76 ], [ %conv16, %cleanup69.thread132 ]
  call void @bio_release_pages(%struct.bio* noundef nonnull %call3, i1 noundef false) #17
  call void @bio_put(%struct.bio* noundef nonnull %call3) #17
  br label %cleanup81

cleanup81:                                        ; preds = %while.end76, %if.end, %entry, %out_unmap
  %retval.0 = phi i32 [ %ret.3, %out_unmap ], [ -22, %entry ], [ -12, %if.end ], [ 0, %while.end76 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #6 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_rq_unmap_user(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %tobool.not18 = icmp eq %struct.bio* %bio, null
  br i1 %tobool.not18, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end6
  %ret.021 = phi i32 [ %ret.1, %if.end6 ], [ 0, %entry ]
  %bio.addr.019 = phi %struct.bio* [ %2, %if.end6 ], [ %bio, %entry ]
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.019, i64 0, i32 10
  %0 = load i8*, i8** %bi_private, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %call = call fastcc i32 @bio_uncopy_user(%struct.bio* noundef nonnull %bio.addr.019) #16
  %tobool2 = icmp eq i32 %call, 0
  %tobool3 = icmp ne i32 %ret.021, 0
  %or.cond = select i1 %tobool2, i1 true, i1 %tobool3
  %spec.select = select i1 %or.cond, i32 %ret.021, i32 %call
  br label %if.end6

if.else:                                          ; preds = %while.body
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.019, i64 0, i32 2
  %1 = load i32, i32* %bi_opf, align 8
  %and = and i32 %1, 255
  %call5 = call fastcc i1 @op_is_write(i32 noundef %and) #16
  %cmp = xor i1 %call5, true
  call void @bio_release_pages(%struct.bio* noundef nonnull %bio.addr.019, i1 noundef %cmp) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.else
  %ret.1 = phi i32 [ %ret.021, %if.else ], [ %spec.select, %if.then ]
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.019, i64 0, i32 0
  %2 = load %struct.bio*, %struct.bio** %bi_next, align 8
  call void @bio_put(%struct.bio* noundef nonnull %bio.addr.019) #17
  %tobool.not = icmp eq %struct.bio* %2, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end6, %entry
  %ret.0.lcssa = phi i32 [ 0, %entry ], [ %ret.1, %if.end6 ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_rq_map_user(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.rq_map_data* noundef %map_data, i8* noundef %ubuf, i64 noundef %len, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %iov = alloca %struct.iovec, align 8
  %i = alloca %struct.iov_iter, align 8
  %0 = bitcast %struct.iovec* %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !8
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %2 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %2, 255
  %call = call fastcc i1 @op_is_write(i32 noundef %and) #16
  %cond = zext i1 %call to i32
  %call1 = call i32 @import_single_range(i32 noundef %cond, i8* noundef %ubuf, i64 noundef %len, %struct.iovec* noundef nonnull %iov, %struct.iov_iter* noundef nonnull %i) #17
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %call3 = call i32 @blk_rq_map_user_iov(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.rq_map_data* noundef %map_data, %struct.iov_iter* noundef nonnull %i, i32 noundef %gfp_mask) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, i8* noundef, i64 noundef, %struct.iovec* noundef, %struct.iov_iter* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_write(i32 noundef %op) unnamed_addr #7 {
entry:
  %and = and i32 %op, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_uncopy_user(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %byval-temp = alloca %struct.iov_iter, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = load i8*, i8** %bi_private, align 8
  %bf.load = load i8, i8* %0, align 8
  %1 = and i8 %bf.load, 2
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 35
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool.not = icmp eq %struct.mm_struct* %4, null
  br i1 %tobool.not, label %if.end5, label %if.else

if.else:                                          ; preds = %if.then
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %5 = load i32, i32* %bi_opf, align 8
  %and = and i32 %5, 255
  %call2 = call fastcc i1 @op_is_write(i32 noundef %and) #16
  br i1 %call2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.else
  %iter = getelementptr inbounds i8, i8* %0, i64 8
  %6 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %byval-temp, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef align 8 dereferenceable(40) %iter, i64 40, i1 false)
  %call4 = call fastcc i32 @bio_copy_to_iter(%struct.bio* noundef %bio, %struct.iov_iter* noundef nonnull %byval-temp) #16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #15
  %bf.load6.pre = load i8, i8* %0, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.else, %if.then3
  %bf.load6 = phi i8 [ %bf.load6.pre, %if.then3 ], [ %bf.load, %if.else ], [ %bf.load, %if.then ]
  %ret.0 = phi i32 [ %call4, %if.then3 ], [ 0, %if.else ], [ -4, %if.then ]
  %7 = and i8 %bf.load6, 1
  %bf.cast8.not = icmp eq i8 %7, 0
  br i1 %bf.cast8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @bio_free_pages(%struct.bio* noundef %bio) #17
  br label %if.end11

if.end11:                                         ; preds = %if.end5, %if.then9, %entry
  %ret.1 = phi i32 [ 0, %entry ], [ %ret.0, %if.then9 ], [ %ret.0, %if.end5 ]
  call void @kfree(i8* noundef %0) #17
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_release_pages(%struct.bio* noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(%struct.bio* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_rq_map_kern(%struct.request_queue* noundef %q, %struct.request* noundef %rq, i8* noundef %kbuf, i32 noundef %len, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %call = call fastcc i1 @op_is_write(i32 noundef %and) #16
  %cmp = xor i1 %call, true
  %conv = zext i1 %cmp to i32
  %1 = ptrtoint i8* %kbuf to i64
  %call1 = call fastcc i32 @queue_max_hw_sectors(%struct.request_queue* noundef %q) #16
  %shl = shl i32 %call1, 9
  %cmp2 = icmp ult i32 %shl, %len
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool = icmp ne i32 %len, 0
  %tobool4 = icmp ne i8* %kbuf, null
  %or.cond = and i1 %tobool4, %tobool
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @blk_rq_aligned(%struct.request_queue* noundef %q, i64 noundef %1, i32 noundef %len) #16
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then15, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end6
  %call10 = call fastcc i32 @object_is_on_stack(i8* noundef nonnull %kbuf) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.then15

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call17 = call fastcc %struct.bio* @bio_map_kern(%struct.request_queue* noundef %q, i8* noundef nonnull %kbuf, i32 noundef %len, i32 noundef %gfp_mask) #16
  br label %if.end18

if.then15:                                        ; preds = %lor.lhs.false9, %if.end6
  %call16 = call fastcc %struct.bio* @bio_copy_kern(%struct.request_queue* noundef %q, i8* noundef nonnull %kbuf, i32 noundef %len, i32 noundef %gfp_mask, i32 noundef %conv) #16
  br label %if.end18

if.end18:                                         ; preds = %lor.lhs.false12, %if.then15
  %bio.0 = phi %struct.bio* [ %call16, %if.then15 ], [ %call17, %lor.lhs.false12 ]
  %2 = bitcast %struct.bio* %bio.0 to i8*
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %2) #16
  br i1 %call19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end18
  %call21 = call fastcc i64 @PTR_ERR(i8* noundef %2) #16
  %conv22 = trunc i64 %call21 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio.0, i64 0, i32 2
  %3 = load i32, i32* %bi_opf, align 8
  %and24 = and i32 %3, -256
  store i32 %and24, i32* %bi_opf, align 8
  %4 = load i32, i32* %cmd_flags, align 8
  %and26 = and i32 %4, 255
  %or = or i32 %and26, %and24
  store i32 %or, i32* %bi_opf, align 8
  %call28 = call i32 @blk_rq_append_bio(%struct.request* noundef %rq, %struct.bio* noundef %bio.0) #16
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.then33, !prof !10

if.then33:                                        ; preds = %if.end23
  call void @bio_put(%struct.bio* noundef %bio.0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then33, %if.end, %entry, %if.then20
  %retval.0 = phi i32 [ %conv22, %if.then20 ], [ -22, %entry ], [ -22, %if.end ], [ %call28, %if.then33 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_hw_sectors(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #6 {
entry:
  %max_hw_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 3
  %0 = load i32, i32* %max_hw_sectors, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_aligned(%struct.request_queue* noundef %q, i64 noundef %addr, i32 noundef %len) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @queue_dma_alignment(%struct.request_queue* noundef %q) #16
  %dma_pad_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 19
  %0 = load i32, i32* %dma_pad_mask, align 8
  %or = or i32 %0, %call
  %conv = zext i32 %or to i64
  %and = and i64 %conv, %addr
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i32 %or, %len
  %tobool2.not = icmp eq i32 %and1, 0
  %narrow = select i1 %tobool.not, i1 %tobool2.not, i1 false
  %1 = zext i1 %narrow to i32
  ret i32 %1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @object_is_on_stack(i8* noundef readnone %obj) unnamed_addr #8 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %1) #16
  %cmp = icmp ule i8* %call1, %obj
  %add.ptr = getelementptr i8, i8* %call1, i64 16384
  %cmp2 = icmp ugt i8* %add.ptr, %obj
  %2 = and i1 %cmp, %cmp2
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @bio_copy_kern(%struct.request_queue* noundef %q, i8* noundef %data, i32 noundef %len, i32 noundef %gfp_mask, i32 noundef %reading) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %data to i64
  %conv = zext i32 %len to i64
  %add = add i64 %0, 4095
  %sub = add i64 %add, %conv
  %shr = lshr i64 %sub, 12
  %shr2 = lshr i64 %0, 12
  %cmp = icmp ult i64 %shr, %shr2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #16
  %1 = bitcast i8* %call to %struct.bio*
  br label %cleanup39

if.end:                                           ; preds = %entry
  %sub4 = sub nsw i64 %shr, %shr2
  %conv6 = trunc i64 %sub4 to i16
  %call7 = call %struct.bio* @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef %conv6) #17
  %tobool.not = icmp eq %struct.bio* %call7, null
  br i1 %tobool.not, label %if.then8, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %tobool11.not86 = icmp eq i32 %len, 0
  br i1 %tobool11.not86, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %or = or i32 %gfp_mask, 3072
  %tobool20.not = icmp eq i32 %reading, 0
  br label %while.body

if.then8:                                         ; preds = %if.end
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %2 = bitcast i8* %call9 to %struct.bio*
  br label %cleanup39

while.body:                                       ; preds = %if.end25, %while.body.lr.ph
  %p.088 = phi i8* [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end25 ]
  %len.addr.087 = phi i32 [ %len, %while.body.lr.ph ], [ %sub31, %if.end25 ]
  %cmp12 = icmp ult i32 %len.addr.087, 4096
  %spec.select = select i1 %cmp12, i32 %len.addr.087, i32 4096
  %call16 = call fastcc %struct.page* @alloc_pages(i32 noundef %or) #16
  %tobool17.not = icmp eq %struct.page* %call16, null
  br i1 %tobool17.not, label %cleanup37, label %if.end19

if.end19:                                         ; preds = %while.body
  br i1 %tobool20.not, label %if.then21, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  %.pre = zext i32 %spec.select to i64
  br label %if.end25

if.then21:                                        ; preds = %if.end19
  %3 = ptrtoint %struct.page* %call16 to i64
  %sub.i = shl i64 %3, 6
  %add.i = and i64 %sub.i, -4096
  %4 = inttoptr i64 %add.i to i8*
  %conv23 = zext i32 %spec.select to i64
  %call24 = call i8* @memcpy(i8* noundef %4, i8* noundef %p.088, i64 noundef %conv23) #17
  br label %if.end25

if.end25:                                         ; preds = %if.end19.if.end25_crit_edge, %if.then21
  %idx.ext.pre-phi = phi i64 [ %.pre, %if.end19.if.end25_crit_edge ], [ %conv23, %if.then21 ]
  %call26 = call i32 @bio_add_pc_page(%struct.request_queue* noundef %q, %struct.bio* noundef nonnull %call7, %struct.page* noundef nonnull %call16, i32 noundef %spec.select, i32 noundef 0) #17
  %cmp27 = icmp ult i32 %call26, %spec.select
  %sub31 = sub i32 %len.addr.087, %spec.select
  %add.ptr = getelementptr i8, i8* %p.088, i64 %idx.ext.pre-phi
  %tobool11.not = icmp eq i32 %sub31, 0
  %or.cond = select i1 %cmp27, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %while.end, label %while.body

while.end:                                        ; preds = %if.end25, %while.cond.preheader
  %tobool33.not = icmp eq i32 %reading, 0
  %bi_end_io35 = getelementptr inbounds %struct.bio, %struct.bio* %call7, i64 0, i32 9
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %while.end
  store void (%struct.bio*)* @bio_copy_kern_endio_read, void (%struct.bio*)** %bi_end_io35, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %call7, i64 0, i32 10
  store i8* %data, i8** %bi_private, align 8
  br label %cleanup39

if.else:                                          ; preds = %while.end
  store void (%struct.bio*)* @bio_copy_kern_endio, void (%struct.bio*)** %bi_end_io35, align 8
  br label %cleanup39

cleanup37:                                        ; preds = %while.body
  call void @bio_free_pages(%struct.bio* noundef nonnull %call7) #17
  call void @bio_put(%struct.bio* noundef nonnull %call7) #17
  %call38 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %5 = bitcast i8* %call38 to %struct.bio*
  br label %cleanup39

cleanup39:                                        ; preds = %if.then34, %if.else, %cleanup37, %if.then8, %if.then
  %retval.0 = phi %struct.bio* [ %1, %if.then ], [ %5, %cleanup37 ], [ %2, %if.then8 ], [ %call7, %if.else ], [ %call7, %if.then34 ]
  ret %struct.bio* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @bio_map_kern(%struct.request_queue* noundef %q, i8* noundef %data, i32 noundef %len, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %data to i64
  %conv = zext i32 %len to i64
  %add = add i64 %0, 4095
  %sub = add i64 %add, %conv
  %shr = lshr i64 %sub, 12
  %shr2 = lshr i64 %0, 12
  %sub3 = sub nsw i64 %shr, %shr2
  %conv4 = trunc i64 %sub3 to i32
  %call = call i1 @is_vmalloc_addr(i8* noundef %data) #17
  %conv5 = trunc i64 %sub3 to i16
  %call6 = call %struct.bio* @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef %conv5) #17
  %tobool.not = icmp eq %struct.bio* %call6, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %1 = bitcast i8* %call7 to %struct.bio*
  br label %cleanup37

if.end:                                           ; preds = %entry
  br i1 %call, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %call6, i64 0, i32 10
  store i8* %data, i8** %bi_private, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %cmp98 = icmp sgt i32 %conv4, 0
  br i1 %cmp98, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end10
  %2 = trunc i64 %0 to i32
  %conv11 = and i32 %2, 4095
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %data.addr.0102 = phi i8* [ %add.ptr, %for.inc ], [ %data, %for.body.preheader ]
  %len.addr.0101 = phi i32 [ %sub36, %for.inc ], [ %len, %for.body.preheader ]
  %i.0100 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %offset.099 = phi i32 [ 0, %for.inc ], [ %conv11, %for.body.preheader ]
  %sub14 = sub nuw nsw i32 4096, %offset.099
  %cmp16 = icmp eq i32 %len.addr.0101, 0
  br i1 %cmp16, label %for.end, label %if.end19

if.end19:                                         ; preds = %for.body
  %cmp20 = icmp ugt i32 %sub14, %len.addr.0101
  %spec.select = select i1 %cmp20, i32 %len.addr.0101, i32 %sub14
  br i1 %call, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end19
  %3 = ptrtoint i8* %data.addr.0102 to i64
  %sub26 = add i64 %3, 549755813888
  %4 = lshr i64 %sub26, 6
  %mul = and i64 %4, 288230376151711680
  %add27 = add nsw i64 %mul, -8589934592
  %5 = inttoptr i64 %add27 to %struct.page*
  br label %if.end29

if.else:                                          ; preds = %if.end19
  %call28 = call %struct.page* @vmalloc_to_page(i8* noundef %data.addr.0102) #17
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then25
  %page.0 = phi %struct.page* [ %call28, %if.else ], [ %5, %if.then25 ]
  %call30 = call i32 @bio_add_pc_page(%struct.request_queue* noundef %q, %struct.bio* noundef nonnull %call6, %struct.page* noundef %page.0, i32 noundef %spec.select, i32 noundef %offset.099) #17
  %cmp31 = icmp ult i32 %call30, %spec.select
  br i1 %cmp31, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %if.end29
  call void @bio_put(%struct.bio* noundef nonnull %call6) #17
  %call34 = call fastcc i8* @ERR_PTR(i64 noundef -22) #16
  %6 = bitcast i8* %call34 to %struct.bio*
  br label %cleanup37

for.inc:                                          ; preds = %if.end29
  %idx.ext = zext i32 %spec.select to i64
  %add.ptr = getelementptr i8, i8* %data.addr.0102, i64 %idx.ext
  %sub36 = sub i32 %len.addr.0101, %spec.select
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %if.end10
  %bi_end_io = getelementptr inbounds %struct.bio, %struct.bio* %call6, i64 0, i32 9
  store void (%struct.bio*)* @bio_map_kern_endio, void (%struct.bio*)** %bi_end_io, align 8
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup.thread, %for.end, %if.then
  %retval.2 = phi %struct.bio* [ %call6, %for.end ], [ %1, %if.then ], [ %6, %cleanup.thread ]
  ret %struct.bio* %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_no_advance_iter(%struct.bio* nocapture noundef readonly %bio) unnamed_addr #6 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %trunc = trunc i32 %0 to i8
  %switch.tableidx = add i8 %trunc, -3
  %1 = icmp ult i8 %switch.tableidx, 7
  %2 = and i8 %switch.tableidx, 1
  %switch.idx.cast.not = icmp eq i8 %2, 0
  %3 = select i1 %1, i1 %switch.idx.cast.not, i1 false
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bvec_iter_advance_single(%struct.bio_vec* nocapture noundef readonly %bv, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #4 {
entry:
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %0 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %0, %bytes
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %1 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %1 to i64
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %bv, i64 %idxprom, i32 1
  %2 = load i32, i32* %bv_len, align 8
  %cmp = icmp eq i32 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add i32 %1, 1
  store i32 %inc, i32* %bi_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %done.0 = phi i32 [ 0, %if.then ], [ %add, %entry ]
  store i32 %done.0, i32* %bi_bvec_done, align 8
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %3, %bytes
  store i32 %sub, i32* %bi_size, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iov_iter_type(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #6 {
entry:
  %iter_type = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  %0 = load i8, i8* %iter_type, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio_map_data* @bio_alloc_map_data(%struct.iov_iter* nocapture noundef readonly %data, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %nr_segs = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %data, i64 0, i32 5, i32 0
  %0 = load i64, i64* %nr_segs, align 8
  %cmp = icmp ugt i64 %0, 1024
  br i1 %cmp, label %cleanup, label %if.end9.i

if.end9.i:                                        ; preds = %entry
  %call = call fastcc i64 @__ab_c_size(i64 noundef %0) #16
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %call, i32 noundef %gfp_mask) #17
  %tobool.not = icmp eq i8* %call10.i, null
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end9.i
  %.pre = load i64, i64* %nr_segs, align 8
  %1 = bitcast i8* %call10.i to %struct.bio_map_data*
  %iov = getelementptr inbounds i8, i8* %call10.i, i64 48
  %iov5 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %data, i64 0, i32 4, i32 0
  %2 = bitcast %struct.iovec** %iov5 to i8**
  %3 = load i8*, i8** %2, align 8
  %mul = shl i64 %.pre, 4
  %call7 = call i8* @memcpy(i8* noundef %iov, i8* noundef %3, i64 noundef %mul) #17
  %iter = getelementptr inbounds i8, i8* %call10.i, i64 8
  %4 = getelementptr %struct.iov_iter, %struct.iov_iter* %data, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(40) %iter, i8* noundef align 8 dereferenceable(40) %4, i64 40, i1 false)
  %5 = getelementptr inbounds i8, i8* %call10.i, i64 32
  %6 = bitcast i8* %5 to i8**
  store i8* %iov, i8** %6, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %entry, %if.end4
  %retval.0 = phi %struct.bio_map_data* [ %1, %if.end4 ], [ null, %entry ], [ null, %if.end9.i ]
  ret %struct.bio_map_data* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @bio_max_segs(i32 noundef %nr_segs) unnamed_addr #7 {
entry:
  %cmp = icmp ult i32 %nr_segs, 256
  %cond = select i1 %cmp, i32 %nr_segs, i32 256
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.bio* @bio_kmalloc(i32 noundef, i16 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #16
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) #16
  ret %struct.page* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_pc_page(%struct.request_queue* noundef, %struct.bio* noundef, %struct.page* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @iov_iter_rw(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #6 {
entry:
  %data_source = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  %0 = load i8, i8* %data_source, align 1, !range !11
  ret i8 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_copy_from_iter(%struct.bio* nocapture noundef readonly %bio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %iter_all = alloca %struct.bvec_iter_all, align 8
  %0 = bitcast %struct.bvec_iter_all* %iter_all to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !8
  %call = call fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef nonnull %iter_all) #16
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 0
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 2
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %call1 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #16
  br i1 %call1, label %for.body, label %cleanup10

for.body:                                         ; preds = %for.cond
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  %2 = load i32, i32* %bv_offset, align 4
  %conv = zext i32 %2 to i64
  %3 = load i32, i32* %bv_len, align 8
  %conv2 = zext i32 %3 to i64
  %call3 = call i64 @copy_page_from_iter(%struct.page* noundef %1, i64 noundef %conv, i64 noundef %conv2, %struct.iov_iter* noundef %iter) #17
  %call4 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #16
  %tobool.not = icmp eq i64 %call4, 0
  br i1 %tobool.not, label %cleanup10, label %if.end

if.end:                                           ; preds = %for.body
  %4 = load i32, i32* %bv_len, align 8
  %conv6 = zext i32 %4 to i64
  %cmp = icmp slt i64 %call3, %conv6
  br i1 %cmp, label %cleanup10, label %for.cond

cleanup10:                                        ; preds = %if.end, %for.body, %for.cond
  %retval.2 = phi i32 [ 0, %for.cond ], [ 0, %for.body ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #15
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(%struct.bio* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(%struct.bio* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size(i64 noundef %a) unnamed_addr #9 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 16)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %2, i64 48)
  %retval.0 = select i1 %1, i64 -1, i64 %spec.select
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask) #16
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #8 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #17
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #8 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #19, !srcloc !13
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef writeonly %iter_all) unnamed_addr #12 {
entry:
  %done = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 2
  store i32 0, i32* %done, align 4
  %idx = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 1
  store i32 0, i32* %idx, align 8
  %bv = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0
  ret %struct.bio_vec* %bv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @bio_next_segment(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter_all* nocapture noundef %iter) unnamed_addr #4 {
entry:
  %idx = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter, i64 0, i32 1
  %0 = load i32, i32* %idx, align 8
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 12
  %1 = load i16, i16* %bi_vcnt, align 8
  %conv = zext i16 %1 to i32
  %cmp.not = icmp slt i32 %0, %conv
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr %struct.bio_vec, %struct.bio_vec* %2, i64 %idxprom
  call fastcc void @bvec_advance(%struct.bio_vec* noundef %arrayidx, %struct.bvec_iter_all* noundef %iter) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_page_from_iter(%struct.page* noundef, i64 noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bvec_advance(%struct.bio_vec* nocapture noundef readonly %bvec, %struct.bvec_iter_all* nocapture noundef %iter_all) unnamed_addr #4 {
entry:
  %done = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 2
  %0 = load i32, i32* %done, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bv_page = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0, i32 0
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  %incdec.ptr = getelementptr %struct.page, %struct.page* %1, i64 1
  store %struct.page* %incdec.ptr, %struct.page** %bv_page, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %bv_page2 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 0
  %2 = load %struct.page*, %struct.page** %bv_page2, align 8
  %bv_offset3 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 2
  %3 = load i32, i32* %bv_offset3, align 4
  %shr = lshr i32 %3, 12
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %2, i64 %idx.ext
  %bv_page4 = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0, i32 0
  store %struct.page* %add.ptr, %struct.page** %bv_page4, align 8
  %4 = load i32, i32* %bv_offset3, align 4
  %5 = and i32 %4, 4095
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %5, %if.else ], [ 0, %if.then ]
  %6 = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0, i32 2
  store i32 %.sink, i32* %6, align 4
  %sub = sub nuw nsw i32 4096, %.sink
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 1
  %7 = load i32, i32* %bv_len, align 8
  %sub12 = sub i32 %7, %0
  %cmp = icmp ult i32 %sub, %sub12
  %cond = select i1 %cmp, i32 %sub, i32 %sub12
  %bv_len14 = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 0, i32 1
  store i32 %cond, i32* %bv_len14, align 8
  %add = add i32 %cond, %0
  store i32 %add, i32* %done, align 4
  %8 = load i32, i32* %bv_len, align 8
  %cmp19 = icmp eq i32 %add, %8
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %idx = getelementptr inbounds %struct.bvec_iter_all, %struct.bvec_iter_all* %iter_all, i64 0, i32 1
  %9 = load i32, i32* %idx, align 8
  %inc = add i32 %9, 1
  store i32 %inc, i32* %idx, align 8
  store i32 0, i32* %done, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(%struct.iov_iter* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iov_iter_get_pages_alloc(%struct.iov_iter* noundef, %struct.page*** noundef, i64 noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_hw_page(%struct.request_queue* noundef, %struct.bio* noundef, %struct.page* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #13 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.4* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %sub = add i64 %1, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint %struct.page* %page to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_copy_to_iter(%struct.bio* nocapture noundef readonly %bio, %struct.iov_iter* noundef %iter) unnamed_addr #0 {
entry:
  %iter_all = alloca %struct.bvec_iter_all, align 8
  %0 = bitcast %struct.bvec_iter_all* %iter_all to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !8
  %call = call fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef nonnull %iter_all) #16
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 0
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 2
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %call1 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #16
  br i1 %call1, label %for.body, label %cleanup10

for.body:                                         ; preds = %for.cond
  %1 = load %struct.page*, %struct.page** %bv_page, align 8
  %2 = load i32, i32* %bv_offset, align 4
  %conv = zext i32 %2 to i64
  %3 = load i32, i32* %bv_len, align 8
  %conv2 = zext i32 %3 to i64
  %call3 = call i64 @copy_page_to_iter(%struct.page* noundef %1, i64 noundef %conv, i64 noundef %conv2, %struct.iov_iter* noundef %iter) #17
  %call4 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #16
  %tobool.not = icmp eq i64 %call4, 0
  br i1 %tobool.not, label %cleanup10, label %if.end

if.end:                                           ; preds = %for.body
  %4 = load i32, i32* %bv_len, align 8
  %conv6 = zext i32 %4 to i64
  %cmp = icmp slt i64 %call3, %conv6
  br i1 %cmp, label %cleanup10, label %for.cond

cleanup10:                                        ; preds = %if.end, %for.body, %for.cond
  %retval.2 = phi i32 [ 0, %for.cond ], [ 0, %for.body ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #15
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_page_to_iter(%struct.page* noundef, i64 noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bio_copy_kern_endio_read(%struct.bio* noundef %bio) #0 {
entry:
  %iter_all = alloca %struct.bvec_iter_all, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = load i8*, i8** %bi_private, align 8
  %1 = bitcast %struct.bvec_iter_all* %iter_all to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  %call = call fastcc %struct.bio_vec* @bvec_init_iter_all(%struct.bvec_iter_all* noundef nonnull %iter_all) #16
  %call18 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #16
  br i1 %call18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %call, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %p.09 = phi i8* [ %0, %for.body.lr.ph ], [ %add.ptr, %for.body ]
  call fastcc void @memcpy_from_bvec(i8* noundef %p.09, %struct.bio_vec* noundef %call) #16
  %2 = load i32, i32* %bv_len, align 8
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr i8, i8* %p.09, i64 %idx.ext
  %call1 = call fastcc i1 @bio_next_segment(%struct.bio* noundef %bio, %struct.bvec_iter_all* noundef nonnull %iter_all) #16
  br i1 %call1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @bio_copy_kern_endio(%struct.bio* noundef %bio) #16
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bio_copy_kern_endio(%struct.bio* noundef %bio) #0 {
entry:
  call void @bio_free_pages(%struct.bio* noundef %bio) #17
  call void @bio_put(%struct.bio* noundef %bio) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memcpy_from_bvec(i8* noundef %to, %struct.bio_vec* nocapture noundef readonly %bvec) unnamed_addr #0 {
entry:
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %bv_page, align 8
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 2
  %1 = load i32, i32* %bv_offset, align 4
  %conv = zext i32 %1 to i64
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 1
  %2 = load i32, i32* %bv_len, align 8
  %conv1 = zext i32 %2 to i64
  call fastcc void @memcpy_from_page(i8* noundef %to, %struct.page* noundef %0, i64 noundef %conv, i64 noundef %conv1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memcpy_from_page(i8* noundef %to, %struct.page* noundef %page, i64 noundef %offset, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_local_page(%struct.page* noundef %page) #16
  %add.ptr = getelementptr i8, i8* %call, i64 %offset
  %call1 = call i8* @memcpy(i8* noundef %to, i8* noundef %add.ptr, i64 noundef %len) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap_local_page(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_vmalloc_addr(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @vmalloc_to_page(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bio_map_kern_endio(%struct.bio* noundef %bio) #0 {
entry:
  call void @bio_put(%struct.bio* noundef %bio) #17
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #14

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
!12 = !{i64 1081338}
!13 = !{i64 2149077315, i64 2149077362, i64 2149077368, i64 2149077405, i64 2149077423, i64 2149078350, i64 2149078398, i64 2149078446, i64 2149078509, i64 2149078558, i64 2149077501, i64 2149077526, i64 2149077552, i64 2149077558, i64 2149077595, i64 2149077601, i64 2149077651, i64 2149077697, i64 2149077730}
!14 = !{i64 2147744423, i64 2147745071, i64 2147745101, i64 2147745133, i64 2147745167, i64 2147745203, i64 2147745228}
