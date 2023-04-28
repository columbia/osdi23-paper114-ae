; ModuleID = 'block/blk-rq-qos.c'
source_filename = "block/blk-rq-qos.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rq_wait = type { %struct.wait_queue_head, %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic_t = type { i32 }
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { {}*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, {}*, {}*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.71, %union.anon.72, %union.anon.73, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.76, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_ctx = type opaque
%struct.blk_mq_hw_ctx = type { %struct.anon.2, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.2 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.workqueue_struct = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.blk_flush_queue = type opaque
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.70, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.21, i8* }
%union.anon.21 = type { i64 }
%struct.lockref = type { %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.20, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.55 }
%union.anon.55 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.56, %union.anon.57 }
%union.anon.56 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.57 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.51, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
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
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.36, %union.anon.37, i32 }
%union.anon.36 = type { %struct.list_head }
%union.anon.37 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.50, i32, [12 x i8] }
%union.anon.50 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.3, %union.anon.65, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.65 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.52, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.52 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.18, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.19, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.18 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.19 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.59, %struct.qspinlock }
%union.anon.59 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.25, i32 }
%union.anon.25 = type { %struct.kuid_t }
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
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.68 = type { %struct.callback_head }
%union.anon.69 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.70 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.66 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.lockdep_map = type {}
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { %struct.rb_node }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.76 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.blk_mq_debugfs_attr = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.35, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.35 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.rq_depth = type { i32, i32, i8, i32, i32 }
%struct.rq_qos_wait_data = type { %struct.wait_queue_entry, %struct.task_struct*, %struct.rq_wait*, i1 (%struct.rq_wait*, i8*)*, i8*, i8 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rq_wait_inc_below(%struct.rq_wait* noundef %rq_wait, i32 noundef %limit) local_unnamed_addr #0 {
entry:
  %inflight = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %rq_wait, i64 0, i32 1
  %call = call fastcc i1 @atomic_inc_below(%struct.atomic_t* noundef %inflight, i32 noundef %limit) #7
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @atomic_inc_below(%struct.atomic_t* noundef %v, i32 noundef %below) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %1 = bitcast %struct.atomic_t* %v to i8*
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %cur.0 = phi i32 [ %0, %entry ], [ %call11.i.i, %if.end ]
  %cmp.not = icmp ult i32 %cur.0, %below
  br i1 %cmp.not, label %if.end, label %cleanup5

if.end:                                           ; preds = %for.cond
  %add = add nuw i32 %cur.0, 1
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %cur.0, i32 noundef %add) #8
  %cmp2 = icmp eq i32 %call11.i.i, %cur.0
  br i1 %cmp2, label %cleanup5, label %for.cond

cleanup5:                                         ; preds = %for.cond, %if.end
  ret i1 %cmp.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_cleanup(%struct.rq_qos* noundef %rqos, %struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %2, %if.end ]
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 0
  %0 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %cleanup = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %0, i64 0, i32 7
  %cleanup1 = bitcast {}** %cleanup to void (%struct.rq_qos*, %struct.bio*)**
  %1 = load void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)** %cleanup1, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*, %struct.bio*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %1(%struct.rq_qos* noundef %rqos.addr.0, %struct.bio* noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool5.not = icmp eq %struct.rq_qos* %2, null
  br i1 %tobool5.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_done(%struct.rq_qos* noundef %rqos, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %2, %if.end ]
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 0
  %0 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %done = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %0, i64 0, i32 5
  %1 = load void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)** %done, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*, %struct.request*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %1(%struct.rq_qos* noundef %rqos.addr.0, %struct.request* noundef %rq) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool3.not = icmp eq %struct.rq_qos* %2, null
  br i1 %tobool3.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_issue(%struct.rq_qos* noundef %rqos, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %2, %if.end ]
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 0
  %0 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %issue = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %0, i64 0, i32 3
  %1 = load void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)** %issue, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*, %struct.request*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %1(%struct.rq_qos* noundef %rqos.addr.0, %struct.request* noundef %rq) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool3.not = icmp eq %struct.rq_qos* %2, null
  br i1 %tobool3.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_requeue(%struct.rq_qos* noundef %rqos, %struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %2, %if.end ]
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 0
  %0 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %requeue = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %0, i64 0, i32 4
  %1 = load void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)** %requeue, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*, %struct.request*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %1(%struct.rq_qos* noundef %rqos.addr.0, %struct.request* noundef %rq) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool3.not = icmp eq %struct.rq_qos* %2, null
  br i1 %tobool3.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_throttle(%struct.rq_qos* noundef %rqos, %struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %3, %if.end ]
  %0 = bitcast %struct.rq_qos* %rqos.addr.0 to void (%struct.rq_qos*, %struct.bio*)***
  %1 = load void (%struct.rq_qos*, %struct.bio*)**, void (%struct.rq_qos*, %struct.bio*)*** %0, align 8
  %2 = load void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)** %1, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*, %struct.bio*)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %2(%struct.rq_qos* noundef %rqos.addr.0, %struct.bio* noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %3 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool5.not = icmp eq %struct.rq_qos* %3, null
  br i1 %tobool5.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_track(%struct.rq_qos* noundef %rqos, %struct.request* noundef %rq, %struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %2, %if.end ]
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 0
  %0 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %track = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %0, i64 0, i32 1
  %1 = load void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)** %track, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*, %struct.request*, %struct.bio*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %1(%struct.rq_qos* noundef %rqos.addr.0, %struct.request* noundef %rq, %struct.bio* noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool3.not = icmp eq %struct.rq_qos* %2, null
  br i1 %tobool3.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_merge(%struct.rq_qos* noundef %rqos, %struct.request* noundef %rq, %struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %2, %if.end ]
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 0
  %0 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %merge = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %0, i64 0, i32 2
  %1 = load void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)** %merge, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*, %struct.request*, %struct.bio*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %1(%struct.rq_qos* noundef %rqos.addr.0, %struct.request* noundef %rq, %struct.bio* noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool3.not = icmp eq %struct.rq_qos* %2, null
  br i1 %tobool3.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_done_bio(%struct.rq_qos* noundef %rqos, %struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %2, %if.end ]
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 0
  %0 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %done_bio = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %0, i64 0, i32 6
  %done_bio1 = bitcast {}** %done_bio to void (%struct.rq_qos*, %struct.bio*)**
  %1 = load void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)** %done_bio1, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*, %struct.bio*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %1(%struct.rq_qos* noundef %rqos.addr.0, %struct.bio* noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool5.not = icmp eq %struct.rq_qos* %2, null
  br i1 %tobool5.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rq_qos_queue_depth_changed(%struct.rq_qos* noundef %rqos) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %rqos.addr.0 = phi %struct.rq_qos* [ %rqos, %entry ], [ %2, %if.end ]
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 0
  %0 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %queue_depth_changed = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %0, i64 0, i32 8
  %1 = load void (%struct.rq_qos*)*, void (%struct.rq_qos*)** %queue_depth_changed, align 8
  %tobool.not = icmp eq void (%struct.rq_qos*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void %1(%struct.rq_qos* noundef %rqos.addr.0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %rqos.addr.0, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  %tobool3.not = icmp eq %struct.rq_qos* %2, null
  br i1 %tobool3.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i1 @rq_depth_calc_max_depth(%struct.rq_depth* nocapture noundef %rqd) local_unnamed_addr #1 {
entry:
  %queue_depth = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 3
  %0 = load i32, i32* %queue_depth, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %scale_step = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 1
  %1 = load i32, i32* %scale_step, align 4
  %cmp1 = icmp sgt i32 %1, 0
  %max_depth = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i32 1, i32* %max_depth, align 4
  br label %if.end32

if.else:                                          ; preds = %if.then
  store i32 2, i32* %max_depth, align 4
  br label %if.end32

if.else4:                                         ; preds = %entry
  %default_depth = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 4
  %2 = load i32, i32* %default_depth, align 4
  %cmp6 = icmp ult i32 %2, %0
  %cond = select i1 %cmp6, i32 %2, i32 %0
  %scale_step7 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 1
  %3 = load i32, i32* %scale_step7, align 4
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %if.then9, label %if.else17

if.then9:                                         ; preds = %if.else4
  %sub = add i32 %cond, -1
  %4 = icmp ult i32 %3, 31
  %cond16 = select i1 %4, i32 %3, i32 31
  %shr = lshr i32 %sub, %cond16
  %add = add nuw i32 %shr, 1
  br label %if.end30

if.else17:                                        ; preds = %if.else4
  %cmp19 = icmp slt i32 %3, 0
  br i1 %cmp19, label %if.then20, label %if.end30

if.then20:                                        ; preds = %if.else17
  %mul = mul i32 %0, 3
  %div = lshr i32 %mul, 2
  %sub22 = add i32 %cond, -1
  %sub24 = sub i32 0, %3
  %shl = shl i32 %sub22, %sub24
  %add25 = add i32 %shl, 1
  %cmp26 = icmp ugt i32 %add25, %div
  %spec.select = select i1 %cmp26, i32 %div, i32 %add25
  br label %if.end30

if.end30:                                         ; preds = %if.else17, %if.then20, %if.then9
  %ret.1.off0 = phi i1 [ false, %if.then9 ], [ %cmp26, %if.then20 ], [ false, %if.else17 ]
  %depth.1 = phi i32 [ %add, %if.then9 ], [ %spec.select, %if.then20 ], [ %cond, %if.else17 ]
  %max_depth31 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 0
  store i32 %depth.1, i32* %max_depth31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then2, %if.else, %if.end30
  %ret.2.off0 = phi i1 [ false, %if.then2 ], [ true, %if.else ], [ %ret.1.off0, %if.end30 ]
  ret i1 %ret.2.off0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i1 @rq_depth_scale_up(%struct.rq_depth* nocapture noundef %rqd) local_unnamed_addr #1 {
entry:
  %scaled_max = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 2
  %0 = load i8, i8* %scaled_max, align 4, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %scale_step = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 1
  %1 = load i32, i32* %scale_step, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %scale_step, align 4
  %call = call i1 @rq_depth_calc_max_depth(%struct.rq_depth* noundef %rqd) #7
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %scaled_max, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i1 @rq_depth_scale_down(%struct.rq_depth* nocapture noundef %rqd, i1 noundef %hard_throttle) local_unnamed_addr #1 {
entry:
  %max_depth = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 0
  %0 = load i32, i32* %max_depth, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %scale_step = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 1
  %1 = load i32, i32* %scale_step, align 4
  %cmp1 = icmp slt i32 %1, 0
  %2 = and i1 %cmp1, %hard_throttle
  %inc = add i32 %1, 1
  %spec.select = select i1 %2, i32 0, i32 %inc
  store i32 %spec.select, i32* %scale_step, align 4
  %scaled_max = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %rqd, i64 0, i32 2
  store i8 0, i8* %scaled_max, align 4
  %call = call i1 @rq_depth_calc_max_depth(%struct.rq_depth* noundef %rqd) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %3 = xor i1 %cmp, true
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rq_qos_wait(%struct.rq_wait* noundef %rqw, i8* noundef %private_data, i1 (%struct.rq_wait*, i8*)* noundef %acquire_inflight_cb, void (%struct.rq_wait*, i8*)* nocapture noundef readonly %cleanup_cb) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.rq_qos_wait_data, align 8
  %0 = bitcast %struct.rq_qos_wait_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #9
  %wq = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 0
  %func = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 0, i32 2
  %1 = bitcast %struct.rq_qos_wait_data* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @rq_qos_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %task = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 1
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  store %struct.task_struct* %3, %struct.task_struct** %task, align 8
  %rqw6 = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 2
  store %struct.rq_wait* %rqw, %struct.rq_wait** %rqw6, align 8
  %cb = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 3
  store i1 (%struct.rq_wait*, i8*)* %acquire_inflight_cb, i1 (%struct.rq_wait*, i8*)** %cb, align 8
  %private_data7 = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 4
  store i8* %private_data, i8** %private_data7, align 8
  %got_token = getelementptr inbounds %struct.rq_qos_wait_data, %struct.rq_qos_wait_data* %data, i64 0, i32 5
  %wait = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %rqw, i64 0, i32 0
  %call8 = call fastcc i1 @wq_has_sleeper(%struct.wait_queue_head* noundef %wait) #7
  br i1 %call8, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call9 = call i1 %acquire_inflight_cb(%struct.rq_wait* noundef %rqw, i8* noundef %private_data) #8
  br i1 %call9, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call12 = call i1 @prepare_to_wait_exclusive(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef nonnull %wq, i32 noundef 2) #8
  %4 = load i8, i8* %got_token, align 8, !range !7
  %tobool15.not64 = icmp eq i8 %4, 0
  br i1 %tobool15.not64, label %if.end17.lr.ph, label %do.end47

if.end17.lr.ph:                                   ; preds = %if.end
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 1
  br i1 %call12, label %land.lhs.true19, label %if.end28.preheader

land.lhs.true19:                                  ; preds = %if.end17.lr.ph
  %call20 = call i1 %acquire_inflight_cb(%struct.rq_wait* noundef %rqw, i8* noundef %private_data) #8
  br i1 %call20, label %if.then21, label %if.end28.preheader

if.end28.preheader:                               ; preds = %if.end17.lr.ph, %land.lhs.true19
  br label %if.end28

if.then21:                                        ; preds = %land.lhs.true19
  call void @finish_wait(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef nonnull %wq) #8
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !9
  %5 = load i8, i8* %got_token, align 8, !range !7
  %tobool25.not = icmp eq i8 %5, 0
  br i1 %tobool25.not, label %do.end47, label %if.then26

if.then26:                                        ; preds = %if.then21
  call void %cleanup_cb(%struct.rq_wait* noundef %rqw, i8* noundef %private_data) #8
  br label %do.end47

if.end28:                                         ; preds = %if.end28.preheader, %if.end28
  call void @io_schedule() #8
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %6 = load i8, i8* %got_token, align 8, !range !7
  %tobool15.not = icmp eq i8 %6, 0
  br i1 %tobool15.not, label %if.end28, label %do.end47

do.end47:                                         ; preds = %if.end28, %if.end, %if.then21, %if.then26
  call void @finish_wait(%struct.wait_queue_head* noundef %wait, %struct.wait_queue_entry* noundef nonnull %wq) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %do.end47
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @rq_qos_wake_function(%struct.wait_queue_entry* noundef %curr, i32 noundef %mode, i32 noundef %wake_flags, i8* nocapture noundef readnone %key) #0 {
entry:
  %cb = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %curr, i64 1, i32 2
  %0 = bitcast i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %cb to i1 (%struct.rq_wait*, i8*)**
  %1 = load i1 (%struct.rq_wait*, i8*)*, i1 (%struct.rq_wait*, i8*)** %0, align 8
  %rqw = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %curr, i64 1, i32 1
  %2 = bitcast i8** %rqw to %struct.rq_wait**
  %3 = load %struct.rq_wait*, %struct.rq_wait** %2, align 8
  %private_data = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %curr, i64 1, i32 3
  %4 = bitcast %struct.list_head* %private_data to i8**
  %5 = load i8*, i8** %4, align 8
  %call = call i1 %1(%struct.rq_wait* noundef %3, i8* noundef %5) #8
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %got_token = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %curr, i64 1, i32 3, i32 1
  %6 = bitcast %struct.list_head** %got_token to i8*
  store i8 1, i8* %6, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %curr, i64 0, i32 3
  call fastcc void @list_del_init(%struct.list_head* noundef %entry1) #7
  %task = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %curr, i64 1
  %7 = bitcast %struct.wait_queue_entry* %task to %struct.task_struct**
  %8 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %call2 = call i32 @wake_up_process(%struct.task_struct* noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @wq_has_sleeper(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) #7
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @prepare_to_wait_exclusive(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rq_qos_exit(%struct.request_queue* nocapture noundef %q) local_unnamed_addr #0 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not9 = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not9, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi %struct.rq_qos* [ %5, %while.body ], [ %0, %entry ]
  %next = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %1, i64 0, i32 3
  %2 = load %struct.rq_qos*, %struct.rq_qos** %next, align 8
  store %struct.rq_qos* %2, %struct.rq_qos** %rq_qos, align 8
  %ops = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %1, i64 0, i32 0
  %3 = load %struct.rq_qos_ops*, %struct.rq_qos_ops** %ops, align 8
  %exit = getelementptr inbounds %struct.rq_qos_ops, %struct.rq_qos_ops* %3, i64 0, i32 9
  %4 = load void (%struct.rq_qos*)*, void (%struct.rq_qos*)** %exit, align 8
  call void %4(%struct.rq_qos* noundef nonnull %1) #8
  %5 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %5, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #9, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #7
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #7
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #6 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #7
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 1134108}
!9 = !{i64 2154249391}
!10 = !{i64 2154251915}
!11 = !{i64 2154249249}
!12 = !{i64 2149886846}
!13 = !{i64 2147845138, i64 2147845171, i64 2147845223, i64 2147845282, i64 2147845316, i64 2147845372, i64 2147845401, i64 2147845428}
