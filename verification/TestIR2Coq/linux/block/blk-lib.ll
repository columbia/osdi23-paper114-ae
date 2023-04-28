; ModuleID = 'block/blk-lib.c'
source_filename = "block/blk-lib.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.77, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.76, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.16, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.17 }
%union.anon.17 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.18, %union.anon.19 }
%union.anon.18 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.19 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.69, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.9 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.54, %union.anon.55, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.48, %union.anon.49, %union.anon.50, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.53, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.46, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.46 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.lockdep_map = type {}
%union.anon.48 = type { %struct.hlist_node }
%union.anon.49 = type { %struct.rb_node }
%union.anon.50 = type { %struct.anon.52 }
%struct.anon.52 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.53 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon.45, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.45 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.47, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.47 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.60 }
%struct.anon.60 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.68, i32, [12 x i8] }
%union.anon.68 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.69 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.14, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.39 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.70, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.70 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.12, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.13, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.12 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.13 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.23 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.23 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.25 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.25 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.76 = type { %struct.pipe_inode_info* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
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
%union.anon.77 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.workqueue_struct = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }

@__blkdev_issue_discard._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.__blkdev_issue_discard = private unnamed_addr constant [23 x i8] c"__blkdev_issue_discard\00", align 1
@.str = private unnamed_addr constant [40 x i8] c"\013%s: Error: discard_granularity is 0.\0A\00", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@empty_zero_page = external dso_local global [512 x i64], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.bio* @blk_next_bio(%struct.bio* noundef %bio, i32 noundef %nr_pages, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %conv = trunc i32 %nr_pages to i16
  %call = call fastcc %struct.bio* @bio_alloc(i32 noundef %gfp, i16 noundef %conv) #10
  %tobool.not = icmp eq %struct.bio* %bio, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @bio_chain(%struct.bio* noundef nonnull %bio, %struct.bio* noundef %call) #11
  %call1 = call i32 @submit_bio(%struct.bio* noundef nonnull %bio) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.bio* %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @bio_alloc(i32 noundef %gfp_mask, i16 noundef %nr_iovecs) unnamed_addr #0 {
entry:
  %call = call %struct.bio* @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef %nr_iovecs, %struct.bio_set* noundef nonnull @fs_bio_set) #11
  ret %struct.bio* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(%struct.bio* noundef, %struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio(%struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__blkdev_issue_discard(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i32 noundef %flags, %struct.bio** nocapture noundef %biop) local_unnamed_addr #0 {
entry:
  %dev_name = alloca [32 x i8], align 1
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #10
  %0 = load %struct.bio*, %struct.bio** %biop, align 8
  %tobool.not = icmp eq %struct.request_queue* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @bdev_read_only(%struct.block_device* noundef %bdev) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %flags, 1
  %tobool5.not = icmp eq i32 %and, 0
  %queue_flags11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 11
  %1 = load volatile i64, i64* %queue_flags11, align 8
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %2 = and i64 %1, 2048
  %tobool8.not = icmp eq i64 %2, 0
  br i1 %tobool8.not, label %cleanup, label %if.end16

if.else:                                          ; preds = %if.end4
  %3 = and i64 %1, 256
  %tobool13.not = icmp eq i64 %3, 0
  br i1 %tobool13.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6
  %op.0 = phi i32 [ 5, %if.then6 ], [ 3, %if.else ]
  %discard_granularity = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 31, i32 18
  %4 = load i32, i32* %discard_granularity, align 4
  %tobool17.not = icmp eq i32 %4, 0
  br i1 %tobool17.not, label %if.then26, label %if.end45, !prof !7

if.then26:                                        ; preds = %if.end16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-lib.c\22; .popsection; .long 14472b - 14470b; .short 52; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !8
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %dev_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %5, i8 0, i64 32, i1 false), !annotation !9
  %call37 = call i8* @bdevname(%struct.block_device* noundef %bdev, i8* noundef nonnull %5) #11
  %call38 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @__blkdev_issue_discard._rs, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__blkdev_issue_discard, i64 0, i64 0)) #11
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end

do.end:                                           ; preds = %if.then26
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %5) #13
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.then26
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end16
  %call46 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #10
  %shr = lshr i32 %call46, 9
  %sub = add nsw i32 %shr, -1
  %conv47 = zext i32 %sub to i64
  %or = or i64 %nr_sects, %sector
  %and48 = and i64 %or, %conv47
  %tobool49.not = icmp ne i64 %and48, 0
  %tobool52.not = icmp eq i64 %nr_sects, 0
  %or.cond = or i1 %tobool52.not, %tobool49.not
  br i1 %or.cond, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.end45
  %call55 = call fastcc i1 @bdev_is_partition(%struct.block_device* noundef %bdev) #10
  br i1 %call55, label %if.then56, label %while.body.preheader

if.then56:                                        ; preds = %if.end54
  %bd_start_sect = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 0
  %6 = load i64, i64* %bd_start_sect, align 8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.end54, %if.then56
  %part_offset.0 = phi i64 [ %6, %if.then56 ], [ 0, %if.end54 ]
  br label %while.body

while.body:                                       ; preds = %if.end114.while.body_crit_edge, %while.body.preheader
  %7 = phi i32 [ %.pre, %if.end114.while.body_crit_edge ], [ %4, %while.body.preheader ]
  %sector.addr.0191 = phi i64 [ %add121, %if.end114.while.body_crit_edge ], [ %sector, %while.body.preheader ]
  %nr_sects.addr.0189 = phi i64 [ %sub122, %if.end114.while.body_crit_edge ], [ %nr_sects, %while.body.preheader ]
  %bio.0188 = phi %struct.bio* [ %call109, %if.end114.while.body_crit_edge ], [ %0, %while.body.preheader ]
  %add = add i64 %sector.addr.0191, %part_offset.0
  %sub59 = add i64 %add, -1
  %shr62 = lshr i32 %7, 9
  %sub63 = add nsw i32 %shr62, -1
  %conv64 = zext i32 %sub63 to i64
  %or65 = or i64 %sub59, %conv64
  %add66 = add i64 %or65, 1
  %cmp = icmp eq i64 %add66, %add
  br i1 %cmp, label %if.then68, label %if.else74

if.then68:                                        ; preds = %while.body
  %call69 = call fastcc i32 @bio_aligned_discard_max_sectors(%struct.request_queue* noundef nonnull %call) #10
  %conv70 = zext i32 %call69 to i64
  br label %if.end83

if.else74:                                        ; preds = %while.body
  %sub75 = sub i64 %add66, %add
  br label %if.end83

if.end83:                                         ; preds = %if.else74, %if.then68
  %sub75.sink192 = phi i64 [ %sub75, %if.else74 ], [ %conv70, %if.then68 ]
  %cmp77 = icmp ult i64 %nr_sects.addr.0189, %sub75.sink192
  %cond82 = select i1 %cmp77, i64 %nr_sects.addr.0189, i64 %sub75.sink192
  %shl = shl i64 %cond82, 9
  %cmp85 = icmp ugt i64 %shl, 4294967295
  br i1 %cmp85, label %if.then99, label %if.end100, !prof !7

if.then99:                                        ; preds = %if.end83
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-lib.c\22; .popsection; .long 14472b - 14470b; .short 96; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !10
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end83
  %call109 = call %struct.bio* @blk_next_bio(%struct.bio* noundef %bio.0188, i32 noundef 0, i32 noundef %gfp_mask) #10
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %call109, i64 0, i32 8, i32 0
  store i64 %sector.addr.0191, i64* %bi_sector, align 8
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call109, i32 noundef 11) #10
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %call109, i64 0, i32 1
  %8 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp111.not = icmp eq %struct.block_device* %8, %bdev
  br i1 %cmp111.not, label %if.end114, label %if.then113

if.then113:                                       ; preds = %if.end100
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call109, i32 noundef 7) #10
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end100
  store %struct.block_device* %bdev, %struct.block_device** %bi_bdev, align 8
  call fastcc void @bio_set_op_attrs(%struct.bio* noundef %call109, i32 noundef %op.0) #10
  %conv119 = trunc i64 %shl to i32
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %call109, i64 0, i32 8, i32 1
  store i32 %conv119, i32* %bi_size, align 8
  %sub122 = sub i64 %nr_sects.addr.0189, %cond82
  call fastcc void @_cond_resched() #10
  %tobool58.not = icmp eq i64 %sub122, 0
  br i1 %tobool58.not, label %while.end, label %if.end114.while.body_crit_edge

if.end114.while.body_crit_edge:                   ; preds = %if.end114
  %add121 = add i64 %cond82, %sector.addr.0191
  %.pre = load i32, i32* %discard_granularity, align 4
  br label %while.body

while.end:                                        ; preds = %if.end114
  store %struct.bio* %call109, %struct.bio** %biop, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.else, %if.then6, %if.end, %entry, %while.end, %if.end44
  %retval.0 = phi i32 [ -95, %if.end44 ], [ 0, %while.end ], [ -6, %entry ], [ -1, %if.end ], [ -95, %if.then6 ], [ -95, %if.else ], [ -22, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  ret %struct.request_queue* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_only(%struct.block_device* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @bdevname(%struct.block_device* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_logical_block_size(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #10
  %call1 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %call) #10
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bdev_is_partition(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 14
  %0 = load i8, i8* %bd_partno, align 8
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bio_aligned_discard_max_sectors(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #3 {
entry:
  %discard_granularity = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 18
  %0 = load i32, i32* %discard_granularity, align 4
  %neg = sub i32 0, %0
  %shr = lshr i32 %neg, 9
  ret i32 %shr
}

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @bio_set_op_attrs(%struct.bio* nocapture noundef writeonly %bio, i32 noundef %op) unnamed_addr #7 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  store i32 %op, i32* %bi_opf, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blkdev_issue_discard(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %bio = alloca %struct.bio*, align 8
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast %struct.bio** %bio to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store %struct.bio* null, %struct.bio** %bio, align 8
  %1 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !9
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #11
  %conv = trunc i64 %flags to i32
  %call = call i32 @__blkdev_issue_discard(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i32 noundef %conv, %struct.bio** noundef nonnull %bio) #10
  %tobool = icmp eq i32 %call, 0
  %2 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool1 = icmp ne %struct.bio* %2, null
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call2 = call i32 @submit_bio_wait(%struct.bio* noundef nonnull %2) #11
  %cmp = icmp eq i32 %call2, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call2
  call void @bio_put(%struct.bio* noundef nonnull %2) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %spec.store.select, %if.then ], [ %call, %entry ]
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(%struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(%struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blkdev_issue_write_same(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %bio = alloca %struct.bio*, align 8
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast %struct.bio** %bio to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store %struct.bio* null, %struct.bio** %bio, align 8
  %1 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !9
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #11
  %call = call fastcc i32 @__blkdev_issue_write_same(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.page* noundef %page, %struct.bio** noundef nonnull %bio) #10
  %cmp = icmp eq i32 %call, 0
  %2 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool = icmp ne %struct.bio* %2, null
  %or.cond = select i1 %cmp, i1 %tobool, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @submit_bio_wait(%struct.bio* noundef nonnull %2) #11
  call void @bio_put(%struct.bio* noundef nonnull %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call, %entry ]
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__blkdev_issue_write_same(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.page* noundef %page, %struct.bio** nocapture noundef %biop) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #10
  %0 = load %struct.bio*, %struct.bio** %biop, align 8
  %tobool.not = icmp eq %struct.request_queue* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @bdev_read_only(%struct.block_device* noundef %bdev) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #10
  %shr = lshr i32 %call5, 9
  %sub = add nsw i32 %shr, -1
  %conv = zext i32 %sub to i64
  %or = or i64 %nr_sects, %sector
  %and = and i64 %or, %conv
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @bdev_write_same(%struct.block_device* noundef %bdev) #10
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = call fastcc i32 @bio_allowed_max_sectors(%struct.request_queue* noundef nonnull %call) #10
  %tobool14.not75 = icmp eq i64 %nr_sects, 0
  br i1 %tobool14.not75, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end12
  %conv23 = zext i32 %call13 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end18
  %bio.078 = phi %struct.bio* [ %0, %while.body.lr.ph ], [ %call15, %if.end18 ]
  %sector.addr.077 = phi i64 [ %sector, %while.body.lr.ph ], [ %sector.addr.1, %if.end18 ]
  %nr_sects.addr.076 = phi i64 [ %nr_sects, %while.body.lr.ph ], [ %5, %if.end18 ]
  %call15 = call %struct.bio* @blk_next_bio(%struct.bio* noundef %bio.078, i32 noundef 1, i32 noundef %gfp_mask) #10
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %call15, i64 0, i32 8, i32 0
  store i64 %sector.addr.077, i64* %bi_sector, align 8
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call15, i32 noundef 11) #10
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %call15, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp.not = icmp eq %struct.block_device* %1, %bdev
  br i1 %cmp.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %while.body
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call15, i32 noundef 7) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.body
  store %struct.block_device* %bdev, %struct.block_device** %bi_bdev, align 8
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %call15, i64 0, i32 12
  store i16 1, i16* %bi_vcnt, align 8
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %call15, i64 0, i32 15
  %2 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %2, i64 0, i32 0
  store %struct.page* %page, %struct.page** %bv_page, align 8
  %3 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %3, i64 0, i32 2
  store i32 0, i32* %bv_offset, align 4
  %call21 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #10
  %4 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %4, i64 0, i32 1
  store i32 %call21, i32* %bv_len, align 8
  call fastcc void @bio_set_op_attrs(%struct.bio* noundef %call15, i32 noundef 7) #10
  %cmp24 = icmp ugt i64 %nr_sects.addr.076, %conv23
  %nr_sects.addr.0.tr = trunc i64 %nr_sects.addr.076 to i32
  %conv32.sink.in = select i1 %cmp24, i32 %call13, i32 %nr_sects.addr.0.tr
  %5 = call i64 @llvm.usub.sat.i64(i64 %nr_sects.addr.076, i64 %conv23)
  %add = select i1 %cmp24, i64 %conv23, i64 0
  %sector.addr.1 = add i64 %sector.addr.077, %add
  %conv32.sink = shl i32 %conv32.sink.in, 9
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %call15, i64 0, i32 8, i32 1
  store i32 %conv32.sink, i32* %6, align 8
  call fastcc void @_cond_resched() #10
  %tobool14.not.not = icmp ugt i64 %nr_sects.addr.076, %conv23
  br i1 %tobool14.not.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end18, %if.end12
  %bio.0.lcssa = phi %struct.bio* [ %0, %if.end12 ], [ %call15, %if.end18 ]
  store %struct.bio* %bio.0.lcssa, %struct.bio** %biop, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4, %if.end, %entry, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ -6, %entry ], [ -1, %if.end ], [ -22, %if.end4 ], [ -95, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__blkdev_issue_zeroout(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.bio** nocapture noundef %biop, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #10
  %shr = lshr i32 %call, 9
  %sub = add nsw i32 %shr, -1
  %conv = zext i32 %sub to i64
  %or = or i64 %nr_sects, %sector
  %and = and i64 %or, %conv
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @__blkdev_issue_write_zeroes(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.bio** noundef %biop, i32 noundef %flags) #10
  %cmp.not = icmp eq i32 %call1, -95
  %and3 = and i32 %flags, 2
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %tobool4.not, %cmp.not
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @__blkdev_issue_zero_pages(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.bio** noundef %biop) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__blkdev_issue_write_zeroes(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.bio** nocapture noundef %biop, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = load %struct.bio*, %struct.bio** %biop, align 8
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #10
  %tobool.not = icmp eq %struct.request_queue* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @bdev_read_only(%struct.block_device* noundef %bdev) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @bdev_write_zeroes_sectors(%struct.block_device* noundef %bdev) #10
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end4
  %tobool8.not61 = icmp eq i64 %nr_sects, 0
  br i1 %tobool8.not61, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %and = and i32 %flags, 1
  %tobool14.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool14.not, i32 9, i32 8388617
  %conv19 = zext i32 %call5 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end12
  %sector.addr.064 = phi i64 [ %sector, %while.body.lr.ph ], [ %sector.addr.1, %if.end12 ]
  %bio.063 = phi %struct.bio* [ %0, %while.body.lr.ph ], [ %call9, %if.end12 ]
  %nr_sects.addr.062 = phi i64 [ %nr_sects, %while.body.lr.ph ], [ %2, %if.end12 ]
  %call9 = call %struct.bio* @blk_next_bio(%struct.bio* noundef %bio.063, i32 noundef 0, i32 noundef %gfp_mask) #10
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %call9, i64 0, i32 8, i32 0
  store i64 %sector.addr.064, i64* %bi_sector, align 8
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call9, i32 noundef 11) #10
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %call9, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp10.not = icmp eq %struct.block_device* %1, %bdev
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %while.body
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call9, i32 noundef 7) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %while.body
  store %struct.block_device* %bdev, %struct.block_device** %bi_bdev, align 8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %call9, i64 0, i32 2
  store i32 %spec.select, i32* %bi_opf, align 8
  %cmp20 = icmp ugt i64 %nr_sects.addr.062, %conv19
  %nr_sects.addr.0.tr = trunc i64 %nr_sects.addr.062 to i32
  %conv27.sink.in = select i1 %cmp20, i32 %call5, i32 %nr_sects.addr.0.tr
  %2 = call i64 @llvm.usub.sat.i64(i64 %nr_sects.addr.062, i64 %conv19)
  %add = select i1 %cmp20, i64 %conv19, i64 0
  %sector.addr.1 = add i64 %sector.addr.064, %add
  %conv27.sink = shl i32 %conv27.sink.in, 9
  %3 = getelementptr inbounds %struct.bio, %struct.bio* %call9, i64 0, i32 8, i32 1
  store i32 %conv27.sink, i32* %3, align 8
  call fastcc void @_cond_resched() #10
  %tobool8.not.not = icmp ugt i64 %nr_sects.addr.062, %conv19
  br i1 %tobool8.not.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end12, %while.cond.preheader
  %bio.0.lcssa = phi %struct.bio* [ %0, %while.cond.preheader ], [ %call9, %if.end12 ]
  store %struct.bio* %bio.0.lcssa, %struct.bio** %biop, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ -6, %entry ], [ -1, %if.end ], [ -95, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__blkdev_issue_zero_pages(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.bio** nocapture noundef %biop) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #10
  %tobool.not = icmp eq %struct.request_queue* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.bio*, %struct.bio** %biop, align 8
  %call1 = call i32 @bdev_read_only(%struct.block_device* noundef %bdev) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %cmp.not66 = icmp eq i64 %nr_sects, 0
  br i1 %cmp.not66, label %while.end31, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.end
  %sector.addr.069 = phi i64 [ %add24, %while.end ], [ %sector, %while.cond.preheader ]
  %nr_sects.addr.068 = phi i64 [ %sub21, %while.end ], [ %nr_sects, %while.cond.preheader ]
  %bio.067 = phi %struct.bio* [ %call6, %while.end ], [ %0, %while.cond.preheader ]
  %call5 = call fastcc i32 @__blkdev_sectors_to_bio_pages(i64 noundef %nr_sects.addr.068) #10
  %call6 = call %struct.bio* @blk_next_bio(%struct.bio* noundef %bio.067, i32 noundef %call5, i32 noundef %gfp_mask) #10
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %call6, i64 0, i32 8, i32 0
  store i64 %sector.addr.069, i64* %bi_sector, align 8
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call6, i32 noundef 11) #10
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %call6, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %cmp7.not = icmp eq %struct.block_device* %1, %bdev
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.body
  call fastcc void @bio_clear_flag(%struct.bio* noundef %call6, i32 noundef 7) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.body
  store %struct.block_device* %bdev, %struct.block_device** %bi_bdev, align 8
  call fastcc void @bio_set_op_attrs(%struct.bio* noundef %call6, i32 noundef 1) #10
  br label %while.body13

while.body13:                                     ; preds = %if.end9, %while.body13
  %nr_sects.addr.1 = phi i64 [ %nr_sects.addr.068, %if.end9 ], [ %sub21, %while.body13 ]
  %sector.addr.1 = phi i64 [ %sector.addr.069, %if.end9 ], [ %add24, %while.body13 ]
  %shl = shl i64 %nr_sects.addr.1, 9
  %2 = icmp ult i64 %shl, 4096
  %cond = select i1 %2, i64 %shl, i64 4096
  %conv = trunc i64 %cond to i32
  %3 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %3, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %4 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x i64]* @empty_zero_page to i64), %4
  %shr16 = lshr i64 %sub, 12
  %add.ptr17 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr16
  %call18 = call i32 @bio_add_page(%struct.bio* noundef %call6, %struct.page* noundef %add.ptr17, i32 noundef %conv, i32 noundef 0) #11
  %shr19 = ashr i32 %call18, 9
  %conv20 = sext i32 %shr19 to i64
  %sub21 = sub i64 %nr_sects.addr.1, %conv20
  %add24 = add i64 %sector.addr.1, %conv20
  %cmp25 = icmp uge i32 %call18, %conv
  %cmp12 = icmp ne i64 %sub21, 0
  %or.cond = select i1 %cmp25, i1 %cmp12, i1 false
  br i1 %or.cond, label %while.body13, label %while.end

while.end:                                        ; preds = %while.body13
  call fastcc void @_cond_resched() #10
  %cmp.not = icmp eq i64 %sub21, 0
  br i1 %cmp.not, label %while.end31, label %while.body

while.end31:                                      ; preds = %while.end, %while.cond.preheader
  %bio.0.lcssa = phi %struct.bio* [ %0, %while.cond.preheader ], [ %call6, %while.end ]
  store %struct.bio* %bio.0.lcssa, %struct.bio** %biop, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %while.end31
  %retval.0 = phi i32 [ 0, %while.end31 ], [ -6, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blkdev_issue_zeroout(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %bio = alloca %struct.bio*, align 8
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast %struct.bio** %bio to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !9
  %call2 = call fastcc i32 @bdev_logical_block_size(%struct.block_device* noundef %bdev) #10
  %shr = lshr i32 %call2, 9
  %sub = add nsw i32 %shr, -1
  %conv = zext i32 %sub to i64
  %or = or i64 %nr_sects, %sector
  %and = and i64 %or, %conv
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %retry.preheader, label %cleanup

retry.preheader:                                  ; preds = %entry
  %call = call fastcc i32 @bdev_write_zeroes_sectors(%struct.block_device* noundef %bdev) #10
  %tobool = icmp ne i32 %call, 0
  %and7 = and i32 %flags, 2
  %tobool8.not = icmp eq i32 %and7, 0
  br label %retry

retry:                                            ; preds = %retry.preheader, %if.then23
  %try_write_zeroes.0.off0 = phi i1 [ false, %if.then23 ], [ %tobool, %retry.preheader ]
  store %struct.bio* null, %struct.bio** %bio, align 8
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #11
  br i1 %try_write_zeroes.0.off0, label %if.then5, label %if.else

if.then5:                                         ; preds = %retry
  %call6 = call fastcc i32 @__blkdev_issue_write_zeroes(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.bio** noundef nonnull %bio, i32 noundef %flags) #10
  br label %if.end13

if.else:                                          ; preds = %retry
  br i1 %tobool8.not, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.else
  %call10 = call fastcc i32 @__blkdev_issue_zero_pages(%struct.block_device* noundef %bdev, i64 noundef %sector, i64 noundef %nr_sects, i32 noundef %gfp_mask, %struct.bio** noundef nonnull %bio) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then5
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call10, %if.then9 ]
  %cmp = icmp eq i32 %ret.0, 0
  %2 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool15 = icmp ne %struct.bio* %2, null
  %or.cond = select i1 %cmp, i1 %tobool15, i1 false
  br i1 %or.cond, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 @submit_bio_wait(%struct.bio* noundef nonnull %2) #11
  call void @bio_put(%struct.bio* noundef nonnull %2) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16, %if.end13
  %ret.1 = phi i32 [ %call17, %if.then16 ], [ %ret.0, %if.end13 ], [ -95, %if.else ]
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #11
  %tobool19.not = icmp eq i32 %ret.1, 0
  %try_write_zeroes.0.off0.not = xor i1 %try_write_zeroes.0.off0, true
  %brmerge = select i1 %tobool19.not, i1 true, i1 %try_write_zeroes.0.off0.not
  br i1 %brmerge, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end18
  br i1 %tobool8.not, label %retry, label %if.end27

if.end27:                                         ; preds = %if.then23
  %call28 = call fastcc i32 @bdev_write_zeroes_sectors(%struct.block_device* noundef %bdev) #10
  %tobool29.not = icmp eq i32 %call28, 0
  %spec.select = select i1 %tobool29.not, i32 -95, i32 %ret.1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end27, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %spec.select, %if.end27 ], [ %ret.1, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_write_zeroes_sectors(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #10
  %tobool.not = icmp eq %struct.request_queue* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 31, i32 16
  %0 = load i32, i32* %max_write_zeroes_sectors, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.bio* @bio_alloc_bioset(i32 noundef, i16 noundef, %struct.bio_set* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef readonly %q) unnamed_addr #3 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bdev_write_same(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #10
  %tobool.not = icmp eq %struct.request_queue* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 31, i32 15
  %0 = load i32, i32* %max_write_same_sectors, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bio_allowed_max_sectors(%struct.request_queue* noundef %q) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %q) #10
  %neg = sub i32 0, %call
  %shr = lshr i32 %neg, 9
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__blkdev_sectors_to_bio_pages(i64 noundef %nr_sects) unnamed_addr #8 {
entry:
  %sub = add i64 %nr_sects, 7
  %div = lshr i64 %sub, 3
  %cmp = icmp ult i64 %div, 256
  %cond = select i1 %cmp, i64 %div, i64 256
  %conv = trunc i64 %cond to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(%struct.bio* noundef, %struct.page* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #9

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2154323926}
!9 = !{!"auto-init"}
!10 = !{i64 2154331472}
