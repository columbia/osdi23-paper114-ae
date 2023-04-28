; ModuleID = 'block/blk-mq-sched.c'
source_filename = "block/blk-mq-sched.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.72, %union.anon.73, %union.anon.74, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.77, void (%struct.request*, i8)*, i8* }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.kmem_cache = type opaque
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, {}*, {}*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, {}*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
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
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, {}*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, {}*, {}*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
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
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.4, %union.anon.66, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.66 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.58 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
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

@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sched_assign_ioc(%struct.request* nocapture noundef %rq) local_unnamed_addr #0 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %io_context = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 112
  %3 = load %struct.io_context*, %struct.io_context** %io_context, align 16
  %tobool.not = icmp eq %struct.io_context* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 14, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #11
  %call2 = call %struct.io_cq* @ioc_lookup_icq(%struct.io_context* noundef nonnull %3, %struct.request_queue* noundef %0) #11
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #11
  %tobool4.not = icmp eq %struct.io_cq* %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = call %struct.io_cq* @ioc_create_icq(%struct.io_context* noundef nonnull %3, %struct.request_queue* noundef %0, i32 noundef 2592) #11
  %tobool7.not = icmp eq %struct.io_cq* %call6, null
  br i1 %tobool7.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end
  %icq.0 = phi %struct.io_cq* [ %call2, %if.end ], [ %call6, %if.then5 ]
  %ioc11 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %icq.0, i64 0, i32 1
  %4 = load %struct.io_context*, %struct.io_context** %ioc11, align 8
  call void @get_io_context(%struct.io_context* noundef %4) #11
  %5 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14
  %icq12 = bitcast %union.anon.74* %5 to %struct.io_cq**
  store %struct.io_cq* %icq.0, %struct.io_cq** %icq12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry, %if.end10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.io_cq* @ioc_lookup_icq(%struct.io_context* noundef, %struct.request_queue* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.io_cq* @ioc_create_icq(%struct.io_context* noundef, %struct.request_queue* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_io_context(%struct.io_context* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sched_mark_restart_hctx(%struct.blk_mq_hw_ctx* noundef %hctx) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @set_bit(i64* noundef %state) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sched_restart(%struct.blk_mq_hw_ctx* noundef %hctx) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 4
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @clear_bit(i64* noundef %state) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef true) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sched_dispatch_requests(%struct.blk_mq_hw_ctx* noundef %hctx) local_unnamed_addr #0 {
entry:
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %call = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  br i1 %call, label %cleanup, label %lor.rhs, !prof !10

lor.rhs:                                          ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 11
  %1 = load volatile i64, i64* %queue_flags, align 8
  %2 = and i64 %1, 16777216
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !11

if.end:                                           ; preds = %lor.rhs
  %run = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 22
  %3 = load i64, i64* %run, align 16
  %inc = add i64 %3, 1
  store i64 %inc, i64* %run, align 16
  %call4 = call fastcc i32 @__blk_mq_sched_dispatch_requests(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  %cmp = icmp eq i32 %call4, -11
  br i1 %cmp, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i32 @__blk_mq_sched_dispatch_requests(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  %cmp8 = icmp eq i32 %call7, -11
  br i1 %cmp8, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.then6
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef true) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then10, %if.then6, %lor.rhs
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #3 {
entry:
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %0 = load volatile i64, i64* %state, align 8
  %conv.i1 = and i64 %0, 1
  %tobool = icmp ne i64 %conv.i1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__blk_mq_sched_dispatch_requests(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %rq_list = alloca %struct.list_head, align 8
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %1, null
  %2 = bitcast %struct.list_head* %rq_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %rq_list, i64 0, i32 0
  store %struct.list_head* %rq_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %rq_list, i64 0, i32 1
  store %struct.list_head* %rq_list, %struct.list_head** %prev, align 8
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 1
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %dispatch) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef %dispatch) #12
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call fastcc void @list_splice_init(%struct.list_head* noundef %dispatch, %struct.list_head* noundef nonnull %rq_list) #12
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %call9 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %rq_list) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.end8
  call void @blk_mq_sched_mark_restart_hctx(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  %call12 = call i1 @blk_mq_dispatch_rq_list(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef nonnull %rq_list, i32 noundef 0) #11
  br i1 %call12, label %if.then13, label %if.end32

if.then13:                                        ; preds = %if.then11
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then13
  %call16 = call fastcc i32 @blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  br label %if.end32

if.else:                                          ; preds = %if.then13
  %call17 = call fastcc i32 @blk_mq_do_dispatch_ctx(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  br label %if.end32

if.else20:                                        ; preds = %if.end8
  br i1 %tobool.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else20
  %call23 = call fastcc i32 @blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  br label %if.end32

if.else24:                                        ; preds = %if.else20
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 12
  %3 = load i32, i32* %dispatch_busy, align 16
  %tobool25.not = icmp eq i32 %3, 0
  br i1 %tobool25.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %if.else24
  %call27 = call fastcc i32 @blk_mq_do_dispatch_ctx(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  br label %if.end32

if.else28:                                        ; preds = %if.else24
  call void @blk_mq_flush_busy_ctxs(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef nonnull %rq_list) #11
  %call29 = call i1 @blk_mq_dispatch_rq_list(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef nonnull %rq_list, i32 noundef 0) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %if.else28, %if.then26, %if.then11, %if.else, %if.then15
  %ret.0 = phi i32 [ %call23, %if.then22 ], [ %call27, %if.then26 ], [ 0, %if.else28 ], [ %call16, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__blk_mq_sched_bio_merge(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, i32 noundef %nr_segs) local_unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type1 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type1, align 8
  %bio_merge = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 1, i32 6
  %2 = load i1 (%struct.request_queue*, %struct.bio*, i32)*, i1 (%struct.request_queue*, %struct.bio*, i32)** %bio_merge, align 8
  %tobool2.not = icmp eq i1 (%struct.request_queue*, %struct.bio*, i32)* %2, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i1 %2(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, i32 noundef %nr_segs) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call6 = call fastcc %struct.blk_mq_ctx* @blk_mq_get_ctx(%struct.request_queue* noundef %q) #12
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %3 = load i32, i32* %bi_opf, align 8
  %call7 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue(i32 noundef %3, %struct.blk_mq_ctx* noundef %call6) #12
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %call7, i64 0, i32 5
  %4 = load i64, i64* %flags, align 64
  %and = and i64 %4, 1
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %type8 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %call7, i64 0, i32 13
  %5 = load i16, i16* %type8, align 4
  %idxprom = zext i16 %5 to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %call6, i64 0, i32 0, i32 1, i64 %idxprom
  %call10 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %arrayidx) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %rlock.i = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %call6, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %call17 = call i1 @blk_bio_list_merge(%struct.request_queue* noundef %q, %struct.list_head* noundef %arrayidx, %struct.bio* noundef %bio, i32 noundef %nr_segs) #11
  br i1 %call17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  %rq_merged = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %call6, i64 0, i32 5
  %6 = load i64, i64* %rq_merged, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %rq_merged, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %if.end19, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ %call17, %if.end19 ], [ false, %lor.lhs.false ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.blk_mq_ctx* @blk_mq_get_ctx(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc %struct.blk_mq_ctx* @__blk_mq_get_ctx(%struct.request_queue* noundef %q, i32 noundef %1) #12
  ret %struct.blk_mq_ctx* %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue(i32 noundef %flags, %struct.blk_mq_ctx* nocapture noundef readonly %ctx) unnamed_addr #5 {
entry:
  %0 = and i32 %flags, 16777216
  %tobool.not = icmp eq i32 %0, 0
  %and1 = and i32 %flags, 255
  %cmp = icmp eq i32 %and1, 0
  %spec.select = zext i1 %cmp to i64
  %type.0 = select i1 %tobool.not, i64 %spec.select, i64 2
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 3, i64 %type.0
  %1 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  ret %struct.blk_mq_hw_ctx* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #13, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.list_head*
  %cmp = icmp eq %struct.list_head* %1, %head
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp2 = icmp eq %struct.list_head* %2, %head
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_bio_list_merge(%struct.request_queue* noundef, %struct.list_head* noundef, %struct.bio* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_mq_sched_try_insert_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.list_head* noundef %free) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @rq_mergeable(%struct.request* noundef %rq) #12
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call i1 @elv_attempt_insert_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.list_head* noundef %free) #11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %call1, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rq_mergeable(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @blk_rq_is_passthrough(%struct.request* noundef %rq) #12
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %trunc = trunc i32 %0 to i8
  switch i8 %trunc, label %if.end12 [
    i8 2, label %return
    i8 9, label %return
    i8 13, label %return
  ]

if.end12:                                         ; preds = %if.end
  %1 = and i32 %0, 409600
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %2 = load i32, i32* %rq_flags, align 4
  %and17 = and i32 %2, 262170
  %tobool18.not = icmp eq i32 %and17, 0
  br label %return

return:                                           ; preds = %if.end16, %if.end12, %if.end, %if.end, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ false, %if.end ], [ false, %if.end ], [ false, %if.end12 ], [ %tobool18.not, %if.end16 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @elv_attempt_insert_merge(%struct.request_queue* noundef, %struct.request* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sched_insert_request(%struct.request* noundef %rq, i1 noundef %at_head, i1 noundef %run_queue, i1 noundef %async) local_unnamed_addr #0 {
entry:
  %list = alloca %struct.list_head, align 8
  %q3 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q3, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %2 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %1, null
  br i1 %tobool.not, label %if.end.thread, label %land.rhs

land.rhs:                                         ; preds = %entry
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %4 = load i32, i32* %tag, align 8
  %cmp.not = icmp eq i32 %4, -1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq-sched.c\22; .popsection; .long 14472b - 14470b; .short 437; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs
  %call = call fastcc i1 @blk_mq_sched_bypass_insert(%struct.request* noundef %rq) #12
  br i1 %call, label %if.then18, label %if.then27

if.end.thread:                                    ; preds = %entry
  %call60 = call fastcc i1 @blk_mq_sched_bypass_insert(%struct.request* noundef %rq) #12
  br i1 %call60, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end.thread, %if.end
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %5 = load i32, i32* %rq_flags, align 4
  %and = and i32 %5, 16
  %tobool19.not = icmp ne i32 %and, 0
  %narrow = or i1 %tobool19.not, %at_head
  call void @blk_mq_request_bypass_insert(%struct.request* noundef %rq, i1 noundef %narrow, i1 noundef false) #11
  br label %run

if.then27:                                        ; preds = %if.end
  %6 = bitcast %struct.list_head* %list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #13
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  call fastcc void @list_add(%struct.list_head* noundef %queuelist, %struct.list_head* noundef nonnull %list) #12
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 0
  %7 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %insert_requests = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %7, i64 0, i32 1, i32 13
  %8 = load void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)** %insert_requests, align 8
  call void %8(%struct.blk_mq_hw_ctx* noundef %3, %struct.list_head* noundef nonnull %list, i1 noundef %at_head) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  br label %run

if.else:                                          ; preds = %if.end.thread
  %rlock.i = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %2, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @__blk_mq_insert_request(%struct.blk_mq_hw_ctx* noundef %3, %struct.request* noundef %rq, i1 noundef %at_head) #11
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  br label %run

run:                                              ; preds = %if.then27, %if.else, %if.then18
  br i1 %run_queue, label %if.then33, label %if.end35

if.then33:                                        ; preds = %run
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %3, i1 noundef %async) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %run
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_mq_sched_bypass_insert(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @blk_rq_is_passthrough(%struct.request* noundef %rq) #12
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %call, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_request_bypass_insert(%struct.request* noundef, i1 noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_insert_request(%struct.blk_mq_hw_ctx* noundef, %struct.request* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sched_insert_requests(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_ctx* noundef %ctx, %struct.list_head* noundef %list, i1 noundef %run_queue_async) local_unnamed_addr #0 {
entry:
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 2
  call fastcc void @percpu_ref_get(%struct.percpu_ref* noundef %q_usage_counter) #12
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 1
  %2 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %2, i64 0, i32 0
  %3 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %insert_requests = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %3, i64 0, i32 1, i32 13
  %4 = load void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)** %insert_requests, align 8
  call void %4(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef %list, i1 noundef false) #11
  br label %if.end10

if.else:                                          ; preds = %entry
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 12
  %5 = load i32, i32* %dispatch_busy, align 16
  %tobool2.not = icmp ne i32 %5, 0
  %brmerge = or i1 %tobool2.not, %run_queue_async
  br i1 %brmerge, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @blk_mq_try_issue_list_directly(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef %list) #11
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #12
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %out

if.end9:                                          ; preds = %if.else, %if.then6
  call void @blk_mq_insert_requests(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_ctx* noundef %ctx, %struct.list_head* noundef %list) #11
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef %run_queue_async) #11
  br label %out

out:                                              ; preds = %if.then6, %if.end10
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %q_usage_counter) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_get(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  call fastcc void @percpu_ref_get_many(%struct.percpu_ref* noundef %ref) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_try_issue_list_directly(%struct.blk_mq_hw_ctx* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_insert_requests(%struct.blk_mq_hw_ctx* noundef, %struct.blk_mq_ctx* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  call fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_init_sched(%struct.request_queue* noundef %q, %struct.elevator_type* noundef %e) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.elevator_type* %e, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  store %struct.elevator_queue* null, %struct.elevator_queue** %elevator, align 8
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 4
  %1 = load i32, i32* %queue_depth, align 4
  %conv = zext i32 %1 to i64
  %nr_requests = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 18
  store i64 %conv, i64* %nr_requests, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tag_set1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %2 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set1, align 8
  %queue_depth2 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %2, i64 0, i32 4
  %3 = load i32, i32* %queue_depth2, align 4
  %cmp = icmp ult i32 %3, 128
  %cond = select i1 %cmp, i32 %3, i32 128
  %mul = shl nuw nsw i32 %cond, 1
  %conv4 = zext i32 %mul to i64
  %nr_requests5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 18
  store i64 %conv4, i64* %nr_requests5, align 8
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %4 = load i32, i32* %nr_hw_queues, align 8
  %cmp6110.not = icmp eq i32 %4, 0
  br i1 %cmp6110.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %5 = load i32, i32* %nr_hw_queues, align 8
  %6 = zext i32 %5 to i64
  %cmp6 = icmp ult i64 %indvars.iv.next, %6
  br i1 %cmp6, label %for.body, label %for.end.loopexit

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %7 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, i64 %indvars.iv
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %9 = trunc i64 %indvars.iv to i32
  %call = call fastcc i32 @blk_mq_sched_alloc_tags(%struct.request_queue* noundef %q, %struct.blk_mq_hw_ctx* noundef %8, i32 noundef %9) #12
  %tobool10.not = icmp eq i32 %call, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool10.not, label %for.cond, label %err_free_tags

for.end.loopexit:                                 ; preds = %for.cond
  %.pre = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set1, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %10 = phi %struct.blk_mq_tag_set* [ %.pre, %for.end.loopexit ], [ %2, %if.end ]
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %10, i64 0, i32 9
  %11 = load i32, i32* %flags, align 8
  %call14 = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %11) #12
  br i1 %call14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %for.end
  %call16 = call fastcc i32 @blk_mq_init_sched_shared_sbitmap(%struct.request_queue* noundef %q) #12
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %err_free_tags

if.end20:                                         ; preds = %if.then15, %for.end
  %init_sched = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 1, i32 0
  %12 = load i32 (%struct.request_queue*, %struct.elevator_type*)*, i32 (%struct.request_queue*, %struct.elevator_type*)** %init_sched, align 8
  %call21 = call i32 %12(%struct.request_queue* noundef %q, %struct.elevator_type* noundef nonnull %e) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond25.preheader, label %err_free_sbitmap

for.cond25.preheader:                             ; preds = %if.end20
  %13 = load i32, i32* %nr_hw_queues, align 8
  %cmp27112.not = icmp eq i32 %13, 0
  br i1 %cmp27112.not, label %cleanup, label %land.rhs29.lr.ph

land.rhs29.lr.ph:                                 ; preds = %for.cond25.preheader
  %init_hctx = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %e, i64 0, i32 1, i32 2
  %queue_hw_ctx30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs29

land.rhs29:                                       ; preds = %land.rhs29.lr.ph, %if.end47
  %14 = phi i32 [ %13, %land.rhs29.lr.ph ], [ %20, %if.end47 ]
  %indvars.iv117 = phi i64 [ 0, %land.rhs29.lr.ph ], [ %indvars.iv.next118, %if.end47 ]
  %15 = load i32 (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_hw_ctx*, i32)** %init_hctx, align 8
  %tobool38.not = icmp eq i32 (%struct.blk_mq_hw_ctx*, i32)* %15, null
  br i1 %tobool38.not, label %if.end47, label %if.then39

if.then39:                                        ; preds = %land.rhs29
  %16 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx30, align 8
  %arrayidx32 = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %16, i64 %indvars.iv117
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx32, align 8
  %18 = trunc i64 %indvars.iv117 to i32
  %call42 = call i32 %15(%struct.blk_mq_hw_ctx* noundef %17, i32 noundef %18) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then39.if.end47_crit_edge, label %if.then44

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  %.pre120 = load i32, i32* %nr_hw_queues, align 8
  br label %if.end47

if.then44:                                        ; preds = %if.then39
  %elevator45 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %19 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator45, align 8
  call void @blk_mq_sched_free_requests(%struct.request_queue* noundef %q) #12
  call void @blk_mq_exit_sched(%struct.request_queue* noundef %q, %struct.elevator_queue* noundef %19) #12
  %kobj = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %19, i64 0, i32 2
  call void @kobject_put(%struct.kobject* noundef %kobj) #11
  br label %cleanup

if.end47:                                         ; preds = %if.then39.if.end47_crit_edge, %land.rhs29
  %20 = phi i32 [ %.pre120, %if.then39.if.end47_crit_edge ], [ %14, %land.rhs29 ]
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %21 = zext i32 %20 to i64
  %cmp27 = icmp ult i64 %indvars.iv.next118, %21
  br i1 %cmp27, label %land.rhs29, label %cleanup

err_free_sbitmap:                                 ; preds = %if.end20
  %22 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set1, align 8
  %flags52 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %22, i64 0, i32 9
  %23 = load i32, i32* %flags52, align 8
  %call53 = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %23) #12
  br i1 %call53, label %if.then54, label %err_free_tags

if.then54:                                        ; preds = %err_free_sbitmap
  call fastcc void @blk_mq_exit_sched_shared_sbitmap(%struct.request_queue* noundef %q) #12
  br label %err_free_tags

err_free_tags:                                    ; preds = %for.body, %err_free_sbitmap, %if.then54, %if.then15
  %ret.0 = phi i32 [ %call16, %if.then15 ], [ %call21, %if.then54 ], [ %call21, %err_free_sbitmap ], [ %call, %for.body ]
  call void @blk_mq_sched_free_requests(%struct.request_queue* noundef %q) #12
  call fastcc void @blk_mq_sched_tags_teardown(%struct.request_queue* noundef %q) #12
  %elevator56 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  store %struct.elevator_queue* null, %struct.elevator_queue** %elevator56, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %for.cond25.preheader, %err_free_tags, %if.then44, %if.then
  %retval.0 = phi i32 [ %ret.0, %err_free_tags ], [ %call42, %if.then44 ], [ 0, %if.then ], [ 0, %for.cond25.preheader ], [ 0, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_sched_alloc_tags(%struct.request_queue* nocapture noundef readonly %q, %struct.blk_mq_hw_ctx* nocapture noundef %hctx, i32 noundef %hctx_idx) unnamed_addr #0 {
entry:
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %nr_requests = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 18
  %1 = load i64, i64* %nr_requests, align 8
  %conv = trunc i64 %1 to i32
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 5
  %2 = load i32, i32* %reserved_tags, align 8
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 9
  %3 = load i32, i32* %flags, align 8
  %call = call %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* noundef %0, i32 noundef %hctx_idx, i32 noundef %conv, i32 noundef %2, i32 noundef %3) #11
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 20
  store %struct.blk_mq_tags* %call, %struct.blk_mq_tags** %sched_tags, align 32
  %tobool.not = icmp eq %struct.blk_mq_tags* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %nr_requests, align 8
  %conv4 = trunc i64 %4 to i32
  %call5 = call i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* noundef %0, %struct.blk_mq_tags* noundef nonnull %call, i32 noundef %hctx_idx, i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end
  %5 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %6 = load i32, i32* %flags, align 8
  call void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef %5, i32 noundef %6) #11
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %sched_tags, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call5, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %flags) unnamed_addr #7 {
entry:
  %and = and i32 %flags, 8
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_init_sched_shared_sbitmap(%struct.request_queue* noundef %queue) unnamed_addr #0 {
entry:
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %queue, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 9
  %1 = load i32, i32* %flags, align 8
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 1
  %sched_bitmap_tags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %queue, i64 0, i32 28
  %sched_breserved_tags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %queue, i64 0, i32 29
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 5
  %2 = load i32, i32* %reserved_tags, align 8
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 7
  %3 = load i32, i32* %numa_node, align 8
  %call = call i32 @blk_mq_init_bitmaps(%struct.sbitmap_queue* noundef %sched_bitmap_tags, %struct.sbitmap_queue* noundef %sched_breserved_tags, i32 noundef 2048, i32 noundef %2, i32 noundef %3, i32 noundef %and) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %queue, i64 0, i32 9
  %4 = load i32, i32* %nr_hw_queues, align 8
  %cmp32.not = icmp eq i32 %4, 0
  br i1 %cmp32.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %queue, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %5 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.033 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, i64 %idxprom
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i64 0, i32 20
  %7 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %7, i64 0, i32 3
  store %struct.sbitmap_queue* %sched_bitmap_tags, %struct.sbitmap_queue** %bitmap_tags, align 8
  %8 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %8, i64 0, i32 4
  store %struct.sbitmap_queue* %sched_breserved_tags, %struct.sbitmap_queue** %breserved_tags, align 8
  %inc = add nuw i32 %i.033, 1
  %9 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %nr_requests = getelementptr inbounds %struct.request_queue, %struct.request_queue* %queue, i64 0, i32 18
  %10 = load i64, i64* %nr_requests, align 8
  %11 = load i32, i32* %reserved_tags, align 8
  %12 = trunc i64 %10 to i32
  %conv7 = sub i32 %12, %11
  call void @sbitmap_queue_resize(%struct.sbitmap_queue* noundef %sched_bitmap_tags, i32 noundef %conv7) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_sched_free_requests(%struct.request_queue* nocapture noundef readonly %q) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp11.not = icmp eq i32 %0, 0
  br i1 %cmp11.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %6, %for.inc ]
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.012 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %idxprom
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %3, i64 0, i32 20
  %4 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %tobool1.not = icmp eq %struct.blk_mq_tags* %4, null
  br i1 %tobool1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  call void @blk_mq_free_rqs(%struct.blk_mq_tag_set* noundef %5, %struct.blk_mq_tags* noundef nonnull %4, i32 noundef %i.012) #11
  %.pre = load i32, i32* %nr_hw_queues, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = phi i32 [ %1, %for.body ], [ %.pre, %if.then ]
  %inc = add nuw i32 %i.012, 1
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_exit_sched(%struct.request_queue* nocapture noundef %q, %struct.elevator_queue* noundef %e) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp38.not = icmp eq i32 %0, 0
  br i1 %cmp38.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %e, i64 0, i32 0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end
  %1 = phi i32 [ %0, %land.rhs.lr.ph ], [ %8, %if.end ]
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %if.end ]
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %indvars.iv
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %4 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %exit_hctx = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %4, i64 0, i32 1, i32 3
  %5 = load void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)** %exit_hctx, align 8
  %tobool1.not = icmp eq void (%struct.blk_mq_hw_ctx*, i32)* %5, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %3, i64 0, i32 6
  %6 = load i8*, i8** %sched_data, align 8
  %tobool2.not = icmp eq i8* %6, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = trunc i64 %indvars.iv to i32
  call void %5(%struct.blk_mq_hw_ctx* noundef %3, i32 noundef %7) #11
  store i8* null, i8** %sched_data, align 8
  %.pre = load i32, i32* %nr_hw_queues, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.rhs
  %8 = phi i32 [ %.pre, %if.then ], [ %1, %land.lhs.true ], [ %1, %land.rhs ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = zext i32 %8 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %9
  br i1 %cmp, label %land.rhs, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %if.end
  %flags7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %3, i64 0, i32 5
  %10 = load i64, i64* %flags7, align 64
  %conv.le = trunc i64 %10 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %flags.0.lcssa = phi i32 [ %conv.le, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %type8 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %e, i64 0, i32 0
  %11 = load %struct.elevator_type*, %struct.elevator_type** %type8, align 8
  %exit_sched = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %11, i64 0, i32 1, i32 1
  %12 = load void (%struct.elevator_queue*)*, void (%struct.elevator_queue*)** %exit_sched, align 8
  %tobool10.not = icmp eq void (%struct.elevator_queue*)* %12, null
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %for.end
  call void %12(%struct.elevator_queue* noundef %e) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %for.end
  call fastcc void @blk_mq_sched_tags_teardown(%struct.request_queue* noundef %q) #12
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %flags.0.lcssa) #12
  br i1 %call, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end15
  call fastcc void @blk_mq_exit_sched_shared_sbitmap(%struct.request_queue* noundef %q) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end15
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  store %struct.elevator_queue* null, %struct.elevator_queue** %elevator, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_exit_sched_shared_sbitmap(%struct.request_queue* nocapture noundef %queue) unnamed_addr #0 {
entry:
  %sched_bitmap_tags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %queue, i64 0, i32 28
  call fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* noundef %sched_bitmap_tags) #12
  %sched_breserved_tags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %queue, i64 0, i32 29
  call fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* noundef %sched_breserved_tags) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_sched_tags_teardown(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp12.not = icmp eq i32 %0, 0
  br i1 %cmp12.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %1 = phi i32 [ %0, %land.rhs.lr.ph ], [ %6, %for.inc ]
  %i.013 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.013 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %idxprom
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %3, i64 0, i32 20
  %4 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %tobool1.not = icmp eq %struct.blk_mq_tags* %4, null
  br i1 %tobool1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.rhs
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %3, i64 0, i32 5
  %5 = load i64, i64* %flags, align 64
  %conv = trunc i64 %5 to i32
  call void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef nonnull %4, i32 noundef %conv) #11
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %sched_tags, align 32
  %.pre = load i32, i32* %nr_hw_queues, align 8
  br label %for.inc

for.inc:                                          ; preds = %land.rhs, %if.then
  %6 = phi i32 [ %1, %land.rhs ], [ %.pre, %if.then ]
  %inc = add nuw i32 %i.013, 1
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %land.rhs, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_rqs(%struct.blk_mq_tag_set* noundef, %struct.blk_mq_tags* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #13, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #13, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #13, !srcloc !21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_mq_dispatch_rq_list(%struct.blk_mq_hw_ctx* noundef, %struct.list_head* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = call fastcc i32 @__blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx* noundef %hctx) #12
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_do_dispatch_ctx(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %rq_list = alloca %struct.list_head, align 8
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %1 = bitcast %struct.list_head* %rq_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %rq_list, i64 0, i32 0
  store %struct.list_head* %rq_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %rq_list, i64 0, i32 1
  store %struct.list_head* %rq_list, %struct.list_head** %prev, align 8
  %dispatch_from = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 11
  %2 = load volatile %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %dispatch_from, align 8
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 1
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 10
  br label %do.body1

do.body1:                                         ; preds = %do.cond13, %entry
  %ctx.0 = phi %struct.blk_mq_ctx* [ %2, %entry ], [ %call12, %do.cond13 ]
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %dispatch) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body20, label %if.end

if.end:                                           ; preds = %do.body1
  %call2 = call i1 @sbitmap_any_bit_set(%struct.sbitmap* noundef %ctx_map) #11
  br i1 %call2, label %if.end4, label %do.body20

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @blk_mq_get_dispatch_budget(%struct.request_queue* noundef %0) #12
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.body20, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = call %struct.request* @blk_mq_dequeue_from_ctx(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_ctx* noundef %ctx.0) #11
  %tobool9.not = icmp eq %struct.request* %call8, null
  br i1 %tobool9.not, label %if.then10, label %do.cond13

if.then10:                                        ; preds = %if.end7
  call fastcc void @blk_mq_put_dispatch_budget(%struct.request_queue* noundef %0, i32 noundef %call5) #12
  call void @blk_mq_delay_run_hw_queues(%struct.request_queue* noundef %0, i64 noundef 3) #11
  br label %do.body20

do.cond13:                                        ; preds = %if.end7
  call fastcc void @blk_mq_set_rq_budget_token(%struct.request* noundef nonnull %call8, i32 noundef %call5) #12
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %call8, i64 0, i32 11
  call fastcc void @list_add(%struct.list_head* noundef %queuelist, %struct.list_head* noundef nonnull %rq_list) #12
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %call8, i64 0, i32 1
  %3 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %call12 = call fastcc %struct.blk_mq_ctx* @blk_mq_next_ctx(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_ctx* noundef %3) #12
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %call8, i64 0, i32 2
  %4 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %call14 = call i1 @blk_mq_dispatch_rq_list(%struct.blk_mq_hw_ctx* noundef %4, %struct.list_head* noundef nonnull %rq_list, i32 noundef 1) #11
  br i1 %call14, label %do.body1, label %do.body20

do.body20:                                        ; preds = %if.end4, %if.end, %do.body1, %do.cond13, %if.then10
  %ret.157 = phi i32 [ 0, %if.then10 ], [ -11, %do.body1 ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %do.cond13 ]
  %ctx.156 = phi %struct.blk_mq_ctx* [ %ctx.0, %if.then10 ], [ %ctx.0, %do.body1 ], [ %ctx.0, %if.end ], [ %ctx.0, %if.end4 ], [ %call12, %do.cond13 ]
  store volatile %struct.blk_mq_ctx* %ctx.156, %struct.blk_mq_ctx** %dispatch_from, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  ret i32 %ret.157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_flush_busy_ctxs(%struct.blk_mq_hw_ctx* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %rq_list = alloca %struct.list_head, align 8
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %2 = bitcast %struct.list_head* %rq_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %rq_list, i64 0, i32 0
  store %struct.list_head* %rq_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %rq_list, i64 0, i32 1
  store %struct.list_head* %rq_list, %struct.list_head** %prev, align 8
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 12
  %3 = load i32, i32* %dispatch_busy, align 16
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %nr_requests = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 18
  %4 = load i64, i64* %nr_requests, align 8
  %conv = trunc i64 %4 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %max_dispatch.0 = phi i32 [ %conv, %if.else ], [ 1, %entry ]
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 0
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %cleanup, %if.end
  %multi_hctxs.0.off0 = phi i1 [ false, %if.end ], [ %spec.select, %cleanup ]
  %count.0 = phi i32 [ 0, %if.end ], [ %inc, %cleanup ]
  %5 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %has_work = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %5, i64 0, i32 1, i32 15
  %6 = load i1 (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)** %has_work, align 8
  %tobool2.not = icmp eq i1 (%struct.blk_mq_hw_ctx*)* %6, null
  br i1 %tobool2.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %call = call i1 %6(%struct.blk_mq_hw_ctx* noundef %hctx) #11
  br i1 %call, label %if.end7, label %do.end

if.end7:                                          ; preds = %land.lhs.true, %do.body
  %call8 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %dispatch) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call fastcc i32 @blk_mq_get_dispatch_budget(%struct.request_queue* noundef %0) #12
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end, label %if.end15

if.end15:                                         ; preds = %if.end11
  %7 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %dispatch_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %7, i64 0, i32 1, i32 14
  %8 = load %struct.request* (%struct.blk_mq_hw_ctx*)*, %struct.request* (%struct.blk_mq_hw_ctx*)** %dispatch_request, align 8
  %call18 = call %struct.request* %8(%struct.blk_mq_hw_ctx* noundef %hctx) #11
  %tobool19.not = icmp eq %struct.request* %call18, null
  br i1 %tobool19.not, label %do.end.thread, label %cleanup

cleanup:                                          ; preds = %if.end15
  call fastcc void @blk_mq_set_rq_budget_token(%struct.request* noundef nonnull %call18, i32 noundef %call12) #12
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %call18, i64 0, i32 11
  call fastcc void @list_add_tail(%struct.list_head* noundef %queuelist, %struct.list_head* noundef nonnull %rq_list) #12
  %inc = add nuw i32 %count.0, 1
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %call18, i64 0, i32 2
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %cmp22.not = icmp ne %struct.blk_mq_hw_ctx* %9, %hctx
  %spec.select = select i1 %cmp22.not, i1 true, i1 %multi_hctxs.0.off0
  %call26 = call i1 @blk_mq_get_driver_tag(%struct.request* noundef nonnull %call18) #11
  %cmp30 = icmp ult i32 %inc, %max_dispatch.0
  %or.cond = select i1 %call26, i1 %cmp30, i1 false
  br i1 %or.cond, label %do.body, label %do.end.thread148

do.end.thread148:                                 ; preds = %cleanup
  br i1 %spec.select, label %if.then39, label %if.else50.thread

if.else50.thread:                                 ; preds = %do.end.thread148
  %call51162 = call i1 @blk_mq_dispatch_rq_list(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef nonnull %rq_list, i32 noundef %inc) #11
  %lnot.ext159163 = zext i1 %call51162 to i32
  br label %11

do.end:                                           ; preds = %if.end11, %if.end7, %land.lhs.true
  %busy.1.off0128 = phi i1 [ false, %land.lhs.true ], [ true, %if.end7 ], [ false, %if.end11 ]
  %tobool32.not = icmp eq i32 %count.0, 0
  br i1 %tobool32.not, label %if.end54, label %if.else37

do.end.thread:                                    ; preds = %if.end15
  call fastcc void @blk_mq_put_dispatch_budget(%struct.request_queue* noundef %0, i32 noundef %call12) #12
  %tobool32.not134 = icmp eq i32 %count.0, 0
  br i1 %tobool32.not134, label %if.end54.thread, label %if.else37

if.end54.thread:                                  ; preds = %do.end.thread
  call void @blk_mq_delay_run_hw_queues(%struct.request_queue* noundef %0, i64 noundef 3) #11
  br label %11

if.else37:                                        ; preds = %do.end.thread, %do.end
  %busy.1.off0128137 = phi i1 [ false, %do.end.thread ], [ %busy.1.off0128, %do.end ]
  br i1 %multi_hctxs.0.off0, label %if.then39, label %if.else50

if.then39:                                        ; preds = %do.end.thread148, %if.else37
  %busy.1.off0128137154 = phi i1 [ false, %do.end.thread148 ], [ %busy.1.off0128137, %if.else37 ]
  call void @list_sort(i8* noundef null, %struct.list_head* noundef nonnull %rq_list, i32 (i8*, %struct.list_head*, %struct.list_head*)* noundef nonnull @sched_rq_cmp) #11
  br label %do.body40

do.body40:                                        ; preds = %do.body40, %if.then39
  %dispatched.0.off0 = phi i1 [ false, %if.then39 ], [ %or116, %do.body40 ]
  %call41 = call fastcc i1 @blk_mq_dispatch_hctx_list(%struct.list_head* noundef nonnull %rq_list) #12
  %or116 = or i1 %dispatched.0.off0, %call41
  %call47 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %rq_list) #12
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body40, label %if.end54.loopexit

if.else50:                                        ; preds = %if.else37
  %call51 = call i1 @blk_mq_dispatch_rq_list(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef nonnull %rq_list, i32 noundef %count.0) #11
  %lnot.ext159 = zext i1 %call51 to i32
  br i1 %busy.1.off0128137, label %10, label %11

if.end54.loopexit:                                ; preds = %do.body40
  %phi.cast = zext i1 %or116 to i32
  br label %if.end54

if.end54:                                         ; preds = %if.end54.loopexit, %do.end
  %busy.1.off0128136 = phi i1 [ %busy.1.off0128, %do.end ], [ %busy.1.off0128137154, %if.end54.loopexit ]
  %dispatched.1.off0 = phi i32 [ 0, %do.end ], [ %phi.cast, %if.end54.loopexit ]
  br i1 %busy.1.off0128136, label %10, label %11

10:                                               ; preds = %if.else50, %if.end54
  br label %11

11:                                               ; preds = %if.else50.thread, %if.else50, %if.end54.thread, %if.end54, %10
  %12 = phi i32 [ -11, %10 ], [ %dispatched.1.off0, %if.end54 ], [ 0, %if.end54.thread ], [ %lnot.ext159, %if.else50 ], [ %lnot.ext159163, %if.else50.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  ret i32 %12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_get_dispatch_budget(%struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %get_budget = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %0, i64 0, i32 2
  %1 = load i32 (%struct.request_queue*)*, i32 (%struct.request_queue*)** %get_budget, align 8
  %tobool.not = icmp eq i32 (%struct.request_queue*)* %1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.request_queue* noundef %q) #11
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_put_dispatch_budget(%struct.request_queue* noundef %q, i32 noundef %budget_token) unnamed_addr #0 {
entry:
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %put_budget = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %0, i64 0, i32 3
  %1 = load void (%struct.request_queue*, i32)*, void (%struct.request_queue*, i32)** %put_budget, align 8
  %tobool.not = icmp eq void (%struct.request_queue*, i32)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.request_queue* noundef %q, i32 noundef %budget_token) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_set_rq_budget_token(%struct.request* noundef %rq, i32 noundef %token) unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 5
  %1 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %set_rq_budget_token = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %1, i64 0, i32 4
  %2 = load void (%struct.request*, i32)*, void (%struct.request*, i32)** %set_rq_budget_token, align 8
  %tobool.not = icmp eq void (%struct.request*, i32)* %2, null
  br i1 %tobool.not, label %if.end5, label %if.then1

if.then1:                                         ; preds = %entry
  call void %2(%struct.request* noundef %rq, i32 noundef %token) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_mq_get_driver_tag(%struct.request* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_delay_run_hw_queues(%struct.request_queue* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(i8* noundef, %struct.list_head* noundef, i32 (i8*, %struct.list_head*, %struct.list_head*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @sched_rq_cmp(i8* nocapture noundef readnone %priv, %struct.list_head* nocapture noundef readonly %a, %struct.list_head* nocapture noundef readonly %b) #5 {
entry:
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %a, i64 -5, i32 1
  %add.ptr6 = getelementptr %struct.list_head, %struct.list_head* %b, i64 -5, i32 1
  %mq_hctx = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 2
  %0 = bitcast %struct.list_head** %mq_hctx to %struct.blk_mq_hw_ctx**
  %1 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %0, align 8
  %mq_hctx7 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr6, i64 2
  %2 = bitcast %struct.list_head** %mq_hctx7 to %struct.blk_mq_hw_ctx**
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %cmp = icmp ugt %struct.blk_mq_hw_ctx* %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_dispatch_hctx_list(%struct.list_head* noundef %rq_list) unnamed_addr #0 {
entry:
  %hctx_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %rq_list to i8**
  %1 = load i8*, i8** %0, align 8
  %mq_hctx = getelementptr i8, i8* %1, i64 -56
  %2 = bitcast i8* %mq_hctx to %struct.blk_mq_hw_ctx**
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %4 = bitcast %struct.list_head* %hctx_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #13
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %hctx_list, i64 0, i32 0
  store %struct.list_head* %hctx_list, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %hctx_list, i64 0, i32 1
  store %struct.list_head* %hctx_list, %struct.list_head** %prev, align 8
  %5 = bitcast i8* %1 to %struct.list_head*
  %cmp.not39 = icmp eq %struct.list_head* %5, %rq_list
  br i1 %cmp.not39, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %.pn41 = phi i8* [ %.pn, %if.end ], [ %1, %entry ]
  %count.040 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %mq_hctx9 = getelementptr i8, i8* %.pn41, i64 -56
  %6 = bitcast i8* %mq_hctx9 to %struct.blk_mq_hw_ctx**
  %7 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %cmp10.not = icmp eq %struct.blk_mq_hw_ctx* %7, %3
  br i1 %cmp10.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %8 = bitcast i8* %.pn41 to %struct.list_head*
  call fastcc void @list_cut_before(%struct.list_head* noundef nonnull %hctx_list, %struct.list_head* noundef %rq_list, %struct.list_head* noundef %8) #12
  br label %dispatch

if.end:                                           ; preds = %for.body
  %inc = add i32 %count.040, 1
  %9 = bitcast i8* %.pn41 to i8**
  %.pn = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %10, %rq_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  call fastcc void @list_splice_tail_init(%struct.list_head* noundef %rq_list, %struct.list_head* noundef nonnull %hctx_list) #12
  br label %dispatch

dispatch:                                         ; preds = %for.end, %if.then
  %count.037 = phi i32 [ %count.0.lcssa, %for.end ], [ %count.040, %if.then ]
  %call = call i1 @blk_mq_dispatch_rq_list(%struct.blk_mq_hw_ctx* noundef %3, %struct.list_head* noundef nonnull %hctx_list, i32 noundef %count.037) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #13
  ret i1 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_cut_before(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %entry1) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %entry1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #12
  br label %return

if.end:                                           ; preds = %entry
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next3, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %list, %struct.list_head** %next8, align 8
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  store %struct.list_head* %head, %struct.list_head** %prev5, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_tail_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @sbitmap_any_bit_set(%struct.sbitmap* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.request* @blk_mq_dequeue_from_ctx(%struct.blk_mq_hw_ctx* noundef, %struct.blk_mq_ctx* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_ctx* @blk_mq_next_ctx(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.blk_mq_ctx* nocapture noundef readonly %ctx) unnamed_addr #5 {
entry:
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 13
  %0 = load i16, i16* %type, align 4
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 2, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %inc = add i16 %1, 1
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 14
  %2 = load i16, i16* %nr_ctx, align 2
  %cmp = icmp eq i16 %inc, %2
  %spec.store.select = select i1 %cmp, i16 0, i16 %inc
  %ctxs = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 15
  %3 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %ctxs, align 8
  %idxprom3 = zext i16 %spec.store.select to i64
  %arrayidx4 = getelementptr %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %3, i64 %idxprom3
  %4 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %arrayidx4, align 8
  ret %struct.blk_mq_ctx* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_ctx* @__blk_mq_get_ctx(%struct.request_queue* nocapture noundef readonly %q, i32 noundef %cpu) unnamed_addr #5 {
entry:
  %queue_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 6
  %0 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %queue_ctx, align 8
  %1 = ptrtoint %struct.blk_mq_ctx* %0 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.blk_mq_ctx*
  ret %struct.blk_mq_ctx* %3
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #4 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #14, !srcloc !22
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_rq_is_passthrough(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %call = call fastcc i1 @blk_op_is_passthrough(i32 noundef %and) #12
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_op_is_passthrough(i32 noundef %op) unnamed_addr #7 {
entry:
  %and = and i32 %op, 254
  %0 = icmp eq i32 %and, 34
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_get_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64* null, i64** %percpu_count, align 8, !annotation !25
  call fastcc void @__rcu_read_lock() #11
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #12
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef 1) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  br label %if.end

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %count) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body1
  call fastcc void @rcu_read_unlock() #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** nocapture noundef writeonly %percpu_countp) unnamed_addr #3 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load volatile i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !11

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %0 to i64*
  store i64* %1, i64** %percpu_countp, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #13, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  call void @rcu_read_unlock_strict() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64* null, i64** %percpu_count, align 8, !annotation !25
  call fastcc void @__rcu_read_lock() #11
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #12
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef -1) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %if.end14

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %count) #11
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then12, label %if.end14, !prof !10

if.then12:                                        ; preds = %if.else
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %release = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 1
  %6 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %release, align 8
  call void %6(%struct.percpu_ref* noundef %ref) #11
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %do.body1
  call fastcc void @rcu_read_unlock() #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !34
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* noundef, %struct.blk_mq_tags* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_init_bitmaps(%struct.sbitmap_queue* noundef, %struct.sbitmap_queue* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(%struct.sbitmap_queue* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* nocapture noundef %sbq) unnamed_addr #0 {
entry:
  %ws = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %0 = bitcast %struct.sbq_wait_state** %ws to i8**
  %1 = load i8*, i8** %0, align 8
  call void @kfree(i8* noundef %1) #11
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0
  call fastcc void @sbitmap_free(%struct.sbitmap* noundef %sb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_free(%struct.sbitmap* nocapture noundef %sb) unnamed_addr #0 {
entry:
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = bitcast i32** %alloc_hint to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #11
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %2 = bitcast %struct.sbitmap_word** %map to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #11
  store %struct.sbitmap_word* null, %struct.sbitmap_word** %map, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly }

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
!8 = !{i64 1456157}
!9 = !{i64 2154651798}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148566957}
!13 = !{i64 2154669858}
!14 = !{i64 2149477219}
!15 = !{i64 2149246394, i64 2149246441, i64 2149246447, i64 2149246484, i64 2149246502, i64 2149247843, i64 2149247891, i64 2149247939, i64 2149248002, i64 2149248051, i64 2149246580, i64 2149246605, i64 2149246631, i64 2149246637, i64 2149247509, i64 2149247549, i64 2149247567, i64 2149247599, i64 2149247627, i64 2149247681, i64 2149247701, i64 2149247798, i64 2149246660, i64 2149246674, i64 2149246680, i64 2149246730, i64 2149246776, i64 2149246809}
!16 = !{i64 2147833804, i64 2147833837, i64 2147833890, i64 2147833949, i64 2147833983, i64 2147834038, i64 2147834067, i64 2147834087}
!17 = !{i64 2149502072}
!18 = !{i64 2149298290}
!19 = !{i64 2149236938, i64 2149236985, i64 2149236991, i64 2149237028, i64 2149237046, i64 2149238386, i64 2149238434, i64 2149238482, i64 2149238545, i64 2149238594, i64 2149237124, i64 2149237149, i64 2149237175, i64 2149237181, i64 2149238052, i64 2149238092, i64 2149238110, i64 2149238142, i64 2149238170, i64 2149238224, i64 2149238244, i64 2149238341, i64 2149237204, i64 2149237218, i64 2149237224, i64 2149237274, i64 2149237320, i64 2149237353}
!20 = !{i64 2147807022, i64 2147807533, i64 2147807563, i64 2147807589, i64 2147807621, i64 2147807650}
!21 = !{i64 2147817592, i64 2147818113, i64 2147818143, i64 2147818169, i64 2147818201, i64 2147818230}
!22 = !{i64 2149018462, i64 2149018509, i64 2149018515, i64 2149018552, i64 2149018570, i64 2149019497, i64 2149019545, i64 2149019593, i64 2149019656, i64 2149019705, i64 2149018648, i64 2149018673, i64 2149018699, i64 2149018705, i64 2149018742, i64 2149018748, i64 2149018798, i64 2149018844, i64 2149018877}
!23 = !{i64 2149487927}
!24 = !{i64 2149495208}
!25 = !{!"auto-init"}
!26 = !{i64 2152148215}
!27 = !{i64 2152149027}
!28 = !{i64 2149044408, i64 2149044449, i64 2149044505, i64 2149044557}
!29 = !{i64 2149668672}
!30 = !{i64 2147778628, i64 2147779142, i64 2147779172, i64 2147779198, i64 2147779230, i64 2147779259}
!31 = !{i64 2149668889}
!32 = !{i64 2152165007}
!33 = !{i64 2152165819}
!34 = !{i64 2147793209, i64 2147793857, i64 2147793887, i64 2147793918, i64 2147793950, i64 2147793985, i64 2147794010}
