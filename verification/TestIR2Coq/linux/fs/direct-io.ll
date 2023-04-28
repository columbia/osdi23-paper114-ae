; ModuleID = 'fs/direct-io.c'
source_filename = "fs/direct-io.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_direct_io__410_1379_dio_init6:\09\09\09"
module asm ".long\09dio_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.33, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.70, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.71 }
%union.anon.71 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.1 }
%union.anon.1 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.2, %union.anon.59, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.59 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.60, %union.anon.61 }
%union.anon.60 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.61 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.20, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.19, [0 x i64] }
%struct.anon.19 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.55, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.40, %union.anon.41, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.34, %union.anon.35, %union.anon.36, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.39, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.34 = type { %struct.hlist_node }
%union.anon.35 = type { %struct.rb_node }
%union.anon.36 = type { %struct.anon.38 }
%struct.anon.38 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.39 = type { %struct.__call_single_data }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.32, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.32 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
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
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.54, i32, [12 x i8] }
%union.anon.54 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.56, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.20 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.21, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.22, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.21 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.22 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.65 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.63, %struct.qspinlock }
%union.anon.63 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.65 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.70 = type { %struct.pipe_inode_info* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, {}*, {}*, {}*, {}*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.75, i32 }
%union.anon.75 = type { %struct.kuid_t }
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
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.33 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.workqueue_struct = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.buffer_head = type { i64, %struct.buffer_head*, %struct.page*, i64, i64, i8*, %struct.block_device*, void (%struct.buffer_head*, i32)*, i8*, %struct.list_head, %struct.address_space*, %struct.atomic_t, %struct.spinlock }
%struct.dio_submit = type { %struct.bio*, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)*, void (%struct.bio*, %struct.inode*, i64)*, i64, i64, i64, %struct.page*, i32, i32, i64, i64, %struct.iov_iter*, i32, i32, i64, i64 }
%struct.dio = type { i32, i32, i32, i32, %struct.gendisk*, %struct.inode*, i64, i32 (%struct.kiocb*, i64, i64, i8*)*, i8*, %struct.spinlock, i32, i32, i8, i8, i32, i64, %struct.bio*, %struct.task_struct*, %struct.kiocb*, i64, %union.anon.76, [8 x i8] }
%union.anon.76 = type { [64 x %struct.page*] }
%struct.anon.15 = type { i64, i8, i8, %struct.atomic_t, i32 }

@.str = private unnamed_addr constant [7 x i8] c"dio/%s\00", align 1
@__UNIQUE_ID___addressable_dio_init411 = internal global i8* bitcast (i32 ()* @dio_init to i8*), section ".discard.addressable", align 8
@dio_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@empty_zero_page = external dso_local global [512 x i64], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"dio\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_dio_init411 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sb_init_dio_done_wq(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 31, i64 0
  %call = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 8, i32 noundef 0, i8* noundef %arraydecay) #12
  %tobool.not = icmp eq %struct.workqueue_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 44
  %0 = bitcast %struct.workqueue_struct** %s_dio_done_wq to i8*
  %1 = ptrtoint %struct.workqueue_struct* %call to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %1) #12
  %tobool3.not = icmp eq i64 %call14.i, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @destroy_workqueue(%struct.workqueue_struct* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8* noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(%struct.workqueue_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__blockdev_direct_IO(%struct.kiocb* noundef %iocb, %struct.inode* noundef %inode, %struct.block_device* noundef %bdev, %struct.iov_iter* noundef %iter, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, i32 (%struct.kiocb*, i64, i64, i8*)* noundef %end_io, void (%struct.bio*, %struct.inode*, i64)* noundef %submit_io, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part_tbl = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 6
  %1 = bitcast %struct.xarray* %part_tbl to i8*
  call fastcc void @prefetch(i8* noundef %1) #13
  %2 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = bitcast %struct.request_queue** %queue to i8**
  %4 = load i8*, i8** %3, align 8
  call fastcc void @prefetch(i8* noundef %4) #13
  %5 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue3 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i64 0, i32 9
  %6 = bitcast %struct.request_queue** %queue3 to i8**
  %7 = load i8*, i8** %6, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 64
  call fastcc void @prefetch(i8* noundef %add.ptr) #13
  %call = call fastcc i64 @do_blockdev_direct_IO(%struct.kiocb* noundef %iocb, %struct.inode* noundef %inode, %struct.block_device* noundef %bdev, %struct.iov_iter* noundef %iter, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, i32 (%struct.kiocb*, i64, i64, i8*)* noundef %end_io, void (%struct.bio*, %struct.inode*, i64)* noundef %submit_io, i32 noundef %flags) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch(i8* noundef %ptr) unnamed_addr #0 {
entry:
  call void asm sideeffect "prfm pldl1keep, ${0:a}\0A", "r"(i8* %ptr) #14, !srcloc !7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_blockdev_direct_IO(%struct.kiocb* noundef %iocb, %struct.inode* noundef %inode, %struct.block_device* noundef readonly %bdev, %struct.iov_iter* noundef %iter, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* noundef %get_block, i32 (%struct.kiocb*, i64, i64, i8*)* noundef %end_io, void (%struct.bio*, %struct.inode*, i64)* noundef %submit_io, i32 noundef %flags) unnamed_addr #0 {
entry:
  %sdio = alloca %struct.dio_submit, align 8
  %map_bh = alloca %struct.buffer_head, align 8
  %plug = alloca %struct.blk_plug, align 8
  %i_blkbits1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 17
  %0 = load volatile i8, i8* %i_blkbits1, align 2
  %conv = zext i8 %0 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #13
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %1 = load i64, i64* %ki_pos, align 8
  %add = add i64 %1, %call
  %2 = bitcast %struct.dio_submit* %sdio to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %2, i8 0, i64 160, i1 false)
  %3 = bitcast %struct.buffer_head* %map_bh to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %3) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %3, i8 0, i64 104, i1 false)
  %4 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !8
  %call3 = call i64 @iov_iter_alignment(%struct.iov_iter* noundef %iter) #12
  %or = or i64 %call3, %1
  %call4 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp = icmp ne i8 %call4, 0
  %tobool = icmp ne i64 %call, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool
  br i1 %or.cond, label %if.end, label %cleanup275

if.end:                                           ; preds = %entry
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @dio_cache, align 8
  %call7 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %5, i32 noundef 3264) #12
  %6 = bitcast i8* %call7 to %struct.dio*
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %cleanup275, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = call i8* @memset(i8* noundef nonnull %call7, i32 noundef 0, i64 noundef 120) #12
  %flags12 = bitcast i8* %call7 to i32*
  store i32 %flags, i32* %flags12, align 64
  %and = and i32 %flags, 1
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end21, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end10
  %call16 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp18 = icmp eq i8 %call16, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true15
  call fastcc void @inode_lock(%struct.inode* noundef %inode) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true15, %if.end10
  %call22 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #13
  %i_size = getelementptr inbounds i8, i8* %call7, i64 32
  %7 = bitcast i8* %i_size to i64*
  store i64 %call22, i64* %7, align 32
  %call23 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp25 = icmp ne i8 %call23, 0
  %cmp29.not = icmp slt i64 %1, %call22
  %or.cond398 = select i1 %cmp25, i1 true, i1 %cmp29.not
  br i1 %or.cond398, label %if.end32, label %fail_dio

if.end32:                                         ; preds = %if.end21
  %conv33 = zext i32 %sub to i64
  %and34 = and i64 %or, %conv33
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %if.end49, label %if.then36

if.then36:                                        ; preds = %if.end32
  %tobool37.not = icmp eq %struct.block_device* %bdev, null
  br i1 %tobool37.not, label %fail_dio, label %if.end41

if.end41:                                         ; preds = %if.then36
  %call39 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef nonnull %bdev) #13
  %call40 = call fastcc i32 @blksize_bits(i32 noundef %call39) #13
  %.pre401 = shl nsw i32 -1, %call40
  %.pre402 = xor i32 %.pre401, -1
  %.pre403 = zext i32 %.pre402 to i64
  %.pre404 = and i64 %or, %.pre403
  %tobool46.not = icmp eq i64 %.pre404, 0
  br i1 %tobool46.not, label %if.end49, label %fail_dio

if.end49:                                         ; preds = %if.end41, %if.end32
  %blkbits.1 = phi i32 [ %call40, %if.end41 ], [ %conv, %if.end32 ]
  %8 = load i32, i32* %flags12, align 64
  %and51 = and i32 %8, 1
  %tobool52.not = icmp eq i32 %and51, 0
  %brmerge = select i1 %tobool52.not, i1 true, i1 %cmp25
  br i1 %brmerge, label %if.end65, label %if.then58

if.then58:                                        ; preds = %if.end49
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %9 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %9, i64 0, i32 17
  %10 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %sub59 = add i64 %add, -1
  %call60 = call i32 @filemap_write_and_wait_range(%struct.address_space* noundef %10, i64 noundef %1, i64 noundef %sub59) #12
  %conv61 = sext i32 %call60 to i64
  %tobool62.not = icmp eq i32 %call60, 0
  br i1 %tobool62.not, label %if.end65, label %fail_dio

if.end65:                                         ; preds = %if.end49, %if.then58
  %call66 = call fastcc i1 @is_sync_kiocb(%struct.kiocb* noundef %iocb) #13
  br i1 %call66, label %if.end81, label %if.else

if.else:                                          ; preds = %if.end65
  %call68 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp70 = icmp eq i8 %call68, 1
  br i1 %cmp70, label %land.lhs.true72, label %if.else78

land.lhs.true72:                                  ; preds = %if.else
  %call73 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #13
  %cmp74 = icmp sgt i64 %add, %call73
  br i1 %cmp74, label %if.end81, label %if.else78

if.else78:                                        ; preds = %land.lhs.true72, %if.else
  br label %if.end81

if.end81:                                         ; preds = %land.lhs.true72, %if.end65, %if.else78
  %.sink = phi i32 [ 1, %if.else78 ], [ 0, %if.end65 ], [ 0, %land.lhs.true72 ]
  %tobool109.not = phi i1 [ false, %if.else78 ], [ true, %if.end65 ], [ true, %land.lhs.true72 ]
  %is_async77 = getelementptr inbounds i8, i8* %call7, i64 64
  %11 = bitcast i8* %is_async77 to i32*
  store i32 %.sink, i32* %11, align 64
  %inode82 = getelementptr inbounds i8, i8* %call7, i64 24
  %12 = bitcast i8* %inode82 to %struct.inode**
  store %struct.inode* %inode, %struct.inode** %12, align 8
  %call83 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp85 = icmp eq i8 %call83, 1
  %op = getelementptr inbounds i8, i8* %call7, i64 4
  %13 = bitcast i8* %op to i32*
  br i1 %cmp85, label %if.then87, label %if.else96

if.then87:                                        ; preds = %if.end81
  store i32 1, i32* %13, align 4
  %op_flags = getelementptr inbounds i8, i8* %call7, i64 8
  %14 = bitcast i8* %op_flags to i32*
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %15 = load i32, i32* %ki_flags, align 8
  %and88 = and i32 %15, 8
  %tobool89.not = icmp eq i32 %and88, 0
  %spec.store.select = select i1 %tobool89.not, i32 34816, i32 2131968
  store i32 %spec.store.select, i32* %14, align 8
  br label %if.end98

if.else96:                                        ; preds = %if.end81
  store i32 0, i32* %13, align 4
  %ki_flags99.phi.trans.insert = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %.pre = load i32, i32* %ki_flags99.phi.trans.insert, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then87, %if.else96
  %16 = phi i32 [ %15, %if.then87 ], [ %.pre, %if.else96 ]
  %and100 = and i32 %16, 1
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end107, label %if.then102

if.then102:                                       ; preds = %if.end98
  %op_flags103 = getelementptr inbounds i8, i8* %call7, i64 8
  %17 = bitcast i8* %op_flags103 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, 16777216
  store i32 %19, i32* %17, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end98
  %is_async108 = getelementptr inbounds i8, i8* %call7, i64 64
  %20 = bitcast i8* %is_async108 to i32*
  br i1 %tobool109.not, label %if.end135, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.end107
  %call111 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp113 = icmp eq i8 %call111, 1
  br i1 %cmp113, label %if.then115, label %if.end135

if.then115:                                       ; preds = %land.lhs.true110
  %and117 = and i32 %16, 2
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.else122, label %if.then119

if.then119:                                       ; preds = %if.then115
  %call120 = call fastcc i32 @dio_set_defer_completion(%struct.dio* noundef nonnull %6) #13
  br label %if.end131

if.else122:                                       ; preds = %if.then115
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %21 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i64 0, i32 44
  %22 = load %struct.workqueue_struct*, %struct.workqueue_struct** %s_dio_done_wq, align 8
  %tobool124.not = icmp eq %struct.workqueue_struct* %22, null
  br i1 %tobool124.not, label %if.then125, label %if.end135

if.then125:                                       ; preds = %if.else122
  %call128 = call i32 @sb_init_dio_done_wq(%struct.super_block* noundef %21) #13
  br label %if.end131

if.end131:                                        ; preds = %if.then125, %if.then119
  %retval2.0.in = phi i32 [ %call120, %if.then119 ], [ %call128, %if.then125 ]
  %retval2.0 = sext i32 %retval2.0.in to i64
  %tobool132.not = icmp eq i32 %retval2.0.in, 0
  br i1 %tobool132.not, label %if.end135, label %fail_dio

if.end135:                                        ; preds = %if.else122, %if.end131, %land.lhs.true110, %if.end107
  call fastcc void @inode_dio_begin(%struct.inode* noundef %inode) #13
  %blkbits136 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 1
  store i32 %blkbits.1, i32* %blkbits136, align 8
  %sub137 = sub i32 %conv, %blkbits.1
  %blkfactor = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 2
  store i32 %sub137, i32* %blkfactor, align 4
  %sh_prom = zext i32 %blkbits.1 to i64
  %shr = ashr i64 %1, %sh_prom
  %block_in_file = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 5
  store i64 %shr, i64* %block_in_file, align 8
  %get_block138 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 10
  store i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* %get_block, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %get_block138, align 8
  %end_io139 = getelementptr inbounds i8, i8* %call7, i64 40
  %23 = bitcast i8* %end_io139 to i32 (%struct.kiocb*, i64, i64, i8*)**
  store i32 (%struct.kiocb*, i64, i64, i8*)* %end_io, i32 (%struct.kiocb*, i64, i64, i8*)** %23, align 8
  %submit_io140 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 11
  store void (%struct.bio*, %struct.inode*, i64)* %submit_io, void (%struct.bio*, %struct.inode*, i64)** %submit_io140, align 8
  %final_block_in_bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 13
  store i64 -1, i64* %final_block_in_bio, align 8
  %next_block_for_io = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 14
  store i64 -1, i64* %next_block_for_io, align 8
  %iocb141 = getelementptr inbounds i8, i8* %call7, i64 104
  %24 = bitcast i8* %iocb141 to %struct.kiocb**
  store %struct.kiocb* %iocb, %struct.kiocb** %24, align 8
  %bio_lock = getelementptr inbounds i8, i8* %call7, i64 56
  %25 = bitcast i8* %bio_lock to i32*
  store i32 0, i32* %25, align 8
  %refcount = getelementptr inbounds i8, i8* %call7, i64 80
  %26 = bitcast i8* %refcount to i64*
  store i64 1, i64* %26, align 16
  %call147 = call fastcc i1 @iter_is_iovec(%struct.iov_iter* noundef %iter) #13
  br i1 %call147, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end135
  %call149 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp151 = icmp eq i8 %call149, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end135
  %27 = phi i1 [ false, %if.end135 ], [ %cmp151, %land.rhs ]
  %28 = getelementptr inbounds i8, i8* %call7, i64 69
  %frombool = zext i1 %27 to i8
  store i8 %frombool, i8* %28, align 1
  %iter153 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 20
  store %struct.iov_iter* %iter, %struct.iov_iter** %iter153, align 8
  %shr155 = ashr i64 %add, %sh_prom
  %final_block_in_request = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 8
  store i64 %shr155, i64* %final_block_in_request, align 8
  %tobool157.not = icmp eq i32 %sub137, 0
  br i1 %tobool157.not, label %if.end162, label %if.then161, !prof !9

if.then161:                                       ; preds = %land.end
  %pages_in_io = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 4
  store i32 2, i32* %pages_in_io, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %land.end
  %29 = phi i32 [ 2, %if.then161 ], [ 0, %land.end ]
  %call163 = call i32 @iov_iter_npages(%struct.iov_iter* noundef %iter, i32 noundef 2147483647) #12
  %pages_in_io164 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 4
  %add165 = add i32 %29, %call163
  store i32 %add165, i32* %pages_in_io164, align 4
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #12
  %call166 = call fastcc i32 @do_direct_IO(%struct.dio* noundef nonnull %6, %struct.dio_submit* noundef nonnull %sdio, %struct.buffer_head* noundef nonnull %map_bh) #13
  %cond = icmp eq i32 %call166, 0
  br i1 %cond, label %if.end174, label %if.then169

if.then169:                                       ; preds = %if.end162
  call fastcc void @dio_cleanup(%struct.dio* noundef nonnull %6, %struct.dio_submit* noundef nonnull %sdio) #13
  %cmp171 = icmp eq i32 %call166, -15
  %narrow = select i1 %cmp171, i32 0, i32 %call166
  %spec.select395 = sext i32 %narrow to i64
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %if.end162
  %retval2.1 = phi i64 [ 0, %if.end162 ], [ %spec.select395, %if.then169 ]
  call fastcc void @dio_zero_block(%struct.dio* noundef nonnull %6, %struct.dio_submit* noundef nonnull %sdio, i32 noundef 1, %struct.buffer_head* noundef nonnull %map_bh) #13
  %cur_page = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 15
  %30 = load %struct.page*, %struct.page** %cur_page, align 8
  %tobool175.not = icmp eq %struct.page* %30, null
  br i1 %tobool175.not, label %if.end185, label %if.then176

if.then176:                                       ; preds = %if.end174
  %call177 = call fastcc i32 @dio_send_cur_page(%struct.dio* noundef nonnull %6, %struct.dio_submit* noundef nonnull %sdio, %struct.buffer_head* noundef nonnull %map_bh) #13
  %cmp179 = icmp eq i64 %retval2.1, 0
  %conv178 = sext i32 %call177 to i64
  %spec.select = select i1 %cmp179, i64 %conv178, i64 %retval2.1
  %31 = load %struct.page*, %struct.page** %cur_page, align 8
  call fastcc void @put_page(%struct.page* noundef %31) #13
  store %struct.page* null, %struct.page** %cur_page, align 8
  br label %if.end185

if.end185:                                        ; preds = %if.then176, %if.end174
  %retval2.3 = phi i64 [ %spec.select, %if.then176 ], [ %retval2.1, %if.end174 ]
  %bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 0
  %32 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool186.not = icmp eq %struct.bio* %32, null
  br i1 %tobool186.not, label %if.end188, label %if.then187

if.then187:                                       ; preds = %if.end185
  call fastcc void @dio_bio_submit(%struct.dio* noundef nonnull %6, %struct.dio_submit* noundef nonnull %sdio) #13
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %if.end185
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #12
  call fastcc void @dio_cleanup(%struct.dio* noundef nonnull %6, %struct.dio_submit* noundef nonnull %sdio) #13
  %call189 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp191 = icmp eq i8 %call189, 0
  br i1 %cmp191, label %land.lhs.true193, label %do.body200

land.lhs.true193:                                 ; preds = %if.end188
  %33 = load i32, i32* %flags12, align 64
  %and195 = and i32 %33, 1
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %do.body200, label %if.then197

if.then197:                                       ; preds = %land.lhs.true193
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %34) #13
  br label %do.body200

do.body200:                                       ; preds = %if.end188, %land.lhs.true193, %if.then197
  %cmp201 = icmp eq i64 %retval2.3, -529
  br i1 %cmp201, label %do.body211, label %do.end219, !prof !10

do.body211:                                       ; preds = %do.body200
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/direct-io.c\22; .popsection; .long 14472b - 14470b; .short 1328; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !11
  unreachable

do.end219:                                        ; preds = %do.body200
  %35 = load i32, i32* %20, align 64
  %tobool221 = icmp ne i32 %35, 0
  %cmp223 = icmp eq i64 %retval2.3, 0
  %or.cond287 = select i1 %tobool221, i1 %cmp223, i1 false
  br i1 %or.cond287, label %land.lhs.true225, label %if.end237

land.lhs.true225:                                 ; preds = %do.end219
  %result = getelementptr inbounds i8, i8* %call7, i64 112
  %36 = bitcast i8* %result to i64*
  %37 = load i64, i64* %36, align 16
  %tobool226.not = icmp eq i64 %37, 0
  br i1 %tobool226.not, label %if.end237, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %land.lhs.true225
  %call228 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp230 = icmp eq i8 %call228, 0
  %cmp233 = icmp eq i64 %37, %call
  %or.cond400 = select i1 %cmp230, i1 true, i1 %cmp233
  br i1 %or.cond400, label %if.end237.thread, label %if.end237

if.end237:                                        ; preds = %do.end219, %land.lhs.true225, %land.lhs.true227
  call fastcc void @dio_await_completion(%struct.dio* noundef nonnull %6) #13
  %call238 = call fastcc i32 @drop_refcount(%struct.dio* noundef nonnull %6) #13
  %cmp239 = icmp eq i32 %call238, 0
  br i1 %cmp239, label %if.then241, label %do.body244

if.end237.thread:                                 ; preds = %land.lhs.true227
  %call238409 = call fastcc i32 @drop_refcount(%struct.dio* noundef nonnull %6) #13
  %cmp239410 = icmp eq i32 %call238409, 0
  br i1 %cmp239410, label %if.then241, label %cleanup275

if.then241:                                       ; preds = %if.end237.thread, %if.end237
  %retval2.4411 = phi i64 [ -529, %if.end237.thread ], [ %retval2.3, %if.end237 ]
  %call242 = call fastcc i64 @dio_complete(%struct.dio* noundef nonnull %6, i64 noundef %retval2.4411, i32 noundef 2) #13
  br label %cleanup275

do.body244:                                       ; preds = %if.end237
  %cmp245.not = icmp eq i64 %retval2.3, -529
  br i1 %cmp245.not, label %cleanup275, label %do.body255, !prof !9

do.body255:                                       ; preds = %do.body244
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/direct-io.c\22; .popsection; .long 14472b - 14470b; .short 1338; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !12
  unreachable

fail_dio:                                         ; preds = %if.then36, %if.end21, %if.then58, %if.end131, %if.end41
  %retval2.6 = phi i64 [ -22, %if.end41 ], [ %conv61, %if.then58 ], [ %retval2.0, %if.end131 ], [ 0, %if.end21 ], [ -22, %if.then36 ]
  %38 = load i32, i32* %flags12, align 64
  %and266 = and i32 %38, 1
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %if.end274, label %land.lhs.true268

land.lhs.true268:                                 ; preds = %fail_dio
  %call269 = call fastcc i8 @iov_iter_rw(%struct.iov_iter* noundef %iter) #13
  %cmp271 = icmp eq i8 %call269, 0
  br i1 %cmp271, label %if.then273, label %if.end274

if.then273:                                       ; preds = %land.lhs.true268
  call fastcc void @inode_unlock(%struct.inode* noundef %inode) #13
  br label %if.end274

if.end274:                                        ; preds = %if.then273, %land.lhs.true268, %fail_dio
  %39 = load %struct.kmem_cache*, %struct.kmem_cache** @dio_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %39, i8* noundef nonnull %call7) #12
  br label %cleanup275

cleanup275:                                       ; preds = %if.end237.thread, %if.then241, %do.body244, %if.end, %entry, %if.end274
  %retval.0 = phi i64 [ %retval2.6, %if.end274 ], [ 0, %entry ], [ -12, %if.end ], [ %call242, %if.then241 ], [ -529, %do.body244 ], [ -529, %if.end237.thread ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %2) #14
  ret i64 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @dio_init() #3 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef 640, i32 noundef 64, i32 noundef 262144, void (i8*)* noundef null) #12
  store %struct.kmem_cache* %call, %struct.kmem_cache** @dio_cache, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64 %new, i64* elementtype(i64) %0) #14, !srcloc !13
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #4 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iov_iter_alignment(%struct.iov_iter* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @iov_iter_rw(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #4 {
entry:
  %data_source = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 1
  %0 = load i8, i8* %data_source, align 1, !range !14
  ret i8 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #4 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i32 @blksize_bits(i32 noundef %size) unnamed_addr #6 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %size.addr.0 = phi i32 [ %size, %entry ], [ %shr, %do.body ]
  %bits.0 = phi i32 [ 8, %entry ], [ %inc, %do.body ]
  %inc = add nuw nsw i32 %bits.0, 1
  %shr = lshr i32 %size.addr.0, 1
  %cmp = icmp ugt i32 %size.addr.0, 513
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  ret i32 %inc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_logical_block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #13
  %call1 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %call) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_sync_kiocb(%struct.kiocb* nocapture noundef readonly %kiocb) unnamed_addr #4 {
entry:
  %ki_complete = getelementptr inbounds %struct.kiocb, %struct.kiocb* %kiocb, i64 0, i32 2
  %0 = load void (%struct.kiocb*, i64, i64)*, void (%struct.kiocb*, i64, i64)** %ki_complete, align 8
  %cmp = icmp eq void (%struct.kiocb*, i64, i64)* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dio_set_defer_completion(%struct.dio* nocapture noundef %dio) unnamed_addr #0 {
entry:
  %inode = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %defer_completion = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 12
  %2 = load i8, i8* %defer_completion, align 4, !range !14
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  store i8 1, i8* %defer_completion, align 4
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 44
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** %s_dio_done_wq, align 8
  %tobool2.not = icmp eq %struct.workqueue_struct* %3, null
  br i1 %tobool2.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %call = call i32 @sb_init_dio_done_wq(%struct.super_block* noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_dio_begin(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_dio_count = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 33
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_dio_count) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iter_is_iovec(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #13
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(%struct.iov_iter* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_direct_IO(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, %struct.buffer_head* noundef %map_bh) unnamed_addr #0 {
entry:
  %blkbits1 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 1
  %0 = load i32, i32* %blkbits1, align 8
  %blkfactor = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 2
  %block_in_file = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 5
  %final_block_in_request = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 8
  %1 = load i64, i64* %block_in_file, align 8
  %2 = load i64, i64* %final_block_in_request, align 8
  %cmp368 = icmp ult i64 %1, %2
  br i1 %cmp368, label %while.body.lr.ph, label %cleanup206

while.body.lr.ph:                                 ; preds = %entry
  %3 = load i32, i32* %blkfactor, align 4
  %add = add i32 %3, %0
  %head = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 21
  %from4 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 23
  %tail = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 22
  %to9 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 24
  %blocks_available = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 6
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 0
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 4
  %sh_prom = zext i32 %0 to i64
  %b_blocknr = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 3
  %next_block_for_io = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 14
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 6
  %sh_prom38 = zext i32 %add to i64
  %start_zero_done = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 3
  %boundary = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 9
  %result162 = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 19
  %op = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %inode = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 5
  %shl70 = shl nuw i32 1, %0
  %conv71 = sext i32 %shl70 to i64
  %sub72 = add nsw i64 %conv71, -1
  %neg = sub nsw i64 0, %conv71
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup200
  %call = call fastcc %struct.page* @dio_get_page(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio) #13
  %4 = bitcast %struct.page* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %4) #13
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = bitcast %struct.page* %call to i8*
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %5) #13
  %conv = trunc i64 %call3 to i32
  br label %cleanup206

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %head, align 8
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i64, i64* %from4, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i64 [ %7, %cond.false ], [ 0, %if.end ]
  %8 = load i32, i32* %tail, align 4
  %sub = add i32 %8, -1
  %cmp6 = icmp eq i32 %6, %sub
  br i1 %cmp6, label %cond.true8, label %cond.end11

cond.true8:                                       ; preds = %cond.end
  %9 = load i64, i64* %to9, align 8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.end, %cond.true8
  %cond12 = phi i64 [ %9, %cond.true8 ], [ 4096, %cond.end ]
  %inc = add i32 %6, 1
  store i32 %inc, i32* %head, align 8
  br label %while.cond14

while.cond14:                                     ; preds = %do.end188, %cond.end11
  %from.0 = phi i64 [ %cond, %cond.end11 ], [ %from.2, %do.end188 ]
  %cmp15 = icmp ugt i64 %cond12, %from.0
  br i1 %cmp15, label %while.body17, label %cleanup200

while.body17:                                     ; preds = %while.cond14
  %10 = load i32, i32* %blocks_available, align 8
  %cmp18 = icmp eq i32 %10, 0
  br i1 %cmp18, label %if.then20, label %do_holes

if.then20:                                        ; preds = %while.body17
  %call21 = call fastcc i32 @get_more_blocks(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, %struct.buffer_head* noundef %map_bh) #13
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.then20
  %11 = load volatile i64, i64* %b_state.i, align 8
  %12 = and i64 %11, 16
  %tobool26.not = icmp eq i64 %12, 0
  br i1 %tobool26.not, label %do_holes, label %if.end28

if.end28:                                         ; preds = %if.end24
  %13 = load i64, i64* %b_size, align 8
  %shr = lshr i64 %13, %sh_prom
  %conv29 = trunc i64 %shr to i32
  store i32 %conv29, i32* %blocks_available, align 8
  %14 = load i64, i64* %b_blocknr, align 8
  %15 = load i32, i32* %blkfactor, align 4
  %sh_prom32 = zext i32 %15 to i64
  %shl = shl i64 %14, %sh_prom32
  store i64 %shl, i64* %next_block_for_io, align 8
  %16 = load volatile i64, i64* %b_state.i, align 8
  %17 = and i64 %16, 32
  %tobool34.not = icmp eq i64 %17, 0
  br i1 %tobool34.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.end28
  %18 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  %19 = load i64, i64* %b_blocknr, align 8
  %20 = load i64, i64* %b_size, align 8
  %shr39 = lshr i64 %20, %sh_prom38
  call void @clean_bdev_aliases(%struct.block_device* noundef %18, i64 noundef %19, i64 noundef %shr39) #12
  %.pre = load i32, i32* %blkfactor, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end28
  %21 = phi i32 [ %.pre, %if.then35 ], [ %15, %if.end28 ]
  %tobool42.not = icmp eq i32 %21, 0
  br i1 %tobool42.not, label %do_holes, label %if.end44

if.end44:                                         ; preds = %if.end40
  %notmask = shl nsw i32 -1, %21
  %sub47 = xor i32 %notmask, -1
  %conv48 = sext i32 %sub47 to i64
  %22 = load i64, i64* %block_in_file, align 8
  %and = and i64 %22, %conv48
  %23 = load volatile i64, i64* %b_state.i, align 8
  %24 = and i64 %23, 32
  %tobool51.not = icmp eq i64 %24, 0
  br i1 %tobool51.not, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end44
  %25 = load i64, i64* %next_block_for_io, align 8
  %add54 = add i64 %25, %and
  store i64 %add54, i64* %next_block_for_io, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end44
  %26 = load i32, i32* %blocks_available, align 8
  %27 = trunc i64 %and to i32
  %conv59 = sub i32 %26, %27
  store i32 %conv59, i32* %blocks_available, align 8
  br label %do_holes

cleanup:                                          ; preds = %if.then20
  call fastcc void @put_page(%struct.page* noundef %call) #13
  br label %cleanup206

do_holes:                                         ; preds = %if.end40, %if.end24, %if.end55, %while.body17
  %28 = load volatile i64, i64* %b_state.i, align 8
  %29 = and i64 %28, 16
  %tobool63.not = icmp eq i64 %29, 0
  br i1 %tobool63.not, label %if.then64, label %if.end96

if.then64:                                        ; preds = %do_holes
  %30 = load i32, i32* %op, align 4
  %cmp65 = icmp eq i32 %30, 1
  br i1 %cmp65, label %cleanup200.thread350, label %if.end68

cleanup200.thread350:                             ; preds = %if.then64
  call fastcc void @put_page(%struct.page* noundef %call) #13
  br label %cleanup206

if.end68:                                         ; preds = %if.then64
  %31 = load %struct.inode*, %struct.inode** %inode, align 8
  %call69 = call fastcc i64 @i_size_read(%struct.inode* noundef %31) #13
  %add73 = add i64 %sub72, %call69
  %and77 = and i64 %add73, %neg
  %32 = load i64, i64* %block_in_file, align 8
  %shr80 = ashr i64 %and77, %sh_prom
  %cmp81.not = icmp ult i64 %32, %shr80
  br i1 %cmp81.not, label %cleanup95, label %cleanup200.thread353

cleanup200.thread353:                             ; preds = %if.end68
  call fastcc void @put_page(%struct.page* noundef %call) #13
  br label %cleanup206

cleanup95:                                        ; preds = %if.end68
  %conv85 = trunc i64 %from.0 to i32
  call fastcc void @zero_user(%struct.page* noundef %call, i32 noundef %conv85, i32 noundef %shl70) #13
  %33 = load i64, i64* %block_in_file, align 8
  %inc88 = add i64 %33, 1
  store i64 %inc88, i64* %block_in_file, align 8
  %34 = load i64, i64* %result162, align 16
  %add94 = add i64 %34, %conv71
  store i64 %add94, i64* %result162, align 16
  br label %do.body167

if.end96:                                         ; preds = %do_holes
  %35 = load i32, i32* %blkfactor, align 4
  %tobool98.not = icmp eq i32 %35, 0
  br i1 %tobool98.not, label %if.end105, label %land.rhs

land.rhs:                                         ; preds = %if.end96
  %36 = load i32, i32* %start_zero_done, align 8
  %tobool99.not = icmp eq i32 %36, 0
  br i1 %tobool99.not, label %if.then104, label %if.end105, !prof !10

if.then104:                                       ; preds = %land.rhs
  call fastcc void @dio_zero_block(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, i32 noundef 0, %struct.buffer_head* noundef %map_bh) #13
  br label %if.end105

if.end105:                                        ; preds = %if.end96, %if.then104, %land.rhs
  %37 = load i32, i32* %blocks_available, align 8
  %sub107 = sub i64 %cond12, %from.0
  %shr109 = lshr i64 %sub107, %sh_prom
  %conv110 = trunc i64 %shr109 to i32
  %cmp111 = icmp ugt i32 %37, %conv110
  %spec.select = select i1 %cmp111, i32 %conv110, i32 %37
  %38 = load i64, i64* %final_block_in_request, align 8
  %39 = load i64, i64* %block_in_file, align 8
  %sub117 = sub i64 %38, %39
  %conv118 = trunc i64 %sub117 to i32
  %cmp119 = icmp ugt i32 %spec.select, %conv118
  %this_chunk_blocks.1 = select i1 %cmp119, i32 %conv118, i32 %spec.select
  %shl123 = shl i32 %this_chunk_blocks.1, %0
  %cmp124 = icmp eq i32 %shl123, 0
  br i1 %cmp124, label %do.body134, label %do.end140, !prof !10

do.body134:                                       ; preds = %if.end105
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/direct-io.c\22; .popsection; .long 14472b - 14470b; .short 1049; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  unreachable

do.end140:                                        ; preds = %if.end105
  %cmp142 = icmp eq i32 %this_chunk_blocks.1, %37
  br i1 %cmp142, label %if.then144, label %if.end146

if.then144:                                       ; preds = %do.end140
  %40 = load volatile i64, i64* %b_state.i, align 8
  %41 = trunc i64 %40 to i32
  %42 = lshr i32 %41, 9
  %conv.i.i331 = and i32 %42, 1
  store i32 %conv.i.i331, i32* %boundary, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %do.end140
  %conv147 = trunc i64 %from.0 to i32
  %43 = load i64, i64* %next_block_for_io, align 8
  %call149 = call fastcc i32 @submit_page_section(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, %struct.page* noundef %call, i32 noundef %conv147, i32 noundef %shl123, i64 noundef %43, %struct.buffer_head* noundef %map_bh) #13
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.then151

if.then151:                                       ; preds = %if.end146
  call fastcc void @put_page(%struct.page* noundef %call) #13
  br label %cleanup206

if.end152:                                        ; preds = %if.end146
  %conv153 = zext i32 %this_chunk_blocks.1 to i64
  %44 = load i64, i64* %next_block_for_io, align 8
  %add155 = add i64 %44, %conv153
  store i64 %add155, i64* %next_block_for_io, align 8
  %45 = load i64, i64* %block_in_file, align 8
  %add158 = add i64 %45, %conv153
  store i64 %add158, i64* %block_in_file, align 8
  %conv159 = zext i32 %shl123 to i64
  %46 = load i64, i64* %result162, align 16
  %add163 = add i64 %46, %conv159
  store i64 %add163, i64* %result162, align 16
  %47 = load i32, i32* %blocks_available, align 8
  %sub165 = sub i32 %47, %this_chunk_blocks.1
  store i32 %sub165, i32* %blocks_available, align 8
  br label %do.body167

do.body167:                                       ; preds = %cleanup95, %if.end152
  %conv159.pn = phi i64 [ %conv159, %if.end152 ], [ %conv71, %cleanup95 ]
  %48 = load i64, i64* %block_in_file, align 8
  %49 = load i64, i64* %final_block_in_request, align 8
  %cmp170 = icmp ugt i64 %48, %49
  br i1 %cmp170, label %do.body180, label %do.end188, !prof !10

do.body180:                                       ; preds = %do.body167
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/direct-io.c\22; .popsection; .long 14472b - 14470b; .short 1069; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  unreachable

do.end188:                                        ; preds = %do.body167
  %from.2 = add i64 %conv159.pn, %from.0
  %cmp191 = icmp eq i64 %48, %49
  br i1 %cmp191, label %cleanup200, label %while.cond14

cleanup200:                                       ; preds = %while.cond14, %do.end188
  call fastcc void @put_page(%struct.page* noundef %call) #13
  %50 = load i64, i64* %block_in_file, align 8
  %51 = load i64, i64* %final_block_in_request, align 8
  %cmp = icmp ult i64 %50, %51
  br i1 %cmp, label %while.body, label %cleanup206

cleanup206:                                       ; preds = %cleanup200, %entry, %if.then, %cleanup, %if.then151, %cleanup200.thread353, %cleanup200.thread350
  %retval.7 = phi i32 [ -15, %cleanup200.thread350 ], [ %conv, %if.then ], [ %call149, %if.then151 ], [ %call21, %cleanup ], [ 0, %cleanup200.thread353 ], [ 0, %entry ], [ 0, %cleanup200 ]
  ret i32 %retval.7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dio_cleanup(%struct.dio* nocapture noundef readonly %dio, %struct.dio_submit* nocapture noundef %sdio) unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 21
  %tail = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 22
  %0 = load i32, i32* %head, align 8
  %1 = load i32, i32* %tail, align 4
  %cmp4 = icmp ult i32 %0, %1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %2 = phi i32 [ %4, %while.body ], [ %0, %entry ]
  %inc = add nuw i32 %2, 1
  store i32 %inc, i32* %head, align 8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr %struct.dio, %struct.dio* %dio, i64 0, i32 20, i32 0, i64 %idxprom
  %3 = load %struct.page*, %struct.page** %arrayidx, align 8
  call fastcc void @put_page(%struct.page* noundef %3) #13
  %4 = load i32, i32* %head, align 8
  %5 = load i32, i32* %tail, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dio_zero_block(%struct.dio* noundef %dio, %struct.dio_submit* nocapture noundef %sdio, i32 noundef %end, %struct.buffer_head* noundef %map_bh) unnamed_addr #0 {
entry:
  %start_zero_done = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 3
  store i32 1, i32* %start_zero_done, align 8
  %blkfactor = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 2
  %0 = load i32, i32* %blkfactor, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %b_state.i = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 0
  %1 = load volatile i64, i64* %b_state.i, align 8
  %2 = and i64 %1, 32
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %shl = shl nuw i32 1, %0
  %block_in_file = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 5
  %3 = load i64, i64* %block_in_file, align 8
  %sub = add i32 %shl, -1
  %4 = trunc i64 %3 to i32
  %conv3 = and i32 %sub, %4
  %tobool4.not = icmp eq i32 %conv3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq i32 %end, 0
  %sub9 = sub i32 %shl, %conv3
  %spec.select = select i1 %tobool7.not, i32 %conv3, i32 %sub9
  %blkbits = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 1
  %5 = load i32, i32* %blkbits, align 8
  %shl11 = shl i32 %spec.select, %5
  %6 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %6, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %7 = load i64, i64* @kimage_voffset, align 8
  %sub12 = sub i64 ptrtoint ([512 x i64]* @empty_zero_page to i64), %7
  %shr13 = lshr i64 %sub12, 12
  %add.ptr14 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr13
  %next_block_for_io = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 14
  %8 = load i64, i64* %next_block_for_io, align 8
  %call15 = call fastcc i32 @submit_page_section(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, %struct.page* noundef %add.ptr14, i32 noundef 0, i32 noundef %shl11, i64 noundef %8, %struct.buffer_head* noundef %map_bh) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end6
  %conv19 = zext i32 %spec.select to i64
  %9 = load i64, i64* %next_block_for_io, align 8
  %add21 = add i64 %9, %conv19
  store i64 %add21, i64* %next_block_for_io, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry, %lor.lhs.false, %if.end18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dio_send_cur_page(%struct.dio* noundef %dio, %struct.dio_submit* nocapture noundef %sdio, %struct.buffer_head* nocapture noundef readonly %map_bh) unnamed_addr #0 {
entry:
  %bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %0, null
  br i1 %tobool.not, label %if.then10, label %if.then

if.then:                                          ; preds = %entry
  %final_block_in_bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 13
  %1 = load i64, i64* %final_block_in_bio, align 8
  %cur_page_block = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 18
  %2 = load i64, i64* %cur_page_block, align 8
  %cmp.not = icmp eq i64 %1, %2
  br i1 %cmp.not, label %lor.lhs.false, label %if.end6

lor.lhs.false:                                    ; preds = %if.then
  %logical_offset_in_bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 12
  %3 = load i64, i64* %logical_offset_in_bio, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 8, i32 1
  %4 = load i32, i32* %bi_size, align 8
  %conv = zext i32 %4 to i64
  %add = add i64 %3, %conv
  %cur_page_fs_offset = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 19
  %5 = load i64, i64* %cur_page_fs_offset, align 8
  %cmp3.not = icmp eq i64 %5, %add
  br i1 %cmp3.not, label %if.end15, label %if.end6

if.end6:                                          ; preds = %if.then, %lor.lhs.false
  call fastcc void @dio_bio_submit(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio) #13
  %.pr.pre = load %struct.bio*, %struct.bio** %bio, align 8
  %cmp8 = icmp eq %struct.bio* %.pr.pre, null
  br i1 %cmp8, label %if.then10, label %if.end15

if.then10:                                        ; preds = %entry, %if.end6
  %cur_page_block11 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 18
  %6 = load i64, i64* %cur_page_block11, align 8
  %call = call fastcc i32 @dio_new_bio(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, i64 noundef %6, %struct.buffer_head* noundef %map_bh) #13
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end15, label %out

if.end15:                                         ; preds = %lor.lhs.false, %if.then10, %if.end6
  %call16 = call fastcc i32 @dio_bio_add_page(%struct.dio_submit* noundef %sdio) #13
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %out, label %if.then19

if.then19:                                        ; preds = %if.end15
  call fastcc void @dio_bio_submit(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio) #13
  %cur_page_block20 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 18
  %7 = load i64, i64* %cur_page_block20, align 8
  %call21 = call fastcc i32 @dio_new_bio(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, i64 noundef %7, %struct.buffer_head* noundef %map_bh) #13
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %out

if.then24:                                        ; preds = %if.then19
  %call25 = call fastcc i32 @dio_bio_add_page(%struct.dio_submit* noundef %sdio) #13
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %out, label %do.body32, !prof !9

do.body32:                                        ; preds = %if.then24
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/direct-io.c\22; .popsection; .long 14472b - 14470b; .short 785; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !17
  unreachable

out:                                              ; preds = %if.end15, %if.then24, %if.then19, %if.then10
  %ret.1 = phi i32 [ %call, %if.then10 ], [ 0, %if.then24 ], [ %call21, %if.then19 ], [ 0, %if.end15 ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dio_bio_submit(%struct.dio* noundef %dio, %struct.dio_submit* nocapture noundef %sdio) unnamed_addr #0 {
entry:
  %bio1 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %bio1, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 10
  %1 = bitcast i8** %bi_private to %struct.dio**
  store %struct.dio* %dio, %struct.dio** %1, align 8
  call fastcc void @bio_clear_flag(%struct.bio* noundef %0, i32 noundef 3) #13
  %rlock.i = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 9, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %refcount = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 15
  %2 = load i64, i64* %refcount, align 16
  %inc = add i64 %2, 1
  store i64 %inc, i64* %refcount, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #12
  %is_async = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 11
  %3 = load i32, i32* %is_async, align 64
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %op = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %4 = load i32, i32* %op, align 4
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %should_dirty = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 13
  %5 = load i8, i8* %should_dirty, align 1, !range !14
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true9
  call void @bio_set_pages_dirty(%struct.bio* noundef %0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9, %land.lhs.true, %entry
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 1
  %6 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i64 0, i32 16
  %7 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %bio_disk = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 4
  store %struct.gendisk* %7, %struct.gendisk** %bio_disk, align 16
  %submit_io = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 11
  %8 = load void (%struct.bio*, %struct.inode*, i64)*, void (%struct.bio*, %struct.inode*, i64)** %submit_io, align 8
  %tobool12.not = icmp eq void (%struct.bio*, %struct.inode*, i64)* %8, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  %inode = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 5
  %9 = load %struct.inode*, %struct.inode** %inode, align 8
  %logical_offset_in_bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 12
  %10 = load i64, i64* %logical_offset_in_bio, align 8
  call void %8(%struct.bio* noundef %0, %struct.inode* noundef %9, i64 noundef %10) #12
  br label %if.end17

if.else:                                          ; preds = %if.end
  %call15 = call i32 @submit_bio(%struct.bio* noundef %0) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  %.sink = phi i32 [ %call15, %if.else ], [ -1, %if.then13 ]
  %11 = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 3
  store i32 %.sink, i32* %11, align 4
  store %struct.bio* null, %struct.bio** %bio1, align 8
  %boundary = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 9
  store i32 0, i32* %boundary, align 8
  %logical_offset_in_bio19 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 12
  store i64 0, i64* %logical_offset_in_bio19, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dio_await_completion(%struct.dio* noundef %dio) unnamed_addr #0 {
entry:
  %call7 = call fastcc %struct.bio* @dio_await_one(%struct.dio* noundef %dio) #13
  %tobool.not8 = icmp eq %struct.bio* %call7, null
  br i1 %tobool.not8, label %do.end, label %if.then

if.then:                                          ; preds = %entry, %if.then
  %call9 = phi %struct.bio* [ %call, %if.then ], [ %call7, %entry ]
  %call1 = call fastcc i8 @dio_bio_complete(%struct.dio* noundef %dio, %struct.bio* noundef nonnull %call9) #13
  %call = call fastcc %struct.bio* @dio_await_one(%struct.dio* noundef %dio) #13
  %tobool.not = icmp eq %struct.bio* %call, null
  br i1 %tobool.not, label %do.end, label %if.then

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @drop_refcount(%struct.dio* noundef %dio) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 9, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %refcount = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 15
  %0 = load i64, i64* %refcount, align 16
  %dec = add i64 %0, -1
  store i64 %dec, i64* %refcount, align 16
  %conv5 = trunc i64 %dec to i32
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #12
  ret i32 %conv5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @dio_complete(%struct.dio* noundef %dio, i64 noundef %ret, i32 noundef %flags) unnamed_addr #0 {
entry:
  %iocb = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 18
  %0 = load %struct.kiocb*, %struct.kiocb** %iocb, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %0, i64 0, i32 1
  %1 = load i64, i64* %ki_pos, align 8
  %cmp = icmp eq i64 %ret, -529
  %spec.store.select = select i1 %cmp, i64 0, i64 %ret
  %result = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 19
  %2 = load i64, i64* %result, align 16
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end15, label %if.then1

if.then1:                                         ; preds = %entry
  %op = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %3 = load i32, i32* %op, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.then1
  %add = add i64 %2, %1
  %i_size = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 6
  %4 = load i64, i64* %i_size, align 32
  %cmp4 = icmp sgt i64 %add, %4
  %sub = sub i64 %4, %1
  %spec.select = select i1 %cmp4, i64 %sub, i64 %2
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.then1
  %transferred.0 = phi i64 [ %2, %if.then1 ], [ %spec.select, %land.lhs.true ]
  %cmp8 = icmp eq i64 %spec.store.select, -14
  br i1 %cmp8, label %land.lhs.true11, label %if.end15, !prof !10

land.lhs.true11:                                  ; preds = %if.end7
  %tobool12.not = icmp eq i64 %transferred.0, 0
  br i1 %tobool12.not, label %if.end25.thread, label %if.then18

if.end15:                                         ; preds = %if.end7, %entry
  %transferred.1 = phi i64 [ %transferred.0, %if.end7 ], [ 0, %entry ]
  %cmp16 = icmp eq i64 %spec.store.select, 0
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true11, %if.end15
  %transferred.1137 = phi i64 [ %transferred.1, %if.end15 ], [ %transferred.0, %land.lhs.true11 ]
  %page_errors = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 10
  %5 = load i32, i32* %page_errors, align 4
  %conv19 = sext i32 %5 to i64
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %transferred.1136 = phi i64 [ %transferred.1137, %if.then18 ], [ %transferred.1, %if.end15 ]
  %ret.addr.1 = phi i64 [ %conv19, %if.then18 ], [ %spec.store.select, %if.end15 ]
  %cmp21 = icmp eq i64 %ret.addr.1, 0
  br i1 %cmp21, label %if.end25, label %if.end25.thread

if.end25:                                         ; preds = %if.end20
  %io_error = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 14
  %6 = load i32, i32* %io_error, align 8
  %conv24 = sext i32 %6 to i64
  %cmp26 = icmp eq i32 %6, 0
  %spec.select150 = select i1 %cmp26, i64 %transferred.1136, i64 %conv24
  br label %if.end25.thread

if.end25.thread:                                  ; preds = %if.end25, %land.lhs.true11, %if.end20
  %transferred.1136145149 = phi i64 [ %transferred.1136, %if.end20 ], [ 0, %land.lhs.true11 ], [ %transferred.1136, %if.end25 ]
  %7 = phi i64 [ %ret.addr.1, %if.end20 ], [ -14, %land.lhs.true11 ], [ %spec.select150, %if.end25 ]
  %end_io = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 7
  %8 = load i32 (%struct.kiocb*, i64, i64, i8*)*, i32 (%struct.kiocb*, i64, i64, i8*)** %end_io, align 8
  %tobool30.not = icmp eq i32 (%struct.kiocb*, i64, i64, i8*)* %8, null
  br i1 %tobool30.not, label %if.end38, label %if.then31

if.then31:                                        ; preds = %if.end25.thread
  %private = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 8
  %9 = load i8*, i8** %private, align 16
  %call = call i32 %8(%struct.kiocb* noundef %0, i64 noundef %1, i64 noundef %7, i8* noundef %9) #12
  %tobool34.not = icmp eq i32 %call, 0
  %conv36 = sext i32 %call to i64
  %spec.select132 = select i1 %tobool34.not, i64 %7, i64 %conv36
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %if.end25.thread
  %ret.addr.4 = phi i64 [ %7, %if.end25.thread ], [ %spec.select132, %if.then31 ]
  %and = and i32 %flags, 2
  %tobool39 = icmp ne i32 %and, 0
  %cmp41 = icmp sgt i64 %ret.addr.4, 0
  %or.cond = select i1 %tobool39, i1 %cmp41, i1 false
  br i1 %or.cond, label %land.lhs.true43, label %if.end60

land.lhs.true43:                                  ; preds = %if.end38
  %op44 = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %10 = load i32, i32* %op44, align 4
  %cmp45 = icmp eq i32 %10, 1
  br i1 %cmp45, label %land.lhs.true47, label %if.end60

land.lhs.true47:                                  ; preds = %land.lhs.true43
  %inode = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 5
  %11 = load %struct.inode*, %struct.inode** %inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %11, i64 0, i32 7
  %12 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i64 0, i32 7
  %13 = load i64, i64* %nrpages, align 8
  %tobool48.not = icmp eq i64 %13, 0
  br i1 %tobool48.not, label %if.end60, label %if.then49

if.then49:                                        ; preds = %land.lhs.true47
  %shr = ashr i64 %1, 12
  %add52 = add i64 %1, -1
  %sub53 = add i64 %add52, %ret.addr.4
  %shr54 = ashr i64 %sub53, 12
  %call55 = call i32 @invalidate_inode_pages2_range(%struct.address_space* noundef %12, i64 noundef %shr, i64 noundef %shr54) #12
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end60, label %if.then57

if.then57:                                        ; preds = %if.then49
  %14 = load %struct.kiocb*, %struct.kiocb** %iocb, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i64 0, i32 0
  %15 = load %struct.file*, %struct.file** %ki_filp, align 8
  call void @dio_warn_stale_pagecache(%struct.file* noundef %15) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then49, %if.then57, %land.lhs.true47, %land.lhs.true43, %if.end38
  %inode61 = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 5
  %16 = load %struct.inode*, %struct.inode** %inode61, align 8
  call fastcc void @inode_dio_end(%struct.inode* noundef %16) #13
  %and62 = and i32 %flags, 1
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end80, label %if.then64

if.then64:                                        ; preds = %if.end60
  %17 = load %struct.kiocb*, %struct.kiocb** %iocb, align 8
  %ki_pos66 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i64 0, i32 1
  %18 = load i64, i64* %ki_pos66, align 8
  %add67 = add i64 %18, %transferred.1136145149
  store i64 %add67, i64* %ki_pos66, align 8
  br i1 %cmp41, label %land.lhs.true70, label %if.end77

land.lhs.true70:                                  ; preds = %if.then64
  %op71 = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %19 = load i32, i32* %op71, align 4
  %cmp72 = icmp eq i32 %19, 1
  br i1 %cmp72, label %if.then74, label %if.end77

if.then74:                                        ; preds = %land.lhs.true70
  %20 = load %struct.kiocb*, %struct.kiocb** %iocb, align 8
  %call76 = call fastcc i64 @generic_write_sync(%struct.kiocb* noundef %20, i64 noundef %ret.addr.4) #13
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %land.lhs.true70, %if.then64
  %ret.addr.5 = phi i64 [ %call76, %if.then74 ], [ %ret.addr.4, %land.lhs.true70 ], [ %ret.addr.4, %if.then64 ]
  %21 = load %struct.kiocb*, %struct.kiocb** %iocb, align 8
  %ki_complete = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i64 0, i32 2
  %22 = load void (%struct.kiocb*, i64, i64)*, void (%struct.kiocb*, i64, i64)** %ki_complete, align 8
  call void %22(%struct.kiocb* noundef %21, i64 noundef %ret.addr.5, i64 noundef 0) #12
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %if.end60
  %ret.addr.6 = phi i64 [ %ret.addr.5, %if.end77 ], [ %ret.addr.4, %if.end60 ]
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** @dio_cache, align 8
  %24 = bitcast %struct.dio* %dio to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %23, i8* noundef %24) #12
  ret i64 %ret.addr.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef readonly %q) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.request_queue* %q, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %logical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 9
  %0 = load i32, i32* %logical_block_size, align 8
  %tobool2.not = icmp eq i32 %0, 0
  %spec.select = select i1 %tobool2.not, i32 512, i32 %0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %retval1.0 = phi i32 [ 512, %entry ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval1.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #4 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  ret %struct.request_queue* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iov_iter_type(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #4 {
entry:
  %iter_type = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  %0 = load i8, i8* %iter_type, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @dio_get_page(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @dio_pages_present(%struct.dio_submit* noundef %sdio) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @dio_refill_pages(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body, label %cleanup

do.body:                                          ; preds = %if.then
  %call4 = call fastcc i32 @dio_pages_present(%struct.dio_submit* noundef %sdio) #13
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %do.body11, label %if.end18, !prof !10

do.body11:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/direct-io.c\22; .popsection; .long 14472b - 14470b; .short 220; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !19
  unreachable

cleanup:                                          ; preds = %if.then
  %conv = sext i32 %call1 to i64
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #13
  %0 = bitcast i8* %call3 to %struct.page*
  br label %return

if.end18:                                         ; preds = %do.body, %entry
  %head = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 21
  %1 = load i32, i32* %head, align 8
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr %struct.dio, %struct.dio* %dio, i64 0, i32 20, i32 0, i64 %idxprom
  %2 = load %struct.page*, %struct.page** %arrayidx, align 8
  br label %return

return:                                           ; preds = %cleanup, %if.end18
  %retval.1 = phi %struct.page* [ %0, %cleanup ], [ %2, %if.end18 ]
  ret %struct.page* %retval.1
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_more_blocks(%struct.dio* nocapture noundef %dio, %struct.dio_submit* nocapture noundef readonly %sdio, %struct.buffer_head* noundef %map_bh) unnamed_addr #0 {
entry:
  %blkbits = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 1
  %0 = load i32, i32* %blkbits, align 8
  %blkfactor = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 2
  %1 = load i32, i32* %blkfactor, align 4
  %add = add i32 %1, %0
  %page_errors = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 10
  %2 = load i32, i32* %page_errors, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.body, label %if.end42

do.body:                                          ; preds = %entry
  %block_in_file = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 5
  %3 = load i64, i64* %block_in_file, align 8
  %final_block_in_request = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 8
  %4 = load i64, i64* %final_block_in_request, align 8
  %cmp1.not = icmp ult i64 %3, %4
  br i1 %cmp1.not, label %do.end9, label %do.body4, !prof !9

do.body4:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/direct-io.c\22; .popsection; .long 14472b - 14470b; .short 646; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !20
  unreachable

do.end9:                                          ; preds = %do.body
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %3, %sh_prom
  %sub = add i64 %4, -1
  %shr15 = lshr i64 %sub, %sh_prom
  %sub16 = sub i64 1, %shr
  %add17 = add i64 %sub16, %shr15
  %b_state = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 0
  store i64 0, i64* %b_state, align 8
  %sh_prom18 = zext i32 %add to i64
  %shl = shl i64 %add17, %sh_prom18
  %b_size = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 4
  store i64 %shl, i64* %b_size, align 8
  %op = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %5 = load i32, i32* %op, align 4
  %cmp19 = icmp eq i32 %5, 1
  %flags = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 0
  %6 = load i32, i32* %flags, align 64
  %and = and i32 %6, 2
  %tobool21.not = icmp eq i32 %and, 0
  %inode32.phi.trans.insert = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 5
  %.pre = load %struct.inode*, %struct.inode** %inode32.phi.trans.insert, align 8
  br i1 %tobool21.not, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.end9
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %.pre) #13
  %tobool23.not = icmp eq i64 %call, 0
  br i1 %tobool23.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then22
  %sub24 = add i64 %call, -1
  %shr26 = ashr i64 %sub24, %sh_prom18
  %cmp27.not = icmp ugt i64 %shr, %shr26
  %spec.select = select i1 %cmp27.not, i1 %cmp19, i1 false
  br label %if.end31

if.end31:                                         ; preds = %do.end9, %land.lhs.true, %if.then22
  %create.0.shrunk = phi i1 [ %cmp19, %if.then22 ], [ %spec.select, %land.lhs.true ], [ %cmp19, %do.end9 ]
  %create.0 = zext i1 %create.0.shrunk to i32
  %get_block = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 10
  %7 = load i32 (%struct.inode*, i64, %struct.buffer_head*, i32)*, i32 (%struct.inode*, i64, %struct.buffer_head*, i32)** %get_block, align 8
  %call33 = call i32 %7(%struct.inode* noundef %.pre, i64 noundef %shr, %struct.buffer_head* noundef %map_bh, i32 noundef %create.0) #12
  %b_private = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 8
  %8 = load i8*, i8** %b_private, align 8
  %private = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 8
  store i8* %8, i8** %private, align 16
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true36, label %if.end42

land.lhs.true36:                                  ; preds = %if.end31
  %9 = load volatile i64, i64* %b_state, align 8
  %10 = and i64 %9, 32768
  %tobool38.not = icmp eq i64 %10, 0
  br i1 %tobool38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %land.lhs.true36
  %call40 = call fastcc i32 @dio_set_defer_completion(%struct.dio* noundef %dio) #13
  br label %if.end42

if.end42:                                         ; preds = %if.end31, %land.lhs.true36, %if.then39, %entry
  %ret.0 = phi i32 [ %call40, %if.then39 ], [ 0, %land.lhs.true36 ], [ %call33, %if.end31 ], [ %2, %entry ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(%struct.block_device* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user(%struct.page* noundef %page, i32 noundef %start, i32 noundef %size) unnamed_addr #0 {
entry:
  %add = add i32 %size, %start
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start, i32 noundef %add) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @submit_page_section(%struct.dio* noundef %dio, %struct.dio_submit* nocapture noundef %sdio, %struct.page* noundef %page, i32 noundef %offset, i32 noundef %len, i64 noundef %blocknr, %struct.buffer_head* nocapture noundef readonly %map_bh) unnamed_addr #0 {
entry:
  %boundary1 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 9
  %0 = load i32, i32* %boundary1, align 8
  %cur_page = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 15
  %1 = load %struct.page*, %struct.page** %cur_page, align 8
  %cmp2 = icmp eq %struct.page* %1, %page
  br i1 %cmp2, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %cur_page_offset = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 16
  %2 = load i32, i32* %cur_page_offset, align 8
  %cur_page_len = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 17
  %3 = load i32, i32* %cur_page_len, align 4
  %add = add i32 %3, %2
  %cmp4 = icmp eq i32 %add, %offset
  br i1 %cmp4, label %land.lhs.true6, label %if.end15

land.lhs.true6:                                   ; preds = %land.lhs.true
  %cur_page_block = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 18
  %4 = load i64, i64* %cur_page_block, align 8
  %blkbits = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 1
  %5 = load i32, i32* %blkbits, align 8
  %shr = lshr i32 %3, %5
  %conv8 = zext i32 %shr to i64
  %add9 = add i64 %4, %conv8
  %cmp10 = icmp eq i64 %add9, %blocknr
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true6
  %add14 = add i32 %3, %len
  store i32 %add14, i32* %cur_page_len, align 4
  br label %out

if.end15:                                         ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %tobool.not = icmp eq %struct.page* %1, null
  br i1 %tobool.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.end15
  %call = call fastcc i32 @dio_send_cur_page(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, %struct.buffer_head* noundef %map_bh) #13
  %6 = load %struct.page*, %struct.page** %cur_page, align 8
  call fastcc void @put_page(%struct.page* noundef %6) #13
  store %struct.page* null, %struct.page** %cur_page, align 8
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.then17, %if.end15
  call fastcc void @get_page(%struct.page* noundef %page) #13
  store %struct.page* %page, %struct.page** %cur_page, align 8
  %cur_page_offset25 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 16
  store i32 %offset, i32* %cur_page_offset25, align 8
  %cur_page_len26 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 17
  store i32 %len, i32* %cur_page_len26, align 4
  %cur_page_block27 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 18
  store i64 %blocknr, i64* %cur_page_block27, align 8
  %block_in_file = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 5
  %7 = load i64, i64* %block_in_file, align 8
  %blkbits28 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 1
  %8 = load i32, i32* %blkbits28, align 8
  %sh_prom = zext i32 %8 to i64
  %shl = shl i64 %7, %sh_prom
  %cur_page_fs_offset = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 19
  store i64 %shl, i64* %cur_page_fs_offset, align 8
  br label %out

out:                                              ; preds = %if.end23, %if.then12
  %tobool29.not = icmp eq i32 %0, 0
  br i1 %tobool29.not, label %cleanup, label %if.then30

if.then30:                                        ; preds = %out
  %call31 = call fastcc i32 @dio_send_cur_page(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, %struct.buffer_head* noundef %map_bh) #13
  %bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 0
  %9 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool32.not = icmp eq %struct.bio* %9, null
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then30
  call fastcc void @dio_bio_submit(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then30
  %10 = load %struct.page*, %struct.page** %cur_page, align 8
  call fastcc void @put_page(%struct.page* noundef %10) #13
  store %struct.page* null, %struct.page** %cur_page, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end34, %if.then17
  %retval.0 = phi i32 [ %call, %if.then17 ], [ %call31, %if.end34 ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dio_pages_present(%struct.dio_submit* nocapture noundef readonly %sdio) unnamed_addr #4 {
entry:
  %tail = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 22
  %0 = load i32, i32* %tail, align 4
  %head = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 21
  %1 = load i32, i32* %head, align 8
  %sub = sub i32 %0, %1
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dio_refill_pages(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio) unnamed_addr #0 {
entry:
  %iter = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 20
  %0 = load %struct.iov_iter*, %struct.iov_iter** %iter, align 8
  %arraydecay = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 20, i32 0, i64 0
  %from = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 23
  %call = call i64 @iov_iter_get_pages(%struct.iov_iter* noundef %0, %struct.page** noundef %arraydecay, i64 noundef 9223372036854775807, i32 noundef 64, i64* noundef %from) #12
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.then13

land.lhs.true:                                    ; preds = %entry
  %blocks_available = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 6
  %1 = load i32, i32* %blocks_available, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end25, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %land.lhs.true
  %op = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %2 = load i32, i32* %op, align 4
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then, label %if.end25

if.then:                                          ; preds = %land.lhs.true1
  %3 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %3, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %4 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x i64]* @empty_zero_page to i64), %4
  %shr3 = lshr i64 %sub, 12
  %add.ptr4 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr3
  %page_errors = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 10
  %5 = load i32, i32* %page_errors, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %page_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  call fastcc void @get_page(%struct.page* noundef %add.ptr4) #13
  store %struct.page* %add.ptr4, %struct.page** %arraydecay, align 8
  %head = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 21
  store i32 0, i32* %head, align 8
  %tail = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 22
  store i32 1, i32* %tail, align 4
  store i64 0, i64* %from, align 8
  %to = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 24
  store i64 4096, i64* %to, align 8
  br label %cleanup

if.then13:                                        ; preds = %entry
  %6 = load %struct.iov_iter*, %struct.iov_iter** %iter, align 8
  call void @iov_iter_advance(%struct.iov_iter* noundef %6, i64 noundef %call) #12
  %7 = load i64, i64* %from, align 8
  %head17 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 21
  store i32 0, i32* %head17, align 8
  %add16 = add nuw i64 %call, 4095
  %sub19 = add i64 %add16, %7
  %div = lshr i64 %sub19, 12
  %conv20 = trunc i64 %div to i32
  %tail21 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 22
  store i32 %conv20, i32* %tail21, align 4
  %and = and i64 %sub19, 4095
  %add23 = add nuw nsw i64 %and, 1
  %to24 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 24
  store i64 %add23, i64* %to24, align 8
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true1, %land.lhs.true
  %conv26 = trunc i64 %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then13, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.then13 ], [ %conv26, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iov_iter_get_pages(%struct.iov_iter* noundef, %struct.page** noundef, i64 noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.2* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

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
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start1, i32 noundef %end1) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #13
  %conv = zext i32 %end1 to i64
  %call1 = call fastcc i64 @page_size(%struct.page* noundef %page) #13
  %cmp = icmp ult i64 %call1, %conv
  br i1 %cmp, label %do.body9, label %lor.rhs, !prof !10

lor.rhs:                                          ; preds = %entry
  %call4 = call fastcc i64 @page_size(%struct.page* noundef %page) #13
  %cmp15 = icmp ugt i32 %end1, %start1
  br i1 %cmp15, label %if.then17, label %do.end33

do.body9:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/highmem.h\22; .popsection; .long 14472b - 14470b; .short 208; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !21
  unreachable

if.then17:                                        ; preds = %lor.rhs
  %idx.ext = zext i32 %start1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub = sub i32 %end1, %start1
  %conv18 = zext i32 %sub to i64
  %call19 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv18) #12
  br label %do.end33

do.end33:                                         ; preds = %lor.rhs, %if.then17
  call fastcc void @__kunmap_atomic() #13
  %call371 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #13
  %cmp382.not = icmp eq i64 %call371, 0
  br i1 %cmp382.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end33, %for.body
  %conv364 = phi i64 [ %conv36, %for.body ], [ 0, %do.end33 ]
  %add.ptr41 = getelementptr %struct.page, %struct.page* %page, i64 %conv364
  call void @flush_dcache_page(%struct.page* noundef %add.ptr41) #12
  %inc = add nuw nsw i64 %conv364, 1
  %conv36 = and i64 %inc, 4294967295
  %call37 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #13
  %cmp38 = icmp ugt i64 %call37, %conv36
  br i1 %cmp38, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  call fastcc void @pagefault_disable() #13
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #13
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %compound_nr = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1, i32 0, i32 1
  %2 = bitcast %struct.address_space** %compound_nr to i32*
  %3 = load i32, i32* %2, align 8
  %conv = zext i32 %3 to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.2* %2 to %struct.anon.15*
  %compound_order = getelementptr inbounds %struct.anon.15, %struct.anon.15* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dio_new_bio(%struct.dio* noundef %dio, %struct.dio_submit* nocapture noundef %sdio, i64 noundef %start_sector, %struct.buffer_head* nocapture noundef readonly %map_bh) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @dio_bio_reap(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %pages_in_io = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 4
  %0 = load i32, i32* %pages_in_io, align 4
  %call1 = call fastcc i32 @bio_max_segs(i32 noundef %0) #13
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %do.body5, label %do.end11, !prof !10

do.body5:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/direct-io.c\22; .popsection; .long 14472b - 14470b; .short 699; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !27
  unreachable

do.end11:                                         ; preds = %if.end
  %blkbits = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 1
  %1 = load i32, i32* %blkbits, align 8
  %sub = add i32 %1, -9
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %start_sector, %sh_prom
  %b_bdev = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %map_bh, i64 0, i32 6
  %2 = load %struct.block_device*, %struct.block_device** %b_bdev, align 8
  call fastcc void @dio_bio_alloc(%struct.dio* noundef %dio, %struct.dio_submit* noundef %sdio, %struct.block_device* noundef %2, i64 noundef %shl, i32 noundef %call1) #13
  %boundary = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 9
  store i32 0, i32* %boundary, align 8
  br label %out

out:                                              ; preds = %entry, %do.end11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dio_bio_add_page(%struct.dio_submit* nocapture noundef %sdio) unnamed_addr #0 {
entry:
  %bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 0
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %cur_page = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 15
  %1 = load %struct.page*, %struct.page** %cur_page, align 8
  %cur_page_len = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 17
  %2 = load i32, i32* %cur_page_len, align 4
  %cur_page_offset = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 16
  %3 = load i32, i32* %cur_page_offset, align 8
  %call = call i32 @bio_add_page(%struct.bio* noundef %0, %struct.page* noundef %1, i32 noundef %2, i32 noundef %3) #12
  %4 = load i32, i32* %cur_page_len, align 4
  %cmp = icmp eq i32 %call, %4
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %cur_page_offset, align 8
  %add = add i32 %5, %call
  %cmp4 = icmp eq i32 %add, 4096
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %pages_in_io = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 4
  %6 = load i32, i32* %pages_in_io, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %pages_in_io, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %7 = load %struct.page*, %struct.page** %cur_page, align 8
  call fastcc void @get_page(%struct.page* noundef %7) #13
  %cur_page_block = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 18
  %8 = load i64, i64* %cur_page_block, align 8
  %9 = load i32, i32* %cur_page_len, align 4
  %blkbits = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 1
  %10 = load i32, i32* %blkbits, align 8
  %shr = lshr i32 %9, %10
  %conv9 = zext i32 %shr to i64
  %add10 = add i64 %8, %conv9
  %final_block_in_bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 13
  store i64 %add10, i64* %final_block_in_bio, align 8
  br label %if.end11

if.end11:                                         ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dio_bio_reap(%struct.dio* noundef %dio, %struct.dio_submit* nocapture noundef %sdio) unnamed_addr #0 {
entry:
  %reap_counter = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 7
  %0 = load i32, i32* %reap_counter, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %reap_counter, align 4
  %cmp = icmp sgt i32 %0, 63
  br i1 %cmp, label %while.cond.preheader, label %if.end15

while.cond.preheader:                             ; preds = %entry
  %bio_list = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 16
  %1 = load %struct.bio*, %struct.bio** %bio_list, align 8
  %tobool.not29 = icmp eq %struct.bio* %1, null
  br i1 %tobool.not29, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rlock.i = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 9, i32 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %ret.030 = phi i32 [ 0, %while.body.lr.ph ], [ %spec.select, %while.body ]
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %2 = load %struct.bio*, %struct.bio** %bio_list, align 8
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %2, i64 0, i32 10
  %3 = bitcast i8** %bi_private to %struct.bio**
  %4 = load %struct.bio*, %struct.bio** %3, align 8
  store %struct.bio* %4, %struct.bio** %bio_list, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #12
  %call9 = call fastcc i8 @dio_bio_complete(%struct.dio* noundef %dio, %struct.bio* noundef %2) #13
  %call10 = call i32 @blk_status_to_errno(i8 noundef %call9) #12
  %cmp11 = icmp eq i32 %ret.030, 0
  %spec.select = select i1 %cmp11, i32 %call10, i32 %ret.030
  %5 = load %struct.bio*, %struct.bio** %bio_list, align 8
  %tobool.not = icmp eq %struct.bio* %5, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %ret.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %spec.select, %while.body ]
  store i32 0, i32* %reap_counter, align 4
  br label %if.end15

if.end15:                                         ; preds = %while.end, %entry
  %ret.2 = phi i32 [ %ret.0.lcssa, %while.end ], [ 0, %entry ]
  ret i32 %ret.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @bio_max_segs(i32 noundef %nr_segs) unnamed_addr #7 {
entry:
  %cmp = icmp ult i32 %nr_segs, 256
  %cond = select i1 %cmp, i32 %nr_segs, i32 256
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dio_bio_alloc(%struct.dio* nocapture noundef readonly %dio, %struct.dio_submit* nocapture noundef %sdio, %struct.block_device* noundef %bdev, i64 noundef %first_sector, i32 noundef %nr_vecs) unnamed_addr #0 {
entry:
  %conv = trunc i32 %nr_vecs to i16
  %call = call fastcc %struct.bio* @bio_alloc(i16 noundef %conv) #13
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call, i32 noundef 11) #13
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %call, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp.not = icmp eq %struct.block_device* %0, %bdev
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call, i32 noundef 7) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.block_device* %bdev, %struct.block_device** %bi_bdev, align 8
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %call, i64 0, i32 8, i32 0
  store i64 %first_sector, i64* %bi_sector, align 8
  %op = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %1 = load i32, i32* %op, align 4
  %op_flags = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 2
  %2 = load i32, i32* %op_flags, align 8
  call fastcc void @bio_set_op_attrs(%struct.bio* noundef %call, i32 noundef %1, i32 noundef %2) #13
  %is_async = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 11
  %3 = load i32, i32* %is_async, align 64
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, void (%struct.bio*)* @dio_bio_end_io, void (%struct.bio*)* @dio_bio_end_aio
  %4 = getelementptr inbounds %struct.bio, %struct.bio* %call, i64 0, i32 9
  store void (%struct.bio*)* %spec.select, void (%struct.bio*)** %4, align 8
  %iocb = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 18
  %5 = load %struct.kiocb*, %struct.kiocb** %iocb, align 8
  %ki_hint = getelementptr inbounds %struct.kiocb, %struct.kiocb* %5, i64 0, i32 5
  %6 = load i16, i16* %ki_hint, align 4
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %call, i64 0, i32 5
  store i16 %6, i16* %bi_write_hint, align 8
  %bio6 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 0
  store %struct.bio* %call, %struct.bio** %bio6, align 8
  %cur_page_fs_offset = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 19
  %7 = load i64, i64* %cur_page_fs_offset, align 8
  %logical_offset_in_bio = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %sdio, i64 0, i32 12
  store i64 %7, i64* %logical_offset_in_bio, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !28
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #13
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @dio_bio_complete(%struct.dio* nocapture noundef %dio, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  %0 = load i8, i8* %bi_status, align 2
  %op = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 1
  %1 = load i32, i32* %op, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %should_dirty1 = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 13
  %2 = load i8, i8* %should_dirty1, align 1, !range !14
  %tobool = icmp ne i8 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  switch i8 %0, label %if.else [
    i8 0, label %if.end9
    i8 12, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %land.end
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %4 = load i32, i32* %bi_opf, align 8
  %5 = and i32 %4, 2097152
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.else, label %if.end9.sink.split

if.else:                                          ; preds = %land.end, %land.lhs.true
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %land.lhs.true, %if.else
  %.sink = phi i32 [ -5, %if.else ], [ -11, %land.lhs.true ]
  %io_error = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 14
  store i32 %.sink, i32* %io_error, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %land.end
  %is_async = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 11
  %6 = load i32, i32* %is_async, align 64
  %tobool10.not = icmp eq i32 %6, 0
  %.not = xor i1 %3, true
  %brmerge = select i1 %tobool10.not, i1 true, i1 %.not
  br i1 %brmerge, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @bio_check_pages_dirty(%struct.bio* noundef %bio) #12
  br label %if.end17

if.else15:                                        ; preds = %if.end9
  call void @bio_release_pages(%struct.bio* noundef %bio, i1 noundef %3) #12
  call void @bio_put(%struct.bio* noundef %bio) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then14
  ret i8 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
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
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #14, !srcloc !29
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #14, !srcloc !30
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #13
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !32
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #14, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_check_pages_dirty(%struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_release_pages(%struct.bio* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(%struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @bio_alloc(i16 noundef %nr_iovecs) unnamed_addr #0 {
entry:
  %call = call %struct.bio* @bio_alloc_bioset(i32 noundef 3264, i16 noundef %nr_iovecs, %struct.bio_set* noundef nonnull @fs_bio_set) #12
  ret %struct.bio* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #9 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @bio_set_op_attrs(%struct.bio* nocapture noundef writeonly %bio, i32 noundef %op, i32 noundef %op_flags) unnamed_addr #10 {
entry:
  %or = or i32 %op_flags, %op
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 %or, i32* %bi_opf, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dio_bio_end_aio(%struct.bio* noundef %bio) #0 {
entry:
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = bitcast i8** %bi_private to %struct.dio**
  %1 = load %struct.dio*, %struct.dio** %0, align 8
  %call = call fastcc i8 @dio_bio_complete(%struct.dio* noundef %1, %struct.bio* noundef %bio) #13
  %rlock.i = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 9, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %refcount = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 15
  %2 = load i64, i64* %refcount, align 16
  %dec = add i64 %2, -1
  store i64 %dec, i64* %refcount, align 16
  %cmp6 = icmp eq i64 %dec, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %waiter = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 17
  %3 = load %struct.task_struct*, %struct.task_struct** %waiter, align 32
  %tobool.not = icmp eq %struct.task_struct* %3, null
  br i1 %tobool.not, label %if.end.thread, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call9 = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %3) #12
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then, %land.lhs.true
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #12
  br label %if.end37

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #12
  %cmp11 = icmp eq i64 %dec, 0
  br i1 %cmp11, label %if.then13, label %if.end37

if.then13:                                        ; preds = %if.end
  %result = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 19
  %4 = load i64, i64* %result, align 16
  %tobool14.not = icmp eq i64 %4, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then13
  %defer_completion16 = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 12
  %5 = load i8, i8* %defer_completion16, align 4, !range !14
  %tobool17.not = icmp eq i8 %5, 0
  br i1 %tobool17.not, label %lor.rhs, label %do.body25

lor.rhs:                                          ; preds = %if.then15
  %op = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 1
  %6 = load i32, i32* %op, align 4
  %cmp19 = icmp eq i32 %6, 1
  br i1 %cmp19, label %land.rhs, label %if.else

land.rhs:                                         ; preds = %lor.rhs
  %inode = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 5
  %7 = load %struct.inode*, %struct.inode** %inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %7, i64 0, i32 7
  %8 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i64 0, i32 7
  %9 = load i64, i64* %nrpages, align 8
  %tobool21.not = icmp eq i64 %9, 0
  br i1 %tobool21.not, label %if.else, label %do.body25

do.body25:                                        ; preds = %if.then15, %land.rhs
  %10 = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 20
  %complete_work = bitcast %union.anon.76* %10 to %struct.work_struct*
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast %union.anon.76* %10 to i64*
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry28 = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 20, i32 0, i64 1
  %11 = bitcast %struct.page** %entry28 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %11) #13
  %func = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 20, i32 0, i64 3
  %12 = bitcast %struct.page** %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @dio_aio_complete_work, void (%struct.work_struct*)** %12, align 8
  %inode32 = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 5
  %13 = load %struct.inode*, %struct.inode** %inode32, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %13, i64 0, i32 6
  %14 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i64 0, i32 44
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** %s_dio_done_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %15, %struct.work_struct* noundef %complete_work) #13
  br label %if.end37

if.else:                                          ; preds = %lor.rhs, %if.then13, %land.rhs
  %call35 = call fastcc i64 @dio_complete(%struct.dio* noundef %1, i64 noundef 0, i32 noundef 1) #13
  br label %if.end37

if.end37:                                         ; preds = %if.end.thread, %do.body25, %if.else, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dio_bio_end_io(%struct.bio* noundef %bio) #0 {
entry:
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 10
  %0 = bitcast i8** %bi_private to %struct.dio**
  %1 = load %struct.dio*, %struct.dio** %0, align 8
  %rlock.i = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 9, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %bio_list = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 16
  %2 = bitcast %struct.bio** %bio_list to i8**
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %bi_private, align 8
  store %struct.bio* %bio, %struct.bio** %bio_list, align 8
  %refcount = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 15
  %4 = load i64, i64* %refcount, align 16
  %dec = add i64 %4, -1
  store i64 %dec, i64* %refcount, align 16
  %cmp7 = icmp eq i64 %dec, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %waiter = getelementptr inbounds %struct.dio, %struct.dio* %1, i64 0, i32 17
  %5 = load %struct.task_struct*, %struct.task_struct** %waiter, align 32
  %tobool.not = icmp eq %struct.task_struct* %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call10 = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.bio* @bio_alloc_bioset(i32 noundef, i16 noundef, %struct.bio_set* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dio_aio_complete_work(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -4, i32 1
  %0 = bitcast %struct.list_head* %add.ptr to %struct.dio*
  %call = call fastcc i64 @dio_complete(%struct.dio* noundef %0, i64 noundef 0, i32 noundef 3) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(%struct.bio* noundef, %struct.page* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !36
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_set_pages_dirty(%struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio(%struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @dio_await_one(%struct.dio* noundef %dio) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 9, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  %bio_list = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 16
  %refcount = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 15
  %0 = load i64, i64* %refcount, align 16
  %cmp571 = icmp ugt i64 %0, 1
  br i1 %cmp571, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %waiter = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 17
  %iocb = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 18
  %bio_disk = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 4
  %bio_cookie = getelementptr inbounds %struct.dio, %struct.dio* %dio, i64 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %do.body30
  %flags.072 = phi i64 [ %call2, %land.rhs.lr.ph ], [ %call38, %do.body30 ]
  %1 = load %struct.bio*, %struct.bio** %bio_list, align 8
  %cmp7 = icmp eq %struct.bio* %1, null
  br i1 %cmp7, label %do.body17, label %if.then46

do.body17:                                        ; preds = %land.rhs
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !24
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  store %struct.task_struct* %3, %struct.task_struct** %waiter, align 32
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags.072) #12
  %4 = load %struct.kiocb*, %struct.kiocb** %iocb, align 8
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %4, i64 0, i32 4
  %5 = load i32, i32* %ki_flags, align 8
  %and = and i32 %5, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body17
  %6 = load %struct.gendisk*, %struct.gendisk** %bio_disk, align 16
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i64 0, i32 9
  %7 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %8 = load i32, i32* %bio_cookie, align 4
  %call27 = call i32 @blk_poll(%struct.request_queue* noundef %7, i32 noundef %8, i1 noundef true) #12
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then, label %do.body30

if.then:                                          ; preds = %lor.lhs.false, %do.body17
  call void @blk_io_schedule() #12
  br label %do.body30

do.body30:                                        ; preds = %if.then, %lor.lhs.false
  %call38 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #13
  store %struct.task_struct* null, %struct.task_struct** %waiter, align 32
  %9 = load i64, i64* %refcount, align 16
  %cmp5 = icmp ugt i64 %9, 1
  br i1 %cmp5, label %land.rhs, label %while.end

while.end:                                        ; preds = %do.body30, %entry
  %flags.0.lcssa.ph = phi i64 [ %call2, %entry ], [ %call38, %do.body30 ]
  %.pr = load %struct.bio*, %struct.bio** %bio_list, align 8
  %tobool45.not = icmp eq %struct.bio* %.pr, null
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %land.rhs, %while.end
  %flags.0.lcssa76 = phi i64 [ %flags.0.lcssa.ph, %while.end ], [ %flags.072, %land.rhs ]
  %10 = phi %struct.bio* [ %.pr, %while.end ], [ %1, %land.rhs ]
  %bi_private = getelementptr inbounds %struct.bio, %struct.bio* %10, i64 0, i32 10
  %11 = bitcast i8** %bi_private to %struct.bio**
  %12 = load %struct.bio*, %struct.bio** %11, align 8
  store %struct.bio* %12, %struct.bio** %bio_list, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %while.end
  %flags.0.lcssa77 = phi i64 [ %flags.0.lcssa76, %if.then46 ], [ %flags.0.lcssa.ph, %while.end ]
  %13 = phi %struct.bio* [ %10, %if.then46 ], [ null, %while.end ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags.0.lcssa77) #12
  ret %struct.bio* %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_poll(%struct.request_queue* noundef, i32 noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dio_warn_stale_pagecache(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_dio_end(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_dio_count = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 33
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %i_dio_count) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = bitcast i64* %i_state to i8*
  call void @wake_up_bit(i8* noundef %0, i32 noundef 9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @generic_write_sync(%struct.kiocb* nocapture noundef readonly %iocb, i64 noundef %count) unnamed_addr #0 {
entry:
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %0 = load i32, i32* %ki_flags, align 8
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %ki_filp, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %2 = load i64, i64* %ki_pos, align 8
  %sub = sub i64 %2, %count
  %sub2 = add i64 %2, -1
  %and4 = lshr i32 %0, 2
  %and4.lobit = and i32 %and4, 1
  %3 = xor i32 %and4.lobit, 1
  %call = call i32 @vfs_fsync_range(%struct.file* noundef %1, i64 noundef %sub, i64 noundef %sub2, i32 noundef %3) #12
  %tobool6.not = icmp eq i32 %call, 0
  %conv = sext i32 %call to i64
  br i1 %tobool6.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end8
  %retval.1 = phi i64 [ %conv, %if.then ], [ %count, %if.end8 ]
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(%struct.file* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1852179}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2154375795}
!12 = !{i64 2154377161}
!13 = !{i64 2147874741, i64 2147874774, i64 2147874825, i64 2147874881, i64 2147874914, i64 2147874969, i64 2147874998, i64 2147875025}
!14 = !{i8 0, i8 2}
!15 = !{i64 2154368475}
!16 = !{i64 2154369896}
!17 = !{i64 2154363416}
!18 = !{i64 2147760021, i64 2147760537, i64 2147760567, i64 2147760594, i64 2147760628, i64 2147760658}
!19 = !{i64 2154349402}
!20 = !{i64 2154360138}
!21 = !{i64 2153650531}
!22 = !{i64 2153641474}
!23 = !{i64 2153643732}
!24 = !{i64 1478236}
!25 = !{i64 2151583644}
!26 = !{i64 2151583851}
!27 = !{i64 2154361649}
!28 = !{i64 2149495005}
!29 = !{i64 2149274176, i64 2149274223, i64 2149274229, i64 2149274266, i64 2149274284, i64 2149275595, i64 2149275643, i64 2149275691, i64 2149275754, i64 2149275803, i64 2149274362, i64 2149274387, i64 2149274413, i64 2149274419, i64 2149275261, i64 2149275301, i64 2149275319, i64 2149275351, i64 2149275379, i64 2149275433, i64 2149275453, i64 2149275550, i64 2149274442, i64 2149274456, i64 2149274462, i64 2149274512, i64 2149274558, i64 2149274591}
!30 = !{i64 2149276355, i64 2149276402, i64 2149276408, i64 2149276445, i64 2149276463, i64 2149277406, i64 2149277454, i64 2149277502, i64 2149277565, i64 2149277614, i64 2149276541, i64 2149276566, i64 2149276592, i64 2149276598, i64 2149276635, i64 2149276641, i64 2149276691, i64 2149276737, i64 2149276770}
!31 = !{i64 2149268473, i64 2149268520, i64 2149268526, i64 2149268563, i64 2149268581, i64 2149269922, i64 2149269970, i64 2149270018, i64 2149270081, i64 2149270130, i64 2149268659, i64 2149268684, i64 2149268710, i64 2149268716, i64 2149269588, i64 2149269628, i64 2149269646, i64 2149269678, i64 2149269706, i64 2149269760, i64 2149269780, i64 2149269877, i64 2149268739, i64 2149268753, i64 2149268759, i64 2149268809, i64 2149268855, i64 2149268888}
!32 = !{i64 2147855883, i64 2147855916, i64 2147855969, i64 2147856028, i64 2147856062, i64 2147856117, i64 2147856146, i64 2147856166}
!33 = !{i64 2149520848}
!34 = !{i64 2149320369}
!35 = !{i64 2149284250, i64 2149284297, i64 2149284303, i64 2149284340, i64 2149284358, i64 2149285669, i64 2149285717, i64 2149285765, i64 2149285828, i64 2149285877, i64 2149284436, i64 2149284461, i64 2149284487, i64 2149284493, i64 2149285335, i64 2149285375, i64 2149285393, i64 2149285425, i64 2149285453, i64 2149285507, i64 2149285527, i64 2149285624, i64 2149284516, i64 2149284530, i64 2149284536, i64 2149284586, i64 2149284632, i64 2149284665}
!36 = !{i64 2147770594, i64 2147771242, i64 2147771272, i64 2147771304, i64 2147771338, i64 2147771374, i64 2147771399}
