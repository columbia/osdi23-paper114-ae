; ModuleID = 'block/blk-merge.c'
source_filename = "block/blk-merge.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.14, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.39 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.18, %union.anon.19 }
%union.anon.18 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.19 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
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
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type opaque
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
%struct.workqueue_struct = type opaque
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
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
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.req_iterator = type { %struct.bvec_iter, %struct.bio* }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }

@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__blk_queue_split(%struct.bio** nocapture noundef %bio, i32* nocapture noundef writeonly %nr_segs) local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 1
  %1 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %1, i64 0, i32 16
  %2 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %2, i64 0, i32 9
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 2
  %4 = load i32, i32* %bi_opf, align 8
  %trunc = trunc i32 %4 to i8
  switch i8 %trunc, label %sw.default [
    i8 3, label %sw.bb
    i8 5, label %sw.bb
    i8 9, label %sw.bb1
    i8 7, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry, %entry
  %bio_split = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i64 0, i32 49
  %call = call fastcc %struct.bio* @blk_bio_discard_split(%struct.request_queue* noundef %3, %struct.bio* noundef %0, %struct.bio_set* noundef %bio_split, i32* noundef %nr_segs) #16
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %bio_split2 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i64 0, i32 49
  %call3 = call fastcc %struct.bio* @blk_bio_write_zeroes_split(%struct.request_queue* noundef %3, %struct.bio* noundef %0, %struct.bio_set* noundef %bio_split2, i32* noundef %nr_segs) #16
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %bio_split5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i64 0, i32 49
  %call6 = call fastcc %struct.bio* @blk_bio_write_same_split(%struct.request_queue* noundef %3, %struct.bio* noundef %0, %struct.bio_set* noundef %bio_split5, i32* noundef %nr_segs) #16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %chunk_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i64 0, i32 31, i32 5
  %5 = load i32, i32* %chunk_sectors, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %bi_vcnt = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 12
  %6 = load i16, i16* %bi_vcnt, align 8
  %cmp = icmp eq i16 %6, 1
  br i1 %cmp, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 15
  %7 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i64 0, i32 1
  %8 = load i32, i32* %bv_len, align 8
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i64 0, i32 2
  %9 = load i32, i32* %bv_offset, align 4
  %add = add i32 %9, %8
  %cmp12 = icmp ult i32 %add, 4097
  br i1 %cmp12, label %sw.epilog.thread, label %if.end

sw.epilog.thread:                                 ; preds = %land.lhs.true8
  store i32 1, i32* %nr_segs, align 4
  br label %if.end23

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true, %sw.default
  %bio_split14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i64 0, i32 49
  %call15 = call fastcc %struct.bio* @blk_bio_segment_split(%struct.request_queue* noundef %3, %struct.bio* noundef %0, %struct.bio_set* noundef %bio_split14, i32* noundef %nr_segs) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb4, %sw.bb1, %sw.bb
  %split.0 = phi %struct.bio* [ %call15, %if.end ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  %tobool16.not = icmp eq %struct.bio* %split.0, null
  br i1 %tobool16.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %sw.epilog
  %bi_opf18 = getelementptr inbounds %struct.bio, %struct.bio* %split.0, i64 0, i32 2
  %10 = load i32, i32* %bi_opf18, align 8
  %11 = or i32 %10, 16384
  store i32 %11, i32* %bi_opf18, align 8
  %12 = load %struct.bio*, %struct.bio** %bio, align 8
  call void @bio_chain(%struct.bio* noundef nonnull %split.0, %struct.bio* noundef %12) #17
  %13 = load %struct.bio*, %struct.bio** %bio, align 8
  %call22 = call i32 @submit_bio_noacct(%struct.bio* noundef %13) #17
  store %struct.bio* %split.0, %struct.bio** %bio, align 8
  br label %if.end23

if.end23:                                         ; preds = %sw.epilog.thread, %if.then17, %sw.epilog
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @blk_bio_discard_split(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, %struct.bio_set* noundef %bs, i32* nocapture noundef writeonly %nsegs) unnamed_addr #0 {
entry:
  store i32 1, i32* %nsegs, align 4
  %discard_granularity = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 18
  %0 = load i32, i32* %discard_granularity, align 4
  %shr = lshr i32 %0, 9
  %cmp = icmp ugt i32 %shr, 1
  %cond = select i1 %cmp, i32 %shr, i32 1
  %max_discard_sectors3 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 13
  %1 = load i32, i32* %max_discard_sectors3, align 8
  %call = call fastcc i32 @bio_allowed_max_sectors(%struct.request_queue* noundef %q) #16
  %cmp5 = icmp ult i32 %1, %call
  %cond9 = select i1 %cmp5, i32 %1, i32 %call
  %rem = urem i32 %cond9, %cond
  %sub = sub i32 %cond9, %rem
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %2 = load i32, i32* %bi_size, align 8
  %shr13 = lshr i32 %2, 9
  %cmp14.not = icmp ugt i32 %shr13, %sub
  br i1 %cmp14.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end
  %discard_alignment = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 19
  %3 = load i32, i32* %discard_alignment, align 8
  %shr19 = lshr i32 %3, 9
  %rem20 = urem i32 %shr19, %cond
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %4 = load i64, i64* %bi_sector, align 8
  %conv22 = zext i32 %sub to i64
  %add = add i64 %4, %conv22
  %5 = zext i32 %rem20 to i64
  %sub24 = sub i64 %add, %5
  %conv25 = zext i32 %cond to i64
  %rem26 = urem i64 %sub24, %conv25
  %cmp32 = icmp ult i64 %rem26, %conv22
  %6 = trunc i64 %rem26 to i32
  %conv37 = select i1 %cmp32, i32 %6, i32 0
  %split_sectors.0 = sub i32 %sub, %conv37
  %call39 = call %struct.bio* @bio_split(%struct.bio* noundef %bio, i32 noundef %split_sectors.0, i32 noundef 3072, %struct.bio_set* noundef %bs) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end17
  %retval.0 = phi %struct.bio* [ %call39, %if.end17 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.bio* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @blk_bio_write_zeroes_split(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* noundef %bio, %struct.bio_set* noundef %bs, i32* nocapture noundef writeonly %nsegs) unnamed_addr #0 {
entry:
  store i32 0, i32* %nsegs, align 4
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 16
  %0 = load i32, i32* %max_write_zeroes_sectors, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %1, 9
  %cmp.not = icmp ugt i32 %shr, %0
  br i1 %cmp.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %call = call %struct.bio* @bio_split(%struct.bio* noundef %bio, i32 noundef %0, i32 noundef 3072, %struct.bio_set* noundef %bs) #17
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi %struct.bio* [ %call, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.bio* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @blk_bio_write_same_split(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* noundef %bio, %struct.bio_set* noundef %bs, i32* nocapture noundef writeonly %nsegs) unnamed_addr #0 {
entry:
  store i32 1, i32* %nsegs, align 4
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 15
  %0 = load i32, i32* %max_write_same_sectors, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %1, 9
  %cmp.not = icmp ugt i32 %shr, %0
  br i1 %cmp.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %call = call %struct.bio* @bio_split(%struct.bio* noundef %bio, i32 noundef %0, i32 noundef 3072, %struct.bio_set* noundef %bs) #17
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi %struct.bio* [ %call, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.bio* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bio* @blk_bio_segment_split(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, %struct.bio_set* noundef %bs, i32* nocapture noundef writeonly %segs) unnamed_addr #0 {
entry:
  %bv = alloca %struct.bio_vec, align 8
  %bvprv = alloca %struct.bio_vec, align 8
  %iter = alloca %struct.bvec_iter, align 8
  %nsegs = alloca i32, align 4
  %sectors = alloca i32, align 4
  %0 = bitcast %struct.bio_vec* %bv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  %1 = bitcast %struct.bio_vec* %bvprv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !9
  %2 = bitcast %struct.bvec_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #18
  %3 = bitcast i32* %nsegs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18
  store i32 0, i32* %nsegs, align 4
  %4 = bitcast i32* %sectors to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18
  store i32 0, i32* %sectors, align 4
  %call = call fastcc i32 @get_max_io_size(%struct.request_queue* noundef %q, %struct.bio* noundef %bio) #16
  %call1 = call fastcc i16 @queue_max_segments(%struct.request_queue* noundef %q) #16
  %conv = zext i16 %call1 to i32
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8
  %5 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef align 8 dereferenceable(24) %5, i64 24, i1 false)
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %6 = load i32, i32* %bi_size, align 8
  %tobool.not75 = icmp eq i32 %6, 0
  br i1 %tobool.not75, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 0
  %.compoundliteral.sroa.2.0..sroa_idx55 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 1
  %.compoundliteral.sroa.3.0..sroa_idx56 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end41
  %7 = phi i32 [ %6, %land.rhs.lr.ph ], [ %16, %if.end41 ]
  %bvprvp.076 = phi %struct.bio_vec* [ null, %land.rhs.lr.ph ], [ %bvprv, %if.end41 ]
  %8 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %9 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %9 to i64
  %bv_page2 = getelementptr %struct.bio_vec, %struct.bio_vec* %8, i64 %idxprom, i32 0
  %10 = load %struct.page*, %struct.page** %bv_page2, align 8
  %bv_len8 = getelementptr %struct.bio_vec, %struct.bio_vec* %8, i64 %idxprom, i32 1
  %11 = load i32, i32* %bv_len8, align 8
  %12 = load i32, i32* %bi_bvec_done, align 8
  %sub = sub i32 %11, %12
  %cmp = icmp ult i32 %7, %sub
  %cond = select i1 %cmp, i32 %7, i32 %sub
  %bv_offset14 = getelementptr %struct.bio_vec, %struct.bio_vec* %8, i64 %idxprom, i32 2
  %13 = load i32, i32* %bv_offset14, align 4
  %add = add i32 %13, %12
  store %struct.page* %10, %struct.page** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  store i32 %cond, i32* %.compoundliteral.sroa.2.0..sroa_idx55, align 8
  store i32 %add, i32* %.compoundliteral.sroa.3.0..sroa_idx56, align 4
  %tobool16.not = icmp eq %struct.bio_vec* %bvprvp.076, null
  br i1 %tobool16.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %call18 = call fastcc i1 @bvec_gap_to_prev(%struct.request_queue* noundef %q, %struct.bio_vec* noundef nonnull %bvprvp.076, i32 noundef %add) #16
  br i1 %call18, label %split, label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.rhs
  %14 = load i32, i32* %nsegs, align 4
  %cmp20 = icmp ult i32 %14, %conv
  br i1 %cmp20, label %land.lhs.true22, label %if.else

land.lhs.true22:                                  ; preds = %if.end
  %15 = load i32, i32* %sectors, align 4
  %shr = lshr i32 %cond, 9
  %add24 = add i32 %15, %shr
  %cmp25.not = icmp ule i32 %add24, %call
  %add30 = add i32 %cond, %add
  %cmp32 = icmp ult i32 %add30, 4097
  %or.cond = select i1 %cmp25.not, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.then34, label %if.else

if.then34:                                        ; preds = %land.lhs.true22
  %inc = add nuw i32 %14, 1
  store i32 %inc, i32* %nsegs, align 4
  store i32 %add24, i32* %sectors, align 4
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true22, %if.end
  %call38 = call fastcc i1 @bvec_split_segs(%struct.request_queue* noundef %q, %struct.bio_vec* noundef nonnull %bv, i32* noundef nonnull %nsegs, i32* noundef nonnull %sectors, i32 noundef %conv, i32 noundef %call) #16
  br i1 %call38, label %split, label %if.end41

if.end41:                                         ; preds = %if.else, %if.then34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef %bio, %struct.bvec_iter* noundef nonnull %iter, i32 noundef %cond) #16
  %16 = load i32, i32* %bi_size, align 8
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %for.end.loopexit, label %land.rhs

for.end.loopexit:                                 ; preds = %if.end41
  %.pre = load i32, i32* %nsegs, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %17 = phi i32 [ %.pre, %for.end.loopexit ], [ 0, %entry ]
  store i32 %17, i32* %segs, align 4
  br label %cleanup

split:                                            ; preds = %if.else, %land.lhs.true
  %18 = load i32, i32* %nsegs, align 4
  store i32 %18, i32* %segs, align 4
  call fastcc void @bio_clear_hipri(%struct.bio* noundef %bio) #16
  %19 = load i32, i32* %sectors, align 4
  %call43 = call %struct.bio* @bio_split(%struct.bio* noundef %bio, i32 noundef %19, i32 noundef 3072, %struct.bio_set* noundef %bs) #17
  br label %cleanup

cleanup:                                          ; preds = %split, %for.end
  %retval.0 = phi %struct.bio* [ %call43, %split ], [ null, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret %struct.bio* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(%struct.bio* noundef, %struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_noacct(%struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_split(%struct.bio** nocapture noundef %bio) local_unnamed_addr #0 {
entry:
  %nr_segs = alloca i32, align 4
  %0 = bitcast i32* %nr_segs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  call void @__blk_queue_split(%struct.bio** noundef %bio, i32* noundef nonnull %nr_segs) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define dso_local i32 @blk_recalc_rq_segments(%struct.request* nocapture noundef readonly %rq) local_unnamed_addr #3 {
entry:
  %nr_phys_segs = alloca i32, align 4
  %nr_sectors = alloca i32, align 4
  %iter = alloca %struct.req_iterator, align 8
  %bv = alloca %struct.bio_vec, align 8
  %0 = bitcast i32* %nr_phys_segs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 0, i32* %nr_phys_segs, align 4
  %1 = bitcast i32* %nr_sectors to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %nr_sectors, align 4
  %2 = bitcast %struct.req_iterator* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #18
  %3 = bitcast %struct.bio_vec* %bv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !9
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %4 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool.not = icmp eq %struct.bio* %4, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %4, i64 0, i32 2
  %5 = load i32, i32* %bi_opf, align 8
  %trunc = trunc i32 %5 to i8
  switch i8 %trunc, label %for.body18.lr.ph [
    i8 3, label %sw.bb
    i8 5, label %sw.bb
    i8 9, label %cleanup
    i8 7, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %6 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %call = call fastcc i16 @queue_max_discard_segments(%struct.request_queue* noundef %6) #16
  %cmp = icmp ugt i16 %call, 1
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %sw.bb, %for.body
  %bio4.085 = phi %struct.bio* [ %bio4.0, %for.body ], [ %4, %sw.bb ]
  %inc8184 = phi i32 [ %inc, %for.body ], [ 0, %sw.bb ]
  %inc = add i32 %inc8184, 1
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio4.085, i64 0, i32 0
  %bio4.0 = load %struct.bio*, %struct.bio** %bi_next, align 8
  %tobool6.not = icmp eq %struct.bio* %bio4.0, null
  br i1 %tobool6.not, label %cleanup, label %for.body

sw.bb9:                                           ; preds = %if.end
  br label %cleanup

for.body18.lr.ph:                                 ; preds = %if.end
  %bio14 = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 1
  %iter19 = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 0
  %bi_size = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 0, i32 1
  store %struct.bio* %4, %struct.bio** %bio14, align 8
  %bi_idx = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.req_iterator, %struct.req_iterator* %iter, i64 0, i32 0, i32 3
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 0
  %.compoundliteral.sroa.2.0..sroa_idx69 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 1
  %.compoundliteral.sroa.3.0..sroa_idx70 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 2
  %q49 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc56
  %storemerge88 = phi %struct.bio* [ %4, %for.body18.lr.ph ], [ %20, %for.inc56 ]
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %storemerge88, i64 0, i32 8
  %7 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef align 8 dereferenceable(24) %7, i64 24, i1 false)
  %8 = load i32, i32* %bi_size, align 8
  %tobool23.not86 = icmp eq i32 %8, 0
  br i1 %tobool23.not86, label %for.inc56, label %land.rhs

land.rhs:                                         ; preds = %for.body18, %land.rhs
  %9 = phi %struct.bio* [ %.pre89, %land.rhs ], [ %storemerge88, %for.body18 ]
  %10 = phi i32 [ %18, %land.rhs ], [ %8, %for.body18 ]
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %9, i64 0, i32 15
  %11 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %12 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %12 to i64
  %bv_page26 = getelementptr %struct.bio_vec, %struct.bio_vec* %11, i64 %idxprom, i32 0
  %13 = load %struct.page*, %struct.page** %bv_page26, align 8
  %bv_len35 = getelementptr %struct.bio_vec, %struct.bio_vec* %11, i64 %idxprom, i32 1
  %14 = load i32, i32* %bv_len35, align 8
  %15 = load i32, i32* %bi_bvec_done, align 8
  %sub = sub i32 %14, %15
  %cmp37 = icmp ult i32 %10, %sub
  %cond = select i1 %cmp37, i32 %10, i32 %sub
  %bv_offset45 = getelementptr %struct.bio_vec, %struct.bio_vec* %11, i64 %idxprom, i32 2
  %16 = load i32, i32* %bv_offset45, align 4
  %add = add i32 %16, %15
  store %struct.page* %13, %struct.page** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  store i32 %cond, i32* %.compoundliteral.sroa.2.0..sroa_idx69, align 8
  store i32 %add, i32* %.compoundliteral.sroa.3.0..sroa_idx70, align 4
  %17 = load %struct.request_queue*, %struct.request_queue** %q49, align 8
  %call50 = call fastcc i1 @bvec_split_segs(%struct.request_queue* noundef %17, %struct.bio_vec* noundef nonnull %bv, i32* noundef nonnull %nr_phys_segs, i32* noundef nonnull %nr_sectors, i32 noundef -1, i32 noundef -1) #16
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef %9, %struct.bvec_iter* noundef nonnull %iter19, i32 noundef %cond) #16
  %18 = load i32, i32* %bi_size, align 8
  %tobool23.not = icmp eq i32 %18, 0
  %.pre89 = load %struct.bio*, %struct.bio** %bio14, align 8
  br i1 %tobool23.not, label %for.inc56, label %land.rhs

for.inc56:                                        ; preds = %land.rhs, %for.body18
  %19 = phi %struct.bio* [ %storemerge88, %for.body18 ], [ %.pre89, %land.rhs ]
  %bi_next58 = getelementptr inbounds %struct.bio, %struct.bio* %19, i64 0, i32 0
  %20 = load %struct.bio*, %struct.bio** %bi_next58, align 8
  store %struct.bio* %20, %struct.bio** %bio14, align 8
  %tobool17.not = icmp eq %struct.bio* %20, null
  br i1 %tobool17.not, label %if.end61, label %for.body18

if.end61:                                         ; preds = %for.inc56
  %.pre90 = load i32, i32* %nr_phys_segs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end, %sw.bb, %entry, %if.end61, %sw.bb9
  %retval.0 = phi i32 [ %.pre90, %if.end61 ], [ 1, %sw.bb9 ], [ 0, %entry ], [ 1, %sw.bb ], [ 0, %if.end ], [ %inc, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @queue_max_discard_segments(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %max_discard_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 23
  %0 = load i16, i16* %max_discard_segments, align 4
  ret i16 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i1 @bvec_split_segs(%struct.request_queue* nocapture noundef readonly %q, %struct.bio_vec* nocapture noundef readonly %bv, i32* nocapture noundef %nsegs, i32* nocapture noundef %sectors, i32 noundef %max_segs, i32 noundef %max_sectors) unnamed_addr #7 {
entry:
  %cmp = icmp ult i32 %max_sectors, 8388607
  %cond = select i1 %cmp, i32 %max_sectors, i32 8388607
  %0 = load i32, i32* %sectors, align 4
  %sub = sub i32 %cond, %0
  %shl = shl i32 %sub, 9
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 1
  %1 = load i32, i32* %bv_len, align 8
  %cmp2 = icmp ult i32 %1, %shl
  %cond6 = select i1 %cmp2, i32 %1, i32 %shl
  %tobool.old.not = icmp eq i32 %cond6, 0
  br i1 %tobool.old.not, label %lor.rhs, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 0
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 2
  %.pre = load i32, i32* %nsegs, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %2 = phi i32 [ %inc, %while.body ], [ %.pre, %land.rhs.preheader ]
  %total_len.0 = phi i32 [ %add15, %while.body ], [ 0, %land.rhs.preheader ]
  %len.0 = phi i32 [ %sub16, %while.body ], [ %cond6, %land.rhs.preheader ]
  %cmp7 = icmp ult i32 %2, %max_segs
  br i1 %cmp7, label %while.body, label %while.end.thread66

while.end.thread66:                               ; preds = %land.rhs
  %shr69 = lshr i32 %total_len.0, 9
  %3 = load i32, i32* %sectors, align 4
  %add2270 = add i32 %3, %shr69
  store i32 %add2270, i32* %sectors, align 4
  br label %lor.end

while.body:                                       ; preds = %land.rhs
  %4 = load %struct.page*, %struct.page** %bv_page, align 8
  %5 = load i32, i32* %bv_offset, align 4
  %add = add i32 %5, %total_len.0
  %conv = zext i32 %add to i64
  %call = call fastcc i32 @get_max_segment_size(%struct.request_queue* noundef %q, %struct.page* noundef %4, i64 noundef %conv) #16
  %cmp9 = icmp ult i32 %call, %len.0
  %cond14 = select i1 %cmp9, i32 %call, i32 %len.0
  %inc = add nuw i32 %2, 1
  store i32 %inc, i32* %nsegs, align 4
  %add15 = add i32 %cond14, %total_len.0
  %sub16 = sub i32 %len.0, %cond14
  %6 = load i32, i32* %bv_offset, align 4
  %add18 = add i32 %add15, %6
  %conv19 = zext i32 %add18 to i64
  %call20 = call fastcc i64 @queue_virt_boundary(%struct.request_queue* noundef %q) #16
  %and = and i64 %call20, %conv19
  %tobool21 = icmp eq i64 %and, 0
  %tobool = icmp ne i32 %sub16, 0
  %or.cond = select i1 %tobool21, i1 %tobool, i1 false
  br i1 %or.cond, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body
  %shr = lshr i32 %add15, 9
  %7 = load i32, i32* %sectors, align 4
  %add22 = add i32 %7, %shr
  store i32 %add22, i32* %sectors, align 4
  %cmp23.not = icmp eq i32 %sub16, 0
  br i1 %cmp23.not, label %while.end.lor.rhs_crit_edge, label %lor.end

while.end.lor.rhs_crit_edge:                      ; preds = %while.end
  %.pre74 = load i32, i32* %bv_len, align 8
  br label %lor.rhs

lor.rhs:                                          ; preds = %while.end.lor.rhs_crit_edge, %entry
  %8 = phi i32 [ %.pre74, %while.end.lor.rhs_crit_edge ], [ %1, %entry ]
  %cmp26 = icmp ugt i32 %8, %shl
  br label %lor.end

lor.end:                                          ; preds = %while.end.thread66, %lor.rhs, %while.end
  %9 = phi i1 [ true, %while.end ], [ %cmp26, %lor.rhs ], [ true, %while.end.thread66 ]
  ret i1 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_advance_iter_single(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #8 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__blk_rq_map_sg(%struct.request_queue* nocapture noundef readonly %q, %struct.request* nocapture noundef readonly %rq, %struct.scatterlist* noundef %sglist, %struct.scatterlist** nocapture noundef %last_sg) local_unnamed_addr #0 {
entry:
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %.elt = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 13, i32 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %1 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt145 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 13, i32 0, i32 1
  %2 = bitcast %struct.rb_node** %.elt145 to i64*
  %.unpack146 = load i64, i64* %2, align 8
  %3 = insertvalue [2 x i64] %1, i64 %.unpack146, 1
  call fastcc void @__blk_bvec_map_sg([2 x i64] %3, %struct.scatterlist* noundef %sglist, %struct.scatterlist** noundef %last_sg) #16
  br label %if.end78

if.else:                                          ; preds = %entry
  %bio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %4 = load %struct.bio*, %struct.bio** %bio, align 8
  %tobool1.not = icmp eq %struct.bio* %4, null
  br i1 %tobool1.not, label %if.end78, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %4, i64 0, i32 2
  %5 = load i32, i32* %bi_opf, align 8
  %and3 = and i32 %5, 255
  %cmp = icmp eq i32 %and3, 7
  br i1 %cmp, label %if.then4, label %if.then74

if.then4:                                         ; preds = %land.lhs.true
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %4, i64 0, i32 15
  %6 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bi_idx = getelementptr inbounds %struct.bio, %struct.bio* %4, i64 0, i32 8, i32 2
  %7 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %7 to i64
  %bv_page7 = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 0
  %8 = load %struct.page*, %struct.page** %bv_page7, align 8
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 2
  %9 = load i32, i32* %bv_offset, align 4
  %bi_bvec_done = getelementptr inbounds %struct.bio, %struct.bio* %4, i64 0, i32 8, i32 3
  %10 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %10, %9
  %conv = zext i32 %add to i64
  %div = lshr i64 %conv, 12
  %add.ptr = getelementptr %struct.page, %struct.page* %8, i64 %div
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %4, i64 0, i32 8, i32 1
  %11 = load i32, i32* %bi_size, align 8
  %bv_len26 = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom, i32 1
  %12 = load i32, i32* %bv_len26, align 8
  %sub = sub i32 %12, %10
  %cmp30 = icmp ult i32 %11, %sub
  %cond = select i1 %cmp30, i32 %11, i32 %sub
  %rem = and i64 %conv, 4095
  %13 = trunc i64 %rem to i32
  %conv46 = sub nuw nsw i32 4096, %13
  %cmp48 = icmp ult i32 %cond, %conv46
  %cond53 = select i1 %cmp48, i32 %cond, i32 %conv46
  %14 = ptrtoint %struct.page* %add.ptr to i64
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %14, 0
  %.compoundliteral.sroa.4.8.insert.shift = shl nuw nsw i64 %rem, 32
  %.compoundliteral.sroa.2.8.insert.ext = zext i32 %cond53 to i64
  %.compoundliteral.sroa.2.8.insert.insert = or i64 %.compoundliteral.sroa.4.8.insert.shift, %.compoundliteral.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.compoundliteral.sroa.2.8.insert.insert, 1
  call fastcc void @__blk_bvec_map_sg([2 x i64] %.fca.1.insert, %struct.scatterlist* noundef %sglist, %struct.scatterlist** noundef %last_sg) #16
  br label %if.end78

if.then74:                                        ; preds = %land.lhs.true
  %call76 = call fastcc i32 @__blk_bios_map_sg(%struct.request_queue* noundef %q, %struct.bio* noundef nonnull %4, %struct.scatterlist* noundef %sglist, %struct.scatterlist** noundef %last_sg) #16
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then4, %if.then74, %if.then
  %nsegs.0 = phi i32 [ 1, %if.then ], [ 1, %if.then4 ], [ %call76, %if.then74 ], [ 0, %if.else ]
  %15 = load %struct.scatterlist*, %struct.scatterlist** %last_sg, align 8
  %tobool79.not = icmp eq %struct.scatterlist* %15, null
  br i1 %tobool79.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end78
  call fastcc void @sg_mark_end(%struct.scatterlist* noundef nonnull %15) #16
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end78
  %call82 = call fastcc i16 @blk_rq_nr_phys_segments(%struct.request* noundef %rq) #16
  %conv83 = zext i16 %call82 to i32
  %cmp84 = icmp sgt i32 %nsegs.0, %conv83
  br i1 %cmp84, label %if.then94, label %if.end95, !prof !8

if.then94:                                        ; preds = %if.end81
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-merge.c\22; .popsection; .long 14472b - 14470b; .short 548; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !10
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end81
  ret i32 %nsegs.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_bvec_map_sg([2 x i64] %bv.coerce, %struct.scatterlist* noundef %sglist, %struct.scatterlist** nocapture noundef %sg) unnamed_addr #0 {
entry:
  %bv.coerce.fca.0.extract = extractvalue [2 x i64] %bv.coerce, 0
  %0 = inttoptr i64 %bv.coerce.fca.0.extract to %struct.page*
  %bv.coerce.fca.1.extract = extractvalue [2 x i64] %bv.coerce, 1
  %bv.sroa.2.8.extract.trunc = trunc i64 %bv.coerce.fca.1.extract to i32
  %bv.sroa.4.8.extract.shift = lshr i64 %bv.coerce.fca.1.extract, 32
  %bv.sroa.4.8.extract.trunc = trunc i64 %bv.sroa.4.8.extract.shift to i32
  %call = call fastcc %struct.scatterlist* @blk_next_sg(%struct.scatterlist** noundef %sg, %struct.scatterlist* noundef %sglist) #16
  store %struct.scatterlist* %call, %struct.scatterlist** %sg, align 8
  call fastcc void @sg_set_page(%struct.scatterlist* noundef %call, %struct.page* noundef %0, i32 noundef %bv.sroa.2.8.extract.trunc, i32 noundef %bv.sroa.4.8.extract.trunc) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__blk_bios_map_sg(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* noundef readonly %bio, %struct.scatterlist* noundef %sglist, %struct.scatterlist** nocapture noundef %sg) unnamed_addr #0 {
entry:
  %bvec = alloca %struct.bio_vec, align 8
  %bvprv = alloca %struct.bio_vec, align 8
  %iter = alloca %struct.bvec_iter, align 8
  %0 = bitcast %struct.bio_vec* %bvec to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %1 = bitcast %struct.bio_vec* %bvprv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %2 = bitcast %struct.bvec_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #18
  %tobool.not66 = icmp eq %struct.bio* %bio, null
  br i1 %tobool.not66, label %for.end39, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 0
  %.compoundliteral.sroa.2.0..sroa_idx44 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 1
  %.compoundliteral.sroa.3.0..sroa_idx45 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 2
  %3 = bitcast i32* %.compoundliteral.sroa.2.0..sroa_idx44 to i64*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc38
  %bio.addr.069 = phi %struct.bio* [ %bio, %for.body.lr.ph ], [ %24, %for.inc38 ]
  %nsegs.068 = phi i32 [ 0, %for.body.lr.ph ], [ %nsegs.1.lcssa, %for.inc38 ]
  %new_bio.0.off067 = phi i1 [ false, %for.body.lr.ph ], [ %new_bio.2.off0, %for.inc38 ]
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.069, i64 0, i32 8
  %4 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef align 8 dereferenceable(24) %4, i64 24, i1 false)
  %5 = load i32, i32* %bi_size, align 8
  %tobool2.not62 = icmp eq i32 %5, 0
  br i1 %tobool2.not62, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.body
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.069, i64 0, i32 15
  %6 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %7 = load i32, i32* %bi_idx, align 4
  %idxprom.peel = zext i32 %7 to i64
  %bv_page3.peel = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom.peel, i32 0
  %8 = load %struct.page*, %struct.page** %bv_page3.peel, align 8
  %bv_len9.peel = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom.peel, i32 1
  %9 = load i32, i32* %bv_len9.peel, align 8
  %10 = load i32, i32* %bi_bvec_done, align 8
  %sub.peel = sub i32 %9, %10
  %cmp.peel = icmp ult i32 %5, %sub.peel
  %cond.peel = select i1 %cmp.peel, i32 %5, i32 %sub.peel
  %bv_offset14.peel = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom.peel, i32 2
  %11 = load i32, i32* %bv_offset14.peel, align 4
  %add.peel = add i32 %11, %10
  store %struct.page* %8, %struct.page** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  store i32 %cond.peel, i32* %.compoundliteral.sroa.2.0..sroa_idx44, align 8
  store i32 %add.peel, i32* %.compoundliteral.sroa.3.0..sroa_idx45, align 4
  %12 = ptrtoint %struct.page* %8 to i64
  br i1 %new_bio.0.off067, label %land.lhs.true.peel, label %if.end.peel

land.lhs.true.peel:                               ; preds = %land.rhs.lr.ph
  %call.peel = call fastcc i1 @__blk_segment_map_sg_merge(%struct.request_queue* noundef %q, %struct.bio_vec* noundef nonnull %bvec, %struct.bio_vec* noundef nonnull %bvprv, %struct.scatterlist** noundef %sg) #16
  br i1 %call.peel, label %next_bvec.peel, label %if.end.peel

if.end.peel:                                      ; preds = %land.lhs.true.peel, %land.rhs.lr.ph
  %add20.peel = add i32 %cond.peel, %add.peel
  %cmp21.peel = icmp ult i32 %add20.peel, 4097
  br i1 %cmp21.peel, label %if.then23.peel, label %if.else.peel

if.else.peel:                                     ; preds = %if.end.peel
  %call26.peel = call fastcc i32 @blk_bvec_map_sg(%struct.request_queue* noundef %q, %struct.bio_vec* noundef nonnull %bvec, %struct.scatterlist* noundef %sglist, %struct.scatterlist** noundef %sg) #16
  %add27.peel = add i32 %call26.peel, %nsegs.068
  br label %next_bvec.peel

if.then23.peel:                                   ; preds = %if.end.peel
  %.fca.0.insert.peel = insertvalue [2 x i64] poison, i64 %12, 0
  %.fca.1.load.peel = load i64, i64* %3, align 8
  %.fca.1.insert.peel = insertvalue [2 x i64] %.fca.0.insert.peel, i64 %.fca.1.load.peel, 1
  call fastcc void @__blk_bvec_map_sg([2 x i64] %.fca.1.insert.peel, %struct.scatterlist* noundef %sglist, %struct.scatterlist** noundef %sg) #16
  %add25.peel = add i32 %nsegs.068, 1
  br label %next_bvec.peel

next_bvec.peel:                                   ; preds = %if.then23.peel, %if.else.peel, %land.lhs.true.peel
  %nsegs.2.peel = phi i32 [ %nsegs.068, %land.lhs.true.peel ], [ %add25.peel, %if.then23.peel ], [ %add27.peel, %if.else.peel ]
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef nonnull %bio.addr.069, %struct.bvec_iter* noundef nonnull %iter, i32 noundef %cond.peel) #16
  %13 = load i32, i32* %bi_size, align 8
  %tobool2.not.peel = icmp eq i32 %13, 0
  br i1 %tobool2.not.peel, label %for.end, label %if.end

if.end:                                           ; preds = %next_bvec.peel, %next_bvec
  %14 = phi i32 [ %22, %next_bvec ], [ %13, %next_bvec.peel ]
  %nsegs.164 = phi i32 [ %nsegs.2, %next_bvec ], [ %nsegs.2.peel, %next_bvec.peel ]
  %15 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %16 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %16 to i64
  %bv_page3 = getelementptr %struct.bio_vec, %struct.bio_vec* %15, i64 %idxprom, i32 0
  %17 = load %struct.page*, %struct.page** %bv_page3, align 8
  %bv_len9 = getelementptr %struct.bio_vec, %struct.bio_vec* %15, i64 %idxprom, i32 1
  %18 = load i32, i32* %bv_len9, align 8
  %19 = load i32, i32* %bi_bvec_done, align 8
  %sub = sub i32 %18, %19
  %cmp = icmp ult i32 %14, %sub
  %cond = select i1 %cmp, i32 %14, i32 %sub
  %bv_offset14 = getelementptr %struct.bio_vec, %struct.bio_vec* %15, i64 %idxprom, i32 2
  %20 = load i32, i32* %bv_offset14, align 4
  %add = add i32 %20, %19
  store %struct.page* %17, %struct.page** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  store i32 %cond, i32* %.compoundliteral.sroa.2.0..sroa_idx44, align 8
  store i32 %add, i32* %.compoundliteral.sroa.3.0..sroa_idx45, align 4
  %add20 = add i32 %cond, %add
  %cmp21 = icmp ult i32 %add20, 4097
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  %21 = ptrtoint %struct.page* %17 to i64
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %21, 0
  %.fca.1.load = load i64, i64* %3, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  call fastcc void @__blk_bvec_map_sg([2 x i64] %.fca.1.insert, %struct.scatterlist* noundef %sglist, %struct.scatterlist** noundef %sg) #16
  %add25 = add i32 %nsegs.164, 1
  br label %next_bvec

if.else:                                          ; preds = %if.end
  %call26 = call fastcc i32 @blk_bvec_map_sg(%struct.request_queue* noundef %q, %struct.bio_vec* noundef nonnull %bvec, %struct.scatterlist* noundef %sglist, %struct.scatterlist** noundef %sg) #16
  %add27 = add i32 %call26, %nsegs.164
  br label %next_bvec

next_bvec:                                        ; preds = %if.then23, %if.else
  %nsegs.2 = phi i32 [ %add25, %if.then23 ], [ %add27, %if.else ]
  call fastcc void @bio_advance_iter_single(%struct.bio* noundef nonnull %bio.addr.069, %struct.bvec_iter* noundef nonnull %iter, i32 noundef %cond) #16
  %22 = load i32, i32* %bi_size, align 8
  %tobool2.not = icmp eq i32 %22, 0
  br i1 %tobool2.not, label %for.end, label %if.end, !llvm.loop !11

for.end:                                          ; preds = %next_bvec, %next_bvec.peel, %for.body
  %new_bio.1.off0.lcssa = phi i1 [ %new_bio.0.off067, %for.body ], [ false, %next_bvec.peel ], [ false, %next_bvec ]
  %nsegs.1.lcssa = phi i32 [ %nsegs.068, %for.body ], [ %nsegs.2.peel, %next_bvec.peel ], [ %nsegs.2, %next_bvec ]
  %bi_size31 = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.069, i64 0, i32 8, i32 1
  %23 = load i32, i32* %bi_size31, align 8
  %tobool32.not = icmp eq i32 %23, 0
  br i1 %tobool32.not, label %for.inc38, label %if.then36, !prof !8

if.then36:                                        ; preds = %for.end
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %for.inc38

for.inc38:                                        ; preds = %for.end, %if.then36
  %new_bio.2.off0 = phi i1 [ true, %if.then36 ], [ %new_bio.1.off0.lcssa, %for.end ]
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio.addr.069, i64 0, i32 0
  %24 = load %struct.bio*, %struct.bio** %bi_next, align 8
  %tobool.not = icmp eq %struct.bio* %24, null
  br i1 %tobool.not, label %for.end39, label %for.body

for.end39:                                        ; preds = %for.inc38, %entry
  %nsegs.0.lcssa = phi i32 [ 0, %entry ], [ %nsegs.1.lcssa, %for.inc38 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %nsegs.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sg_mark_end(%struct.scatterlist* nocapture noundef %sg) unnamed_addr #8 {
entry:
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %or = and i64 %0, -4
  %and = or i64 %or, 2
  store i64 %and, i64* %page_link, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @blk_rq_nr_phys_segments(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 20
  %1 = load i16, i16* %nr_phys_segments, align 2
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i16 [ %1, %if.end ], [ 1, %entry ]
  ret i16 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ll_back_merge_fn(%struct.request* noundef %req, %struct.bio* nocapture noundef readonly %bio, i32 noundef %nr_segs) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @req_gap_back_merge(%struct.request* noundef %req, %struct.bio* noundef %bio) #16
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call8 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %req) #16
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %0, 9
  %add = add i32 %shr, %call8
  %call9 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %req) #16
  %call10 = call fastcc i32 @blk_rq_get_max_sectors(%struct.request* noundef %req, i64 noundef %call9) #16
  %cmp = icmp ugt i32 %add, %call10
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  call fastcc void @req_set_nomerge(%struct.request_queue* noundef %1, %struct.request* noundef %req) #16
  br label %return

if.end12:                                         ; preds = %if.end
  %call13 = call fastcc i32 @ll_new_hw_segment(%struct.request* noundef %req, i32 noundef %nr_segs) #16
  br label %return

return:                                           ; preds = %entry, %if.end12, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %call13, %if.end12 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @req_gap_back_merge(%struct.request* noundef %req, %struct.bio* nocapture noundef readonly %bio) unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %biotail = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 10
  %1 = load %struct.bio*, %struct.bio** %biotail, align 8
  %call = call fastcc i1 @bio_will_gap(%struct.request_queue* noundef %0, %struct.request* noundef %req, %struct.bio* noundef %1, %struct.bio* noundef %bio) #16
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_sectors(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #16
  %shr = lshr i32 %call, 9
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_get_max_sectors(%struct.request* nocapture noundef readonly %rq, i64 noundef %offset) unnamed_addr #9 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %call = call fastcc i1 @blk_rq_is_passthrough(%struct.request* noundef %rq) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %max_hw_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 31, i32 3
  %1 = load i32, i32* %max_hw_sectors, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chunk_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 31, i32 5
  %2 = load i32, i32* %chunk_sectors, align 8
  %tobool.not = icmp eq i32 %2, 0
  %cmd_flags8.phi.trans.insert = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %.pre = load i32, i32* %cmd_flags8.phi.trans.insert, align 8
  br i1 %tobool.not, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %trunc = trunc i32 %.pre to i8
  switch i8 %trunc, label %if.end11 [
    i8 3, label %if.then7
    i8 5, label %if.then7
  ]

if.then7:                                         ; preds = %if.end, %lor.lhs.false, %lor.lhs.false
  %and9 = and i32 %.pre, 255
  %call10 = call fastcc i32 @blk_queue_get_max_sectors(%struct.request_queue* noundef %0, i32 noundef %and9) #16
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %and = and i32 %.pre, 255
  %call12 = call fastcc i32 @blk_max_size_offset(%struct.request_queue* noundef %0, i64 noundef %offset) #16
  %call15 = call fastcc i32 @blk_queue_get_max_sectors(%struct.request_queue* noundef %0, i32 noundef %and) #16
  %cmp16 = icmp ult i32 %call12, %call15
  %cond = select i1 %cmp16, i32 %call12, i32 %call15
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then7, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call10, %if.then7 ], [ %cond, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @blk_rq_pos(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %__sector = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 8
  %0 = load i64, i64* %__sector, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @req_set_nomerge(%struct.request_queue* nocapture noundef %q, %struct.request* noundef %req) unnamed_addr #8 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %1 = or i32 %0, 16384
  store i32 %1, i32* %cmd_flags, align 8
  %last_merge = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 0
  %2 = load %struct.request*, %struct.request** %last_merge, align 8
  %cmp = icmp eq %struct.request* %2, %req
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.request* null, %struct.request** %last_merge, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @ll_new_hw_segment(%struct.request* noundef %req, i32 noundef %nr_phys_segs) unnamed_addr #8 {
entry:
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %cmp2 = icmp eq i32 %and, 3
  br i1 %cmp2, label %return, label %if.end5

if.end5:                                          ; preds = %entry
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 20
  %1 = load i16, i16* %nr_phys_segments, align 2
  %conv6 = zext i16 %1 to i32
  %add = add i32 %conv6, %nr_phys_segs
  %call7 = call fastcc i32 @blk_rq_get_max_segments(%struct.request* noundef %req) #16
  %cmp8 = icmp ugt i32 %add, %call7
  br i1 %cmp8, label %no_merge, label %if.end11

if.end11:                                         ; preds = %if.end5
  %2 = trunc i32 %nr_phys_segs to i16
  %conv15 = add i16 %1, %2
  store i16 %conv15, i16* %nr_phys_segments, align 2
  br label %return

no_merge:                                         ; preds = %if.end5
  %3 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  call fastcc void @req_set_nomerge(%struct.request_queue* noundef %3, %struct.request* noundef %req) #16
  br label %return

return:                                           ; preds = %entry, %no_merge, %if.end11
  %retval.0 = phi i32 [ 0, %no_merge ], [ 1, %if.end11 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_rq_set_mixed_merge(%struct.request* nocapture noundef %rq) local_unnamed_addr #0 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %1 = and i32 %0, 1792
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %2 = load i32, i32* %rq_flags, align 4
  %and2 = and i32 %2, 32
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %bio3 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %bio.046 = load %struct.bio*, %struct.bio** %bio3, align 8
  %tobool4.not47 = icmp eq %struct.bio* %bio.046, null
  br i1 %tobool4.not47, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %if.end22
  %bio.048 = phi %struct.bio* [ %bio.0, %if.end22 ], [ %bio.046, %if.end ]
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio.048, i64 0, i32 2
  %3 = load i32, i32* %bi_opf, align 8
  %4 = and i32 %3, 1792
  %tobool7.not = icmp ne i32 %4, 0
  %cmp = icmp ne i32 %4, %1
  %spec.select = select i1 %tobool7.not, i1 %cmp, i1 false
  br i1 %spec.select, label %if.then21, label %if.end22, !prof !8

if.then21:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-merge.c\22; .popsection; .long 14472b - 14470b; .short 695; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !13
  %.pre = load i32, i32* %bi_opf, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.body
  %5 = phi i32 [ %.pre, %if.then21 ], [ %3, %for.body ]
  %or = or i32 %5, %1
  store i32 %or, i32* %bi_opf, align 8
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio.048, i64 0, i32 0
  %bio.0 = load %struct.bio*, %struct.bio** %bi_next, align 8
  %tobool4.not = icmp eq %struct.bio* %bio.0, null
  br i1 %tobool4.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %if.end22
  %.pre49 = load i32, i32* %rq_flags, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %6 = phi i32 [ %.pre49, %for.end.loopexit ], [ %2, %if.end ]
  %or32 = or i32 %6, 32
  store i32 %or32, i32* %rq_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_attempt_req_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.request* noundef %next) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.request* @attempt_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.request* noundef %next) #16
  %tobool = icmp ne %struct.request* %call, null
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.request* @attempt_merge(%struct.request_queue* noundef %q, %struct.request* noundef %req, %struct.request* noundef %next) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @rq_mergeable(%struct.request* noundef %req) #16
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @rq_mergeable(%struct.request* noundef %next) #16
  br i1 %call1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %cmd_flags2 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 3
  %1 = load i32, i32* %cmd_flags2, align 8
  %and3 = and i32 %1, 255
  %cmp.not = icmp eq i32 %and, %and3
  br i1 %cmp.not, label %lor.lhs.false14, label %return

lor.lhs.false14:                                  ; preds = %if.end
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 15
  %2 = load %struct.gendisk*, %struct.gendisk** %rq_disk, align 8
  %rq_disk15 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 15
  %3 = load %struct.gendisk*, %struct.gendisk** %rq_disk15, align 8
  %cmp16.not = icmp eq %struct.gendisk* %2, %3
  br i1 %cmp16.not, label %if.end18, label %return

if.end18:                                         ; preds = %lor.lhs.false14
  %cmp21 = icmp eq i32 %and, 7
  br i1 %cmp21, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end18
  %bio = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 9
  %4 = load %struct.bio*, %struct.bio** %bio, align 8
  %bio22 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 9
  %5 = load %struct.bio*, %struct.bio** %bio22, align 8
  %call23 = call fastcc i1 @blk_write_same_mergeable(%struct.bio* noundef %4, %struct.bio* noundef %5) #16
  br i1 %call23, label %if.end25, label %return

if.end25:                                         ; preds = %land.lhs.true, %if.end18
  %write_hint = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 21
  %6 = load i16, i16* %write_hint, align 4
  %write_hint26 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 21
  %7 = load i16, i16* %write_hint26, align 4
  %cmp28.not = icmp eq i16 %6, %7
  br i1 %cmp28.not, label %if.end31, label %return

if.end31:                                         ; preds = %if.end25
  %ioprio = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 22
  %8 = load i16, i16* %ioprio, align 2
  %ioprio33 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 22
  %9 = load i16, i16* %ioprio33, align 2
  %cmp35.not = icmp eq i16 %8, %9
  br i1 %cmp35.not, label %if.end38, label %return

if.end38:                                         ; preds = %if.end31
  %call39 = call fastcc i32 @blk_try_req_merge(%struct.request* noundef %req, %struct.request* noundef %next) #16
  switch i32 %call39, label %return [
    i32 3, label %sw.bb
    i32 2, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end38
  %call40 = call fastcc i1 @req_attempt_discard_merge(%struct.request_queue* noundef %q, %struct.request* noundef %req, %struct.request* noundef %next) #16
  br i1 %call40, label %sw.epilog, label %return

sw.bb43:                                          ; preds = %if.end38
  %call44 = call fastcc i32 @ll_merge_requests_fn(%struct.request* noundef %req, %struct.request* noundef %next) #16
  %tobool.not = icmp eq i32 %call44, 0
  br i1 %tobool.not, label %return, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 4
  %10 = load i32, i32* %rq_flags, align 4
  %rq_flags47 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 4
  %11 = load i32, i32* %rq_flags47, align 4
  %or = or i32 %11, %10
  %and48 = and i32 %or, 32
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.then59

lor.lhs.false50:                                  ; preds = %sw.epilog
  %12 = load i32, i32* %cmd_flags, align 8
  %13 = load i32, i32* %cmd_flags2, align 8
  %14 = xor i32 %13, %12
  %15 = and i32 %14, 1792
  %cmp57.not = icmp eq i32 %15, 0
  br i1 %cmp57.not, label %if.end60, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false50, %sw.epilog
  call void @blk_rq_set_mixed_merge(%struct.request* noundef %req) #16
  call void @blk_rq_set_mixed_merge(%struct.request* noundef %next) #16
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %lor.lhs.false50
  %start_time_ns = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 17
  %16 = load i64, i64* %start_time_ns, align 8
  %start_time_ns61 = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 17
  %17 = load i64, i64* %start_time_ns61, align 8
  %cmp62 = icmp ult i64 %16, %17
  br i1 %cmp62, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end60
  store i64 %16, i64* %start_time_ns61, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end60
  %bio68 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 9
  %18 = load %struct.bio*, %struct.bio** %bio68, align 8
  %biotail = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 10
  %19 = load %struct.bio*, %struct.bio** %biotail, align 8
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %19, i64 0, i32 0
  store %struct.bio* %18, %struct.bio** %bi_next, align 8
  %biotail69 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 10
  %20 = load %struct.bio*, %struct.bio** %biotail69, align 8
  store %struct.bio* %20, %struct.bio** %biotail, align 8
  %call71 = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %next) #16
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 7
  %21 = load i32, i32* %__data_len, align 8
  %add = add i32 %21, %call71
  store i32 %add, i32* %__data_len, align 8
  %call72 = call fastcc i1 @blk_discard_mergable(%struct.request* noundef %req) #16
  br i1 %call72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end67
  call void @elv_merge_requests(%struct.request_queue* noundef %q, %struct.request* noundef %req, %struct.request* noundef %next) #17
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end67
  call fastcc void @blk_account_io_merge_request(%struct.request* noundef %next) #16
  store %struct.bio* null, %struct.bio** %bio68, align 8
  br label %return

return:                                           ; preds = %if.end38, %sw.bb43, %sw.bb, %if.end31, %if.end25, %land.lhs.true, %lor.lhs.false14, %if.end, %entry, %lor.lhs.false, %if.end74
  %retval.0 = phi %struct.request* [ %next, %if.end74 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %lor.lhs.false14 ], [ null, %land.lhs.true ], [ null, %if.end25 ], [ null, %if.end31 ], [ null, %sw.bb ], [ null, %sw.bb43 ], [ null, %if.end38 ]
  ret %struct.request* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @blk_rq_merge_ok(%struct.request* nocapture noundef readonly %rq, %struct.bio* nocapture noundef readonly %bio) local_unnamed_addr #5 {
entry:
  %call = call fastcc i1 @rq_mergeable(%struct.request* noundef %rq) #16
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @bio_mergeable(%struct.bio* noundef %bio) #16
  br i1 %call1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %1 = load i32, i32* %bi_opf, align 8
  %and2 = and i32 %1, 255
  %cmp.not = icmp eq i32 %and, %and2
  br i1 %cmp.not, label %if.end14, label %return

if.end14:                                         ; preds = %if.end
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 15
  %2 = load %struct.gendisk*, %struct.gendisk** %rq_disk, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %3 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %3, i64 0, i32 16
  %4 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %cmp15.not = icmp eq %struct.gendisk* %2, %4
  br i1 %cmp15.not, label %if.end17, label %return

if.end17:                                         ; preds = %if.end14
  %cmp28 = icmp eq i32 %and, 7
  br i1 %cmp28, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end17
  %bio30 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 9
  %5 = load %struct.bio*, %struct.bio** %bio30, align 8
  %call31 = call fastcc i1 @blk_write_same_mergeable(%struct.bio* noundef %5, %struct.bio* noundef %bio) #16
  br i1 %call31, label %if.end33, label %return

if.end33:                                         ; preds = %land.lhs.true, %if.end17
  %write_hint = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 21
  %6 = load i16, i16* %write_hint, align 4
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 5
  %7 = load i16, i16* %bi_write_hint, align 8
  %cmp36.not = icmp eq i16 %6, %7
  br i1 %cmp36.not, label %if.end39, label %return

if.end39:                                         ; preds = %if.end33
  %ioprio = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 22
  %8 = load i16, i16* %ioprio, align 2
  %bi_ioprio = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 4
  %9 = load i16, i16* %bi_ioprio, align 2
  %cmp42.not = icmp eq i16 %8, %9
  br label %return

return:                                           ; preds = %if.end39, %if.end33, %land.lhs.true, %if.end14, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i1 [ false, %lor.lhs.false ], [ false, %entry ], [ false, %if.end ], [ false, %if.end14 ], [ false, %land.lhs.true ], [ false, %if.end33 ], [ %cmp42.not, %if.end39 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rq_mergeable(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @blk_rq_is_passthrough(%struct.request* noundef %rq) #16
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_mergeable(%struct.bio* nocapture noundef readonly %bio) unnamed_addr #5 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %1 = and i32 %0, 409600
  %tobool.not = icmp eq i32 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_write(i32 noundef %op) unnamed_addr #10 {
entry:
  %and = and i32 %op, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_write_same_mergeable(%struct.bio* nocapture noundef readonly %a, %struct.bio* nocapture noundef readonly %b) unnamed_addr #5 {
entry:
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %a, i64 0, i32 15
  %0 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bi_idx = getelementptr inbounds %struct.bio, %struct.bio* %a, i64 0, i32 8, i32 2
  %1 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %1 to i64
  %bv_page = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 0
  %2 = load %struct.page*, %struct.page** %bv_page, align 8
  %bv_offset = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 2
  %3 = load i32, i32* %bv_offset, align 4
  %bi_bvec_done = getelementptr inbounds %struct.bio, %struct.bio* %a, i64 0, i32 8, i32 3
  %4 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %4, %3
  %5 = lshr i32 %add, 12
  %div = zext i32 %5 to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %2, i64 %div
  %bi_io_vec7 = getelementptr inbounds %struct.bio, %struct.bio* %b, i64 0, i32 15
  %6 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec7, align 8
  %bi_idx9 = getelementptr inbounds %struct.bio, %struct.bio* %b, i64 0, i32 8, i32 2
  %7 = load i32, i32* %bi_idx9, align 4
  %idxprom10 = zext i32 %7 to i64
  %bv_page12 = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom10, i32 0
  %8 = load %struct.page*, %struct.page** %bv_page12, align 8
  %bv_offset18 = getelementptr %struct.bio_vec, %struct.bio_vec* %6, i64 %idxprom10, i32 2
  %9 = load i32, i32* %bv_offset18, align 4
  %bi_bvec_done20 = getelementptr inbounds %struct.bio, %struct.bio* %b, i64 0, i32 8, i32 3
  %10 = load i32, i32* %bi_bvec_done20, align 8
  %add21 = add i32 %10, %9
  %11 = lshr i32 %add21, 12
  %div23 = zext i32 %11 to i64
  %add.ptr24 = getelementptr %struct.page, %struct.page* %8, i64 %div23
  %cmp = icmp eq %struct.page* %add.ptr, %add.ptr24
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = xor i32 %add21, %add
  %13 = and i32 %12, 4095
  %cmp47 = icmp eq i32 %13, 0
  br i1 %cmp47, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @blk_try_merge(%struct.request* nocapture noundef readonly %rq, %struct.bio* nocapture noundef readonly %bio) local_unnamed_addr #5 {
entry:
  %call = call fastcc i1 @blk_discard_mergable(%struct.request* noundef %rq) #16
  br i1 %call, label %return, label %if.else

if.else:                                          ; preds = %entry
  %call1 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %rq) #16
  %call2 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %rq) #16
  %conv = zext i32 %call2 to i64
  %add = add i64 %call1, %conv
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %0 = load i64, i64* %bi_sector, align 8
  %cmp = icmp eq i64 %add, %0
  br i1 %cmp, label %return, label %if.else5

if.else5:                                         ; preds = %if.else
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %1, 9
  %conv8 = zext i32 %shr to i64
  %sub = sub i64 %call1, %conv8
  %cmp11 = icmp eq i64 %sub, %0
  %. = zext i1 %cmp11 to i32
  br label %return

return:                                           ; preds = %if.else5, %if.else, %entry
  %retval.0 = phi i32 [ 3, %entry ], [ 2, %if.else ], [ %., %if.else5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_discard_mergable(%struct.request* nocapture noundef readonly %req) unnamed_addr #5 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %call = call fastcc i16 @queue_max_discard_segments(%struct.request_queue* noundef %1) #16
  %cmp1 = icmp ugt i16 %call, 1
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_attempt_plug_merge(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, i32 noundef %nr_segs, %struct.request** noundef writeonly %same_queue_rq) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.blk_plug* @blk_mq_plug() #16
  %tobool.not = icmp eq %struct.blk_plug* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mq_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %call, i64 0, i32 0
  %prev = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %call, i64 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  %.pn41 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn41 to %struct.list_head*
  %cmp.not44 = icmp eq %struct.list_head* %mq_list, %1
  br i1 %cmp.not44, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %tobool3 = icmp ne %struct.request** %same_queue_rq, null
  %2 = bitcast %struct.request** %same_queue_rq to i8**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn45 = phi i8* [ %.pn41, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %rq.0.in46 = getelementptr i8, i8* %.pn45, i64 -72
  %rq.047 = bitcast i8* %rq.0.in46 to %struct.request*
  %q1 = bitcast i8* %rq.0.in46 to %struct.request_queue**
  %3 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %cmp2 = icmp eq %struct.request_queue* %3, %q
  %or.cond = and i1 %tobool3, %cmp2
  br i1 %or.cond, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  store i8* %rq.0.in46, i8** %2, align 8
  %.pre = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body
  %4 = phi %struct.request_queue* [ %.pre, %if.then4 ], [ %3, %for.body ]
  %cmp7.not = icmp eq %struct.request_queue* %4, %q
  br i1 %cmp7.not, label %if.end9, label %for.inc

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.047, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef false) #16
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end9, %if.end5
  %prev16 = getelementptr inbounds i8, i8* %.pn45, i64 8
  %5 = bitcast i8* %prev16 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %mq_list, %6
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end9, %for.inc, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ true, %if.end9 ], [ false, %for.inc ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.blk_plug* @blk_mq_plug() unnamed_addr #11 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !14
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %plug = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 109
  %2 = load %struct.blk_plug*, %struct.blk_plug** %plug, align 8
  ret %struct.blk_plug* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef %sched_allow_merge) unnamed_addr #0 {
entry:
  %call = call i1 @blk_rq_merge_ok(%struct.request* noundef %rq, %struct.bio* noundef %bio) #16
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @blk_try_merge(%struct.request* noundef %rq, %struct.bio* noundef %bio) #16
  switch i32 %call1, label %return [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
    i32 3, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  br i1 %sched_allow_merge, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %sw.bb
  %call2 = call fastcc i1 @blk_mq_sched_allow_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.bio* noundef %bio) #16
  br i1 %call2, label %if.then3, label %return

if.then3:                                         ; preds = %lor.lhs.false, %sw.bb
  %call4 = call fastcc i32 @bio_attempt_back_merge(%struct.request* noundef %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs) #16
  br label %return

sw.bb6:                                           ; preds = %if.end
  br i1 %sched_allow_merge, label %lor.lhs.false8, label %if.then10

lor.lhs.false8:                                   ; preds = %sw.bb6
  %call9 = call fastcc i1 @blk_mq_sched_allow_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.bio* noundef %bio) #16
  br i1 %call9, label %if.then10, label %return

if.then10:                                        ; preds = %lor.lhs.false8, %sw.bb6
  %call11 = call fastcc i32 @bio_attempt_front_merge(%struct.request* noundef %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs) #16
  br label %return

sw.bb13:                                          ; preds = %if.end
  %call14 = call fastcc i32 @bio_attempt_discard_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.bio* noundef %bio) #16
  br label %return

return:                                           ; preds = %lor.lhs.false, %lor.lhs.false8, %if.end, %entry, %sw.bb13, %if.then10, %if.then3
  %retval.0 = phi i32 [ %call14, %sw.bb13 ], [ %call11, %if.then10 ], [ %call4, %if.then3 ], [ 1, %entry ], [ 1, %if.end ], [ 2, %lor.lhs.false8 ], [ 2, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_bio_list_merge(%struct.request_queue* noundef %q, %struct.list_head* noundef readonly %list, %struct.bio* noundef %bio, i32 noundef %nr_segs) local_unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  %.pn19 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn19 to %struct.list_head*
  %cmp.not22 = icmp eq %struct.list_head* %1, %list
  br i1 %cmp.not22, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %rq.025.in = getelementptr i8, i8* %.pn19, i64 -72
  %rq.025 = bitcast i8* %rq.025.in to %struct.request*
  %call = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.025, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef true) #16
  switch i32 %call, label %for.inc [
    i32 2, label %cleanup.loopexit28
    i32 0, label %cleanup
  ]

for.inc:                                          ; preds = %for.body.preheader
  %prev5 = getelementptr inbounds i8, i8* %.pn19, i64 8
  %2 = bitcast i8* %prev5 to i8**
  %.pn = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %3, %list
  br i1 %cmp.not, label %cleanup, label %for.body.1

for.body.1:                                       ; preds = %for.inc
  %rq.025.in.1 = getelementptr i8, i8* %.pn, i64 -72
  %rq.025.1 = bitcast i8* %rq.025.in.1 to %struct.request*
  %call.1 = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.025.1, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef true) #16
  switch i32 %call.1, label %for.inc.1 [
    i32 2, label %cleanup.loopexit28
    i32 0, label %cleanup
  ]

for.inc.1:                                        ; preds = %for.body.1
  %prev5.1 = getelementptr inbounds i8, i8* %.pn, i64 8
  %4 = bitcast i8* %prev5.1 to i8**
  %.pn.1 = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn.1 to %struct.list_head*
  %cmp.not.1 = icmp eq %struct.list_head* %5, %list
  br i1 %cmp.not.1, label %cleanup, label %for.body.2

for.body.2:                                       ; preds = %for.inc.1
  %rq.025.in.2 = getelementptr i8, i8* %.pn.1, i64 -72
  %rq.025.2 = bitcast i8* %rq.025.in.2 to %struct.request*
  %call.2 = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.025.2, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef true) #16
  switch i32 %call.2, label %for.inc.2 [
    i32 2, label %cleanup.loopexit28
    i32 0, label %cleanup
  ]

for.inc.2:                                        ; preds = %for.body.2
  %prev5.2 = getelementptr inbounds i8, i8* %.pn.1, i64 8
  %6 = bitcast i8* %prev5.2 to i8**
  %.pn.2 = load i8*, i8** %6, align 8
  %7 = bitcast i8* %.pn.2 to %struct.list_head*
  %cmp.not.2 = icmp eq %struct.list_head* %7, %list
  br i1 %cmp.not.2, label %cleanup, label %for.body.3

for.body.3:                                       ; preds = %for.inc.2
  %rq.025.in.3 = getelementptr i8, i8* %.pn.2, i64 -72
  %rq.025.3 = bitcast i8* %rq.025.in.3 to %struct.request*
  %call.3 = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.025.3, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef true) #16
  switch i32 %call.3, label %for.inc.3 [
    i32 2, label %cleanup.loopexit28
    i32 0, label %cleanup
  ]

for.inc.3:                                        ; preds = %for.body.3
  %prev5.3 = getelementptr inbounds i8, i8* %.pn.2, i64 8
  %8 = bitcast i8* %prev5.3 to i8**
  %.pn.3 = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn.3 to %struct.list_head*
  %cmp.not.3 = icmp eq %struct.list_head* %9, %list
  br i1 %cmp.not.3, label %cleanup, label %for.body.4

for.body.4:                                       ; preds = %for.inc.3
  %rq.025.in.4 = getelementptr i8, i8* %.pn.3, i64 -72
  %rq.025.4 = bitcast i8* %rq.025.in.4 to %struct.request*
  %call.4 = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.025.4, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef true) #16
  switch i32 %call.4, label %for.inc.4 [
    i32 2, label %cleanup.loopexit28
    i32 0, label %cleanup
  ]

for.inc.4:                                        ; preds = %for.body.4
  %prev5.4 = getelementptr inbounds i8, i8* %.pn.3, i64 8
  %10 = bitcast i8* %prev5.4 to i8**
  %.pn.4 = load i8*, i8** %10, align 8
  %11 = bitcast i8* %.pn.4 to %struct.list_head*
  %cmp.not.4 = icmp eq %struct.list_head* %11, %list
  br i1 %cmp.not.4, label %cleanup, label %for.body.5

for.body.5:                                       ; preds = %for.inc.4
  %rq.025.in.5 = getelementptr i8, i8* %.pn.4, i64 -72
  %rq.025.5 = bitcast i8* %rq.025.in.5 to %struct.request*
  %call.5 = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.025.5, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef true) #16
  switch i32 %call.5, label %for.inc.5 [
    i32 2, label %cleanup.loopexit28
    i32 0, label %cleanup
  ]

for.inc.5:                                        ; preds = %for.body.5
  %prev5.5 = getelementptr inbounds i8, i8* %.pn.4, i64 8
  %12 = bitcast i8* %prev5.5 to i8**
  %.pn.5 = load i8*, i8** %12, align 8
  %13 = bitcast i8* %.pn.5 to %struct.list_head*
  %cmp.not.5 = icmp eq %struct.list_head* %13, %list
  br i1 %cmp.not.5, label %cleanup, label %for.body.6

for.body.6:                                       ; preds = %for.inc.5
  %rq.025.in.6 = getelementptr i8, i8* %.pn.5, i64 -72
  %rq.025.6 = bitcast i8* %rq.025.in.6 to %struct.request*
  %call.6 = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.025.6, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef true) #16
  switch i32 %call.6, label %for.inc.6 [
    i32 2, label %cleanup.loopexit28
    i32 0, label %cleanup
  ]

for.inc.6:                                        ; preds = %for.body.6
  %prev5.6 = getelementptr inbounds i8, i8* %.pn.5, i64 8
  %14 = bitcast i8* %prev5.6 to i8**
  %.pn.6 = load i8*, i8** %14, align 8
  %15 = bitcast i8* %.pn.6 to %struct.list_head*
  %cmp.not.6 = icmp eq %struct.list_head* %15, %list
  br i1 %cmp.not.6, label %cleanup, label %for.body.7

for.body.7:                                       ; preds = %for.inc.6
  %rq.025.in.7 = getelementptr i8, i8* %.pn.6, i64 -72
  %rq.025.7 = bitcast i8* %rq.025.in.7 to %struct.request*
  %call.7 = call fastcc i32 @blk_attempt_bio_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq.025.7, %struct.bio* noundef %bio, i32 noundef %nr_segs, i1 noundef true) #16
  %switch.selectcmp = icmp eq i32 %call.7, 0
  br label %cleanup

cleanup.loopexit28:                               ; preds = %for.body.6, %for.body.5, %for.body.4, %for.body.3, %for.body.2, %for.body.1, %for.body.preheader
  br label %cleanup

cleanup:                                          ; preds = %for.body.7, %entry, %for.inc.6, %for.body.6, %for.inc.5, %for.body.5, %for.inc.4, %for.body.4, %for.inc.3, %for.body.3, %for.inc.2, %for.body.2, %for.inc.1, %for.body.1, %for.body.preheader, %for.inc, %cleanup.loopexit28
  %retval.0 = phi i1 [ false, %cleanup.loopexit28 ], [ false, %entry ], [ false, %for.inc ], [ true, %for.body.preheader ], [ true, %for.body.1 ], [ false, %for.inc.1 ], [ true, %for.body.2 ], [ false, %for.inc.2 ], [ true, %for.body.3 ], [ false, %for.inc.3 ], [ true, %for.body.4 ], [ false, %for.inc.4 ], [ true, %for.body.5 ], [ false, %for.inc.5 ], [ true, %for.body.6 ], [ false, %for.inc.6 ], [ %switch.selectcmp, %for.body.7 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_mq_sched_try_merge(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, i32 noundef %nr_segs, %struct.request** nocapture noundef writeonly %merged_request) local_unnamed_addr #0 {
entry:
  %rq = alloca %struct.request*, align 8
  %0 = bitcast %struct.request** %rq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store %struct.request* null, %struct.request** %rq, align 8, !annotation !9
  %call = call i32 @elv_merge(%struct.request_queue* noundef %q, %struct.request** noundef nonnull %rq, %struct.bio* noundef %bio) #17
  switch i32 %call, label %cleanup [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.request*, %struct.request** %rq, align 8
  %call1 = call fastcc i1 @blk_mq_sched_allow_merge(%struct.request_queue* noundef %q, %struct.request* noundef %1, %struct.bio* noundef %bio) #16
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb
  %2 = load %struct.request*, %struct.request** %rq, align 8
  %call2 = call fastcc i32 @bio_attempt_back_merge(%struct.request* noundef %2, %struct.bio* noundef %bio, i32 noundef %nr_segs) #16
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load %struct.request*, %struct.request** %rq, align 8
  %call5 = call fastcc %struct.request* @attempt_back_merge(%struct.request_queue* noundef %q, %struct.request* noundef %3) #16
  store %struct.request* %call5, %struct.request** %merged_request, align 8
  %tobool.not = icmp eq %struct.request* %call5, null
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  %4 = load %struct.request*, %struct.request** %rq, align 8
  call void @elv_merged_request(%struct.request_queue* noundef %q, %struct.request* noundef %4, i32 noundef 2) #17
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %5 = load %struct.request*, %struct.request** %rq, align 8
  %call9 = call fastcc i1 @blk_mq_sched_allow_merge(%struct.request_queue* noundef %q, %struct.request* noundef %5, %struct.bio* noundef %bio) #16
  br i1 %call9, label %if.end11, label %cleanup

if.end11:                                         ; preds = %sw.bb8
  %6 = load %struct.request*, %struct.request** %rq, align 8
  %call12 = call fastcc i32 @bio_attempt_front_merge(%struct.request* noundef %6, %struct.bio* noundef %bio, i32 noundef %nr_segs) #16
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end11
  %7 = load %struct.request*, %struct.request** %rq, align 8
  %call16 = call fastcc %struct.request* @attempt_front_merge(%struct.request_queue* noundef %q, %struct.request* noundef %7) #16
  store %struct.request* %call16, %struct.request** %merged_request, align 8
  %tobool17.not = icmp eq %struct.request* %call16, null
  br i1 %tobool17.not, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.end15
  %8 = load %struct.request*, %struct.request** %rq, align 8
  call void @elv_merged_request(%struct.request_queue* noundef %q, %struct.request* noundef %8, i32 noundef 1) #17
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %9 = load %struct.request*, %struct.request** %rq, align 8
  %call21 = call fastcc i32 @bio_attempt_discard_merge(%struct.request_queue* noundef %q, %struct.request* noundef %9, %struct.bio* noundef %bio) #16
  %cmp22 = icmp eq i32 %call21, 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15, %if.then18, %if.end11, %sw.bb8, %if.end4, %if.then6, %if.end, %sw.bb, %sw.bb20
  %retval.0 = phi i1 [ %cmp22, %sw.bb20 ], [ false, %sw.bb ], [ false, %if.end ], [ true, %if.then6 ], [ true, %if.end4 ], [ false, %sw.bb8 ], [ false, %if.end11 ], [ true, %if.then18 ], [ true, %if.end15 ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_merge(%struct.request_queue* noundef, %struct.request** noundef, %struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_sched_allow_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %0, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %allow_merge = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 1, i32 5
  %2 = load i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)** %allow_merge, align 8
  %tobool1.not = icmp eq i1 (%struct.request_queue*, %struct.request*, %struct.bio*)* %2, null
  br i1 %tobool1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i1 %2(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.bio* noundef %bio) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ true, %land.lhs.true ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_attempt_back_merge(%struct.request* noundef %req, %struct.bio* noundef %bio, i32 noundef %nr_segs) unnamed_addr #0 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %call = call i32 @ll_back_merge_fn(%struct.request* noundef %req, %struct.bio* noundef %bio, i32 noundef %nr_segs) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  call fastcc void @rq_qos_merge(%struct.request_queue* noundef %1, %struct.request* noundef %req, %struct.bio* noundef %bio) #16
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %2 = load i32, i32* %cmd_flags, align 8
  %3 = xor i32 %2, %0
  %4 = and i32 %3, 1792
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @blk_rq_set_mixed_merge(%struct.request* noundef %req) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %biotail = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 10
  %5 = load %struct.bio*, %struct.bio** %biotail, align 8
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %5, i64 0, i32 0
  store %struct.bio* %bio, %struct.bio** %bi_next, align 8
  store %struct.bio* %bio, %struct.bio** %biotail, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %6 = load i32, i32* %bi_size, align 8
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 7
  %7 = load i32, i32* %__data_len, align 8
  %add = add i32 %7, %6
  store i32 %add, i32* %__data_len, align 8
  call fastcc void @blk_account_io_merge_bio(%struct.request* noundef %req) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.request* @attempt_back_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %call = call %struct.request* @elv_latter_request(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #17
  %tobool.not = icmp eq %struct.request* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.request* @attempt_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq, %struct.request* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.request* [ %call1, %if.then ], [ null, %entry ]
  ret %struct.request* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_merged_request(%struct.request_queue* noundef, %struct.request* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_attempt_front_merge(%struct.request* noundef %req, %struct.bio* noundef %bio, i32 noundef %nr_segs) unnamed_addr #0 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %call = call fastcc i32 @ll_front_merge_fn(%struct.request* noundef %req, %struct.bio* noundef %bio, i32 noundef %nr_segs) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  call fastcc void @rq_qos_merge(%struct.request_queue* noundef %1, %struct.request* noundef %req, %struct.bio* noundef %bio) #16
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %2 = load i32, i32* %cmd_flags, align 8
  %3 = xor i32 %2, %0
  %4 = and i32 %3, 1792
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @blk_rq_set_mixed_merge(%struct.request* noundef %req) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %bio8 = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 9
  %5 = load %struct.bio*, %struct.bio** %bio8, align 8
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 0
  store %struct.bio* %5, %struct.bio** %bi_next, align 8
  store %struct.bio* %bio, %struct.bio** %bio8, align 8
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %6 = load i64, i64* %bi_sector, align 8
  %__sector = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 8
  store i64 %6, i64* %__sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %7 = load i32, i32* %bi_size, align 8
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 7
  %8 = load i32, i32* %__data_len, align 8
  %add = add i32 %8, %7
  store i32 %add, i32* %__data_len, align 8
  call fastcc void @blk_account_io_merge_bio(%struct.request* noundef %req) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.request* @attempt_front_merge(%struct.request_queue* noundef %q, %struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %call = call %struct.request* @elv_former_request(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #17
  %tobool.not = icmp eq %struct.request* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.request* @attempt_merge(%struct.request_queue* noundef %q, %struct.request* noundef nonnull %call, %struct.request* noundef %rq) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.request* [ %call1, %if.then ], [ null, %entry ]
  ret %struct.request* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bio_attempt_discard_merge(%struct.request_queue* nocapture noundef %q, %struct.request* noundef %req, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %call = call fastcc i16 @blk_rq_nr_discard_segments(%struct.request* noundef %req) #16
  %call1 = call fastcc i16 @queue_max_discard_segments(%struct.request_queue* noundef %q) #16
  %cmp.not = icmp ult i16 %call, %call1
  br i1 %cmp.not, label %if.end, label %no_merge

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %req) #16
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %0, 9
  %add = add i32 %shr, %call4
  %call5 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %req) #16
  %call6 = call fastcc i32 @blk_rq_get_max_sectors(%struct.request* noundef %req, i64 noundef %call5) #16
  %cmp7 = icmp ugt i32 %add, %call6
  br i1 %cmp7, label %no_merge, label %if.end10

if.end10:                                         ; preds = %if.end
  call fastcc void @rq_qos_merge(%struct.request_queue* noundef %q, %struct.request* noundef %req, %struct.bio* noundef %bio) #16
  %biotail = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 10
  %1 = load %struct.bio*, %struct.bio** %biotail, align 8
  %bi_next = getelementptr inbounds %struct.bio, %struct.bio* %1, i64 0, i32 0
  store %struct.bio* %bio, %struct.bio** %bi_next, align 8
  store %struct.bio* %bio, %struct.bio** %biotail, align 8
  %2 = load i32, i32* %bi_size, align 8
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 7
  %3 = load i32, i32* %__data_len, align 8
  %add14 = add i32 %3, %2
  store i32 %add14, i32* %__data_len, align 8
  %add16 = add nuw i16 %call, 1
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 20
  store i16 %add16, i16* %nr_phys_segments, align 2
  call fastcc void @blk_account_io_merge_bio(%struct.request* noundef %req) #16
  br label %cleanup

no_merge:                                         ; preds = %if.end, %entry
  call fastcc void @req_set_nomerge(%struct.request_queue* noundef %q, %struct.request* noundef %req) #16
  br label %cleanup

cleanup:                                          ; preds = %no_merge, %if.end10
  %retval.0 = phi i32 [ 2, %no_merge ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @bio_allowed_max_sectors(%struct.request_queue* noundef %q) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %q) #16
  %neg = sub i32 0, %call
  %shr = lshr i32 %neg, 9
  ret i32 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.bio* @bio_split(%struct.bio* noundef, i32 noundef, i32 noundef, %struct.bio_set* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef readonly %q) unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_max_io_size(%struct.request_queue* noundef %q, %struct.bio* nocapture noundef readonly %bio) unnamed_addr #9 {
entry:
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %0 = load i64, i64* %bi_sector, align 8
  %call = call fastcc i32 @blk_max_size_offset(%struct.request_queue* noundef %q, i64 noundef %0) #16
  %call1 = call fastcc i32 @queue_physical_block_size(%struct.request_queue* noundef %q) #16
  %shr = lshr i32 %call1, 9
  %call2 = call fastcc i32 @queue_logical_block_size(%struct.request_queue* noundef %q) #16
  %sub = add nsw i32 %shr, -1
  %1 = trunc i64 %0 to i32
  %conv6 = and i32 %sub, %1
  %add = add i32 %conv6, %call
  %neg = sub nsw i32 0, %shr
  %and8 = and i32 %add, %neg
  %cmp = icmp ugt i32 %and8, %conv6
  %sub10 = sub i32 %and8, %conv6
  %shr3 = lshr i32 %call2, 9
  %neg12 = sub nsw i32 0, %shr3
  %and13 = and i32 %call, %neg12
  %retval.0 = select i1 %cmp, i32 %sub10, i32 %and13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @queue_max_segments(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %max_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 21
  %0 = load i16, i16* %max_segments, align 8
  ret i16 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bvec_gap_to_prev(%struct.request_queue* nocapture noundef readonly %q, %struct.bio_vec* nocapture noundef readonly %bprv, i32 noundef %offset) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @queue_virt_boundary(%struct.request_queue* noundef %q) #16
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @__bvec_gap_to_prev(%struct.request_queue* noundef %q, %struct.bio_vec* noundef %bprv, i32 noundef %offset) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call1, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_hipri(%struct.bio* nocapture noundef %bio) unnamed_addr #8 {
entry:
  call fastcc void @bio_clear_flag(%struct.bio* noundef %bio) #16
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %1 = and i32 %0, -16777217
  store i32 %1, i32* %bi_opf, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_max_size_offset(%struct.request_queue* nocapture noundef readonly %q, i64 noundef %offset) unnamed_addr #9 {
entry:
  %chunk_sectors1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 5
  %0 = load i32, i32* %chunk_sectors1, align 8
  %tobool2.not = icmp eq i32 %0, 0
  br i1 %tobool2.not, label %if.else, label %if.end7

if.else:                                          ; preds = %entry
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %1 = load i32, i32* %max_sectors, align 4
  br label %return

if.end7:                                          ; preds = %entry
  %conv = zext i32 %0 to i64
  %call = call fastcc i1 @is_power_of_2(i64 noundef %conv) #20
  br i1 %call, label %if.then11, label %if.else16, !prof !15

if.then11:                                        ; preds = %if.end7
  %sub = add i32 %0, -1
  %2 = trunc i64 %offset to i32
  %3 = and i32 %sub, %2
  br label %if.end21

if.else16:                                        ; preds = %if.end7
  %rem = urem i64 %offset, %conv
  %conv18 = trunc i64 %rem to i32
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then11
  %.pn = phi i32 [ %3, %if.then11 ], [ %conv18, %if.else16 ]
  %chunk_sectors.addr.1 = sub i32 %0, %.pn
  %max_sectors23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %4 = load i32, i32* %max_sectors23, align 4
  %cmp = icmp ult i32 %4, %chunk_sectors.addr.1
  %cond = select i1 %cmp, i32 %4, i32 %chunk_sectors.addr.1
  br label %return

return:                                           ; preds = %if.end21, %if.else
  %retval.0 = phi i32 [ %cond, %if.end21 ], [ %1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_physical_block_size(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %physical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 8
  %0 = load i32, i32* %physical_block_size, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !16
  %cmp1 = icmp ult i64 %0, 2
  ret i1 %cmp1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @queue_virt_boundary(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %virt_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 2
  %0 = load i64, i64* %virt_boundary_mask, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__bvec_gap_to_prev(%struct.request_queue* nocapture noundef readonly %q, %struct.bio_vec* nocapture noundef readonly %bprv, i32 noundef %offset) unnamed_addr #5 {
entry:
  %conv = zext i32 %offset to i64
  %call = call fastcc i64 @queue_virt_boundary(%struct.request_queue* noundef %q) #16
  %and = and i64 %call, %conv
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bprv, i64 0, i32 2
  %0 = load i32, i32* %bv_offset, align 4
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bprv, i64 0, i32 1
  %1 = load i32, i32* %bv_len, align 8
  %add = add i32 %1, %0
  %conv1 = zext i32 %add to i64
  %and3 = and i64 %call, %conv1
  %tobool4 = icmp ne i64 %and3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool4, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_clear_flag(%struct.bio* nocapture noundef %bio) unnamed_addr #8 {
entry:
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = and i16 %0, -8193
  store i16 %1, i16* %bi_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_max_segment_size(%struct.request_queue* nocapture noundef readonly %q, %struct.page* noundef %start_page, i64 noundef %offset) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @queue_segment_boundary(%struct.request_queue* noundef %q) #16
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %start_page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %add = add i64 %shl, %offset
  %add.not = xor i64 %add, -1
  %sub = and i64 %call, %add.not
  %add1 = add i64 %sub, 1
  %call2 = call fastcc i32 @queue_max_segment_size(%struct.request_queue* noundef %q) #16
  %conv = zext i32 %call2 to i64
  %cmp = icmp eq i64 %add1, 0
  br i1 %cmp, label %cond.end15, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp4 = icmp eq i32 %call2, 0
  br i1 %cmp4, label %cond.end15, label %cond.false7

cond.false7:                                      ; preds = %cond.false
  %cmp9 = icmp ult i64 %add1, %conv
  %cond = select i1 %cmp9, i64 %add1, i64 %conv
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false, %entry, %cond.false7
  %cond16 = phi i64 [ %cond, %cond.false7 ], [ %conv, %entry ], [ %add1, %cond.false ]
  %conv17 = trunc i64 %cond16 to i32
  ret i32 %conv17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @queue_segment_boundary(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %seg_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 1
  %0 = load i64, i64* %seg_boundary_mask, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_segment_size(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %max_segment_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 7
  %0 = load i32, i32* %max_segment_size, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_no_advance_iter(%struct.bio* nocapture noundef readonly %bio) unnamed_addr #5 {
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
define internal fastcc void @bvec_iter_advance_single(%struct.bio_vec* nocapture noundef readonly %bv, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #8 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.scatterlist* @blk_next_sg(%struct.scatterlist** nocapture noundef readonly %sg, %struct.scatterlist* noundef readnone %sglist) unnamed_addr #0 {
entry:
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8
  %tobool.not = icmp eq %struct.scatterlist* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @sg_unmark_end(%struct.scatterlist* noundef nonnull %0) #16
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* noundef %1) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.scatterlist* [ %call, %if.end ], [ %sglist, %entry ]
  ret %struct.scatterlist* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_set_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page, i32 noundef %len, i32 noundef %offset) unnamed_addr #0 {
entry:
  call fastcc void @sg_assign_page(%struct.scatterlist* noundef %sg, %struct.page* noundef %page) #16
  %offset1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 1
  store i32 %offset, i32* %offset1, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 2
  store i32 %len, i32* %length, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sg_unmark_end(%struct.scatterlist* nocapture noundef %sg) unnamed_addr #8 {
entry:
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = load i64, i64* %page_link, align 8
  %and = and i64 %0, -3
  store i64 %and, i64* %page_link, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sg_assign_page(%struct.scatterlist* nocapture noundef %sg, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %page_link1 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %sg, i64 0, i32 0
  %0 = ptrtoint %struct.page* %page to i64
  %and2 = and i64 %0, 3
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !15

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/scatterlist.h\22; .popsection; .long 14472b - 14470b; .short 95; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !17
  unreachable

do.end10:                                         ; preds = %entry
  %1 = load i64, i64* %page_link1, align 8
  %and = and i64 %1, 3
  %or = or i64 %and, %0
  store i64 %or, i64* %page_link1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__blk_segment_map_sg_merge(%struct.request_queue* nocapture noundef readonly %q, %struct.bio_vec* nocapture noundef readonly %bvec, %struct.bio_vec* nocapture noundef readonly %bvprv, %struct.scatterlist** nocapture noundef readonly %sg) unnamed_addr #8 {
entry:
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8
  %tobool.not = icmp eq %struct.scatterlist* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 1
  %1 = load i32, i32* %bv_len, align 8
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i64 0, i32 2
  %2 = load i32, i32* %length, align 4
  %add = add i32 %2, %1
  %call = call fastcc i32 @queue_max_segment_size(%struct.request_queue* noundef %q) #16
  %cmp = icmp ugt i32 %add, %call
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i1 @biovec_phys_mergeable(%struct.request_queue* noundef %q, %struct.bio_vec* noundef %bvprv, %struct.bio_vec* noundef %bvec) #16
  br i1 %call3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end2
  store i32 %add, i32* %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.end5
  %retval.0 = phi i1 [ true, %if.end5 ], [ false, %entry ], [ false, %if.end ], [ false, %if.end2 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_bvec_map_sg(%struct.request_queue* nocapture noundef readonly %q, %struct.bio_vec* nocapture noundef readonly %bvec, %struct.scatterlist* noundef %sglist, %struct.scatterlist** nocapture noundef %sg) unnamed_addr #0 {
entry:
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 1
  %0 = load i32, i32* %bv_len, align 8
  %cmp.not33 = icmp eq i32 %0, 0
  br i1 %cmp.not33, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 2
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bvec, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %nbytes.036 = phi i32 [ %0, %while.body.lr.ph ], [ %sub, %while.body ]
  %nsegs.035 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body ]
  %total.034 = phi i32 [ 0, %while.body.lr.ph ], [ %add7, %while.body ]
  %1 = load i32, i32* %bv_offset, align 4
  %add = add i32 %1, %total.034
  %2 = load %struct.page*, %struct.page** %bv_page, align 8
  %conv = zext i32 %add to i64
  %call = call fastcc i32 @get_max_segment_size(%struct.request_queue* noundef %q, %struct.page* noundef %2, i64 noundef %conv) #16
  %cmp1 = icmp ult i32 %call, %nbytes.036
  %cond = select i1 %cmp1, i32 %call, i32 %nbytes.036
  %shr = lshr i32 %add, 12
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr %struct.page, %struct.page* %2, i64 %idx.ext
  %and = and i32 %add, 4095
  %call6 = call fastcc %struct.scatterlist* @blk_next_sg(%struct.scatterlist** noundef %sg, %struct.scatterlist* noundef %sglist) #16
  store %struct.scatterlist* %call6, %struct.scatterlist** %sg, align 8
  call fastcc void @sg_set_page(%struct.scatterlist* noundef %call6, %struct.page* noundef %add.ptr, i32 noundef %cond, i32 noundef %and) #16
  %add7 = add i32 %cond, %total.034
  %sub = sub i32 %nbytes.036, %cond
  %inc = add i32 %nsegs.035, 1
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %nsegs.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  ret i32 %nsegs.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @biovec_phys_mergeable(%struct.request_queue* nocapture noundef readonly %q, %struct.bio_vec* nocapture noundef readonly %vec1, %struct.bio_vec* nocapture noundef readonly %vec2) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @queue_segment_boundary(%struct.request_queue* noundef %q) #16
  %bv_page = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %vec1, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %bv_page, align 8
  %1 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %1, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %vec1, i64 0, i32 2
  %2 = load i32, i32* %bv_offset, align 4
  %conv = zext i32 %2 to i64
  %add = add i64 %shl, %conv
  %bv_page1 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %vec2, i64 0, i32 0
  %3 = load %struct.page*, %struct.page** %bv_page1, align 8
  %sub.ptr.lhs.cast5 = ptrtoint %struct.page* %3 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast
  %shl9 = shl i64 %sub.ptr.sub7, 6
  %bv_offset10 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %vec2, i64 0, i32 2
  %4 = load i32, i32* %bv_offset10, align 4
  %conv11 = zext i32 %4 to i64
  %add12 = add i64 %shl9, %conv11
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %vec1, i64 0, i32 1
  %5 = load i32, i32* %bv_len, align 8
  %conv13 = zext i32 %5 to i64
  %add14 = add i64 %add, %conv13
  %cmp.not = icmp eq i64 %add14, %add12
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %or = or i64 %add, %call
  %bv_len16 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %vec2, i64 0, i32 1
  %6 = load i32, i32* %bv_len16, align 8
  %conv17 = zext i32 %6 to i64
  %add18 = add i64 %add12, -1
  %sub = add i64 %add18, %conv17
  %or19 = or i64 %sub, %call
  %cmp20.not = icmp eq i64 %or, %or19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp20.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bio_will_gap(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef readonly %prev_rq, %struct.bio* noundef %prev, %struct.bio* nocapture noundef readonly %next) unnamed_addr #0 {
entry:
  %pb = alloca %struct.bio_vec, align 8
  %nb = alloca %struct.bio_vec, align 8
  %0 = bitcast %struct.bio_vec* %pb to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %1 = bitcast %struct.bio_vec* %nb to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !9
  %call = call fastcc i1 @bio_has_data(%struct.bio* noundef %prev) #16
  br i1 %call, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i64 @queue_virt_boundary(%struct.request_queue* noundef %q) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq %struct.request* %prev_rq, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %bio = getelementptr inbounds %struct.request, %struct.request* %prev_rq, i64 0, i32 9
  %2 = load %struct.bio*, %struct.bio** %bio, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %prev.sink = phi %struct.bio* [ %2, %if.then3 ], [ %prev, %if.end ]
  call fastcc void @bio_get_first_bvec(%struct.bio* noundef %prev.sink, %struct.bio_vec* noundef nonnull %pb) #16
  %bv_offset = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %pb, i64 0, i32 2
  %3 = load i32, i32* %bv_offset, align 4
  %conv = zext i32 %3 to i64
  %call5 = call fastcc i64 @queue_virt_boundary(%struct.request_queue* noundef %q) #16
  %and = and i64 %call5, %conv
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  call fastcc void @bio_get_last_bvec(%struct.bio* noundef %prev, %struct.bio_vec* noundef nonnull %pb) #16
  call fastcc void @bio_get_first_bvec(%struct.bio* noundef %next, %struct.bio_vec* noundef nonnull %nb) #16
  %call9 = call fastcc i1 @biovec_phys_mergeable(%struct.request_queue* noundef %q, %struct.bio_vec* noundef nonnull %pb, %struct.bio_vec* noundef nonnull %nb) #16
  br i1 %call9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  %bv_offset12 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %nb, i64 0, i32 2
  %4 = load i32, i32* %bv_offset12, align 4
  %call13 = call fastcc i1 @__bvec_gap_to_prev(%struct.request_queue* noundef %q, %struct.bio_vec* noundef nonnull %pb, i32 noundef %4) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4, %entry, %lor.lhs.false, %if.end11
  %retval.0 = phi i1 [ %call13, %if.end11 ], [ false, %lor.lhs.false ], [ false, %entry ], [ true, %if.end4 ], [ false, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @bio_has_data(%struct.bio* noundef readonly %bio) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.bio* %bio, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %1 = load i32, i32* %bi_opf, align 8
  %trunc = trunc i32 %1 to i8
  %switch.tableidx = add i8 %trunc, -3
  %2 = icmp ult i8 %switch.tableidx, 7
  br i1 %2, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %land.lhs.true2
  %switch.cast = trunc i8 %switch.tableidx to i7
  %switch.downshift = lshr i7 58, %switch.cast
  %3 = and i7 %switch.downshift, 1
  %switch.masked = icmp ne i7 %3, 0
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %switch.lookup, %land.lhs.true2
  %retval.0 = phi i1 [ true, %land.lhs.true2 ], [ %switch.masked, %switch.lookup ], [ false, %land.lhs.true ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_get_first_bvec(%struct.bio* nocapture noundef readonly %bio, %struct.bio_vec* nocapture noundef writeonly %bv) unnamed_addr #8 {
entry:
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %0 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %bi_idx = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 2
  %1 = load i32, i32* %bi_idx, align 4
  %idxprom = zext i32 %1 to i64
  %bv_page1 = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 0
  %2 = load %struct.page*, %struct.page** %bv_page1, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %bv_len8 = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 1
  %4 = load i32, i32* %bv_len8, align 8
  %bi_bvec_done = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 3
  %5 = load i32, i32* %bi_bvec_done, align 8
  %sub = sub i32 %4, %5
  %cmp = icmp ult i32 %3, %sub
  %cond = select i1 %cmp, i32 %3, i32 %sub
  %bv_offset15 = getelementptr %struct.bio_vec, %struct.bio_vec* %0, i64 %idxprom, i32 2
  %6 = load i32, i32* %bv_offset15, align 4
  %add = add i32 %6, %5
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 0
  store %struct.page* %2, %struct.page** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx22 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 1
  store i32 %cond, i32* %.compoundliteral.sroa.2.0..sroa_idx22, align 8
  %.compoundliteral.sroa.3.0..sroa_idx23 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 2
  store i32 %add, i32* %.compoundliteral.sroa.3.0..sroa_idx23, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_get_last_bvec(%struct.bio* nocapture noundef readonly %bio, %struct.bio_vec* nocapture noundef %bv) unnamed_addr #0 {
entry:
  %iter = alloca %struct.bvec_iter, align 8
  %0 = bitcast %struct.bvec_iter* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #18
  %bi_iter = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8
  %1 = bitcast %struct.bvec_iter* %bi_iter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %1, i64 24, i1 false)
  call fastcc void @bio_get_first_bvec(%struct.bio* noundef %bio, %struct.bio_vec* noundef %bv) #16
  %bv_len = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %bv, i64 0, i32 1
  %2 = load i32, i32* %bv_len, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %3 = load i32, i32* %bi_size, align 8
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bi_size2 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %4 = load i32, i32* %bi_size2, align 8
  call fastcc void @bio_advance_iter(%struct.bio* noundef %bio, %struct.bvec_iter* noundef nonnull %iter, i32 noundef %4) #16
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %5 = load i32, i32* %bi_bvec_done, align 8
  %tobool.not = icmp eq i32 %5, 0
  %bi_idx4 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %6 = load i32, i32* %bi_idx4, align 4
  %sub = sext i1 %tobool.not to i32
  %idx.0 = add i32 %6, %sub
  %bi_io_vec = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 15
  %7 = load %struct.bio_vec*, %struct.bio_vec** %bi_io_vec, align 8
  %idxprom = sext i32 %idx.0 to i64
  %arrayidx = getelementptr %struct.bio_vec, %struct.bio_vec* %7, i64 %idxprom
  %8 = bitcast %struct.bio_vec* %bv to i8*
  %9 = bitcast %struct.bio_vec* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  br i1 %tobool.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end
  store i32 %5, i32* %bv_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then8, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_advance_iter(%struct.bio* nocapture noundef readonly %bio, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #0 {
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
  call fastcc void @bvec_iter_advance(%struct.bio_vec* noundef %2, %struct.bvec_iter* noundef %iter, i32 noundef %bytes) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bvec_iter_advance(%struct.bio_vec* nocapture noundef readonly %bv, %struct.bvec_iter* nocapture noundef %iter, i32 noundef %bytes) unnamed_addr #0 {
entry:
  %bi_idx = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 2
  %0 = load i32, i32* %bi_idx, align 4
  %bi_size = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %cmp = icmp ult i32 %1, %bytes
  %.b1 = load i1, i1* @bvec_iter_advance.__already_done, align 1
  %lnot3 = xor i1 %.b1, true
  %2 = select i1 %cmp, i1 %lnot3, i1 false
  br i1 %2, label %if.then, label %if.end29, !prof !8

if.then:                                          ; preds = %entry
  store i1 true, i1* @bvec_iter_advance.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/bvec.h\22; .popsection; .long 14472b - 14470b; .short 107; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !18
  br label %if.end29

if.end29:                                         ; preds = %if.then, %entry
  br i1 %cmp, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end29
  store i32 0, i32* %bi_size, align 8
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %3 = load i32, i32* %bi_size, align 8
  %sub = sub i32 %3, %bytes
  store i32 %sub, i32* %bi_size, align 8
  %bi_bvec_done = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %iter, i64 0, i32 3
  %4 = load i32, i32* %bi_bvec_done, align 8
  %add = add i32 %4, %bytes
  %tobool43.not2 = icmp eq i32 %add, 0
  br i1 %tobool43.not2, label %while.end, label %land.rhs44

land.rhs44:                                       ; preds = %if.end41, %while.body
  %bytes.addr.04 = phi i32 [ %sub51, %while.body ], [ %add, %if.end41 ]
  %idx.03 = phi i32 [ %inc, %while.body ], [ %0, %if.end41 ]
  %idxprom = zext i32 %idx.03 to i64
  %bv_len = getelementptr %struct.bio_vec, %struct.bio_vec* %bv, i64 %idxprom, i32 1
  %5 = load i32, i32* %bv_len, align 8
  %cmp45.not = icmp ult i32 %bytes.addr.04, %5
  br i1 %cmp45.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs44
  %sub51 = sub i32 %bytes.addr.04, %5
  %inc = add i32 %idx.03, 1
  %tobool43.not = icmp eq i32 %sub51, 0
  br i1 %tobool43.not, label %while.end, label %land.rhs44

while.end:                                        ; preds = %land.rhs44, %while.body, %if.end41
  %idx.0.lcssa = phi i32 [ %0, %if.end41 ], [ %inc, %while.body ], [ %idx.03, %land.rhs44 ]
  %bytes.addr.0.lcssa = phi i32 [ 0, %if.end41 ], [ 0, %while.body ], [ %bytes.addr.04, %land.rhs44 ]
  store i32 %idx.0.lcssa, i32* %bi_idx, align 4
  store i32 %bytes.addr.0.lcssa, i32* %bi_bvec_done, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_bytes(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  %0 = load i32, i32* %__data_len, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_rq_is_passthrough(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %call = call fastcc i1 @blk_op_is_passthrough(i32 noundef %and) #16
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_queue_get_max_sectors(%struct.request_queue* nocapture noundef readonly %q, i32 noundef %op) unnamed_addr #5 {
entry:
  switch i32 %op, label %if.end28 [
    i32 5, label %if.then
    i32 3, label %if.then
    i32 7, label %if.then14
    i32 9, label %if.then26
  ], !prof !19

if.then:                                          ; preds = %entry, %entry
  %max_discard_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 13
  %0 = load i32, i32* %max_discard_sectors, align 8
  %cmp3 = icmp ult i32 %0, 8388607
  %cond = select i1 %cmp3, i32 %0, i32 8388607
  br label %return

if.then14:                                        ; preds = %entry
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 15
  %1 = load i32, i32* %max_write_same_sectors, align 8
  br label %return

if.then26:                                        ; preds = %entry
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 16
  %2 = load i32, i32* %max_write_zeroes_sectors, align 4
  br label %return

if.end28:                                         ; preds = %entry
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %3 = load i32, i32* %max_sectors, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then26, %if.then14, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %1, %if.then14 ], [ %2, %if.then26 ], [ %3, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_op_is_passthrough(i32 noundef %op) unnamed_addr #10 {
entry:
  %and = and i32 %op, 254
  %0 = icmp eq i32 %and, 34
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_get_max_segments(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %cmp = icmp eq i32 %and, 3
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i16 @queue_max_discard_segments(%struct.request_queue* noundef %1) #16
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc i16 @queue_max_segments(%struct.request_queue* noundef %1) #16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0.in = phi i16 [ %call, %if.then ], [ %call2, %if.end ]
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_try_req_merge(%struct.request* nocapture noundef readonly %req, %struct.request* nocapture noundef readonly %next) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @blk_discard_mergable(%struct.request* noundef %req) #16
  br i1 %call, label %return, label %if.else

if.else:                                          ; preds = %entry
  %call1 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %req) #16
  %call2 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %req) #16
  %conv = zext i32 %call2 to i64
  %add = add i64 %call1, %conv
  %call3 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %next) #16
  %cmp = icmp eq i64 %add, %call3
  %. = select i1 %cmp, i32 2, i32 0
  br label %return

return:                                           ; preds = %if.else, %entry
  %retval.0 = phi i32 [ 3, %entry ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @req_attempt_discard_merge(%struct.request_queue* nocapture noundef %q, %struct.request* noundef %req, %struct.request* nocapture noundef readonly %next) unnamed_addr #13 {
entry:
  %call = call fastcc i16 @blk_rq_nr_discard_segments(%struct.request* noundef %req) #16
  %call1 = call fastcc i16 @queue_max_discard_segments(%struct.request_queue* noundef %q) #16
  %cmp.not = icmp ult i16 %call, %call1
  br i1 %cmp.not, label %if.end, label %no_merge

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %req) #16
  %bio = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 9
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %0, i64 0, i32 8, i32 1
  %1 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %1, 9
  %add = add i32 %shr, %call4
  %call5 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %req) #16
  %call6 = call fastcc i32 @blk_rq_get_max_sectors(%struct.request* noundef %req, i64 noundef %call5) #16
  %cmp7 = icmp ugt i32 %add, %call6
  br i1 %cmp7, label %no_merge, label %if.end10

if.end10:                                         ; preds = %if.end
  %call12 = call fastcc i16 @blk_rq_nr_discard_segments(%struct.request* noundef %next) #16
  %add14 = add i16 %call12, %call
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 20
  store i16 %add14, i16* %nr_phys_segments, align 2
  br label %cleanup

no_merge:                                         ; preds = %if.end, %entry
  call fastcc void @req_set_nomerge(%struct.request_queue* noundef %q, %struct.request* noundef %req) #16
  br label %cleanup

cleanup:                                          ; preds = %no_merge, %if.end10
  %retval.0 = phi i1 [ false, %no_merge ], [ true, %if.end10 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ll_merge_requests_fn(%struct.request* noundef %req, %struct.request* nocapture noundef readonly %next) unnamed_addr #0 {
entry:
  %bio = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 9
  %0 = load %struct.bio*, %struct.bio** %bio, align 8
  %call = call fastcc i1 @req_gap_back_merge(%struct.request* noundef %req, %struct.bio* noundef %0) #16
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %req) #16
  %call2 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %next) #16
  %add = add i32 %call2, %call1
  %call3 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %req) #16
  %call4 = call fastcc i32 @blk_rq_get_max_sectors(%struct.request* noundef %req, i64 noundef %call3) #16
  %cmp = icmp ugt i32 %add, %call4
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 20
  %1 = load i16, i16* %nr_phys_segments, align 2
  %conv = zext i16 %1 to i32
  %nr_phys_segments7 = getelementptr inbounds %struct.request, %struct.request* %next, i64 0, i32 20
  %2 = load i16, i16* %nr_phys_segments7, align 2
  %conv8 = zext i16 %2 to i32
  %add9 = add nuw nsw i32 %conv8, %conv
  %call10 = call fastcc i32 @blk_rq_get_max_segments(%struct.request* noundef %req) #16
  %cmp11 = icmp ugt i32 %add9, %call10
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end6
  %conv24 = trunc i32 %add9 to i16
  store i16 %conv24, i16* %nr_phys_segments, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry, %if.end14
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_merge_requests(%struct.request_queue* noundef, %struct.request* noundef, %struct.request* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_account_io_merge_request(%struct.request* nocapture noundef readonly %req) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_do_io_stat(%struct.request* noundef %req) #16
  br i1 %call, label %if.then, label %if.end40

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  %part = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 16
  %0 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 1
  %1 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %2 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %2, 255
  %call7 = call fastcc i32 @op_stat_group(i32 noundef %and) #16
  %3 = zext i32 %call7 to i64
  %arrayidx = getelementptr %struct.disk_stats, %struct.disk_stats* %1, i64 0, i32 3, i64 %3
  %4 = ptrtoint i64* %arrayidx to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call9, %4
  %5 = inttoptr i64 %add to i64*
  %6 = load i64, i64* %5, align 8
  %add10 = add i64 %6, 1
  store i64 %add10, i64* %5, align 8
  %7 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i64 0, i32 14
  %8 = load i8, i8* %bd_partno, align 8
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end39, label %if.then14

if.then14:                                        ; preds = %if.then
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i64 0, i32 16
  %9 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i64 0, i32 7
  %10 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_stats26 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i64 0, i32 1
  %11 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats26, align 8
  %12 = load i32, i32* %cmd_flags, align 8
  %and29 = and i32 %12, 255
  %call30 = call fastcc i32 @op_stat_group(i32 noundef %and29) #16
  %13 = zext i32 %call30 to i64
  %arrayidx32 = getelementptr %struct.disk_stats, %struct.disk_stats* %11, i64 0, i32 3, i64 %13
  %14 = ptrtoint i64* %arrayidx32 to i64
  %call34 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add35 = add i64 %call34, %14
  %15 = inttoptr i64 %add35 to i64*
  %16 = load i64, i64* %15, align 8
  %add36 = add i64 %16, 1
  store i64 %add36, i64* %15, align 8
  br label %do.end39

do.end39:                                         ; preds = %if.then, %if.then14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @blk_rq_nr_discard_segments(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 20
  %0 = load i16, i16* %nr_phys_segments, align 2
  %cmp = icmp ugt i16 %0, 1
  %cond = select i1 %cmp, i16 %0, i16 1
  ret i16 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_do_io_stat(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 15
  %0 = load %struct.gendisk*, %struct.gendisk** %rq_disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %1 = load i32, i32* %rq_flags, align 4
  %and = and i32 %1, 8192
  %tobool1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @op_stat_group(i32 noundef %op) unnamed_addr #10 {
entry:
  %call = call fastcc i1 @op_is_discard(i32 noundef %op) #16
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @op_is_write(i32 noundef %op) #16
  %conv = zext i1 %call1 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !22
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_discard(i32 noundef %op) unnamed_addr #10 {
entry:
  %and = and i32 %op, 255
  %cmp = icmp eq i32 %and, 3
  ret i1 %cmp
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_merge(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef %rq, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_merge(%struct.rq_qos* noundef nonnull %0, %struct.request* noundef %rq, %struct.bio* noundef %bio) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_account_io_merge_bio(%struct.request* nocapture noundef readonly %req) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_do_io_stat(%struct.request* noundef %req) #16
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %part = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 16
  %0 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_stats = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 1
  %1 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats, align 8
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 3
  %2 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %2, 255
  %call7 = call fastcc i32 @op_stat_group(i32 noundef %and) #16
  %3 = zext i32 %call7 to i64
  %arrayidx = getelementptr %struct.disk_stats, %struct.disk_stats* %1, i64 0, i32 3, i64 %3
  %4 = ptrtoint i64* %arrayidx to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call9, %4
  %5 = inttoptr i64 %add to i64*
  %6 = load i64, i64* %5, align 8
  %add10 = add i64 %6, 1
  store i64 %add10, i64* %5, align 8
  %7 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i64 0, i32 14
  %8 = load i8, i8* %bd_partno, align 8
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end40, label %if.then14

if.then14:                                        ; preds = %if.end
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i64 0, i32 16
  %9 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i64 0, i32 7
  %10 = load %struct.block_device*, %struct.block_device** %part0, align 8
  %bd_stats26 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i64 0, i32 1
  %11 = load %struct.disk_stats*, %struct.disk_stats** %bd_stats26, align 8
  %12 = load i32, i32* %cmd_flags, align 8
  %and29 = and i32 %12, 255
  %call30 = call fastcc i32 @op_stat_group(i32 noundef %and29) #16
  %13 = zext i32 %call30 to i64
  %arrayidx32 = getelementptr %struct.disk_stats, %struct.disk_stats* %11, i64 0, i32 3, i64 %13
  %14 = ptrtoint i64* %arrayidx32 to i64
  %call34 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add35 = add i64 %call34, %14
  %15 = inttoptr i64 %add35 to i64*
  %16 = load i64, i64* %15, align 8
  %add36 = add i64 %16, 1
  store i64 %add36, i64* %15, align 8
  br label %do.end40

do.end40:                                         ; preds = %if.end, %if.then14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  br label %return

return:                                           ; preds = %entry, %do.end40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_merge(%struct.rq_qos* noundef, %struct.request* noundef, %struct.bio* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.request* @elv_latter_request(%struct.request_queue* noundef, %struct.request* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ll_front_merge_fn(%struct.request* noundef %req, %struct.bio* noundef %bio, i32 noundef %nr_segs) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @req_gap_front_merge(%struct.request* noundef %req, %struct.bio* noundef %bio) #16
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call8 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %req) #16
  %bi_size = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 1
  %0 = load i32, i32* %bi_size, align 8
  %shr = lshr i32 %0, 9
  %add = add i32 %shr, %call8
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %1 = load i64, i64* %bi_sector, align 8
  %call10 = call fastcc i32 @blk_rq_get_max_sectors(%struct.request* noundef %req, i64 noundef %1) #16
  %cmp = icmp ugt i32 %add, %call10
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %2 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  call fastcc void @req_set_nomerge(%struct.request_queue* noundef %2, %struct.request* noundef %req) #16
  br label %return

if.end12:                                         ; preds = %if.end
  %call13 = call fastcc i32 @ll_new_hw_segment(%struct.request* noundef %req, i32 noundef %nr_segs) #16
  br label %return

return:                                           ; preds = %entry, %if.end12, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %call13, %if.end12 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @req_gap_front_merge(%struct.request* nocapture noundef readonly %req, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %bio1 = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 9
  %1 = load %struct.bio*, %struct.bio** %bio1, align 8
  %call = call fastcc i1 @bio_will_gap(%struct.request_queue* noundef %0, %struct.request* noundef null, %struct.bio* noundef %bio, %struct.bio* noundef %1) #16
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.request* @elv_former_request(%struct.request_queue* noundef, %struct.request* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #15

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #21 = { nounwind readonly }

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
!9 = !{!"auto-init"}
!10 = !{i64 2154720116}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = !{i64 2154723332}
!14 = !{i64 1468567}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 0, i64 65}
!17 = !{i64 2154104766}
!18 = !{i64 2153710269}
!19 = !{!"branch_weights", i32 4000000, i32 4004001, i32 4004001, i32 2001, i32 2000}
!20 = !{i64 2154723732}
!21 = !{i64 2154743832}
!22 = !{i64 2149030872, i64 2149030919, i64 2149030925, i64 2149030962, i64 2149030980, i64 2149031907, i64 2149031955, i64 2149032003, i64 2149032066, i64 2149032115, i64 2149031058, i64 2149031083, i64 2149031109, i64 2149031115, i64 2149031152, i64 2149031158, i64 2149031208, i64 2149031254, i64 2149031287}
!23 = !{i64 2154745326}
!24 = !{i64 2154765426}
