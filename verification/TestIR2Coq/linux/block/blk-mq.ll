; ModuleID = 'block/blk-mq.c'
source_filename = "block/blk-mq.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_blk_mq__501_4040_blk_mq_init4:\09\09\09"
module asm ".long\09blk_mq_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpumask = type { [4 x i64] }
%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.kmem_cache = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.72, %union.anon.73, %union.anon.74, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.77, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.3, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.3 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.lockdep_map = type {}
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.40, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.40 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.4, %union.anon.70, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36, [48 x i8] }
%struct.anon.36 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.21, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.60 }
%union.anon.60 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.62 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.56, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.27 }
%union.anon.27 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.41, %union.anon.42, i32 }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.55, i32, [12 x i8] }
%union.anon.55 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.57, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.57 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.66 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.64, %struct.qspinlock }
%union.anon.64 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.66 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
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
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.81 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.70 = type { %struct.atomic_t }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { %struct.rb_node }
%union.anon.74 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.77 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.71, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.71 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.58, %struct.list_head, %struct.list_head, %union.anon.59 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.58 = type { %struct.list_head }
%union.anon.59 = type { %struct.hlist_node }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.mq_inflight = type { %struct.block_device*, [2 x i32] }
%struct.flush_busy_ctx_data = type { %struct.blk_mq_hw_ctx*, %struct.list_head* }
%struct.dispatch_rq_data = type { %struct.blk_mq_hw_ctx*, %struct.request* }
%struct.nodemask_t = type { [1 x i64] }
%struct.blk_mq_qe_pair = type { %struct.list_head, %struct.request_queue*, %struct.elevator_type* }
%struct.hrtimer_sleeper = type { %struct.hrtimer, %struct.task_struct* }
%struct.softirq_action = type { {}* }
%struct.rq_iter_data = type { %struct.blk_mq_hw_ctx*, i8 }

@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@laptop_mode = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"\016blk-mq: reduced tag depth to %u\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@blk_mq_alloc_tag_set.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"&set->tag_list_lock\00", align 1
@__UNIQUE_ID___addressable_blk_mq_init502 = internal global i8* bitcast (i32 ()* @blk_mq_init to i8*), section ".discard.addressable", align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@force_irqthreads_key = external dso_local global %struct.static_key_false, align 4
@blk_cpu_done = internal global %struct.llist_head zeroinitializer, section ".data..percpu", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.2 = private unnamed_addr constant [80 x i8] c"\014Allocate new hctx on node %d fails,\09\09\09\09\09\09fallback to previous one on node %d\0A\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [42 x i8] c"\013blk-mq: failed to allocate request map\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\016blk-mq: reduced tag depth (%u -> %u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"\014Increasing nr_hw_queues to %d fails, fallback to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"block/softirq:dead\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"block/mq:dead\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"block/mq:online\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_blk_mq_init502 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_in_flight(%struct.request_queue* noundef %q, %struct.block_device* noundef %part) local_unnamed_addr #0 {
entry:
  %mi = alloca %struct.mq_inflight, align 8
  %0 = bitcast %struct.mq_inflight* %mi to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %part1 = getelementptr inbounds %struct.mq_inflight, %struct.mq_inflight* %mi, i64 0, i32 0
  store %struct.block_device* %part, %struct.block_device** %part1, align 8
  %inflight = getelementptr inbounds %struct.mq_inflight, %struct.mq_inflight* %mi, i64 0, i32 1
  %1 = bitcast [2 x i32]* %inflight to i64*
  store i64 0, i64* %1, align 8
  call void @blk_mq_queue_tag_busy_iter(%struct.request_queue* noundef %q, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef nonnull @blk_mq_check_inflight, i8* noundef nonnull %0) #23
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %inflight, i64 0, i64 0
  %2 = load i32, i32* %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds %struct.mq_inflight, %struct.mq_inflight* %mi, i64 0, i32 1, i64 1
  %3 = load i32, i32* %arrayidx4, align 4
  %add = add i32 %3, %2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_queue_tag_busy_iter(%struct.request_queue* noundef, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i1 @blk_mq_check_inflight(%struct.blk_mq_hw_ctx* nocapture noundef readnone %hctx, %struct.request* noundef %rq, i8* nocapture noundef %priv, i1 noundef %reserved) #4 {
entry:
  %part = bitcast i8* %priv to %struct.block_device**
  %0 = load %struct.block_device*, %struct.block_device** %part, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 14
  %1 = load i8, i8* %bd_partno, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %part1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 16
  %2 = load %struct.block_device*, %struct.block_device** %part1, align 8
  %cmp = icmp eq %struct.block_device* %2, %0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %call = call fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) #24
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %inflight = getelementptr inbounds i8, i8* %priv, i64 8
  %3 = bitcast i8* %inflight to [2 x i32]*
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %4 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %4, 255
  %call4 = call fastcc i1 @op_is_write(i32 noundef %and) #24
  %5 = zext i1 %call4 to i64
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %3, i64 0, i64 %5
  %6 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_in_flight_rw(%struct.request_queue* noundef %q, %struct.block_device* noundef %part, i32* nocapture noundef writeonly %inflight) local_unnamed_addr #0 {
entry:
  %mi = alloca %struct.mq_inflight, align 8
  %0 = bitcast %struct.mq_inflight* %mi to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %part1 = getelementptr inbounds %struct.mq_inflight, %struct.mq_inflight* %mi, i64 0, i32 0
  store %struct.block_device* %part, %struct.block_device** %part1, align 8
  %inflight2 = getelementptr inbounds %struct.mq_inflight, %struct.mq_inflight* %mi, i64 0, i32 1
  %1 = bitcast [2 x i32]* %inflight2 to i64*
  store i64 0, i64* %1, align 8
  call void @blk_mq_queue_tag_busy_iter(%struct.request_queue* noundef %q, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef nonnull @blk_mq_check_inflight, i8* noundef nonnull %0) #23
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %inflight2, i64 0, i64 0
  %2 = load i32, i32* %arrayidx, align 8
  store i32 %2, i32* %inflight, align 4
  %arrayidx6 = getelementptr inbounds %struct.mq_inflight, %struct.mq_inflight* %mi, i64 0, i32 1, i64 1
  %3 = load i32, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, i32* %inflight, i64 1
  store i32 %3, i32* %arrayidx7, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_freeze_queue_start(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %mq_freeze_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 46
  call void @mutex_lock(%struct.mutex* noundef %mq_freeze_lock) #23
  %mq_freeze_depth = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 43
  %0 = load i32, i32* %mq_freeze_depth, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %mq_freeze_depth, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2
  call fastcc void @percpu_ref_kill(%struct.percpu_ref* noundef %q_usage_counter) #24
  call void @mutex_unlock(%struct.mutex* noundef %mq_freeze_lock) #23
  %call = call fastcc i1 @queue_is_mq(%struct.request_queue* noundef %q) #24
  br i1 %call, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.then
  call void @blk_mq_run_hw_queues(%struct.request_queue* noundef %q, i1 noundef false) #24
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @mutex_unlock(%struct.mutex* noundef %mq_freeze_lock) #23
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then2, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_kill(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  call void @percpu_ref_kill_and_confirm(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef null) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @queue_is_mq(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %tobool = icmp ne %struct.blk_mq_ops* %0, null
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_run_hw_queues(%struct.request_queue* nocapture noundef readonly %q, i1 noundef %async) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_mq_has_sqsched(%struct.request_queue* noundef %q) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_get_sq_hctx(%struct.request_queue* noundef %q) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sq_hctx.0 = phi %struct.blk_mq_hw_ctx* [ %call1, %if.then ], [ null, %entry ]
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp25.not = icmp eq i32 %0, 0
  br i1 %cmp25.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %tobool5.not = icmp eq %struct.blk_mq_hw_ctx* %sq_hctx.0, null
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %i.026 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %1 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.026 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %call2 = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %2) #24
  br i1 %call2, label %for.inc, label %if.end4

if.end4:                                          ; preds = %land.rhs
  %cmp6 = icmp eq %struct.blk_mq_hw_ctx* %sq_hctx.0, %2
  %or.cond = or i1 %tobool5.not, %cmp6
  br i1 %or.cond, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end4
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 0, i32 1
  %call8 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %dispatch) #24
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %for.inc

if.then10:                                        ; preds = %lor.lhs.false7, %if.end4
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %2, i1 noundef %async) #24
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false7, %if.then10, %land.rhs
  %inc = add nuw i32 %i.026, 1
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %land.rhs, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_freeze_queue_wait(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2
  %call = call i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef %q_usage_counter) #23
  br i1 %call, label %do.end10, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !8
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #23
  %mq_freeze_wq = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 45
  %call418 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #23
  %call619 = call i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef %q_usage_counter) #23
  br i1 %call619, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup
  call void @schedule() #23
  %call4 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #23
  %call6 = call i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef %q_usage_counter) #23
  br i1 %call6, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #22
  br label %do.end10

do.end10:                                         ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_freeze_queue_wait_timeout(%struct.request_queue* noundef %q, i64 noundef %timeout) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2
  %call = call i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef %q_usage_counter) #23
  %tobool4 = icmp eq i64 %timeout, 0
  %0 = and i1 %tobool4, %call
  %spec.store.select = select i1 %0, i64 1, i64 %timeout
  %tobool6.not = icmp eq i64 %spec.store.select, 0
  %1 = select i1 %call, i1 true, i1 %tobool6.not
  br i1 %1, label %if.end33, label %if.then8

if.then8:                                         ; preds = %entry
  %2 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !8
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #23
  %mq_freeze_wq = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 45
  %call1055 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #23
  %call1356 = call i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef %q_usage_counter) #23
  %3 = and i1 %call1356, %tobool4
  %spec.store.select3660 = select i1 %3, i64 1, i64 %timeout
  %tobool23.not61 = icmp eq i64 %spec.store.select3660, 0
  %4 = select i1 %call1356, i1 true, i1 %tobool23.not61
  br i1 %4, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.then8, %cleanup
  %spec.store.select3662 = phi i64 [ %spec.store.select36, %cleanup ], [ %spec.store.select3660, %if.then8 ]
  %call30 = call i64 @schedule_timeout(i64 noundef %spec.store.select3662) #23
  %call10 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #23
  %call13 = call i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef %q_usage_counter) #23
  %tobool15.not = xor i1 %call13, true
  %tobool17 = icmp ne i64 %call30, 0
  %or.cond35 = select i1 %tobool15.not, i1 true, i1 %tobool17
  %spec.store.select36 = select i1 %or.cond35, i64 %call30, i64 1
  %tobool23.not = icmp eq i64 %spec.store.select36, 0
  %5 = select i1 %call13, i1 true, i1 %tobool23.not
  br i1 %5, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.then8
  %spec.store.select36.lcssa = phi i64 [ %spec.store.select3660, %if.then8 ], [ %spec.store.select36, %cleanup ]
  call void @finish_wait(%struct.wait_queue_head* noundef %mq_freeze_wq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #22
  br label %if.end33

if.end33:                                         ; preds = %for.end, %entry
  %__ret.0 = phi i64 [ %spec.store.select, %entry ], [ %spec.store.select36.lcssa, %for.end ]
  %conv = trunc i64 %__ret.0 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_freeze_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  call void @blk_freeze_queue_start(%struct.request_queue* noundef %q) #24
  call void @blk_mq_freeze_queue_wait(%struct.request_queue* noundef %q) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_freeze_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  call void @blk_freeze_queue(%struct.request_queue* noundef %q) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__blk_mq_unfreeze_queue(%struct.request_queue* noundef %q, i1 noundef %force_atomic) local_unnamed_addr #0 {
entry:
  %mq_freeze_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 46
  call void @mutex_lock(%struct.mutex* noundef %mq_freeze_lock) #23
  br i1 %force_atomic, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2, i32 1
  %0 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %force_atomic1 = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %0, i64 0, i32 3
  %bf.load = load i8, i8* %force_atomic1, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %force_atomic1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mq_freeze_depth = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 43
  %1 = load i32, i32* %mq_freeze_depth, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %mq_freeze_depth, align 4
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %if.then10, label %if.end11, !prof !9

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 197; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !10
  %.pr = load i32, i32* %mq_freeze_depth, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %2 = phi i32 [ %.pr, %if.then10 ], [ %dec, %if.end ]
  %tobool20.not = icmp eq i32 %2, 0
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end11
  %q_usage_counter22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2
  call void @percpu_ref_resurrect(%struct.percpu_ref* noundef %q_usage_counter22) #23
  %mq_freeze_wq = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 45
  call void @__wake_up(%struct.wait_queue_head* noundef %mq_freeze_wq, i32 noundef 3, i32 noundef 0, i8* noundef null) #23
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end11
  call void @mutex_unlock(%struct.mutex* noundef %mq_freeze_lock) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_resurrect(%struct.percpu_ref* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_unfreeze_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  call void @__blk_mq_unfreeze_queue(%struct.request_queue* noundef %q, i1 noundef false) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_quiesce_queue_nowait(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  call void @blk_queue_flag_set(i32 noundef 24, %struct.request_queue* noundef %q) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_quiesce_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  call void @blk_mq_quiesce_queue_nowait(%struct.request_queue* noundef %q) #24
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp13.not = icmp eq i32 %0, 0
  br i1 %cmp13.not, label %if.end4, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs.outer

land.rhs.outer:                                   ; preds = %for.inc, %land.rhs.lr.ph
  %.ph = phi i32 [ %.pre, %for.inc ], [ %0, %land.rhs.lr.ph ]
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %land.rhs.lr.ph ]
  %rcu.0.off015.ph = phi i1 [ %rcu.0.off015.lcssa, %for.inc ], [ false, %land.rhs.lr.ph ]
  %1 = zext i32 %.ph to i64
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %arrayidx27 = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %indvars.iv.ph
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx27, align 8
  %flags28 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %3, i64 0, i32 5
  %4 = load i64, i64* %flags28, align 64
  %and29 = and i64 %4, 32
  %tobool1.not30 = icmp eq i64 %and29, 0
  br i1 %tobool1.not30, label %for.inc.thread, label %for.inc

land.rhs:                                         ; preds = %for.inc.thread
  %5 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, i64 %indvars.iv.next17
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i64 0, i32 5
  %7 = load i64, i64* %flags, align 64
  %and = and i64 %7, 32
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %for.inc.thread, label %for.inc

for.inc:                                          ; preds = %land.rhs, %land.rhs.outer
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.ph, %land.rhs.outer ], [ %indvars.iv.next17, %land.rhs ]
  %rcu.0.off015.lcssa = phi i1 [ %rcu.0.off015.ph, %land.rhs.outer ], [ true, %land.rhs ]
  %.lcssa = phi %struct.blk_mq_hw_ctx* [ %3, %land.rhs.outer ], [ %6, %land.rhs ]
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %.lcssa, i64 0, i32 34, i64 0
  call void @synchronize_srcu(%struct.srcu_struct* noundef %arraydecay) #23
  %.pre = load i32, i32* %nr_hw_queues, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.lcssa, 1
  %8 = zext i32 %.pre to i64
  %cmp = icmp ult i64 %indvars.iv.next, %8
  br i1 %cmp, label %land.rhs.outer, label %for.end

for.inc.thread:                                   ; preds = %land.rhs.outer, %land.rhs
  %indvars.iv31 = phi i64 [ %indvars.iv.next17, %land.rhs ], [ %indvars.iv.ph, %land.rhs.outer ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv31, 1
  %cmp18 = icmp ult i64 %indvars.iv.next17, %1
  br i1 %cmp18, label %land.rhs, label %if.then3

for.end:                                          ; preds = %for.inc
  br i1 %rcu.0.off015.lcssa, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.inc.thread, %for.end
  call void @synchronize_rcu() #23
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.then3, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(%struct.srcu_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_unquiesce_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  call void @blk_queue_flag_clear(i32 noundef 24, %struct.request_queue* noundef %q) #23
  call void @blk_mq_run_hw_queues(%struct.request_queue* noundef %q, i1 noundef true) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_wake_waiters(%struct.request_queue* nocapture noundef readonly %q) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp7.not = icmp eq i32 %0, 0
  br i1 %cmp7.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %1 = phi i32 [ %0, %land.rhs.lr.ph ], [ %5, %for.inc ]
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %indvars.iv
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %call = call fastcc i1 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx* noundef %3) #24
  br i1 %call, label %if.then, label %for.inc

if.then:                                          ; preds = %land.rhs
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %3, i64 0, i32 19
  %4 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  call void @blk_mq_tag_wakeup_all(%struct.blk_mq_tags* noundef %4, i1 noundef true) #23
  %.pre = load i32, i32* %nr_hw_queues, align 8
  br label %for.inc

for.inc:                                          ; preds = %land.rhs, %if.then
  %5 = phi i32 [ %1, %land.rhs ], [ %.pre, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = zext i32 %5 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %6
  br i1 %cmp, label %land.rhs, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx) unnamed_addr #5 {
entry:
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 14
  %0 = load i16, i16* %nr_ctx, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %1 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %tobool1 = icmp ne %struct.blk_mq_tags* %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tag_wakeup_all(%struct.blk_mq_tags* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @blk_mq_alloc_request(%struct.request_queue* noundef %q, i32 noundef %op, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.blk_mq_alloc_data, align 8
  %0 = bitcast %struct.blk_mq_alloc_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #22
  %1 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 3
  %2 = bitcast i32* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %q1 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  store %struct.request_queue* %q, %struct.request_queue** %q1, align 8
  %flags2 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  store i32 %flags, i32* %flags2, align 8
  %shallow_depth = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 2
  store i32 0, i32* %shallow_depth, align 4
  %cmd_flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 3
  store i32 %op, i32* %cmd_flags, align 8
  %ctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 4
  store %struct.blk_mq_ctx* null, %struct.blk_mq_ctx** %ctx, align 8
  %hctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  store %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx** %hctx, align 8
  %call = call i32 @blk_queue_enter(%struct.request_queue* noundef %q, i32 noundef %flags) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #24
  %3 = bitcast i8* %call3 to %struct.request*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc %struct.request* @__blk_mq_alloc_request(%struct.blk_mq_alloc_data* noundef nonnull %data) #24
  %tobool5.not = icmp eq %struct.request* %call4, null
  br i1 %tobool5.not, label %out_queue_exit, label %if.end7

if.end7:                                          ; preds = %if.end
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %call4, i64 0, i32 7
  store i32 0, i32* %__data_len, align 8
  %__sector = getelementptr inbounds %struct.request, %struct.request* %call4, i64 0, i32 8
  store i64 -1, i64* %__sector, align 8
  %biotail = getelementptr inbounds %struct.request, %struct.request* %call4, i64 0, i32 10
  store %struct.bio* null, %struct.bio** %biotail, align 8
  %bio = getelementptr inbounds %struct.request, %struct.request* %call4, i64 0, i32 9
  store %struct.bio* null, %struct.bio** %bio, align 8
  br label %cleanup

out_queue_exit:                                   ; preds = %if.end
  call void @blk_queue_exit(%struct.request_queue* noundef %q) #23
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef -11) #24
  %4 = bitcast i8* %call8 to %struct.request*
  br label %cleanup

cleanup:                                          ; preds = %out_queue_exit, %if.end7, %if.then
  %retval.0 = phi %struct.request* [ %3, %if.then ], [ %call4, %if.end7 ], [ %4, %out_queue_exit ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #22
  ret %struct.request* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_queue_enter(%struct.request_queue* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #6 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.request* @__blk_mq_alloc_request(%struct.blk_mq_alloc_data* noundef %data) unnamed_addr #0 {
entry:
  %q1 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %cmd_flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 3
  %2 = load i32, i32* %cmd_flags, align 8
  %3 = and i32 %2, 2097152
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  %4 = load i32, i32* %flags, align 8
  %or = or i32 %4, 1
  store i32 %or, i32* %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool2.not = icmp eq %struct.elevator_queue* %1, null
  br i1 %tobool2.not, label %if.end19, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = call fastcc i1 @op_is_flush(i32 noundef %2) #24
  br i1 %call, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %call6 = call fastcc i1 @blk_op_is_passthrough(i32 noundef %2) #24
  br i1 %call6, label %if.end19, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 0
  %5 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %limit_depth = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %5, i64 0, i32 1, i32 10
  %6 = load void (i32, %struct.blk_mq_alloc_data*)*, void (i32, %struct.blk_mq_alloc_data*)** %limit_depth, align 8
  %tobool8.not = icmp eq void (i32, %struct.blk_mq_alloc_data*)* %6, null
  br i1 %tobool8.not, label %if.end19, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %flags10 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  %7 = load i32, i32* %flags10, align 8
  %and11 = and i32 %7, 2
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end19

if.then13:                                        ; preds = %land.lhs.true9
  call void %6(i32 noundef %2, %struct.blk_mq_alloc_data* noundef %data) #23
  br label %if.end19

if.end19:                                         ; preds = %if.then3, %land.lhs.true, %land.lhs.true7, %land.lhs.true9, %if.then13, %if.end
  %ctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 4
  %hctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %flags32 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  br label %retry

retry:                                            ; preds = %if.end36, %if.end19
  %call20 = call fastcc %struct.blk_mq_ctx* @blk_mq_get_ctx(%struct.request_queue* noundef %0) #24
  store %struct.blk_mq_ctx* %call20, %struct.blk_mq_ctx** %ctx, align 8
  %8 = load i32, i32* %cmd_flags, align 8
  %call23 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue(i32 noundef %8, %struct.blk_mq_ctx* noundef %call20) #24
  store %struct.blk_mq_hw_ctx* %call23, %struct.blk_mq_hw_ctx** %hctx, align 8
  br i1 %tobool2.not, label %if.then25, label %if.end28

if.then25:                                        ; preds = %retry
  call fastcc void @blk_mq_tag_busy(%struct.blk_mq_hw_ctx* noundef %call23) #24
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %retry
  %call29 = call i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data* noundef %data) #23
  %cmp = icmp eq i32 %call29, -1
  br i1 %cmp, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end28
  %9 = load i32, i32* %flags32, align 8
  %and33 = and i32 %9, 1
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %cleanup

if.end36:                                         ; preds = %if.then31
  call void @msleep(i32 noundef 3) #23
  br label %retry

if.end37:                                         ; preds = %if.end28
  %call38 = call fastcc %struct.request* @blk_mq_rq_ctx_init(%struct.blk_mq_alloc_data* noundef %data, i32 noundef %call29) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end37
  %retval.0 = phi %struct.request* [ %call38, %if.end37 ], [ null, %if.then31 ]
  ret %struct.request* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_exit(%struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @blk_mq_alloc_request_hctx(%struct.request_queue* noundef %q, i32 noundef %op, i32 noundef %flags, i32 noundef %hctx_idx) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.blk_mq_alloc_data, align 8
  %0 = bitcast %struct.blk_mq_alloc_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #22
  %1 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 3
  %2 = bitcast i32* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %q1 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  store %struct.request_queue* %q, %struct.request_queue** %q1, align 8
  %flags2 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  store i32 %flags, i32* %flags2, align 8
  %shallow_depth = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 2
  store i32 0, i32* %shallow_depth, align 4
  %cmd_flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 3
  store i32 %op, i32* %cmd_flags, align 8
  %ctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 4
  store %struct.blk_mq_ctx* null, %struct.blk_mq_ctx** %ctx, align 8
  %hctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %and = and i32 %flags, 3
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end20, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 460; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !11
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #24
  %3 = bitcast i8* %call to %struct.request*
  br label %cleanup

if.end20:                                         ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %4 = load i32, i32* %nr_hw_queues, align 8
  %cmp.not = icmp ugt i32 %4, %hctx_idx
  br i1 %cmp.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call23 = call fastcc i8* @ERR_PTR(i64 noundef -5) #24
  %5 = bitcast i8* %call23 to %struct.request*
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @blk_queue_enter(%struct.request_queue* noundef %q, i32 noundef %flags) #23
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end24
  %conv28 = sext i32 %call25 to i64
  %call29 = call fastcc i8* @ERR_PTR(i64 noundef %conv28) #24
  %6 = bitcast i8* %call29 to %struct.request*
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %7 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = zext i32 %hctx_idx to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, i64 %idxprom
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  store %struct.blk_mq_hw_ctx* %8, %struct.blk_mq_hw_ctx** %hctx, align 8
  %call33 = call fastcc i1 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx* noundef %8) #24
  br i1 %call33, label %if.end35, label %out_queue_exit

if.end35:                                         ; preds = %if.end30
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %8, i64 0, i32 2, i64 0
  %call37 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_online_mask) #25
  %call38 = call fastcc %struct.blk_mq_ctx* @__blk_mq_get_ctx(%struct.request_queue* noundef %q, i32 noundef %call37) #24
  store %struct.blk_mq_ctx* %call38, %struct.blk_mq_ctx** %ctx, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %9 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool40.not = icmp eq %struct.elevator_queue* %9, null
  br i1 %tobool40.not, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end35
  call fastcc void @blk_mq_tag_busy(%struct.blk_mq_hw_ctx* noundef %8) #24
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end35
  %call45 = call i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data* noundef nonnull %data) #23
  %cmp46 = icmp eq i32 %call45, -1
  br i1 %cmp46, label %out_queue_exit, label %if.end49

if.end49:                                         ; preds = %if.end44
  %call50 = call fastcc %struct.request* @blk_mq_rq_ctx_init(%struct.blk_mq_alloc_data* noundef nonnull %data, i32 noundef %call45) #24
  br label %cleanup

out_queue_exit:                                   ; preds = %if.end44, %if.end30
  %ret.0 = phi i64 [ -11, %if.end44 ], [ -18, %if.end30 ]
  call void @blk_queue_exit(%struct.request_queue* noundef %q) #23
  %call52 = call fastcc i8* @ERR_PTR(i64 noundef %ret.0) #24
  %10 = bitcast i8* %call52 to %struct.request*
  br label %cleanup

cleanup:                                          ; preds = %out_queue_exit, %if.end49, %if.then27, %if.then22, %if.then
  %retval.0 = phi %struct.request* [ %3, %if.then ], [ %5, %if.then22 ], [ %6, %if.then27 ], [ %10, %out_queue_exit ], [ %call50, %if.end49 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #22
  ret %struct.request* %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #7

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_tag_busy(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i1 @__blk_mq_tag_busy(%struct.blk_mq_hw_ctx* noundef %hctx) #23
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.request* @blk_mq_rq_ctx_init(%struct.blk_mq_alloc_data* nocapture noundef readonly %data, i32 noundef %tag) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data* noundef %data) #24
  %static_rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call, i64 0, i32 8
  %0 = load %struct.request**, %struct.request*** %static_rqs, align 8
  %idxprom = zext i32 %tag to i64
  %arrayidx = getelementptr %struct.request*, %struct.request** %0, i64 %idxprom
  %1 = load %struct.request*, %struct.request** %arrayidx, align 8
  %q = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  %2 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 1
  %3 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %3, null
  %spec.select = select i1 %tobool.not, i32 %tag, i32 -1
  %spec.select3 = select i1 %tobool.not, i32 -1, i32 %tag
  %4 = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 5
  store i32 %spec.select, i32* %4, align 8
  %5 = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 6
  store i32 %spec.select3, i32* %5, align 4
  %6 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %q5 = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 0
  store %struct.request_queue* %6, %struct.request_queue** %q5, align 8
  %ctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 4
  %7 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %ctx, align 8
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 1
  store %struct.blk_mq_ctx* %7, %struct.blk_mq_ctx** %mq_ctx, align 8
  %hctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 2
  store %struct.blk_mq_hw_ctx* %8, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 4
  store i32 0, i32* %rq_flags, align 4
  %cmd_flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 3
  %9 = load i32, i32* %cmd_flags, align 8
  %cmd_flags6 = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 3
  store i32 %9, i32* %cmd_flags6, align 8
  %flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  %10 = load i32, i32* %flags, align 8
  %and = and i32 %10, 4
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %entry
  store i32 32768, i32* %rq_flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %entry
  %11 = phi i32 [ 40960, %if.then8 ], [ 8192, %entry ]
  %12 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i64 0, i32 11
  %13 = load volatile i64, i64* %queue_flags, align 8
  %14 = and i64 %13, 128
  %tobool13.not = icmp eq i64 %14, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end10
  store i32 %11, i32* %rq_flags, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 11
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %queuelist) #24
  %hash = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 12, i32 0
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %hash) #24
  %rb_node = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 13, i32 0
  %15 = ptrtoint %struct.rb_node* %rb_node to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node, i64 0, i32 0
  store i64 %15, i64* %__rb_parent_color, align 8
  %rq_disk = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 15
  store %struct.gendisk* null, %struct.gendisk** %rq_disk, align 8
  %part = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 16
  store %struct.block_device* null, %struct.block_device** %part, align 8
  %call19 = call fastcc i1 @blk_mq_need_time_stamp(%struct.request* noundef %1) #24
  br i1 %call19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end17
  %call21 = call fastcc i64 @ktime_get_ns() #24
  br label %if.end24

if.end24:                                         ; preds = %if.end17, %if.then20
  %.sink1 = phi i64 [ %call21, %if.then20 ], [ 0, %if.end17 ]
  %16 = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 17
  store i64 %.sink1, i64* %16, align 8
  %io_start_time_ns = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 18
  store i64 0, i64* %io_start_time_ns, align 8
  %stats_sectors = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 19
  store i16 0, i16* %stats_sectors, align 8
  %nr_phys_segments = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 20
  store i16 0, i16* %nr_phys_segments, align 2
  %deadline = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 26
  store volatile i64 0, i64* %deadline, align 8
  %timeout = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 25
  store i32 0, i32* %timeout, align 8
  %end_io = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 28
  store void (%struct.request*, i8)* null, void (%struct.request*, i8)** %end_io, align 8
  %end_io_data = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 29
  store i8* null, i8** %end_io_data, align 8
  %17 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %ctx, align 8
  %18 = load i32, i32* %cmd_flags, align 8
  %call33 = call fastcc i1 @op_is_sync(i32 noundef %18) #24
  %idxprom34 = zext i1 %call33 to i64
  %arrayidx35 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %17, i64 0, i32 4, i64 %idxprom34
  %19 = load i64, i64* %arrayidx35, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %arrayidx35, align 8
  %ref = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 24
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %ref) #24
  %20 = load i32, i32* %cmd_flags, align 8
  %call37 = call fastcc i1 @op_is_flush(i32 noundef %20) #24
  br i1 %call37, label %if.end54, label %if.then38

if.then38:                                        ; preds = %if.end24
  %21 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %elevator40 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i64 0, i32 1
  %22 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator40, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 14
  %icq = bitcast %union.anon.74* %23 to %struct.io_cq**
  store %struct.io_cq* null, %struct.io_cq** %icq, align 8
  %tobool41.not = icmp eq %struct.elevator_queue* %22, null
  br i1 %tobool41.not, label %if.end54, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then38
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %22, i64 0, i32 0
  %24 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %prepare_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %24, i64 0, i32 1, i32 11
  %25 = load void (%struct.request*)*, void (%struct.request*)** %prepare_request, align 8
  %tobool42.not = icmp eq void (%struct.request*)* %25, null
  br i1 %tobool42.not, label %if.end54, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  %icq_cache = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %24, i64 0, i32 0
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %icq_cache, align 8
  %tobool45.not = icmp eq %struct.kmem_cache* %26, null
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.then43
  call void @blk_mq_sched_assign_ioc(%struct.request* noundef %1) #23
  %.pre = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %prepare_request50.phi.trans.insert = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %.pre, i64 0, i32 1, i32 11
  %.pre2 = load void (%struct.request*)*, void (%struct.request*)** %prepare_request50.phi.trans.insert, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then43
  %27 = phi void (%struct.request*)* [ %.pre2, %if.then46 ], [ %25, %if.then43 ]
  call void %27(%struct.request* noundef %1) #23
  %28 = load i32, i32* %rq_flags, align 4
  %or52 = or i32 %28, 4096
  store i32 %or52, i32* %rq_flags, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then38, %land.lhs.true, %if.end47, %if.end24
  %29 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  %queued = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %29, i64 0, i32 21
  %30 = load i64, i64* %queued, align 8
  %inc56 = add i64 %30, 1
  store i64 %inc56, i64* %queued, align 8
  ret %struct.request* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_free_request(%struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %2 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %4 = load i32, i32* %rq_flags, align 4
  %and = and i32 %4, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq %struct.elevator_queue* %1, null
  br i1 %tobool2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 0
  %5 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %finish_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %5, i64 0, i32 1, i32 12
  %6 = load void (%struct.request*)*, void (%struct.request*)** %finish_request, align 8
  %tobool3.not = icmp eq void (%struct.request*)* %6, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call void %6(%struct.request* noundef %rq) #23
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  %7 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 14
  %icq = bitcast %union.anon.74* %7 to %struct.io_cq**
  %8 = load %struct.io_cq*, %struct.io_cq** %icq, align 8
  %tobool8.not = icmp eq %struct.io_cq* %8, null
  br i1 %tobool8.not, label %if.end15, label %if.then9

if.then9:                                         ; preds = %if.end
  %ioc = getelementptr inbounds %struct.io_cq, %struct.io_cq* %8, i64 0, i32 1
  %9 = load %struct.io_context*, %struct.io_context** %ioc, align 8
  call void @put_io_context(%struct.io_context* noundef %9) #23
  store %struct.io_cq* null, %struct.io_cq** %icq, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then9, %entry
  %call = call fastcc i1 @rq_is_sync(%struct.request* noundef %rq) #24
  %idxprom = zext i1 %call to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %2, i64 0, i32 6, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %arrayidx, align 8
  %11 = load i32, i32* %rq_flags, align 4
  %and17 = and i32 %11, 64
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end15
  call fastcc void @__blk_mq_dec_active_requests(%struct.blk_mq_hw_ctx* noundef %3) #24
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15
  %12 = load i32, i32* @laptop_mode, align 4
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %if.end27, label %land.rhs

land.rhs:                                         ; preds = %if.end20
  %call22 = call fastcc i1 @blk_rq_is_passthrough(%struct.request* noundef %rq) #24
  br i1 %call22, label %if.end27, label %if.then26, !prof !12

if.then26:                                        ; preds = %land.rhs
  %disk = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 15
  %13 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i64 0, i32 15
  %14 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  call void @laptop_io_completion(%struct.backing_dev_info* noundef %14) #23
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.then26, %land.rhs
  call fastcc void @rq_qos_done(%struct.request_queue* noundef %0, %struct.request* noundef %rq) #24
  %state = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 23
  store volatile i32 0, i32* %state, align 8
  %ref = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 24
  %call34 = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %ref) #24
  br i1 %call34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end27
  call fastcc void @__blk_mq_free_request(%struct.request* noundef %rq) #24
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_io_context(%struct.io_context* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rq_is_sync(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %call = call fastcc i1 @op_is_sync(i32 noundef %0) #24
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_dec_active_requests(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %conv = trunc i64 %0 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #24
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
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_active.sink) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_rq_is_passthrough(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %call = call fastcc i1 @blk_op_is_passthrough(i32 noundef %and) #24
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @laptop_io_completion(%struct.backing_dev_info* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_done(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_done(%struct.rq_qos* noundef nonnull %0, %struct.request* noundef %rq) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #24
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_free_request(%struct.request* nocapture noundef %rq) unnamed_addr #0 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %1 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %internal_tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 6
  %3 = load i32, i32* %internal_tag, align 4
  store %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %4 = load i32, i32* %tag, align 8
  %cmp.not = icmp eq i32 %4, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 19
  %5 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  call void @blk_mq_put_tag(%struct.blk_mq_tags* noundef %5, %struct.blk_mq_ctx* noundef %1, i32 noundef %4) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp4.not = icmp eq i32 %3, -1
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 20
  %6 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  call void @blk_mq_put_tag(%struct.blk_mq_tags* noundef %6, %struct.blk_mq_ctx* noundef %1, i32 noundef %3) #23
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  call void @blk_mq_sched_restart(%struct.blk_mq_hw_ctx* noundef %2) #23
  call void @blk_queue_exit(%struct.request_queue* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__blk_mq_end_request(%struct.request* noundef %rq, i8 noundef %error) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_mq_need_time_stamp(%struct.request* noundef %rq) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @ktime_get_ns() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %now.0 = phi i64 [ %call1, %if.then ], [ 0, %entry ]
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 131072
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  call fastcc void @blk_mq_poll_stats_start(%struct.request_queue* noundef %1) #24
  call void @blk_stat_add(%struct.request* noundef %rq, i64 noundef %now.0) #23
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  call fastcc void @blk_mq_sched_completed_request(%struct.request* noundef %rq, i64 noundef %now.0) #24
  call void @blk_account_io_done(%struct.request* noundef %rq, i64 noundef %now.0) #23
  %end_io = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 28
  %2 = load void (%struct.request*, i8)*, void (%struct.request*, i8)** %end_io, align 8
  %tobool4.not = icmp eq void (%struct.request*, i8)* %2, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %q6 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %3 = load %struct.request_queue*, %struct.request_queue** %q6, align 8
  call fastcc void @rq_qos_done(%struct.request_queue* noundef %3, %struct.request* noundef %rq) #24
  %4 = load void (%struct.request*, i8)*, void (%struct.request*, i8)** %end_io, align 8
  call void %4(%struct.request* noundef %rq, i8 noundef %error) #23
  br label %if.end8

if.else:                                          ; preds = %if.end3
  call void @blk_mq_free_request(%struct.request* noundef %rq) #24
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_mq_need_time_stamp(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 139264
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 1
  %2 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool1 = icmp ne %struct.elevator_queue* %2, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_ns() unnamed_addr #0 {
entry:
  %call = call i64 @ktime_get() #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_poll_stats_start(%struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 2097152
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %poll_cb = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 23
  %2 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %poll_cb, align 8
  %call1 = call fastcc i1 @blk_stat_is_active(%struct.blk_stat_callback* noundef %2) #24
  br i1 %call1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %poll_cb, align 8
  call fastcc void @blk_stat_activate_msecs(%struct.blk_stat_callback* noundef %3) #24
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_add(%struct.request* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_sched_completed_request(%struct.request* noundef %rq, i64 noundef %now) unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 0
  %2 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %completed_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %2, i64 0, i32 1, i32 16
  %3 = load void (%struct.request*, i64)*, void (%struct.request*, i64)** %completed_request, align 8
  %tobool1.not = icmp eq void (%struct.request*, i64)* %3, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %3(%struct.request* noundef %rq, i64 noundef %now) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_account_io_done(%struct.request* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_end_request(%struct.request* noundef %rq, i8 noundef %error) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #24
  %call1 = call i1 @blk_update_request(%struct.request* noundef %rq, i8 noundef %error, i32 noundef %call) #23
  br i1 %call1, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 573; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !13
  unreachable

if.end:                                           ; preds = %entry
  call void @__blk_mq_end_request(%struct.request* noundef %rq, i8 noundef %error) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_update_request(%struct.request* noundef, i8 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_bytes(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %__data_len = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 7
  %0 = load i32, i32* %__data_len, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_mq_complete_request_remote(%struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 23
  store volatile i32 2, i32* %state, align 8
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %1 = and i32 %0, 16777216
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @blk_mq_complete_need_ipi(%struct.request* noundef %rq) #24
  br i1 %call, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call fastcc void @blk_mq_complete_send_ipi(%struct.request* noundef %rq) #24
  br label %return

if.end6:                                          ; preds = %if.end
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %2 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 9
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then8, label %return

if.then8:                                         ; preds = %if.end6
  call fastcc void @blk_mq_raise_softirq(%struct.request* noundef %rq) #24
  br label %return

return:                                           ; preds = %if.end6, %entry, %if.then8, %if.then5
  %retval.0 = phi i1 [ true, %if.then5 ], [ true, %if.then8 ], [ false, %entry ], [ false, %if.end6 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_complete_need_ipi(%struct.request* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %2 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 11
  %3 = load volatile i64, i64* %queue_flags, align 8
  %4 = and i64 %3, 16
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @force_irqthreads_key, i64 0, i32 0)) #24
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %cleanup, label %if.end10, !prof !9

if.end10:                                         ; preds = %if.end
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %5 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %cpu11 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %5, i64 0, i32 1
  %6 = load i32, i32* %cpu11, align 64
  %cmp12 = icmp eq i32 %1, %6
  br i1 %cmp12, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %7 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %queue_flags15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i64 0, i32 11
  %8 = load volatile i64, i64* %queue_flags15, align 8
  %9 = and i64 %8, 4096
  %tobool17.not = icmp eq i64 %9, 0
  br i1 %tobool17.not, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call20 = call i1 @cpus_share_cache(i32 noundef %1, i32 noundef %6) #23
  br i1 %call20, label %cleanup, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %cpu25.phi.trans.insert = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %.pre, i64 0, i32 1
  %.pre37 = load i32, i32* %cpu25.phi.trans.insert, align 64
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %lor.lhs.false
  %10 = phi i32 [ %.pre37, %land.lhs.true.if.end23_crit_edge ], [ %6, %lor.lhs.false ]
  %call26 = call fastcc i1 @cpu_online(i32 noundef %10) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true, %if.end, %entry, %if.end23
  %retval.0 = phi i1 [ %call26, %if.end23 ], [ false, %entry ], [ false, %if.end ], [ false, %land.lhs.true ], [ false, %if.end10 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_complete_send_ipi(%struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %0 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %cpu1 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %0, i64 0, i32 1
  %1 = load i32, i32* %cpu1, align 64
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.llist_head* @blk_cpu_done to i64)
  %3 = inttoptr i64 %add to %struct.llist_head*
  %4 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 12
  %ipi_list = bitcast %union.anon.72* %4 to %struct.llist_node*
  %call = call fastcc i1 @llist_add(%struct.llist_node* noundef %ipi_list, %struct.llist_head* noundef %3) #24
  br i1 %call, label %do.body3, label %if.end

do.body3:                                         ; preds = %entry
  %csd = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 27, i32 0
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 27
  %.compoundliteral.sroa.0.0..sroa_cast = bitcast %union.anon.77* %.compoundliteral.sroa.0.0..sroa_idx to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(16) %.compoundliteral.sroa.0.0..sroa_cast, i8 0, i64 16, i1 false)
  %.compoundliteral.sroa.2.0..sroa_idx9 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 27, i32 0, i32 1
  store void (i8*)* @__blk_mq_complete_request_remote, void (i8*)** %.compoundliteral.sroa.2.0..sroa_idx9, align 8
  %.compoundliteral.sroa.3.0..sroa_idx10 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 27, i32 0, i32 2
  %5 = bitcast i8** %.compoundliteral.sroa.3.0..sroa_idx10 to %struct.request**
  store %struct.request* %rq, %struct.request** %5, align 8
  %call7 = call i32 @smp_call_function_single_async(i32 noundef %1, %struct.__call_single_data* noundef %csd) #23
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_raise_softirq(%struct.request* noundef %rq) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.llist_head* @blk_cpu_done to i64)
  %0 = inttoptr i64 %add to %struct.llist_head*
  %1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 12
  %ipi_list = bitcast %union.anon.72* %1 to %struct.llist_node*
  %call2 = call fastcc i1 @llist_add(%struct.llist_node* noundef %ipi_list, %struct.llist_head* noundef %0) #24
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @raise_softirq(i32 noundef 4) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_complete_request(%struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %call = call i1 @blk_mq_complete_request_remote(%struct.request* noundef %rq) #24
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 5
  %1 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %complete = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %1, i64 0, i32 8
  %2 = load void (%struct.request*)*, void (%struct.request*)** %complete, align 8
  call void %2(%struct.request* noundef %rq) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_start_request(%struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 11
  %1 = load volatile i64, i64* %queue_flags, align 8
  %2 = and i64 %1, 1048576
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @ktime_get_ns() #24
  %io_start_time_ns = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 18
  store i64 %call2, i64* %io_start_time_ns, align 8
  %call3 = call fastcc i32 @blk_rq_sectors(%struct.request* noundef %rq) #24
  %conv = trunc i32 %call3 to i16
  %stats_sectors = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 19
  store i16 %conv, i16* %stats_sectors, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %3 = load i32, i32* %rq_flags, align 4
  %or = or i32 %3, 131072
  store i32 %or, i32* %rq_flags, align 4
  call fastcc void @rq_qos_issue(%struct.request_queue* noundef %0, %struct.request* noundef %rq) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) #24
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end15, label %if.then14, !prof !12

if.then14:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 732; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !16
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  call void @blk_add_timer(%struct.request* noundef %rq) #23
  %state = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 23
  store volatile i32 1, i32* %state, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_sectors(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @blk_rq_bytes(%struct.request* noundef %rq) #24
  %shr = lshr i32 %call, 9
  ret i32 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_issue(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_issue(%struct.rq_qos* noundef nonnull %0, %struct.request* noundef %rq) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) unnamed_addr #4 {
entry:
  %state = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 23
  %0 = load volatile i32, i32* %state, align 8
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_add_timer(%struct.request* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_requeue_request(%struct.request* noundef %rq, i1 noundef %kick_requeue_list) local_unnamed_addr #0 {
entry:
  call fastcc void @__blk_mq_requeue_request(%struct.request* noundef %rq) #24
  call fastcc void @blk_mq_sched_requeue_request(%struct.request* noundef %rq) #24
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %queuelist) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 766; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !17
  unreachable

do.end7:                                          ; preds = %entry
  call void @blk_mq_add_to_requeue_list(%struct.request* noundef %rq, i1 noundef true, i1 noundef %kick_requeue_list) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_requeue_request(%struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  call fastcc void @blk_mq_put_driver_tag(%struct.request* noundef %rq) #24
  call fastcc void @rq_qos_requeue(%struct.request_queue* noundef %0, %struct.request* noundef %rq) #24
  %call = call fastcc i32 @blk_mq_request_started(%struct.request* noundef %rq) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body3

do.body3:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 23
  store volatile i32 0, i32* %state, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %1 = load i32, i32* %rq_flags, align 4
  %and = and i32 %1, -2097153
  store i32 %and, i32* %rq_flags, align 4
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_sched_requeue_request(%struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %2 = load i32, i32* %rq_flags, align 4
  %and = and i32 %2, 4096
  %tobool = icmp ne i32 %and, 0
  %tobool2 = icmp ne %struct.elevator_queue* %1, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %entry
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 0
  %3 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %requeue_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %3, i64 0, i32 1, i32 17
  %4 = load void (%struct.request*)*, void (%struct.request*)** %requeue_request, align 8
  %tobool4.not = icmp eq void (%struct.request*)* %4, null
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  call void %4(%struct.request* noundef %rq) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_add_to_requeue_list(%struct.request* noundef %rq, i1 noundef %at_head, i1 noundef %kick_requeue_list) local_unnamed_addr #0 {
entry:
  %q2 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q2, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %1 = load i32, i32* %rq_flags, align 4
  %and = and i32 %1, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body12, label %do.body5, !prof !12

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 818; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !18
  unreachable

do.body12:                                        ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 37, i32 0, i32 0
  %call14 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #24
  br i1 %at_head, label %if.then20, label %if.else

if.then20:                                        ; preds = %do.body12
  %2 = load i32, i32* %rq_flags, align 4
  %or = or i32 %2, 8
  store i32 %or, i32* %rq_flags, align 4
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  %requeue_list = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 36
  call fastcc void @list_add(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %requeue_list) #24
  br label %if.end24

if.else:                                          ; preds = %do.body12
  %queuelist22 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  %requeue_list23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 36
  call fastcc void @list_add_tail(%struct.list_head* noundef %queuelist22, %struct.list_head* noundef %requeue_list23) #24
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call14) #23
  br i1 %kick_requeue_list, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @blk_mq_kick_requeue_list(%struct.request_queue* noundef %0) #24
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #24
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_kick_requeue_list(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %requeue_work = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 38
  %call = call i32 @kblockd_mod_delayed_work_on(i32 noundef 256, %struct.delayed_work* noundef %requeue_work, i64 noundef 0) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kblockd_mod_delayed_work_on(i32 noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_delay_kick_requeue_list(%struct.request_queue* noundef %q, i64 noundef %msecs) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %msecs to i32
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %conv) #23
  %requeue_work = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 38
  %call1 = call i32 @kblockd_mod_delayed_work_on(i32 noundef 256, %struct.delayed_work* noundef %requeue_work, i64 noundef %call2.i) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @blk_mq_tag_to_rq(%struct.blk_mq_tags* nocapture noundef readonly %tags, i32 noundef %tag) local_unnamed_addr #0 {
entry:
  %nr_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 0
  %0 = load i32, i32* %nr_tags, align 8
  %cmp = icmp ugt i32 %0, %tag
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 7
  %1 = load %struct.request**, %struct.request*** %rqs, align 8
  %idxprom = zext i32 %tag to i64
  %arrayidx = getelementptr %struct.request*, %struct.request** %1, i64 %idxprom
  %2 = bitcast %struct.request** %arrayidx to i8**
  %3 = load i8*, i8** %2, align 8
  call fastcc void @prefetch(i8* noundef %3) #24
  %4 = load %struct.request**, %struct.request*** %rqs, align 8
  %arrayidx3 = getelementptr %struct.request*, %struct.request** %4, i64 %idxprom
  %5 = load %struct.request*, %struct.request** %arrayidx3, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.request* [ %5, %if.then ], [ null, %entry ]
  ret %struct.request* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch(i8* noundef %ptr) unnamed_addr #0 {
entry:
  call void asm sideeffect "prfm pldl1keep, ${0:a}\0A", "r"(i8* %ptr) #22, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_mq_queue_inflight(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %busy = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %busy) #22
  store i8 0, i8* %busy, align 4
  call void @blk_mq_queue_tag_busy_iter(%struct.request_queue* noundef %q, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef nonnull @blk_mq_rq_inflight, i8* noundef nonnull %busy) #23
  %0 = load i8, i8* %busy, align 4, !range !21
  %tobool = icmp ne i8 %0, 0
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %busy) #22
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i1 @blk_mq_rq_inflight(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.request* noundef %rq, i8* nocapture noundef writeonly %priv, i1 noundef %reserved) #4 {
entry:
  %call = call fastcc i32 @blk_mq_request_started(%struct.request* noundef %rq) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %cmp = icmp eq %struct.request_queue* %0, %1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %priv, align 1
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %land.lhs.true ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_put_rq_ref(%struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %call = call i1 @is_flush_rq(%struct.request* noundef %rq) #23
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %end_io = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 28
  %0 = load void (%struct.request*, i8)*, void (%struct.request*, i8)** %end_io, align 8
  call void %0(%struct.request* noundef %rq, i8 noundef 0) #23
  br label %if.end3

if.else:                                          ; preds = %entry
  %ref = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 24
  %call1 = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %ref) #24
  br i1 %call1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  call fastcc void @__blk_mq_free_request(%struct.request* noundef %rq) #24
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_flush_rq(%struct.request* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_flush_busy_ctxs(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef %list) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.flush_busy_ctx_data, align 8
  %0 = bitcast %struct.flush_busy_ctx_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %hctx1 = getelementptr inbounds %struct.flush_busy_ctx_data, %struct.flush_busy_ctx_data* %data, i64 0, i32 0
  store %struct.blk_mq_hw_ctx* %hctx, %struct.blk_mq_hw_ctx** %hctx1, align 8
  %list2 = getelementptr inbounds %struct.flush_busy_ctx_data, %struct.flush_busy_ctx_data* %data, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %list2, align 8
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 10
  call fastcc void @sbitmap_for_each_set(%struct.sbitmap* noundef %ctx_map, i8* noundef nonnull %0) #24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_for_each_set(%struct.sbitmap* noundef %sb, i8* noundef %data) unnamed_addr #0 {
entry:
  call fastcc void @__sbitmap_for_each_set(%struct.sbitmap* noundef %sb, i32 noundef 0, i1 (%struct.sbitmap*, i32, i8*)* noundef nonnull @flush_busy_ctx, i8* noundef %data) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @flush_busy_ctx(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %bitnr, i8* nocapture noundef readonly %data) #0 {
entry:
  %hctx1 = bitcast i8* %data to %struct.blk_mq_hw_ctx**
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx1, align 8
  %ctxs = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 15
  %1 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %ctxs, align 8
  %idxprom = zext i32 %bitnr to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %arrayidx, align 8
  %type2 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 13
  %3 = load i16, i16* %type2, align 4
  %rlock.i = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %2, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %idxprom3 = zext i16 %3 to i64
  %arrayidx4 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %2, i64 0, i32 0, i32 1, i64 %idxprom3
  %list = getelementptr inbounds i8, i8* %data, i64 8
  %4 = bitcast i8* %list to %struct.list_head**
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8
  call fastcc void @list_splice_tail_init(%struct.list_head* noundef %arrayidx4, %struct.list_head* noundef %5) #24
  call fastcc void @sbitmap_clear_bit(%struct.sbitmap* noundef %sb, i32 noundef %bitnr) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  ret i1 true
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request* @blk_mq_dequeue_from_ctx(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_ctx* noundef readonly %start) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.dispatch_rq_data, align 8
  %tobool.not = icmp eq %struct.blk_mq_ctx* %start, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 13
  %0 = load i16, i16* %type, align 4
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %start, i64 0, i32 2, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry ]
  %2 = bitcast %struct.dispatch_rq_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #22
  %hctx1 = getelementptr inbounds %struct.dispatch_rq_data, %struct.dispatch_rq_data* %data, i64 0, i32 0
  store %struct.blk_mq_hw_ctx* %hctx, %struct.blk_mq_hw_ctx** %hctx1, align 8
  %rq = getelementptr inbounds %struct.dispatch_rq_data, %struct.dispatch_rq_data* %data, i64 0, i32 1
  store %struct.request* null, %struct.request** %rq, align 8
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 10
  call fastcc void @__sbitmap_for_each_set(%struct.sbitmap* noundef %ctx_map, i32 noundef %cond, i1 (%struct.sbitmap*, i32, i8*)* noundef nonnull @dispatch_rq_from_ctx, i8* noundef nonnull %2) #24
  %3 = load %struct.request*, %struct.request** %rq, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #22
  ret %struct.request* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sbitmap_for_each_set(%struct.sbitmap* noundef %sb, i32 noundef %start, i1 (%struct.sbitmap*, i32, i8*)* nocapture noundef readonly %fn, i8* noundef %data) unnamed_addr #0 {
entry:
  %word = alloca i64, align 8
  %depth = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 0
  %0 = load i32, i32* %depth, align 8
  %cmp.not = icmp ugt i32 %0, %start
  %spec.store.select = select i1 %cmp.not, i32 %start, i32 0
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %1 = load i32, i32* %shift, align 4
  %cmp394.not = icmp eq i32 %0, 0
  br i1 %cmp394.not, label %cleanup45, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %and = and i32 %spec.store.select, %sub
  %shr = lshr i32 %spec.store.select, %1
  %2 = bitcast i64* %word to i8*
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %3 = phi i32 [ %0, %while.body.lr.ph ], [ %11, %cleanup ]
  %index.097 = phi i32 [ %shr, %while.body.lr.ph ], [ %spec.store.select51, %cleanup ]
  %nr.096 = phi i32 [ %and, %while.body.lr.ph ], [ 0, %cleanup ]
  %scanned.095 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #22
  store i64 0, i64* %word, align 8, !annotation !8
  %4 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %idxprom = zext i32 %index.097 to i64
  %depth5 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %4, i64 %idxprom, i32 0
  %5 = load i64, i64* %depth5, align 64
  %6 = trunc i64 %5 to i32
  %conv7 = sub i32 %6, %nr.096
  %sub9 = sub i32 %3, %scanned.095
  %cmp10 = icmp ult i32 %conv7, %sub9
  %cond = select i1 %cmp10, i32 %conv7, i32 %sub9
  %add = add i32 %cond, %scanned.095
  %word15 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %4, i64 %idxprom, i32 2
  %7 = load i64, i64* %word15, align 64
  %cleared = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %4, i64 %idxprom, i32 4
  %8 = load i64, i64* %cleared, align 64
  %neg = xor i64 %8, -1
  %and19 = and i64 %7, %neg
  store i64 %and19, i64* %word, align 8
  %tobool.not = icmp eq i64 %and19, 0
  br i1 %tobool.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %while.body
  %add22 = add i32 %cond, %nr.096
  %conv25 = zext i32 %add22 to i64
  %conv2689 = zext i32 %nr.096 to i64
  %call90 = call fastcc i64 @find_next_bit(i64* noundef nonnull %word, i64 noundef %conv25, i64 noundef %conv2689) #24
  %conv2791 = trunc i64 %call90 to i32
  %cmp28.not92 = icmp ugt i32 %add22, %conv2791
  br i1 %cmp28.not92, label %if.end31, label %cleanup

while.cond23:                                     ; preds = %if.end31
  %inc = add nuw i32 %conv2793, 1
  %conv26 = zext i32 %inc to i64
  %call = call fastcc i64 @find_next_bit(i64* noundef nonnull %word, i64 noundef %conv25, i64 noundef %conv26) #24
  %conv27 = trunc i64 %call to i32
  %cmp28.not = icmp ugt i32 %add22, %conv27
  br i1 %cmp28.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %if.end21, %while.cond23
  %conv2793 = phi i32 [ %conv27, %while.cond23 ], [ %conv2791, %if.end21 ]
  %9 = load i32, i32* %shift, align 4
  %shl33 = shl i32 %index.097, %9
  %add34 = add i32 %shl33, %conv2793
  %call35 = call i1 %fn(%struct.sbitmap* noundef %sb, i32 noundef %add34, i8* noundef %data) #23, !callees !22
  br i1 %call35, label %while.cond23, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #22
  br label %cleanup45

cleanup:                                          ; preds = %while.cond23, %if.end21, %while.body
  %inc38 = add i32 %index.097, 1
  %10 = load i32, i32* %map_nr, align 8
  %cmp39.not = icmp ult i32 %inc38, %10
  %spec.store.select51 = select i1 %cmp39.not, i32 %inc38, i32 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #22
  %11 = load i32, i32* %depth, align 8
  %cmp3 = icmp ugt i32 %11, %add
  br i1 %cmp3, label %while.body, label %cleanup45

cleanup45:                                        ; preds = %cleanup, %entry, %cleanup.thread
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @dispatch_rq_from_ctx(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %bitnr, i8* nocapture noundef %data) #0 {
entry:
  %hctx1 = bitcast i8* %data to %struct.blk_mq_hw_ctx**
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx1, align 8
  %ctxs = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 15
  %1 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %ctxs, align 8
  %idxprom = zext i32 %bitnr to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %arrayidx, align 8
  %type2 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 13
  %3 = load i16, i16* %type2, align 4
  %rlock.i = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %2, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %idxprom3 = zext i16 %3 to i64
  %arrayidx4 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %2, i64 0, i32 0, i32 1, i64 %idxprom3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx4) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.list_head* %arrayidx4 to i8**
  %5 = load i8*, i8** %4, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 -72
  %rq = getelementptr inbounds i8, i8* %data, i64 8
  %6 = bitcast i8* %rq to i8**
  store i8* %add.ptr, i8** %6, align 8
  %7 = bitcast i8* %5 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %7) #24
  %call12 = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx4) #24
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then
  call fastcc void @sbitmap_clear_bit(%struct.sbitmap* noundef %sb, i32 noundef %bitnr) #24
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.then14, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  %rq17 = getelementptr inbounds i8, i8* %data, i64 8
  %8 = bitcast i8* %rq17 to %struct.request**
  %9 = load %struct.request*, %struct.request** %8, align 8
  %tobool18.not = icmp eq %struct.request* %9, null
  ret i1 %tobool18.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_mq_get_driver_tag(%struct.request* noundef %rq) local_unnamed_addr #0 {
entry:
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %1 = load i32, i32* %tag, align 8
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @__blk_mq_get_driver_tag(%struct.request* noundef %rq) #24
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 5
  %2 = load i64, i64* %flags, align 64
  %and = and i64 %2, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %if.end
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %3 = load i32, i32* %rq_flags, align 4
  %and2 = and i32 %3, 64
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %land.lhs.true1
  %or = or i32 %3, 64
  store i32 %or, i32* %rq_flags, align 4
  call fastcc void @__blk_mq_inc_active_requests(%struct.blk_mq_hw_ctx* noundef %0) #24
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true1, %if.end
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 19
  %4 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %4, i64 0, i32 7
  %5 = load %struct.request**, %struct.request*** %rqs, align 8
  %6 = load i32, i32* %tag, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr %struct.request*, %struct.request** %5, i64 %idxprom
  store %struct.request* %rq, %struct.request** %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end6
  %retval.0 = phi i1 [ true, %if.end6 ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__blk_mq_get_driver_tag(%struct.request* nocapture noundef %rq) unnamed_addr #0 {
entry:
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 19
  %1 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %1, i64 0, i32 3
  %2 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bitmap_tags, align 8
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %1, i64 0, i32 1
  %3 = load i32, i32* %nr_reserved_tags, align 4
  call fastcc void @blk_mq_tag_busy(%struct.blk_mq_hw_ctx* noundef %0) #24
  %4 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %4, i64 0, i32 20
  %5 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %internal_tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 6
  %6 = load i32, i32* %internal_tag, align 4
  %call5 = call fastcc i1 @blk_mq_tag_is_reserved(%struct.blk_mq_tags* noundef %5, i32 noundef %6) #24
  br i1 %call5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tags7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %4, i64 0, i32 19
  %7 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags7, align 8
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %7, i64 0, i32 4
  %8 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %breserved_tags, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  %call9 = call fastcc i1 @hctx_may_queue(%struct.blk_mq_hw_ctx* noundef %4, %struct.sbitmap_queue* noundef %2) #24
  br i1 %call9, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.else, %if.then
  %bt.0 = phi %struct.sbitmap_queue* [ %8, %if.then ], [ %2, %if.else ]
  %tag_offset.0 = phi i32 [ 0, %if.then ], [ %3, %if.else ]
  %call12 = call i32 @__sbitmap_queue_get(%struct.sbitmap_queue* noundef %bt.0) #23
  %cmp = icmp eq i32 %call12, -1
  br i1 %cmp, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end11
  %add = add i32 %call12, %tag_offset.0
  %tag15 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  store i32 %add, i32* %tag15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else, %if.end14
  %retval.0 = phi i1 [ true, %if.end14 ], [ false, %if.else ], [ false, %if.end11 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_inc_active_requests(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %conv = trunc i64 %0 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #24
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
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_active.sink) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_mq_dispatch_rq_list(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef %list, i32 noundef %nr_budgets) local_unnamed_addr #0 {
entry:
  %zone_list = alloca %struct.list_head, align 8
  %bd = alloca %struct.blk_mq_queue_data, align 8
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %1 = bitcast %struct.list_head* %zone_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #22
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %zone_list, i64 0, i32 0
  store %struct.list_head* %zone_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %zone_list, i64 0, i32 1
  store %struct.list_head* %zone_list, %struct.list_head** %prev, align 8
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.preheader, label %cleanup117

do.body.preheader:                                ; preds = %entry
  %2 = bitcast %struct.blk_mq_queue_data* %bd to i8*
  %3 = bitcast %struct.list_head* %list to i8**
  %4 = bitcast %struct.blk_mq_queue_data* %bd to i8**
  %last = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %bd, i64 0, i32 1
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond53
  %errors.0 = phi i32 [ %errors.2.ph, %do.cond53 ], [ 0, %do.body.preheader ]
  %queued.0 = phi i32 [ %queued.2.ph, %do.cond53 ], [ 0, %do.body.preheader ]
  %needs_resource.0.off0 = phi i1 [ %needs_resource.3.off0.ph, %do.cond53 ], [ false, %do.body.preheader ]
  %nr_budgets.addr.0 = phi i32 [ %spec.select, %do.cond53 ], [ %nr_budgets, %do.body.preheader ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !8
  %5 = load i8*, i8** %3, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 -72
  %6 = bitcast i8* %add.ptr to %struct.request*
  %mq_hctx = getelementptr i8, i8* %5, i64 -56
  %7 = bitcast i8* %mq_hctx to %struct.blk_mq_hw_ctx**
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %cmp.not = icmp eq %struct.blk_mq_hw_ctx* %8, %hctx
  br i1 %cmp.not, label %if.end11, label %if.then10, !prof !12

if.then10:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 1342; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !23
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body
  %tobool20.not = icmp eq i32 %nr_budgets.addr.0, 0
  %call23 = call fastcc i32 @blk_mq_prep_dispatch_rq(%struct.request* noundef %6, i1 noundef %tobool20.not) #24
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end11
  %9 = bitcast i8* %5 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %9) #24
  store i8* %add.ptr, i8** %4, align 8
  %call29 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else, label %if.end43

if.else:                                          ; preds = %if.end27
  %10 = load i8*, i8** %3, align 8
  %add.ptr38 = getelementptr i8, i8* %10, i64 -72
  %11 = bitcast i8* %add.ptr38 to %struct.request*
  %call39 = call i1 @blk_mq_get_driver_tag(%struct.request* noundef %11) #24
  %lnot40 = xor i1 %call39, true
  %frombool = zext i1 %lnot40 to i8
  br label %if.end43

if.end43:                                         ; preds = %if.end27, %if.else
  %storemerge = phi i8 [ %frombool, %if.else ], [ 1, %if.end27 ]
  store i8 %storemerge, i8* %last, align 8
  %dec = add i32 %nr_budgets.addr.0, -1
  %spec.select = select i1 %tobool20.not, i32 0, i32 %dec
  %12 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %queue_rq = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %12, i64 0, i32 0
  %13 = load i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)** %queue_rq, align 8
  %call47 = call i8 %13(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_queue_data* noundef nonnull %bd) #23
  switch i8 %call47, label %sw.default [
    i8 0, label %sw.bb
    i8 9, label %sw.bb50.loopexit324
    i8 13, label %sw.bb50
    i8 14, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end43
  %inc = add i32 %queued.0, 1
  br label %do.cond53

sw.bb50.loopexit324:                              ; preds = %if.end43
  br label %sw.bb50

sw.bb50:                                          ; preds = %if.end43, %sw.bb50.loopexit324
  %needs_resource.1.off0 = phi i1 [ true, %sw.bb50.loopexit324 ], [ %needs_resource.0.off0, %if.end43 ]
  %14 = bitcast i8* %add.ptr to %struct.request*
  call fastcc void @blk_mq_handle_dev_resource(%struct.request* noundef %14, %struct.list_head* noundef %list) #24
  br label %cleanup

sw.bb51:                                          ; preds = %if.end43
  call fastcc void @blk_mq_handle_zone_resource(%struct.request* noundef %6, %struct.list_head* noundef nonnull %zone_list) #24
  br label %do.cond53

sw.default:                                       ; preds = %if.end43
  %inc52 = add i32 %errors.0, 1
  call void @blk_mq_end_request(%struct.request* noundef %6, i8 noundef %call47) #24
  br label %do.cond53

cleanup:                                          ; preds = %if.end11, %sw.bb50
  %needs_resource.3.off0 = phi i1 [ %needs_resource.1.off0, %sw.bb50 ], [ %needs_resource.0.off0, %if.end11 ]
  %nr_budgets.addr.2 = phi i32 [ %spec.select, %sw.bb50 ], [ %nr_budgets.addr.0, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #22
  br label %out

do.cond53:                                        ; preds = %sw.default, %sw.bb51, %sw.bb
  %errors.2.ph = phi i32 [ %errors.0, %sw.bb ], [ %errors.0, %sw.bb51 ], [ %inc52, %sw.default ]
  %queued.2.ph = phi i32 [ %inc, %sw.bb ], [ %queued.0, %sw.bb51 ], [ %queued.0, %sw.default ]
  %needs_resource.3.off0.ph = phi i1 [ %needs_resource.0.off0, %sw.bb ], [ true, %sw.bb51 ], [ %needs_resource.0.off0, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #22
  %call54 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body, label %out

out:                                              ; preds = %do.cond53, %cleanup
  %call23261 = phi i32 [ %call23, %cleanup ], [ 0, %do.cond53 ]
  %nr_budgets.addr.2203 = phi i32 [ %nr_budgets.addr.2, %cleanup ], [ %spec.select, %do.cond53 ]
  %needs_resource.3.off0202 = phi i1 [ %needs_resource.3.off0, %cleanup ], [ %needs_resource.3.off0.ph, %do.cond53 ]
  %queued.2198 = phi i32 [ %queued.0, %cleanup ], [ %queued.2.ph, %do.cond53 ]
  %errors.2196 = phi i32 [ %errors.0, %cleanup ], [ %errors.2.ph, %do.cond53 ]
  %call59 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %zone_list) #24
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %out
  call fastcc void @list_splice_tail_init(%struct.list_head* noundef nonnull %zone_list, %struct.list_head* noundef %list) #24
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %out
  %call63 = call fastcc i32 @queued_to_index(i32 noundef %queued.2198) #24
  %idxprom = zext i32 %call63 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 23, i64 %idxprom
  %15 = load i64, i64* %arrayidx, align 8
  %inc64 = add i64 %15, 1
  store i64 %inc64, i64* %arrayidx, align 8
  %call65 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool66 = icmp eq i32 %call65, 0
  %tobool67 = icmp ne i32 %errors.2196, 0
  %or.cond = select i1 %tobool66, i1 true, i1 %tobool67
  br i1 %or.cond, label %land.lhs.true, label %if.end75

land.lhs.true:                                    ; preds = %if.end62
  %16 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %commit_rqs = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %16, i64 0, i32 1
  %17 = load void (%struct.blk_mq_hw_ctx*)*, void (%struct.blk_mq_hw_ctx*)** %commit_rqs, align 8
  %tobool69 = icmp ne void (%struct.blk_mq_hw_ctx*)* %17, null
  %tobool71 = icmp ne i32 %queued.2198, 0
  %or.cond126 = select i1 %tobool69, i1 %tobool71, i1 false
  br i1 %or.cond126, label %if.then72, label %if.end75

if.then72:                                        ; preds = %land.lhs.true
  call void %17(%struct.blk_mq_hw_ctx* noundef %hctx) #23
  br label %if.end75

if.end75:                                         ; preds = %if.end62, %if.then72, %land.lhs.true
  %call76 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.else113

if.then78:                                        ; preds = %if.end75
  %cmp79 = icmp eq i32 %call23261, 1
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then78
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %18 = load i64, i64* %flags, align 64
  %and = and i64 %18, 2
  %tobool81 = icmp ne i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then78
  %19 = phi i1 [ false, %if.then78 ], [ %tobool81, %land.rhs ]
  %tobool83.not = icmp eq i32 %nr_budgets.addr.2203, 0
  br i1 %tobool83.not, label %if.end85, label %if.then84

if.then84:                                        ; preds = %land.end
  call fastcc void @blk_mq_release_budgets(%struct.request_queue* noundef %0, %struct.list_head* noundef %list) #24
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %land.end
  %rlock.i = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 1
  call fastcc void @list_splice_tail_init(%struct.list_head* noundef %list, %struct.list_head* noundef %dispatch) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !24
  %call87 = call fastcc i1 @blk_mq_sched_needs_restart(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  %cmp89 = icmp eq i32 %call23261, 2
  %spec.select189 = select i1 %cmp89, i1 true, i1 %needs_resource.3.off0202
  br i1 %call87, label %lor.lhs.false94, label %if.then101

lor.lhs.false94:                                  ; preds = %if.end85
  br i1 %19, label %land.lhs.true97, label %land.lhs.true105

land.lhs.true97:                                  ; preds = %lor.lhs.false94
  %entry98 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 17, i32 3
  %call99 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %entry98) #24
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true105, label %if.then101

if.then101:                                       ; preds = %land.lhs.true97, %if.end85
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef true) #24
  br label %if.end110

land.lhs.true105:                                 ; preds = %lor.lhs.false94, %land.lhs.true97
  br i1 %spec.select189, label %if.then108, label %if.end110

if.then108:                                       ; preds = %land.lhs.true105
  call void @blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i64 noundef 3) #24
  br label %if.end110

if.end110:                                        ; preds = %land.lhs.true105, %if.then108, %if.then101
  call fastcc void @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef true) #24
  br label %cleanup117

if.else113:                                       ; preds = %if.end75
  call fastcc void @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef false) #24
  %add = sub i32 0, %errors.2196
  %cmp115 = icmp ne i32 %queued.2198, %add
  br label %cleanup117

cleanup117:                                       ; preds = %entry, %if.else113, %if.end110
  %retval.0 = phi i1 [ %cmp115, %if.else113 ], [ false, %if.end110 ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #22
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_prep_dispatch_rq(%struct.request* noundef %rq, i1 noundef %need_budget) unnamed_addr #0 {
entry:
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  br i1 %need_budget, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %call = call fastcc i32 @blk_mq_get_dispatch_budget(%struct.request_queue* noundef %1) #24
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call fastcc void @blk_mq_put_driver_tag(%struct.request* noundef %rq) #24
  br label %cleanup

if.end:                                           ; preds = %if.then
  call fastcc void @blk_mq_set_rq_budget_token(%struct.request* noundef %rq, i32 noundef %call) #24
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %budget_token.0 = phi i32 [ %call, %if.end ], [ -1, %entry ]
  %call3 = call i1 @blk_mq_get_driver_tag(%struct.request* noundef %rq) #24
  br i1 %call3, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call5 = call fastcc i1 @blk_mq_mark_tag_wait(%struct.blk_mq_hw_ctx* noundef %0, %struct.request* noundef %rq) #24
  %need_budget.not = xor i1 %need_budget, true
  %brmerge = or i1 %call5, %need_budget.not
  %not.call5 = xor i1 %call5, true
  %.mux = zext i1 %not.call5 to i32
  br i1 %brmerge, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.then4
  %q9 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %2 = load %struct.request_queue*, %struct.request_queue** %q9, align 8
  call fastcc void @blk_mq_put_dispatch_budget(%struct.request_queue* noundef %2, i32 noundef %budget_token.0) #24
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end2, %if.then8, %if.then1
  %retval.0 = phi i32 [ 2, %if.then1 ], [ 1, %if.then8 ], [ %.mux, %if.then4 ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #24
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_handle_dev_resource(%struct.request* noundef %rq, %struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next1, align 8
  %cmp.not = icmp eq %struct.list_head* %0, %list
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -5, i32 1
  %tobool.not16 = icmp eq %struct.list_head** %add.ptr, null
  %tobool.not = or i1 %cmp.not, %tobool.not16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.list_head** %add.ptr to %struct.request*
  call fastcc void @blk_mq_put_driver_tag(%struct.request* noundef nonnull %1) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  call fastcc void @list_add(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %list) #24
  call fastcc void @__blk_mq_requeue_request(%struct.request* noundef %rq) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_handle_zone_resource(%struct.request* noundef %rq, %struct.list_head* noundef %zone_list) unnamed_addr #0 {
entry:
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  call fastcc void @list_add(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %zone_list) #24
  call fastcc void @__blk_mq_requeue_request(%struct.request* noundef %rq) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_tail_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #24
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @queued_to_index(i32 noundef %queued) unnamed_addr #9 {
entry:
  %tobool.not = icmp eq i32 %queued, 0
  br i1 %tobool.not, label %return, label %cond.end3

cond.end3:                                        ; preds = %entry
  %call = call fastcc i32 @__ilog2_u32(i32 noundef %queued) #26
  %add = add i32 %call, 1
  %0 = icmp slt i32 %add, 6
  %cond10 = select i1 %0, i32 %add, i32 6
  br label %return

return:                                           ; preds = %entry, %cond.end3
  %retval.0 = phi i32 [ %cond10, %cond.end3 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_release_budgets(%struct.request_queue* noundef %q, %struct.list_head* noundef readonly %list) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.list_head* %list to i8**
  %.pn18 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn18 to %struct.list_head*
  %cmp.not19 = icmp eq %struct.list_head* %1, %list
  br i1 %cmp.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %.pn20 = phi i8* [ %.pn, %if.end ], [ %.pn18, %entry ]
  %rq.0.in = getelementptr i8, i8* %.pn20, i64 -72
  %rq.0 = bitcast i8* %rq.0.in to %struct.request*
  %call = call fastcc i32 @blk_mq_get_rq_budget_token(%struct.request* noundef %rq.0) #24
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call fastcc void @blk_mq_put_dispatch_budget(%struct.request_queue* noundef %q, i32 noundef %call) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = bitcast i8* %.pn20 to i8**
  %.pn = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %3, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_mq_sched_needs_restart(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #4 {
entry:
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 4
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #22, !srcloc !25
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef %async) local_unnamed_addr #0 {
entry:
  %srcu_idx = alloca i32, align 4
  %0 = bitcast i32* %srcu_idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #22
  store i32 0, i32* %srcu_idx, align 4, !annotation !8
  call fastcc void @hctx_lock(%struct.blk_mq_hw_ctx* noundef %hctx, i32* noundef nonnull %srcu_idx) #24
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 11
  %2 = load volatile i64, i64* %queue_flags, align 8
  %3 = and i64 %2, 16777216
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.critedge

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i1 @blk_mq_hctx_has_pending(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  %4 = load i32, i32* %srcu_idx, align 4
  call fastcc void @hctx_unlock(%struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %4) #24
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %land.rhs
  call fastcc void @__blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef %async, i64 noundef 0) #24
  br label %if.end

if.end.critedge:                                  ; preds = %entry
  %5 = load i32, i32* %srcu_idx, align 4
  call fastcc void @hctx_unlock(%struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %5) #24
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %if.then, %land.rhs
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i64 noundef %msecs) local_unnamed_addr #0 {
entry:
  call fastcc void @__blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef true, i64 noundef %msecs) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* nocapture noundef %hctx, i1 noundef %busy) unnamed_addr #10 {
entry:
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 12
  %0 = load i32, i32* %dispatch_busy, align 16
  %tobool.not = icmp ne i32 %0, 0
  %brmerge = or i1 %tobool.not, %busy
  br i1 %brmerge, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %0, 7
  %add = add i32 %mul, 16
  %spec.select = select i1 %busy, i32 %add, i32 %mul
  %div = lshr i32 %spec.select, 3
  store i32 %div, i32* %dispatch_busy, align 16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef %async, i64 noundef %msecs) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br i1 %call, label %return, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  br i1 %async, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 32
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end12

if.then4:                                         ; preds = %land.lhs.true
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !26
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call7, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 2, i64 0
  %call8 = call fastcc i32 @cpumask_test_cpu(i32 noundef %2, %struct.cpumask* noundef %arraydecay) #24
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then4
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br label %if.end12

cleanup:                                          ; preds = %if.then4
  call fastcc void @__blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !28
  br label %return

if.end12:                                         ; preds = %cleanup.thread, %land.lhs.true, %if.end
  %call13 = call fastcc i32 @blk_mq_hctx_next_cpu(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  %run_work = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 1
  %conv14 = trunc i64 %msecs to i32
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %conv14) #23
  %call16 = call i32 @kblockd_mod_delayed_work_on(i32 noundef %call13, %struct.delayed_work* noundef %run_work, i64 noundef %call2.i) #23
  br label %return

return:                                           ; preds = %cleanup, %entry, %if.end12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hctx_lock(%struct.blk_mq_hw_ctx* noundef %hctx, i32* nocapture noundef writeonly %srcu_idx) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %srcu_idx, align 4
  call fastcc void @__rcu_read_lock() #23
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 34, i64 0
  %call = call fastcc i32 @srcu_read_lock(%struct.srcu_struct* noundef %arraydecay) #24
  store i32 %call, i32* %srcu_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_hctx_has_pending(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 1
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %dispatch) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 10
  %call1 = call i1 @sbitmap_any_bit_set(%struct.sbitmap* noundef %ctx_map) #23
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %call2 = call fastcc i1 @blk_mq_sched_has_work(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %0 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hctx_unlock(%struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %srcu_idx) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @rcu_read_unlock() #24
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 34, i64 0
  call fastcc void @srcu_read_unlock(%struct.srcu_struct* noundef %arraydecay, i32 noundef %srcu_idx) #24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_mq_has_sqsched(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #5 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %0, i64 0, i32 0
  %1 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %dispatch_request = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 1, i32 14
  %2 = load %struct.request* (%struct.blk_mq_hw_ctx*)*, %struct.request* (%struct.blk_mq_hw_ctx*)** %dispatch_request, align 8
  %tobool1.not = icmp eq %struct.request* (%struct.blk_mq_hw_ctx*)* %2, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %elevator_features = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %1, i64 0, i32 7
  %3 = load i32, i32* %elevator_features, align 8
  %and = and i32 %3, 2
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true2, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true2 ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc %struct.blk_mq_hw_ctx* @blk_mq_get_sq_hctx(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #11 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue_type(%struct.request_queue* noundef %q, i32 noundef 0, i32 noundef %1) #24
  %call3 = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %call2) #24
  %.call2 = select i1 %call3, %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx* %call2
  ret %struct.blk_mq_hw_ctx* %.call2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #4 {
entry:
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %0 = load volatile i64, i64* %state, align 8
  %conv.i1 = and i64 %0, 1
  %tobool = icmp ne i64 %conv.i1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_delay_run_hw_queues(%struct.request_queue* nocapture noundef readonly %q, i64 noundef %msecs) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_mq_has_sqsched(%struct.request_queue* noundef %q) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_get_sq_hctx(%struct.request_queue* noundef %q) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sq_hctx.0 = phi %struct.blk_mq_hw_ctx* [ %call1, %if.then ], [ null, %entry ]
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp24.not = icmp eq i32 %0, 0
  br i1 %cmp24.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %tobool5.not = icmp eq %struct.blk_mq_hw_ctx* %sq_hctx.0, null
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %i.025 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %1 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.025 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %call2 = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %2) #24
  br i1 %call2, label %for.inc, label %if.end4

if.end4:                                          ; preds = %land.rhs
  %cmp6 = icmp eq %struct.blk_mq_hw_ctx* %sq_hctx.0, %2
  %or.cond = or i1 %tobool5.not, %cmp6
  br i1 %or.cond, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end4
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 0, i32 1
  %call8 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %dispatch) #24
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %for.inc

if.then10:                                        ; preds = %lor.lhs.false7, %if.end4
  call void @blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %2, i64 noundef %msecs) #24
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false7, %if.then10, %land.rhs
  %inc = add nuw i32 %i.025, 1
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %land.rhs, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i1 @blk_mq_queue_stopped(%struct.request_queue* nocapture noundef readonly %q) local_unnamed_addr #8 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp7.not = icmp eq i32 %0, 0
  br i1 %cmp7.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %1 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.08 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %idxprom
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %call = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %3) #24
  %inc = add nuw i32 %i.08, 1
  br i1 %call, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %cmp.lcssa = phi i1 [ false, %entry ], [ %call, %for.cond ], [ %call, %for.body ]
  ret i1 %cmp.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_stop_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx) local_unnamed_addr #0 {
entry:
  %run_work = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 1
  %call = call i1 @cancel_delayed_work(%struct.delayed_work* noundef %run_work) #23
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %state) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_delayed_work(%struct.delayed_work* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_stop_hw_queues(%struct.request_queue* nocapture noundef readonly %q) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp6.not = icmp eq i32 %0, 0
  br i1 %cmp6.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %1 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.07 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  call void @blk_mq_stop_hw_queue(%struct.blk_mq_hw_ctx* noundef %2) #24
  %inc = add nuw i32 %i.07, 1
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_start_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %state) #24
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef false) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_start_hw_queues(%struct.request_queue* nocapture noundef readonly %q) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp6.not = icmp eq i32 %0, 0
  br i1 %cmp6.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %1 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.07 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  call void @blk_mq_start_hw_queue(%struct.blk_mq_hw_ctx* noundef %2) #24
  %inc = add nuw i32 %i.07, 1
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_start_stopped_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef %async) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %state) #24
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef %async) #24
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_start_stopped_hw_queues(%struct.request_queue* nocapture noundef readonly %q, i1 noundef %async) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp7.not = icmp eq i32 %0, 0
  br i1 %cmp7.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %1 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.08 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  call void @blk_mq_start_stopped_hw_queue(%struct.blk_mq_hw_ctx* noundef %2, i1 noundef %async) #24
  %inc = add nuw i32 %i.08, 1
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__blk_mq_insert_request(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.request* noundef %rq, i1 noundef %at_head) local_unnamed_addr #0 {
entry:
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %0 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  call fastcc void @__blk_mq_insert_req_list(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* noundef %rq, i1 noundef %at_head) #24
  call fastcc void @blk_mq_hctx_mark_pending(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_ctx* noundef %0) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_insert_req_list(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.request* noundef %rq, i1 noundef %at_head) unnamed_addr #8 {
entry:
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %0 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %type1 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 13
  %1 = load i16, i16* %type1, align 4
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  %idxprom = zext i16 %1 to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %0, i64 0, i32 0, i32 1, i64 %idxprom
  br i1 %at_head, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @list_add(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %arrayidx) #24
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @list_add_tail(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %arrayidx) #24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_hctx_mark_pending(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.blk_mq_ctx* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 13
  %0 = load i16, i16* %type, align 4
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 2, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 10
  %call = call fastcc i32 @sbitmap_test_bit(%struct.sbitmap* noundef %ctx_map, i32 noundef %conv) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @sbitmap_set_bit(%struct.sbitmap* noundef %ctx_map, i32 noundef %conv) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_request_bypass_insert(%struct.request* noundef %rq, i1 noundef %at_head, i1 noundef %run_queue) local_unnamed_addr #0 {
entry:
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %rlock.i = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 0, i32 1
  br i1 %at_head, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @list_add(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %dispatch) #24
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @list_add_tail(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %dispatch) #24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  br i1 %run_queue, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %0, i1 noundef false) #24
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_insert_requests(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.blk_mq_ctx* noundef %ctx, %struct.list_head* noundef %list) local_unnamed_addr #0 {
entry:
  %type1 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 13
  %0 = load i16, i16* %type1, align 4
  %1 = bitcast %struct.list_head* %list to i8**
  %.pn41 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn41 to %struct.list_head*
  %cmp.not42 = icmp eq %struct.list_head* %2, %list
  br i1 %cmp.not42, label %for.end, label %do.body3

do.body3:                                         ; preds = %entry, %do.end16
  %.pn43 = phi i8* [ %.pn, %do.end16 ], [ %.pn41, %entry ]
  %mq_ctx = getelementptr i8, i8* %.pn43, i64 -64
  %3 = bitcast i8* %mq_ctx to %struct.blk_mq_ctx**
  %4 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %3, align 8
  %cmp4.not = icmp eq %struct.blk_mq_ctx* %4, %ctx
  br i1 %cmp4.not, label %do.end16, label %do.body9, !prof !12

do.body9:                                         ; preds = %do.body3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 1892; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !29
  unreachable

do.end16:                                         ; preds = %do.body3
  %5 = bitcast i8* %.pn43 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %6, %list
  br i1 %cmp.not, label %for.end, label %do.body3

for.end:                                          ; preds = %do.end16, %entry
  %rlock.i = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 0, i32 1, i64 %idxprom
  call fastcc void @list_splice_tail_init(%struct.list_head* noundef %list, %struct.list_head* noundef %arrayidx) #24
  call fastcc void @blk_mq_hctx_mark_pending(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_ctx* noundef %ctx) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_flush_plug_list(%struct.blk_plug* noundef %plug, i1 noundef %from_schedule) local_unnamed_addr #0 {
entry:
  %list = alloca %struct.list_head, align 8
  %rq_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  %mq_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mq_list) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @list_splice_init(%struct.list_head* noundef %mq_list, %struct.list_head* noundef nonnull %list) #24
  %rq_count = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 2
  %1 = load i16, i16* %rq_count, align 8
  %cmp = icmp ugt i16 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %multiple_queues = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 3
  %2 = load i8, i8* %multiple_queues, align 2, !range !21
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  call void @list_sort(i8* noundef null, %struct.list_head* noundef nonnull %list, i32 (i8*, %struct.list_head*, %struct.list_head*)* noundef nonnull @plug_rq_cmp) #23
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  store i16 0, i16* %rq_count, align 8
  %3 = bitcast %struct.list_head* %rq_list to i8*
  %4 = bitcast %struct.list_head* %list to i8**
  br label %do.body

do.body:                                          ; preds = %for.end, %if.end6
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !8
  %5 = load i8*, i8** %4, align 8
  %mq_hctx = getelementptr i8, i8* %5, i64 -56
  %6 = bitcast i8* %mq_hctx to %struct.blk_mq_hw_ctx**
  %7 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %mq_ctx = getelementptr i8, i8* %5, i64 -64
  %8 = bitcast i8* %mq_ctx to %struct.blk_mq_ctx**
  %9 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %8, align 8
  %next10 = bitcast i8* %5 to %struct.list_head**
  %pos.081 = load %struct.list_head*, %struct.list_head** %next10, align 8
  %cmp11.not82 = icmp eq %struct.list_head* %pos.081, %list
  br i1 %cmp11.not82, label %for.end, label %for.body

for.body:                                         ; preds = %do.body, %if.end42
  %pos.083 = phi %struct.list_head* [ %pos.0, %if.end42 ], [ %pos.081, %do.body ]
  %add.ptr18 = getelementptr %struct.list_head, %struct.list_head* %pos.083, i64 -5, i32 1
  %q = bitcast %struct.list_head** %add.ptr18 to %struct.request_queue**
  %10 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %tobool20.not = icmp eq %struct.request_queue* %10, null
  br i1 %tobool20.not, label %do.body26, label %do.end34, !prof !9

do.body26:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 1939; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !30
  unreachable

do.end34:                                         ; preds = %for.body
  %mq_hctx35 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr18, i64 2
  %11 = bitcast %struct.list_head** %mq_hctx35 to %struct.blk_mq_hw_ctx**
  %12 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %11, align 8
  %cmp36.not = icmp eq %struct.blk_mq_hw_ctx* %12, %7
  br i1 %cmp36.not, label %lor.lhs.false, label %for.end

lor.lhs.false:                                    ; preds = %do.end34
  %mq_ctx38 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr18, i64 1
  %13 = bitcast %struct.list_head** %mq_ctx38 to %struct.blk_mq_ctx**
  %14 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %13, align 8
  %cmp39.not = icmp eq %struct.blk_mq_ctx* %14, %9
  br i1 %cmp39.not, label %if.end42, label %for.end

if.end42:                                         ; preds = %lor.lhs.false
  %next43 = getelementptr inbounds %struct.list_head, %struct.list_head* %pos.083, i64 0, i32 0
  %pos.0 = load %struct.list_head*, %struct.list_head** %next43, align 8
  %cmp11.not = icmp eq %struct.list_head* %pos.0, %list
  br i1 %cmp11.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end42, %lor.lhs.false, %do.end34, %do.body
  %pos.0.lcssa = phi %struct.list_head* [ %list, %do.body ], [ %pos.083, %do.end34 ], [ %pos.083, %lor.lhs.false ], [ %list, %if.end42 ]
  call fastcc void @list_cut_before(%struct.list_head* noundef nonnull %rq_list, %struct.list_head* noundef nonnull %list, %struct.list_head* noundef %pos.0.lcssa) #24
  call void @blk_mq_sched_insert_requests(%struct.blk_mq_hw_ctx* noundef %7, %struct.blk_mq_ctx* noundef %9, %struct.list_head* noundef nonnull %rq_list, i1 noundef %from_schedule) #23
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #22
  %call50 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %list) #24
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body, label %cleanup

cleanup:                                          ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #24
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(i8* noundef, %struct.list_head* noundef, i32 (i8*, %struct.list_head*, %struct.list_head*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @plug_rq_cmp(i8* nocapture noundef readnone %priv, %struct.list_head* nocapture noundef readonly %a, %struct.list_head* nocapture noundef readonly %b) #5 {
entry:
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %a, i64 -5, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.request*
  %add.ptr6 = getelementptr %struct.list_head, %struct.list_head* %b, i64 -5, i32 1
  %1 = bitcast %struct.list_head** %add.ptr6 to %struct.request*
  %mq_ctx = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 1
  %2 = bitcast %struct.list_head** %mq_ctx to %struct.blk_mq_ctx**
  %3 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %2, align 8
  %mq_ctx7 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr6, i64 1
  %4 = bitcast %struct.list_head** %mq_ctx7 to %struct.blk_mq_ctx**
  %5 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %cmp.not = icmp eq %struct.blk_mq_ctx* %3, %5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp10 = icmp ugt %struct.blk_mq_ctx* %3, %5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mq_hctx = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 2
  %6 = bitcast %struct.list_head** %mq_hctx to %struct.blk_mq_hw_ctx**
  %7 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %mq_hctx11 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr6, i64 2
  %8 = bitcast %struct.list_head** %mq_hctx11 to %struct.blk_mq_hw_ctx**
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %cmp12.not = icmp eq %struct.blk_mq_hw_ctx* %7, %9
  br i1 %cmp12.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.end
  %cmp17 = icmp ugt %struct.blk_mq_hw_ctx* %7, %9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call = call fastcc i64 @blk_rq_pos(%struct.request* noundef %0) #24
  %call20 = call fastcc i64 @blk_rq_pos(%struct.request* noundef %1) #24
  %cmp21 = icmp ugt i64 %call, %call20
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then14, %if.then
  %retval.0.in = phi i1 [ %cmp10, %if.then ], [ %cmp17, %if.then14 ], [ %cmp21, %if.end19 ]
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_cut_before(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %entry1) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %entry1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #24
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_insert_requests(%struct.blk_mq_hw_ctx* noundef, %struct.blk_mq_ctx* noundef, %struct.list_head* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8 @blk_mq_request_issue_directly(%struct.request* noundef %rq, i1 noundef %last) local_unnamed_addr #0 {
entry:
  %srcu_idx = alloca i32, align 4
  %unused_cookie = alloca i32, align 4
  %0 = bitcast i32* %srcu_idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #22
  store i32 0, i32* %srcu_idx, align 4, !annotation !8
  %1 = bitcast i32* %unused_cookie to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #22
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  call fastcc void @hctx_lock(%struct.blk_mq_hw_ctx* noundef %2, i32* noundef nonnull %srcu_idx) #24
  %call = call fastcc i8 @__blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* noundef %2, %struct.request* noundef %rq, i32* noundef nonnull %unused_cookie, i1 noundef true, i1 noundef %last) #24
  %3 = load i32, i32* %srcu_idx, align 4
  call fastcc void @hctx_unlock(%struct.blk_mq_hw_ctx* noundef %2, i32 noundef %3) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #22
  ret i8 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @__blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* noundef %rq, i32* nocapture noundef writeonly %cookie, i1 noundef %bypass_insert, i1 noundef %last) unnamed_addr #0 {
entry:
  %q2 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q2, align 8
  %call = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br i1 %call, label %if.end18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 11
  %1 = load volatile i64, i64* %queue_flags, align 8
  %2 = and i64 %1, 16777216
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.end18

if.end:                                           ; preds = %lor.lhs.false
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %3 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool4.not = icmp eq %struct.elevator_queue* %3, null
  %brmerge = or i1 %tobool4.not, %bypass_insert
  br i1 %brmerge, label %if.end7, label %insert

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @blk_mq_get_dispatch_budget(%struct.request_queue* noundef %0) #24
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %insert, label %if.end10

if.end10:                                         ; preds = %if.end7
  call fastcc void @blk_mq_set_rq_budget_token(%struct.request* noundef %rq, i32 noundef %call8) #24
  %call11 = call i1 @blk_mq_get_driver_tag(%struct.request* noundef %rq) #24
  br i1 %call11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call fastcc void @blk_mq_put_dispatch_budget(%struct.request_queue* noundef %0, i32 noundef %call8) #24
  br i1 %bypass_insert, label %cleanup, label %if.end18

if.end13:                                         ; preds = %if.end10
  %call15 = call fastcc i8 @__blk_mq_issue_directly(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* noundef %rq, i32* noundef %cookie, i1 noundef %last) #24
  br label %cleanup

insert:                                           ; preds = %if.end, %if.end7
  br i1 %bypass_insert, label %cleanup, label %if.end18

if.end18:                                         ; preds = %entry, %lor.lhs.false, %if.then12, %insert
  %run_queue.0.off037 = phi i1 [ true, %insert ], [ true, %if.then12 ], [ false, %lor.lhs.false ], [ false, %entry ]
  call void @blk_mq_sched_insert_request(%struct.request* noundef %rq, i1 noundef false, i1 noundef %run_queue.0.off037, i1 noundef false) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %insert, %if.end18, %if.end13
  %retval.0 = phi i8 [ 0, %if.end18 ], [ %call15, %if.end13 ], [ 9, %insert ], [ 9, %if.then12 ]
  ret i8 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_try_issue_list_directly(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.list_head* noundef %list) local_unnamed_addr #0 {
entry:
  %call57 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool.not58 = icmp eq i32 %call57, 0
  br i1 %tobool.not58, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.list_head* %list to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %queued.060 = phi i32 [ 0, %while.body.lr.ph ], [ %queued.2, %cleanup ]
  %errors.059 = phi i32 [ 0, %while.body.lr.ph ], [ %errors.2, %cleanup ]
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -72
  %2 = bitcast i8* %add.ptr to %struct.request*
  %3 = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %3) #24
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool2 = icmp ne i32 %call1, 0
  %call3 = call i8 @blk_mq_request_issue_directly(%struct.request* noundef %2, i1 noundef %tobool2) #24
  %cmp.not = icmp eq i8 %call3, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %4 = and i8 %call3, -5
  %5 = icmp eq i8 %4, 9
  br i1 %5, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %if.then
  %6 = bitcast i8* %add.ptr to %struct.request*
  %call12 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool13 = icmp ne i32 %call12, 0
  call void @blk_mq_request_bypass_insert(%struct.request* noundef %6, i1 noundef false, i1 noundef %tobool13) #24
  br label %while.end

if.end:                                           ; preds = %if.then
  call void @blk_mq_end_request(%struct.request* noundef %2, i8 noundef %call3) #24
  %inc = add i32 %errors.059, 1
  br label %cleanup

if.else:                                          ; preds = %while.body
  %inc14 = add i32 %queued.060, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else
  %errors.2 = phi i32 [ %inc, %if.end ], [ %errors.059, %if.else ]
  %queued.2 = phi i32 [ %queued.060, %if.end ], [ %inc14, %if.else ]
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %entry, %cleanup.thread
  %errors.056 = phi i32 [ %errors.059, %cleanup.thread ], [ 0, %entry ], [ %errors.2, %cleanup ]
  %queued.054 = phi i32 [ %queued.060, %cleanup.thread ], [ 0, %entry ], [ %queued.2, %cleanup ]
  %call17 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #24
  %tobool18 = icmp eq i32 %call17, 0
  %tobool20 = icmp ne i32 %errors.056, 0
  %or.cond29 = select i1 %tobool18, i1 true, i1 %tobool20
  br i1 %or.cond29, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %while.end
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %7 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i64 0, i32 5
  %8 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %commit_rqs = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %8, i64 0, i32 1
  %9 = load void (%struct.blk_mq_hw_ctx*)*, void (%struct.blk_mq_hw_ctx*)** %commit_rqs, align 8
  %tobool21 = icmp ne void (%struct.blk_mq_hw_ctx*)* %9, null
  %tobool23 = icmp ne i32 %queued.054, 0
  %or.cond30 = select i1 %tobool21, i1 %tobool23, i1 false
  br i1 %or.cond30, label %if.then24, label %if.end28

if.then24:                                        ; preds = %land.lhs.true
  call void %9(%struct.blk_mq_hw_ctx* noundef %hctx) #23
  br label %if.end28

if.end28:                                         ; preds = %while.end, %if.then24, %land.lhs.true
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_submit_bio(%struct.bio* noundef %bio) local_unnamed_addr #0 {
entry:
  %bio.addr = alloca %struct.bio*, align 8
  %data = alloca %struct.blk_mq_alloc_data, align 8
  %same_queue_rq = alloca %struct.request*, align 8
  %nr_segs = alloca i32, align 4
  %cookie = alloca i32, align 4
  store %struct.bio* %bio, %struct.bio** %bio.addr, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 1
  %0 = load %struct.block_device*, %struct.block_device** %bi_bdev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %0, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 9
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %3 = load i32, i32* %bi_opf, align 8
  %call = call fastcc i1 @op_is_sync(i32 noundef %3) #24
  %call2 = call fastcc i1 @op_is_flush(i32 noundef %3) #24
  %4 = bitcast %struct.blk_mq_alloc_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #22
  %q4 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  %5 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  %6 = bitcast i32* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store %struct.request_queue* %2, %struct.request_queue** %q4, align 8
  %7 = bitcast %struct.request** %same_queue_rq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #22
  store %struct.request* null, %struct.request** %same_queue_rq, align 8
  %8 = bitcast i32* %nr_segs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #22
  store i32 0, i32* %nr_segs, align 4, !annotation !8
  %9 = bitcast i32* %cookie to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #22
  call void @__blk_queue_split(%struct.bio** noundef nonnull %bio.addr, i32* noundef nonnull %nr_segs) #23
  br i1 %call2, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 11
  %10 = load volatile i64, i64* %queue_flags, align 8
  %11 = and i64 %10, 8
  %tobool7.not = icmp eq i64 %11, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %12 = load %struct.bio*, %struct.bio** %bio.addr, align 8
  %13 = load i32, i32* %nr_segs, align 4
  %call9 = call i1 @blk_attempt_plug_merge(%struct.request_queue* noundef %2, %struct.bio* noundef %12, i32 noundef %13, %struct.request** noundef nonnull %same_queue_rq) #23
  br i1 %call9, label %queue_exit, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %land.lhs.true, %entry
  %14 = load %struct.bio*, %struct.bio** %bio.addr, align 8
  %15 = load i32, i32* %nr_segs, align 4
  %call13 = call fastcc i1 @blk_mq_sched_bio_merge(%struct.request_queue* noundef %2, %struct.bio* noundef %14, i32 noundef %15) #24
  br i1 %call13, label %queue_exit, label %if.end15

if.end15:                                         ; preds = %if.end12
  %16 = load %struct.bio*, %struct.bio** %bio.addr, align 8
  call fastcc void @rq_qos_throttle(%struct.request_queue* noundef %2, %struct.bio* noundef %16) #24
  %17 = load %struct.bio*, %struct.bio** %bio.addr, align 8
  %bi_opf16 = getelementptr inbounds %struct.bio, %struct.bio* %17, i64 0, i32 2
  %18 = load i32, i32* %bi_opf16, align 8
  %19 = and i32 %18, 16777216
  %tobool18.not = icmp eq i32 %19, 0
  %cmd_flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 3
  store i32 %18, i32* %cmd_flags, align 8
  %call20 = call fastcc %struct.request* @__blk_mq_alloc_request(%struct.blk_mq_alloc_data* noundef nonnull %data) #24
  %tobool21.not = icmp eq %struct.request* %call20, null
  %20 = load %struct.bio*, %struct.bio** %bio.addr, align 8
  br i1 %tobool21.not, label %if.then26, label %if.end33, !prof !9

if.then26:                                        ; preds = %if.end15
  call fastcc void @rq_qos_cleanup(%struct.request_queue* noundef %2, %struct.bio* noundef %20) #24
  %21 = load %struct.bio*, %struct.bio** %bio.addr, align 8
  %bi_opf27 = getelementptr inbounds %struct.bio, %struct.bio* %21, i64 0, i32 2
  %22 = load i32, i32* %bi_opf27, align 8
  %23 = and i32 %22, 2097152
  %tobool30.not = icmp eq i32 %23, 0
  br i1 %tobool30.not, label %queue_exit, label %if.then31

if.then31:                                        ; preds = %if.then26
  call fastcc void @bio_wouldblock_error(%struct.bio* noundef %21) #24
  br label %queue_exit

if.end33:                                         ; preds = %if.end15
  call fastcc void @rq_qos_track(%struct.request_queue* noundef %2, %struct.request* noundef nonnull %call20, %struct.bio* noundef %20) #24
  %hctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %24 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  %call34 = call fastcc i32 @request_to_qc_t(%struct.blk_mq_hw_ctx* noundef %24, %struct.request* noundef nonnull %call20) #24
  store i32 %call34, i32* %cookie, align 4
  %25 = load %struct.bio*, %struct.bio** %bio.addr, align 8
  %26 = load i32, i32* %nr_segs, align 4
  call fastcc void @blk_mq_bio_to_request(%struct.request* noundef nonnull %call20, %struct.bio* noundef %25, i32 noundef %26) #24
  %call40 = call fastcc %struct.blk_plug* @blk_mq_plug() #24
  br i1 %call2, label %if.then49, label %if.else, !prof !9

if.then49:                                        ; preds = %if.end33
  call void @blk_insert_flush(%struct.request* noundef nonnull %call20) #23
  %27 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %27, i1 noundef true) #24
  br label %if.end123

if.else:                                          ; preds = %if.end33
  %tobool51.not = icmp eq %struct.blk_plug* %call40, null
  br i1 %tobool51.not, label %if.else82, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.else
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 9
  %28 = load i32, i32* %nr_hw_queues, align 8
  %cmp53 = icmp eq i32 %28, 1
  br i1 %cmp53, label %if.then64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true52
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %call20, i64 0, i32 2
  %29 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %29, i64 0, i32 5
  %30 = load i64, i64* %flags, align 64
  %conv55 = trunc i64 %30 to i32
  %call56 = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv55) #24
  br i1 %call56, label %if.then64, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 5
  %31 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %commit_rqs = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %31, i64 0, i32 1
  %32 = load void (%struct.blk_mq_hw_ctx*)*, void (%struct.blk_mq_hw_ctx*)** %commit_rqs, align 8
  %tobool59.not = icmp eq void (%struct.blk_mq_hw_ctx*)* %32, null
  br i1 %tobool59.not, label %lor.lhs.false60, label %if.then64

lor.lhs.false60:                                  ; preds = %lor.lhs.false58
  %queue_flags61 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 11
  %33 = load volatile i64, i64* %queue_flags61, align 8
  %34 = and i64 %33, 64
  %tobool63.not = icmp eq i64 %34, 0
  br i1 %tobool63.not, label %if.then64, label %if.else82.thread

if.then64:                                        ; preds = %lor.lhs.false60, %lor.lhs.false58, %lor.lhs.false, %land.lhs.true52
  %rq_count = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %call40, i64 0, i32 2
  %35 = load i16, i16* %rq_count, align 8
  %tobool66.not = icmp eq i16 %35, 0
  br i1 %tobool66.not, label %if.end69.thread, label %if.end69

if.end69:                                         ; preds = %if.then64
  %prev = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %call40, i64 0, i32 0, i32 1
  %36 = bitcast %struct.list_head** %prev to i8**
  %37 = load i8*, i8** %36, align 8
  %add.ptr = getelementptr i8, i8* %37, i64 -72
  %38 = bitcast i8* %add.ptr to %struct.request*
  %call70 = call fastcc i16 @blk_plug_max_rq_count(%struct.blk_plug* noundef nonnull %call40) #24
  %cmp72.not = icmp ult i16 %35, %call70
  br i1 %cmp72.not, label %lor.lhs.false74, label %if.then80

if.end69.thread:                                  ; preds = %if.then64
  %call70195 = call fastcc i16 @blk_plug_max_rq_count(%struct.blk_plug* noundef nonnull %call40) #24
  %cmp72.not196.not = icmp eq i16 %call70195, 0
  br i1 %cmp72.not196.not, label %if.then80, label %if.end81

lor.lhs.false74:                                  ; preds = %if.end69
  %tobool75.not = icmp eq i8* %add.ptr, null
  br i1 %tobool75.not, label %if.end81, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %lor.lhs.false74
  %call77 = call fastcc i32 @blk_rq_bytes(%struct.request* noundef nonnull %38) #24
  %cmp78 = icmp ugt i32 %call77, 131071
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end69.thread, %land.lhs.true76, %if.end69
  call void @blk_flush_plug_list(%struct.blk_plug* noundef nonnull %call40, i1 noundef false) #23
  br label %if.end81

if.end81:                                         ; preds = %if.end69.thread, %if.then80, %land.lhs.true76, %lor.lhs.false74
  call fastcc void @blk_add_rq_to_plug(%struct.blk_plug* noundef nonnull %call40, %struct.request* noundef nonnull %call20) #24
  br label %if.end123

if.else82:                                        ; preds = %if.else
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 1
  %39 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool83.not = icmp eq %struct.elevator_queue* %39, null
  br i1 %tobool83.not, label %if.else82.if.else107_crit_edge, label %if.then84

if.else82.if.else107_crit_edge:                   ; preds = %if.else82
  %nr_hw_queues108.phi.trans.insert = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 9
  %.pre = load i32, i32* %nr_hw_queues108.phi.trans.insert, align 8
  br label %if.else107

if.else82.thread:                                 ; preds = %lor.lhs.false60
  %elevator200 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 1
  %40 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator200, align 8
  %tobool83.not201 = icmp eq %struct.elevator_queue* %40, null
  br i1 %tobool83.not201, label %land.lhs.true87, label %if.then84

if.then84:                                        ; preds = %if.else82.thread, %if.else82
  call void @blk_mq_sched_insert_request(%struct.request* noundef nonnull %call20, i1 noundef false, i1 noundef true, i1 noundef true) #23
  br label %if.end123

land.lhs.true87:                                  ; preds = %if.else82.thread
  %41 = load volatile i64, i64* %queue_flags61, align 8
  %42 = and i64 %41, 8
  %tobool90.not = icmp eq i64 %42, 0
  br i1 %tobool90.not, label %if.then91, label %if.else107

if.then91:                                        ; preds = %land.lhs.true87
  %mq_list92 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %call40, i64 0, i32 0
  %call93 = call fastcc i32 @list_empty(%struct.list_head* noundef %mq_list92) #24
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end96.thread

if.end96.thread:                                  ; preds = %if.then91
  store %struct.request* null, %struct.request** %same_queue_rq, align 8
  br label %if.end100

if.end96:                                         ; preds = %if.then91
  %.pr = load %struct.request*, %struct.request** %same_queue_rq, align 8
  %tobool97.not = icmp eq %struct.request* %.pr, null
  br i1 %tobool97.not, label %if.end100, label %if.then98

if.then98:                                        ; preds = %if.end96
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %.pr, i64 0, i32 11
  call fastcc void @list_del_init(%struct.list_head* noundef %queuelist) #24
  %rq_count99 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %call40, i64 0, i32 2
  %43 = load i16, i16* %rq_count99, align 8
  %dec = add i16 %43, -1
  store i16 %dec, i16* %rq_count99, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.end96.thread, %if.then98, %if.end96
  call fastcc void @blk_add_rq_to_plug(%struct.blk_plug* noundef nonnull %call40, %struct.request* noundef nonnull %call20) #24
  %44 = load %struct.request*, %struct.request** %same_queue_rq, align 8
  %tobool101.not = icmp eq %struct.request* %44, null
  br i1 %tobool101.not, label %if.end123, label %if.then102

if.then102:                                       ; preds = %if.end100
  %mq_hctx103 = getelementptr inbounds %struct.request, %struct.request* %44, i64 0, i32 2
  %45 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx103, align 8
  store %struct.blk_mq_hw_ctx* %45, %struct.blk_mq_hw_ctx** %hctx, align 8
  call fastcc void @blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* noundef %45, %struct.request* noundef nonnull %44, i32* noundef nonnull %cookie) #24
  br label %if.end123

if.else107:                                       ; preds = %if.else82.if.else107_crit_edge, %land.lhs.true87
  %46 = phi i32 [ %.pre, %if.else82.if.else107_crit_edge ], [ %28, %land.lhs.true87 ]
  %cmp109 = icmp ugt i32 %46, 1
  %or.cond = select i1 %cmp109, i1 %call, i1 false
  %.pre203 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  br i1 %or.cond, label %if.then116, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %if.else107
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %.pre203, i64 0, i32 12
  %47 = load i32, i32* %dispatch_busy, align 16
  %tobool115.not = icmp eq i32 %47, 0
  br i1 %tobool115.not, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.else107, %lor.lhs.false113
  call fastcc void @blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* noundef %.pre203, %struct.request* noundef nonnull %call20, i32* noundef nonnull %cookie) #24
  br label %if.end123

if.else118:                                       ; preds = %lor.lhs.false113
  call void @blk_mq_sched_insert_request(%struct.request* noundef nonnull %call20, i1 noundef false, i1 noundef true, i1 noundef true) #23
  br label %if.end123

if.end123:                                        ; preds = %if.end81, %if.then102, %if.end100, %if.else118, %if.then116, %if.then84, %if.then49
  %48 = load i32, i32* %cookie, align 4
  %spec.select = select i1 %tobool18.not, i32 -1, i32 %48
  br label %cleanup

queue_exit:                                       ; preds = %if.then26, %if.then31, %if.end12, %land.lhs.true8
  call void @blk_queue_exit(%struct.request_queue* noundef %2) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %queue_exit
  %retval.0 = phi i32 [ -1, %queue_exit ], [ %spec.select, %if.end123 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #22
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #22
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_sync(i32 noundef %op) unnamed_addr #6 {
entry:
  %and = and i32 %op, 255
  %cmp = icmp eq i32 %and, 0
  %0 = and i32 %op, 395264
  %tobool = icmp ne i32 %0, 0
  %1 = or i1 %cmp, %tobool
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_flush(i32 noundef %op) unnamed_addr #6 {
entry:
  %0 = and i32 %op, 393216
  %tobool = icmp ne i32 %0, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_queue_split(%struct.bio** noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_attempt_plug_merge(%struct.request_queue* noundef, %struct.bio* noundef, i32 noundef, %struct.request** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_sched_bio_merge(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, i32 noundef %nr_segs) unnamed_addr #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @bio_mergeable(%struct.bio* noundef %bio) #24
  br i1 %call1, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i1 @__blk_mq_sched_bio_merge(%struct.request_queue* noundef %q, %struct.bio* noundef %bio, i32 noundef %nr_segs) #23
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i1 [ %call2, %if.end ], [ false, %lor.lhs.false ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_throttle(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 10) #24
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_throttle(%struct.rq_qos* noundef nonnull %0, %struct.bio* noundef %bio) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_cleanup(%struct.request_queue* nocapture noundef readonly %q, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_cleanup(%struct.rq_qos* noundef nonnull %0, %struct.bio* noundef %bio) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bio_wouldblock_error(%struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  call fastcc void @bio_set_flag(%struct.bio* noundef %bio, i32 noundef 4) #24
  %bi_status = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 6
  store i8 12, i8* %bi_status, align 2
  call void @bio_endio(%struct.bio* noundef %bio) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_track(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef %rq, %struct.bio* noundef %bio) unnamed_addr #0 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_track(%struct.rq_qos* noundef nonnull %0, %struct.request* noundef %rq, %struct.bio* noundef %bio) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @request_to_qc_t(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %0 = load i32, i32* %tag, align 8
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 25
  %1 = load i32, i32* %queue_num, align 4
  %shl = shl i32 %1, 16
  %or = or i32 %shl, %0
  br label %return

if.end:                                           ; preds = %entry
  %internal_tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 6
  %2 = load i32, i32* %internal_tag, align 4
  %queue_num2 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 25
  %3 = load i32, i32* %queue_num2, align 4
  %shl3 = shl i32 %3, 16
  %or4 = or i32 %2, %shl3
  %or5 = or i32 %or4, -2147483648
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %or, %if.then ], [ %or5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_bio_to_request(%struct.request* noundef %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs) unnamed_addr #0 {
entry:
  %bi_opf = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 2
  %0 = load i32, i32* %bi_opf, align 8
  %1 = and i32 %0, 524288
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %2 = load i32, i32* %cmd_flags, align 8
  %3 = or i32 %2, 1792
  store i32 %3, i32* %cmd_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bi_sector = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 8, i32 0
  %4 = load i64, i64* %bi_sector, align 8
  %__sector = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 8
  store i64 %4, i64* %__sector, align 8
  %bi_write_hint = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 5
  %5 = load i16, i16* %bi_write_hint, align 8
  %write_hint = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 21
  store i16 %5, i16* %write_hint, align 4
  call fastcc void @blk_rq_bio_prep(%struct.request* noundef %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs) #24
  call void @blk_account_io_start(%struct.request* noundef %rq) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(%struct.bio* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.blk_plug* @blk_mq_plug() unnamed_addr #12 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #27, !srcloc !31
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %plug = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 109
  %2 = load %struct.blk_plug*, %struct.blk_plug** %plug, align 8
  ret %struct.blk_plug* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_insert_flush(%struct.request* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %flags) unnamed_addr #6 {
entry:
  %and = and i32 %flags, 8
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i16 @blk_plug_max_rq_count(%struct.blk_plug* nocapture noundef readonly %plug) unnamed_addr #5 {
entry:
  %multiple_queues = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 3
  %0 = load i8, i8* %multiple_queues, align 2, !range !21
  %tobool.not = icmp eq i8 %0, 0
  %. = select i1 %tobool.not, i16 16, i16 64
  ret i16 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_flush_plug_list(%struct.blk_plug* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @blk_add_rq_to_plug(%struct.blk_plug* noundef %plug, %struct.request* noundef %rq) unnamed_addr #8 {
entry:
  %queuelist = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 11
  %mq_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %queuelist, %struct.list_head* noundef %mq_list) #24
  %rq_count = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 2
  %0 = load i16, i16* %rq_count, align 8
  %inc = add i16 %0, 1
  store i16 %inc, i16* %rq_count, align 8
  %multiple_queues = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %plug, i64 0, i32 3
  %1 = load i8, i8* %multiple_queues, align 2, !range !21
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @list_is_singular(%struct.list_head* noundef %mq_list) #24
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.blk_plug* %plug to i8**
  %3 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 -72
  %q = bitcast i8* %add.ptr to %struct.request_queue**
  %4 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %q5 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %5 = load %struct.request_queue*, %struct.request_queue** %q5, align 8
  %cmp.not = icmp eq %struct.request_queue* %4, %5
  br i1 %cmp.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then
  store i8 1, i8* %multiple_queues, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then6, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_insert_request(%struct.request* noundef, i1 noundef, i1 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* noundef %rq, i32* nocapture noundef writeonly %cookie) unnamed_addr #0 {
entry:
  %srcu_idx = alloca i32, align 4
  %0 = bitcast i32* %srcu_idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #22
  store i32 0, i32* %srcu_idx, align 4, !annotation !8
  call fastcc void @hctx_lock(%struct.blk_mq_hw_ctx* noundef %hctx, i32* noundef nonnull %srcu_idx) #24
  %call = call fastcc i8 @__blk_mq_try_issue_directly(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* noundef %rq, i32* noundef %cookie, i1 noundef false, i1 noundef true) #24
  %1 = and i8 %call, -5
  %2 = icmp eq i8 %1, 9
  br i1 %2, label %if.then11, label %if.else

if.then11:                                        ; preds = %entry
  call void @blk_mq_request_bypass_insert(%struct.request* noundef %rq, i1 noundef false, i1 noundef true) #24
  br label %if.end17

if.else:                                          ; preds = %entry
  %cmp13.not = icmp eq i8 %call, 0
  br i1 %cmp13.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @blk_mq_end_request(%struct.request* noundef %rq, i8 noundef %call) #24
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15, %if.then11
  %3 = load i32, i32* %srcu_idx, align 4
  call fastcc void @hctx_unlock(%struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %3) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_free_rqs(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_tags* noundef %tags, i32 noundef %hctx_idx) local_unnamed_addr #0 {
entry:
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 7
  %0 = load %struct.request**, %struct.request*** %rqs, align 8
  %tobool.not = icmp eq %struct.request** %0, null
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  %1 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %exit_request = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %1, i64 0, i32 12
  %2 = load void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)** %exit_request, align 8
  %tobool1.not = icmp eq void (%struct.blk_mq_tag_set*, %struct.request*, i32)* %2, null
  br i1 %tobool1.not, label %if.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true
  %nr_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 0
  %3 = load i32, i32* %nr_tags, align 8
  %cmp34.not = icmp eq i32 %3, 0
  br i1 %cmp34.not, label %if.end9, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %static_rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %10, %cleanup ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup ]
  %5 = load %struct.request**, %struct.request*** %static_rqs, align 8
  %idxprom = sext i32 %i.035 to i64
  %arrayidx = getelementptr %struct.request*, %struct.request** %5, i64 %idxprom
  %6 = load %struct.request*, %struct.request** %arrayidx, align 8
  %tobool2.not = icmp eq %struct.request* %6, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %7 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %exit_request5 = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %7, i64 0, i32 12
  %8 = load void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)** %exit_request5, align 8
  call void %8(%struct.blk_mq_tag_set* noundef %set, %struct.request* noundef nonnull %6, i32 noundef %hctx_idx) #23
  %9 = load %struct.request**, %struct.request*** %static_rqs, align 8
  %arrayidx8 = getelementptr %struct.request*, %struct.request** %9, i64 %idxprom
  store %struct.request* null, %struct.request** %arrayidx8, align 8
  %.pre = load i32, i32* %nr_tags, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end
  %10 = phi i32 [ %4, %for.body ], [ %.pre, %if.end ]
  %inc = add nuw i32 %i.035, 1
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body, label %if.end9

if.end9:                                          ; preds = %cleanup, %for.cond.preheader, %land.lhs.true, %entry
  call fastcc void @blk_mq_clear_rq_mapping(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_tags* noundef %tags, i32 noundef %hctx_idx) #24
  %page_list = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 9
  %call36 = call fastcc i32 @list_empty(%struct.list_head* noundef %page_list) #24
  %tobool10.not37 = icmp eq i32 %call36, 0
  br i1 %tobool10.not37, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end9
  %11 = bitcast %struct.list_head* %page_list to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %12 = load i8*, i8** %11, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 -8
  %13 = bitcast i8* %add.ptr to %struct.page*
  %lru = bitcast i8* %12 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %lru) #24
  %private = getelementptr inbounds i8, i8* %12, i64 32
  %14 = bitcast i8* %private to i64*
  %15 = load i64, i64* %14, align 8
  %conv = trunc i64 %15 to i32
  call void @__free_pages(%struct.page* noundef %13, i32 noundef %conv) #23
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %page_list) #24
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_clear_rq_mapping(%struct.blk_mq_tag_set* nocapture noundef readonly %set, %struct.blk_mq_tags* noundef readonly %tags, i32 noundef %hctx_idx) unnamed_addr #0 {
entry:
  %tags1 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  %0 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags1, align 8
  %idxprom = zext i32 %hctx_idx to i64
  %arrayidx = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %0, i64 %idxprom
  %1 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx, align 8
  %page_list = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 9
  %2 = bitcast %struct.list_head* %page_list to i8**
  %.pn96 = load i8*, i8** %2, align 8
  %lru97 = bitcast i8* %.pn96 to %struct.list_head*
  %cmp.not98 = icmp eq %struct.list_head* %page_list, %lru97
  br i1 %cmp.not98, label %do.body52, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 4
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %1, i64 0, i32 7
  %.pre = load i32, i32* %queue_depth, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %3 = phi i32 [ %.pre, %for.body.lr.ph ], [ %16, %for.end ]
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %17, %for.end ]
  %.pn99 = phi i8* [ %.pn96, %for.body.lr.ph ], [ %.pn, %for.end ]
  %page.0.in = getelementptr i8, i8* %.pn99, i64 -8
  %5 = ptrtoint i8* %page.0.in to i64
  %sub.i = shl i64 %5, 6
  %add.i = and i64 %sub.i, -4096
  %private = getelementptr inbounds i8, i8* %.pn99, i64 32
  %6 = bitcast i8* %private to i64*
  %7 = load i64, i64* %6, align 8
  %conv = trunc i64 %7 to i32
  %call3 = call fastcc i64 @order_to_size(i32 noundef %conv) #24
  %add = add i64 %call3, %add.i
  %cmp594.not = icmp eq i32 %4, 0
  br i1 %cmp594.not, label %for.end, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.body
  %8 = inttoptr i64 %add.i to %struct.request*
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %if.end40
  %9 = phi i32 [ %3, %for.body7.lr.ph ], [ %15, %if.end40 ]
  %i.095 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %if.end40 ]
  %10 = load %struct.request**, %struct.request*** %rqs, align 8
  %idxprom8 = sext i32 %i.095 to i64
  %arrayidx9 = getelementptr %struct.request*, %struct.request** %10, i64 %idxprom8
  %11 = load %struct.request*, %struct.request** %arrayidx9, align 8
  %12 = ptrtoint %struct.request* %11 to i64
  %cmp10.not = icmp uge %struct.request* %11, %8
  %cmp12 = icmp ugt i64 %add, %12
  %or.cond = select i1 %cmp10.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then, label %if.end40

if.then:                                          ; preds = %for.body7
  %ref = getelementptr inbounds %struct.request, %struct.request* %11, i64 0, i32 24
  %call14 = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %ref) #24
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end, label %if.then25, !prof !12

if.then25:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 2334; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.then
  %13 = load %struct.request**, %struct.request*** %rqs, align 8
  %arrayidx36 = getelementptr %struct.request*, %struct.request** %13, i64 %idxprom8
  %14 = bitcast %struct.request** %arrayidx36 to i8*
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %14, i64 noundef %12, i64 noundef 0) #23
  %.pre100 = load i32, i32* %queue_depth, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end, %for.body7
  %15 = phi i32 [ %.pre100, %if.end ], [ %9, %for.body7 ]
  %inc = add nuw i32 %i.095, 1
  %cmp5 = icmp ult i32 %inc, %15
  br i1 %cmp5, label %for.body7, label %for.end

for.end:                                          ; preds = %if.end40, %for.body
  %16 = phi i32 [ %3, %for.body ], [ %15, %if.end40 ]
  %17 = phi i32 [ 0, %for.body ], [ %15, %if.end40 ]
  %18 = bitcast i8* %.pn99 to i8**
  %.pn = load i8*, i8** %18, align 8
  %lru = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %page_list, %lru
  br i1 %cmp.not, label %do.body52, label %for.body

do.body52:                                        ; preds = %for.end, %entry
  %rlock.i = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %1, i64 0, i32 10, i32 0, i32 0
  %call57 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call57) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef %tags, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 7
  %0 = bitcast %struct.request*** %rqs to i8**
  %1 = load i8*, i8** %0, align 8
  call void @kfree(i8* noundef %1) #23
  store %struct.request** null, %struct.request*** %rqs, align 8
  %static_rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 8
  %2 = bitcast %struct.request*** %static_rqs to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #23
  store %struct.request** null, %struct.request*** %static_rqs, align 8
  call void @blk_mq_free_tags(%struct.blk_mq_tags* noundef %tags, i32 noundef %flags) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tags(%struct.blk_mq_tags* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* noundef %set, i32 noundef %hctx_idx, i32 noundef %nr_tags, i32 noundef %reserved_tags, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 0
  %call = call i32 @blk_mq_hw_queue_to_node(%struct.blk_mq_queue_map* noundef %arrayidx, i32 noundef %hctx_idx) #23
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 7
  %0 = load i32, i32* %numa_node, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %node.0 = phi i32 [ %0, %if.then ], [ %call, %entry ]
  %call1 = call %struct.blk_mq_tags* @blk_mq_init_tags(i32 noundef %nr_tags, i32 noundef %reserved_tags, i32 noundef %node.0, i32 noundef %flags) #23
  %tobool.not = icmp eq %struct.blk_mq_tags* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %conv = zext i32 %nr_tags to i64
  %call4 = call fastcc i8* @kcalloc_node(i64 noundef %conv, i64 noundef 8, i32 noundef 76800) #24
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call1, i64 0, i32 7
  %1 = bitcast %struct.request*** %rqs to i8**
  store i8* %call4, i8** %1, align 8
  %tobool6.not = icmp eq i8* %call4, null
  br i1 %tobool6.not, label %cleanup.sink.split, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call10 = call fastcc i8* @kcalloc_node(i64 noundef %conv, i64 noundef 8, i32 noundef 76800) #24
  %static_rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call1, i64 0, i32 8
  %2 = bitcast %struct.request*** %static_rqs to i8**
  store i8* %call10, i8** %2, align 8
  %tobool12.not = icmp eq i8* %call10, null
  br i1 %tobool12.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end8
  %3 = load i8*, i8** %1, align 8
  call void @kfree(i8* noundef %3) #23
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3, %if.then13
  call void @blk_mq_free_tags(%struct.blk_mq_tags* noundef nonnull %call1, i32 noundef %flags) #23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8, %if.end
  %retval.0 = phi %struct.blk_mq_tags* [ null, %if.end ], [ %call1, %if.end8 ], [ null, %cleanup.sink.split ]
  ret %struct.blk_mq_tags* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_hw_queue_to_node(%struct.blk_mq_queue_map* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.blk_mq_tags* @blk_mq_init_tags(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc_node(i64 noundef %n, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call = call fastcc i8* @kmalloc_array_node(i64 noundef %n, i64 noundef %size, i32 noundef %or) #24
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_tags* noundef %tags, i32 noundef %hctx_idx, i32 noundef %depth) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 0
  %call = call i32 @blk_mq_hw_queue_to_node(%struct.blk_mq_queue_map* noundef %arrayidx, i32 noundef %hctx_idx) #23
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 7
  %0 = load i32, i32* %numa_node, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %node.0 = phi i32 [ %0, %if.then ], [ %call, %entry ]
  %page_list = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 9
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %page_list) #24
  %cmd_size = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 6
  %1 = load i32, i32* %cmd_size, align 4
  %conv = zext i32 %1 to i64
  %sub = add nuw nsw i64 %conv, 271
  %call1 = call i32 @cache_line_size() #23
  %sub2 = add i32 %call1, -1
  %conv3 = sext i32 %sub2 to i64
  %or = or i64 %sub, %conv3
  %add4 = add nsw i64 %or, 1
  %cmp6142.not = icmp eq i32 %depth, 0
  br i1 %cmp6142.not, label %cleanup60, label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %conv5 = zext i32 %depth to i64
  %mul = mul i64 %add4, %conv5
  %static_rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 8
  %call9 = call fastcc i64 @order_to_size(i32 noundef 3) #24
  br label %while.cond.preheader

for.cond.loopexit:                                ; preds = %for.inc, %if.end27
  %i.1.lcssa = phi i32 [ %i.0144, %if.end27 ], [ %4, %for.inc ]
  %cmp6 = icmp ult i32 %i.1.lcssa, %depth
  br i1 %cmp6, label %while.cond.preheader, label %cleanup60

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.cond.loopexit
  %i.0144 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %i.1.lcssa, %for.cond.loopexit ]
  %left.0143 = phi i64 [ %mul, %while.cond.preheader.lr.ph ], [ %sub39, %for.cond.loopexit ]
  %cmp10 = icmp ult i64 %left.0143, %call9
  br i1 %cmp10, label %while.cond.1, label %do.body

while.cond.1:                                     ; preds = %while.cond.preheader
  %call9.1 = call fastcc i64 @order_to_size(i32 noundef 2) #24
  %cmp10.1 = icmp ult i64 %left.0143, %call9.1
  br i1 %cmp10.1, label %while.cond.2, label %do.body

while.cond.2:                                     ; preds = %while.cond.1
  %call9.2 = call fastcc i64 @order_to_size(i32 noundef 1) #24
  %cmp10.2 = icmp ult i64 %left.0143, %call9.2
  br i1 %cmp10.2, label %while.cond.3, label %do.body

while.cond.3:                                     ; preds = %while.cond.2
  %call9.3 = call fastcc i64 @order_to_size(i32 noundef 0) #24
  %cmp10.3 = icmp uge i64 %left.0143, %call9.3
  %spec.select = zext i1 %cmp10.3 to i32
  br label %do.body

do.body:                                          ; preds = %while.cond.preheader, %while.cond.1, %while.cond.2, %while.cond.3
  %this_order.1.ph = phi i32 [ %spec.select, %while.cond.3 ], [ 2, %while.cond.2 ], [ 3, %while.cond.1 ], [ 4, %while.cond.preheader ]
  %call12 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %node.0, i32 noundef %this_order.1.ph) #24
  %tobool13.not = icmp eq %struct.page* %call12, null
  br i1 %tobool13.not, label %if.end15, label %if.end27

if.end15:                                         ; preds = %do.body
  %dec16 = add nsw i32 %this_order.1.ph, -1
  %tobool17.not = icmp eq i32 %this_order.1.ph, 0
  br i1 %tobool17.not, label %fail, label %if.end19

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i64 @order_to_size(i32 noundef %dec16) #24
  %cmp21 = icmp ult i64 %call20, %add4
  br i1 %cmp21, label %fail, label %do.body.1

do.body.1:                                        ; preds = %if.end19
  %call12.1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %node.0, i32 noundef %dec16) #24
  %tobool13.not.1 = icmp eq %struct.page* %call12.1, null
  br i1 %tobool13.not.1, label %if.end15.1, label %if.end27

if.end15.1:                                       ; preds = %do.body.1
  %dec16.1 = add nsw i32 %this_order.1.ph, -2
  %tobool17.not.1 = icmp eq i32 %dec16, 0
  br i1 %tobool17.not.1, label %fail, label %if.end19.1

if.end19.1:                                       ; preds = %if.end15.1
  %call20.1 = call fastcc i64 @order_to_size(i32 noundef %dec16.1) #24
  %cmp21.1 = icmp ult i64 %call20.1, %add4
  br i1 %cmp21.1, label %fail, label %do.body.2

do.body.2:                                        ; preds = %if.end19.1
  %call12.2 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %node.0, i32 noundef %dec16.1) #24
  %tobool13.not.2 = icmp eq %struct.page* %call12.2, null
  br i1 %tobool13.not.2, label %if.end15.2, label %if.end27

if.end15.2:                                       ; preds = %do.body.2
  %dec16.2 = add nsw i32 %this_order.1.ph, -3
  %tobool17.not.2 = icmp eq i32 %dec16.1, 0
  br i1 %tobool17.not.2, label %fail, label %if.end19.2

if.end19.2:                                       ; preds = %if.end15.2
  %call20.2 = call fastcc i64 @order_to_size(i32 noundef %dec16.2) #24
  %cmp21.2 = icmp ult i64 %call20.2, %add4
  br i1 %cmp21.2, label %fail, label %do.body.3

do.body.3:                                        ; preds = %if.end19.2
  %call12.3 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %node.0, i32 noundef %dec16.2) #24
  %tobool13.not.3 = icmp eq %struct.page* %call12.3, null
  br i1 %tobool13.not.3, label %if.end15.3, label %if.end27

if.end15.3:                                       ; preds = %do.body.3
  %dec16.3 = add nsw i32 %this_order.1.ph, -4
  %tobool17.not.3 = icmp eq i32 %dec16.2, 0
  br i1 %tobool17.not.3, label %fail, label %if.end19.3

if.end19.3:                                       ; preds = %if.end15.3
  %call20.3 = call fastcc i64 @order_to_size(i32 noundef %dec16.3) #24
  %cmp21.3 = icmp ult i64 %call20.3, %add4
  br i1 %cmp21.3, label %fail, label %do.body.4

do.body.4:                                        ; preds = %if.end19.3
  %call12.4 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %node.0, i32 noundef %dec16.3) #24
  %tobool13.not.4 = icmp eq %struct.page* %call12.4, null
  br i1 %tobool13.not.4, label %fail, label %if.end27

if.end27:                                         ; preds = %do.body.4, %do.body.3, %do.body.2, %do.body.1, %do.body
  %this_order.1.lcssa = phi i32 [ %this_order.1.ph, %do.body ], [ %dec16, %do.body.1 ], [ %dec16.1, %do.body.2 ], [ %dec16.2, %do.body.3 ], [ %dec16.3, %do.body.4 ]
  %call12.lcssa = phi %struct.page* [ %call12, %do.body ], [ %call12.1, %do.body.1 ], [ %call12.2, %do.body.2 ], [ %call12.3, %do.body.3 ], [ %call12.4, %do.body.4 ]
  %conv28 = sext i32 %this_order.1.lcssa to i64
  %private = getelementptr inbounds %struct.page, %struct.page* %call12.lcssa, i64 0, i32 1, i32 0, i32 3
  store i64 %conv28, i64* %private, align 8
  %lru = getelementptr inbounds %struct.page, %struct.page* %call12.lcssa, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %lru, %struct.list_head* noundef %page_list) #24
  %call32 = call fastcc i64 @order_to_size(i32 noundef %this_order.1.lcssa) #24
  %div = udiv i64 %call32, %add4
  %conv33 = trunc i64 %div to i32
  %sub34 = sub i32 %depth, %i.0144
  %cmp35 = icmp ugt i32 %sub34, %conv33
  %cond = select i1 %cmp35, i32 %conv33, i32 %sub34
  %conv37 = sext i32 %cond to i64
  %mul38 = mul i64 %add4, %conv37
  %sub39 = sub i64 %left.0143, %mul38
  %cmp41138.not = icmp eq i32 %cond, 0
  br i1 %cmp41138.not, label %for.cond.loopexit, label %for.body43.preheader

for.body43.preheader:                             ; preds = %if.end27
  %2 = ptrtoint %struct.page* %call12.lcssa to i64
  %sub.i = shl i64 %2, 6
  %add.i = and i64 %sub.i, -4096
  %3 = inttoptr i64 %add.i to i8*
  %4 = add i32 %i.0144, %cond
  br label %for.body43

for.body43:                                       ; preds = %for.body43.preheader, %for.inc
  %i.1141 = phi i32 [ %inc, %for.inc ], [ %i.0144, %for.body43.preheader ]
  %p.0139 = phi i8* [ %add.ptr, %for.inc ], [ %3, %for.body43.preheader ]
  %5 = bitcast i8* %p.0139 to %struct.request*
  %6 = load %struct.request**, %struct.request*** %static_rqs, align 8
  %idxprom = zext i32 %i.1141 to i64
  %arrayidx44 = getelementptr %struct.request*, %struct.request** %6, i64 %idxprom
  %7 = bitcast %struct.request** %arrayidx44 to i8**
  store i8* %p.0139, i8** %7, align 8
  %call45 = call fastcc i32 @blk_mq_init_request(%struct.blk_mq_tag_set* noundef %set, %struct.request* noundef %5, i32 noundef %hctx_idx, i32 noundef %node.0) #24
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body43
  %idxprom.le = zext i32 %i.1141 to i64
  %8 = load %struct.request**, %struct.request*** %static_rqs, align 8
  %arrayidx50 = getelementptr %struct.request*, %struct.request** %8, i64 %idxprom.le
  store %struct.request* null, %struct.request** %arrayidx50, align 8
  br label %fail

for.inc:                                          ; preds = %for.body43
  %add.ptr = getelementptr i8, i8* %p.0139, i64 %add4
  %inc = add i32 %i.1141, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body43

fail:                                             ; preds = %do.body.4, %if.end15, %if.end19, %if.end15.1, %if.end19.1, %if.end15.2, %if.end19.2, %if.end15.3, %if.end19.3, %cleanup
  call void @blk_mq_free_rqs(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_tags* noundef %tags, i32 noundef %hctx_idx) #24
  br label %cleanup60

cleanup60:                                        ; preds = %for.cond.loopexit, %if.end, %fail
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %if.end ], [ 0, %for.cond.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_line_size() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @order_to_size(i32 noundef %order) unnamed_addr #6 {
entry:
  %sh_prom = zext i32 %order to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %nid, i32 noundef %order) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %nid, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @numa_mem_id() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nid.addr.0 = phi i32 [ 0, %if.then ], [ %nid, %entry ]
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid.addr.0, i32 noundef %order) #24
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_init_request(%struct.blk_mq_tag_set* noundef %set, %struct.request* noundef %rq, i32 noundef %hctx_idx, i32 noundef %node) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %init_request = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %0, i64 0, i32 11
  %1 = load i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)** %init_request, align 8
  %tobool.not = icmp eq i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* %1, null
  br i1 %tobool.not, label %do.body7, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.blk_mq_tag_set* noundef %set, %struct.request* noundef %rq, i32 noundef %hctx_idx, i32 noundef %node) #23
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body7, label %cleanup

do.body7:                                         ; preds = %entry, %if.then
  %state = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 23
  store volatile i32 0, i32* %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body7
  %retval.0 = phi i32 [ 0, %do.body7 ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_release(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp72.not = icmp eq i32 %0, 0
  br i1 %cmp72.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end
  %i.073 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end ]
  %1 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.073 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.blk_mq_hw_ctx* %2, null
  br i1 %tobool1.not, label %if.end, label %land.rhs2

land.rhs2:                                        ; preds = %land.rhs
  %hctx_list = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 33
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %hctx_list) #24
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %land.rhs2
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 3101; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !33
  br label %if.end

if.end:                                           ; preds = %land.rhs, %if.then, %land.rhs2
  %inc = add nuw i32 %i.073, 1
  %3 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %land.rhs, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %unused_hctx_list = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 41
  %4 = bitcast %struct.list_head* %unused_hctx_list to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.list_head*
  %cmp33.not74 = icmp eq %struct.list_head* %unused_hctx_list, %6
  br i1 %cmp33.not74, label %for.end48, label %for.body37

for.body37:                                       ; preds = %for.end, %for.body37
  %7 = phi %struct.list_head* [ %9, %for.body37 ], [ %6, %for.end ]
  %.pn.in.in75 = phi i8* [ %.pn, %for.body37 ], [ %5, %for.end ]
  %.pn.in = bitcast i8* %.pn.in.in75 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call fastcc void @list_del_init(%struct.list_head* noundef %7) #24
  %kobj = getelementptr i8, i8* %.pn.in.in75, i64 -88
  %8 = bitcast i8* %kobj to %struct.kobject*
  call void @kobject_put(%struct.kobject* noundef %8) #23
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp33.not = icmp eq %struct.list_head* %unused_hctx_list, %9
  br i1 %cmp33.not, label %for.end48, label %for.body37

for.end48:                                        ; preds = %for.body37, %for.end
  %queue_hw_ctx49 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %10 = bitcast %struct.blk_mq_hw_ctx*** %queue_hw_ctx49 to i8**
  %11 = load i8*, i8** %10, align 8
  call void @kfree(i8* noundef %11) #23
  call void @blk_mq_sysfs_deinit(%struct.request_queue* noundef %q) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sysfs_deinit(%struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.request_queue* @blk_mq_init_queue(%struct.blk_mq_tag_set* noundef %set) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.request_queue* @blk_mq_init_queue_data(%struct.blk_mq_tag_set* noundef %set, i8* noundef null) #24
  ret %struct.request_queue* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.request_queue* @blk_mq_init_queue_data(%struct.blk_mq_tag_set* noundef %set, i8* noundef %queuedata) unnamed_addr #0 {
entry:
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 7
  %0 = load i32, i32* %numa_node, align 8
  %call = call %struct.request_queue* @blk_alloc_queue(i32 noundef %0) #23
  %tobool.not = icmp eq %struct.request_queue* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %queuedata2 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 10
  store i8* %queuedata, i8** %queuedata2, align 8
  %call3 = call i32 @blk_mq_init_allocated_queue(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef nonnull %call) #24
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @blk_cleanup_queue(%struct.request_queue* noundef nonnull %call) #23
  %conv = sext i32 %call3 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then5
  %conv.sink = phi i64 [ %conv, %if.then5 ], [ -12, %entry ]
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #24
  %1 = bitcast i8* %call6 to %struct.request_queue*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi %struct.request_queue* [ %call, %if.end ], [ %1, %cleanup.sink.split ]
  ret %struct.request_queue* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.gendisk* @__blk_mq_alloc_disk(%struct.blk_mq_tag_set* noundef %set, i8* noundef %queuedata, %struct.lock_class_key* noundef %lkclass) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.request_queue* @blk_mq_init_queue_data(%struct.blk_mq_tag_set* noundef %set, i8* noundef %queuedata) #24
  %0 = bitcast %struct.request_queue* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #24
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.request_queue* %call to %struct.gendisk*
  br label %cleanup

if.end:                                           ; preds = %entry
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 7
  %2 = load i32, i32* %numa_node, align 8
  %call3 = call %struct.gendisk* @__alloc_disk_node(%struct.request_queue* noundef %call, i32 noundef %2, %struct.lock_class_key* noundef %lkclass) #23
  %tobool.not = icmp eq %struct.gendisk* %call3, null
  br i1 %tobool.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  call void @blk_cleanup_queue(%struct.request_queue* noundef %call) #23
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -12) #24
  %3 = bitcast i8* %call5 to %struct.gendisk*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi %struct.gendisk* [ %1, %if.then ], [ %3, %if.then4 ], [ %call3, %if.end ]
  ret %struct.gendisk* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.gendisk* @__alloc_disk_node(%struct.request_queue* noundef, i32 noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(%struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_init_allocated_queue(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  %0 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  store %struct.blk_mq_ops* %0, %struct.blk_mq_ops** %mq_ops, align 8
  %1 = bitcast %struct.request_queue* %q to i8*
  %call = call %struct.blk_stat_callback* @blk_stat_alloc_callback(void (%struct.blk_stat_callback*)* noundef nonnull @blk_mq_poll_stats_fn, i32 (%struct.request*)* noundef nonnull @blk_mq_poll_stats_bkt, i32 noundef 16, i8* noundef %1) #23
  %poll_cb = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 23
  store %struct.blk_stat_callback* %call, %struct.blk_stat_callback** %poll_cb, align 8
  %tobool.not = icmp eq %struct.blk_stat_callback* %call, null
  br i1 %tobool.not, label %err_exit, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @blk_mq_alloc_ctxs(%struct.request_queue* noundef %q) #24
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %err_poll

if.end5:                                          ; preds = %if.end
  call void @blk_mq_sysfs_init(%struct.request_queue* noundef %q) #23
  %unused_hctx_list = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 41
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %unused_hctx_list) #24
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 42, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  call fastcc void @blk_mq_realloc_hw_ctxs(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef %q) #24
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %2 = load i32, i32* %nr_hw_queues, align 8
  %tobool8.not = icmp eq i32 %2, 0
  br i1 %tobool8.not, label %err_hctxs, label %do.body11

do.body11:                                        ; preds = %if.end5
  %.compoundliteral13.sroa.0.0..sroa_idx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 26, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral13.sroa.0.0..sroa_idx, align 8
  %entry16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 26, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry16) #24
  %func = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 26, i32 2
  store void (%struct.work_struct*)* @blk_mq_timeout_work, void (%struct.work_struct*)** %func, align 8
  %timeout = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 8
  %3 = load i32, i32* %timeout, align 4
  %tobool19.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool19.not, i32 7500, i32 %3
  call void @blk_queue_rq_timeout(%struct.request_queue* noundef %q, i32 noundef %spec.select) #23
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  store %struct.blk_mq_tag_set* %set, %struct.blk_mq_tag_set** %tag_set, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %4 = load i64, i64* %queue_flags, align 8
  %or = or i64 %4, 536871056
  store i64 %or, i64* %queue_flags, align 8
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 1
  %5 = load i32, i32* %nr_maps, align 8
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %do.body25

land.lhs.true:                                    ; preds = %do.body11
  %nr_queues = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 2, i32 1
  %6 = load i32, i32* %nr_queues, align 8
  %tobool21.not = icmp eq i32 %6, 0
  br i1 %tobool21.not, label %do.body25, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @blk_queue_flag_set(i32 noundef 16, %struct.request_queue* noundef %q) #23
  br label %do.body25

do.body25:                                        ; preds = %if.then22, %land.lhs.true, %do.body11
  %.compoundliteral29.sroa.0.0..sroa_idx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 38, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral29.sroa.0.0..sroa_idx, align 8
  %entry33 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 38, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry33) #24
  %func36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 38, i32 0, i32 2
  store void (%struct.work_struct*)* @blk_mq_requeue_work, void (%struct.work_struct*)** %func36, align 8
  %timer = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 38, i32 1
  call void @init_timer_key(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #23
  %requeue_list = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 36
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %requeue_list) #24
  %.compoundliteral43.sroa.0.0..sroa_idx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral43.sroa.0.0..sroa_idx, align 8
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 4
  %7 = load i32, i32* %queue_depth, align 4
  %conv = zext i32 %7 to i64
  %nr_requests = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 18
  store i64 %conv, i64* %nr_requests, align 8
  %poll_nsec = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 22
  store i32 -1, i32* %poll_nsec, align 4
  %nr_hw_queues49 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %8 = load i32, i32* %nr_hw_queues49, align 8
  call fastcc void @blk_mq_init_cpu_queues(%struct.request_queue* noundef %q, i32 noundef %8) #24
  call fastcc void @blk_mq_add_queue_tag_set(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef %q) #24
  call fastcc void @blk_mq_map_swqueue(%struct.request_queue* noundef %q) #24
  br label %return

err_hctxs:                                        ; preds = %if.end5
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %9 = bitcast %struct.blk_mq_hw_ctx*** %queue_hw_ctx to i8**
  %10 = load i8*, i8** %9, align 8
  call void @kfree(i8* noundef %10) #23
  store i32 0, i32* %nr_hw_queues, align 8
  call void @blk_mq_sysfs_deinit(%struct.request_queue* noundef %q) #23
  br label %err_poll

err_poll:                                         ; preds = %if.end, %err_hctxs
  %11 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %poll_cb, align 8
  call void @blk_stat_free_callback(%struct.blk_stat_callback* noundef %11) #23
  store %struct.blk_stat_callback* null, %struct.blk_stat_callback** %poll_cb, align 8
  br label %err_exit

err_exit:                                         ; preds = %entry, %err_poll
  store %struct.blk_mq_ops* null, %struct.blk_mq_ops** %mq_ops, align 8
  br label %return

return:                                           ; preds = %err_exit, %do.body25
  %retval.0 = phi i32 [ -12, %err_exit ], [ 0, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.blk_stat_callback* @blk_stat_alloc_callback(void (%struct.blk_stat_callback*)* noundef, i32 (%struct.request*)* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal void @blk_mq_poll_stats_fn(%struct.blk_stat_callback* nocapture noundef readonly %cb) #13 {
entry:
  %data = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 7
  %0 = bitcast i8** %data to %struct.request_queue**
  %1 = load %struct.request_queue*, %struct.request_queue** %0, align 8
  %stat = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %2 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %stat, align 8
  %nr_samples = getelementptr %struct.blk_rq_stat, %struct.blk_rq_stat* %2, i64 %indvars.iv, i32 3
  %3 = load i32, i32* %nr_samples, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.blk_rq_stat, %struct.blk_rq_stat* %2, i64 %indvars.iv
  %arrayidx2 = getelementptr %struct.request_queue, %struct.request_queue* %1, i64 0, i32 24, i64 %indvars.iv
  %4 = bitcast %struct.blk_rq_stat* %arrayidx2 to i8*
  %5 = bitcast %struct.blk_rq_stat* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(40) %4, i8* noundef align 8 dereferenceable(40) %5, i64 40, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @blk_mq_poll_stats_bkt(%struct.request* nocapture noundef readonly %rq) #14 {
entry:
  %cmd_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 3
  %0 = load i32, i32* %cmd_flags, align 8
  %and = and i32 %0, 255
  %call = call fastcc i1 @op_is_write(i32 noundef %and) #24
  %call1 = call fastcc i32 @blk_rq_stats_sectors(%struct.request* noundef %rq) #24
  %call5 = call fastcc i32 @__ilog2_u32(i32 noundef %call1) #26
  %cond = zext i1 %call to i32
  %mul = shl i32 %call5, 1
  %add = or i32 %mul, %cond
  %cmp10 = icmp sgt i32 %add, 15
  %sub14 = select i1 %call, i32 15, i32 14
  %spec.select = select i1 %cmp10, i32 %sub14, i32 %add
  %cmp8.inv = icmp sgt i32 %add, -1
  %retval.0 = select i1 %cmp8.inv, i32 %spec.select, i32 -1
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_alloc_ctxs(%struct.request_queue* nocapture noundef writeonly %q) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #24
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @__alloc_percpu(i64 noundef 256, i64 noundef 64) #23
  %queue_ctx = getelementptr inbounds i8, i8* %call, i64 64
  %0 = bitcast i8* %queue_ctx to %struct.blk_mq_ctx**
  %1 = bitcast i8* %queue_ctx to i8**
  store i8* %call1, i8** %1, align 8
  %tobool3.not = icmp eq i8* %call1, null
  %2 = bitcast i8* %call1 to %struct.blk_mq_ctx*
  br i1 %tobool3.not, label %fail, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %call628 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %cmp29 = icmp ult i32 %call628, %3
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %4 = phi %struct.blk_mq_ctx* [ %.pre, %for.body ], [ %2, %for.cond.preheader ]
  %call630 = phi i32 [ %call6, %for.body ], [ %call628, %for.cond.preheader ]
  %5 = ptrtoint %struct.blk_mq_ctx* %4 to i64
  %idxprom = sext i32 %call630 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %5
  %7 = inttoptr i64 %add to %struct.blk_mq_ctx*
  %ctxs9 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %7, i64 0, i32 8
  %8 = bitcast %struct.blk_mq_ctxs** %ctxs9 to i8**
  store i8* %call, i8** %8, align 8
  %call6 = call i32 @cpumask_next(i32 noundef %call630, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %cmp = icmp ult i32 %call6, %3
  %.pre = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %0, align 8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %9 = phi %struct.blk_mq_ctx* [ %2, %for.cond.preheader ], [ %.pre, %for.body ]
  %mq_kobj = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 17
  %10 = bitcast %struct.kobject** %mq_kobj to i8**
  store i8* %call, i8** %10, align 8
  %queue_ctx11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 6
  store %struct.blk_mq_ctx* %9, %struct.blk_mq_ctx** %queue_ctx11, align 8
  br label %cleanup

fail:                                             ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %fail, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %fail ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sysfs_init(%struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_realloc_hw_ctxs(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %0 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %1 = load i32, i32* %nr_hw_queues, align 8
  %nr_hw_queues1 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %2 = load i32, i32* %nr_hw_queues1, align 8
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %conv = zext i32 %2 to i64
  %call = call fastcc i8* @kcalloc_node(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #24
  %3 = bitcast i8* %call to %struct.blk_mq_hw_ctx**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup81, label %if.end

if.end:                                           ; preds = %if.then
  %tobool4.not = icmp eq %struct.blk_mq_hw_ctx** %0, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %4 = bitcast %struct.blk_mq_hw_ctx** %0 to i8*
  %5 = load i32, i32* %nr_hw_queues, align 8
  %conv7 = zext i32 %5 to i64
  %mul = shl nuw nsw i64 %conv7, 3
  %call8 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %4, i64 noundef %mul) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5
  %.pre-phi = bitcast %struct.blk_mq_hw_ctx** %0 to i8*
  %6 = bitcast %struct.blk_mq_hw_ctx*** %queue_hw_ctx to i8**
  store i8* %call, i8** %6, align 8
  call void @kfree(i8* noundef %.pre-phi) #23
  br label %if.end11

if.end11:                                         ; preds = %cleanup, %entry
  %hctxs.1 = phi %struct.blk_mq_hw_ctx** [ %3, %cleanup ], [ %0, %entry ]
  %sysfs_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 39
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #23
  %7 = load i32, i32* %nr_hw_queues1, align 8
  %cmp13166.not = icmp eq i32 %7, 0
  br i1 %cmp13166.not, label %if.else57, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end11
  %arrayidx = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call15 = call i32 @blk_mq_hw_queue_to_node(%struct.blk_mq_queue_map* noundef %arrayidx, i32 noundef %i.0167) #23
  %idxprom = sext i32 %i.0167 to i64
  %arrayidx16 = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctxs.1, i64 %idxprom
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx16, align 8
  %tobool17.not = icmp eq %struct.blk_mq_hw_ctx* %8, null
  br i1 %tobool17.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %numa_node20 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %8, i64 0, i32 24
  %9 = load i32, i32* %numa_node20, align 16
  %cmp21 = icmp eq i32 %9, %call15
  br i1 %cmp21, label %for.inc, label %if.end24

if.end24:                                         ; preds = %land.lhs.true, %for.body
  %call25 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_alloc_and_init_hctx(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef %q, i32 noundef %i.0167, i32 noundef %call15) #24
  %tobool26.not = icmp eq %struct.blk_mq_hw_ctx* %call25, null
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx16, align 8
  %tobool39.not = icmp eq %struct.blk_mq_hw_ctx* %10, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end24
  br i1 %tobool39.not, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.then27
  call fastcc void @blk_mq_exit_hctx(%struct.request_queue* noundef %q, %struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_hw_ctx* noundef nonnull %10, i32 noundef %i.0167) #24
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then27
  store %struct.blk_mq_hw_ctx* %call25, %struct.blk_mq_hw_ctx** %arrayidx16, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end24
  br i1 %tobool39.not, label %if.else.for.end.loopexit_crit_edge, label %do.end

if.else.for.end.loopexit_crit_edge:               ; preds = %if.else
  %.pre.pre = load i32, i32* %nr_hw_queues1, align 8
  br label %for.end

do.end:                                           ; preds = %if.else
  %numa_node43 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %10, i64 0, i32 24
  %11 = load i32, i32* %numa_node43, align 16
  %call44 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 noundef %call15, i32 noundef %11) #28
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %do.end, %if.end34
  %inc = add nuw i32 %i.0167, 1
  %12 = load i32, i32* %nr_hw_queues1, align 8
  %cmp13 = icmp ult i32 %inc, %12
  br i1 %cmp13, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.else.for.end.loopexit_crit_edge
  %13 = phi i32 [ %.pre.pre, %if.else.for.end.loopexit_crit_edge ], [ %12, %for.inc ]
  %i.0.lcssa = phi i32 [ %i.0167, %if.else.for.end.loopexit_crit_edge ], [ %inc, %for.inc ]
  %cmp53.not = icmp eq i32 %i.0.lcssa, %13
  br i1 %cmp53.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %for.end
  %14 = load i32, i32* %nr_hw_queues, align 8
  br label %if.end61

if.else57:                                        ; preds = %if.end11, %for.end
  %15 = phi i32 [ %13, %for.end ], [ 0, %if.end11 ]
  %16 = load i32, i32* %nr_hw_queues, align 8
  store i32 %15, i32* %nr_hw_queues, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else57, %if.then55
  %j.0 = phi i32 [ %14, %if.then55 ], [ %15, %if.else57 ]
  %end.0 = phi i32 [ %i.0.lcssa, %if.then55 ], [ %16, %if.else57 ]
  %cmp63170 = icmp slt i32 %j.0, %end.0
  br i1 %cmp63170, label %for.body65.preheader, label %for.end79

for.body65.preheader:                             ; preds = %if.end61
  %17 = sext i32 %j.0 to i64
  br label %for.body65

for.body65:                                       ; preds = %for.body65.preheader, %if.end76
  %indvars.iv = phi i64 [ %17, %for.body65.preheader ], [ %indvars.iv.next, %if.end76 ]
  %arrayidx68 = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctxs.1, i64 %indvars.iv
  %18 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx68, align 8
  %tobool69.not = icmp eq %struct.blk_mq_hw_ctx* %18, null
  br i1 %tobool69.not, label %if.end76, label %if.then70

if.then70:                                        ; preds = %for.body65
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %18, i64 0, i32 19
  %19 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %tobool71.not = icmp eq %struct.blk_mq_tags* %19, null
  %.pre177 = trunc i64 %indvars.iv to i32
  br i1 %tobool71.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.then70
  call fastcc void @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* noundef %set, i32 noundef %.pre177) #24
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.then72
  call fastcc void @blk_mq_exit_hctx(%struct.request_queue* noundef %q, %struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_hw_ctx* noundef nonnull %18, i32 noundef %.pre177) #24
  store %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx** %arrayidx68, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end73, %for.body65
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %end.0, %lftr.wideiv
  br i1 %exitcond.not, label %for.end79, label %for.body65

for.end79:                                        ; preds = %if.end76, %if.end61
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #23
  br label %cleanup81

cleanup81:                                        ; preds = %if.then, %for.end79
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_mq_timeout_work(%struct.work_struct* noundef %work) #0 {
entry:
  %next = alloca i64, align 8
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -29, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.request_queue*
  %1 = bitcast i64* %next to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  store i64 0, i64* %next, align 8
  %q_usage_counter = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 2
  %2 = bitcast %struct.list_head** %q_usage_counter to %struct.percpu_ref*
  %call = call fastcc i1 @percpu_ref_tryget(%struct.percpu_ref* noundef %2) #24
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @blk_mq_queue_tag_busy_iter(%struct.request_queue* noundef %0, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef nonnull @blk_mq_check_expired, i8* noundef nonnull %1) #23
  %3 = load i64, i64* %next, align 8
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %for.cond.preheader, label %if.then1

for.cond.preheader:                               ; preds = %if.end
  %nr_hw_queues = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 10
  %4 = bitcast %struct.list_head** %nr_hw_queues to i32*
  %5 = load i32, i32* %4, align 8
  %cmp324.not = icmp eq i32 %5, 0
  br i1 %cmp324.not, label %if.end8, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_hw_ctx = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 9
  %6 = bitcast %struct.list_head** %queue_hw_ctx to %struct.blk_mq_hw_ctx***
  br label %land.rhs

if.then1:                                         ; preds = %if.end
  %timeout = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 109
  %7 = bitcast %struct.list_head** %timeout to %struct.timer_list*
  %call2 = call i32 @mod_timer(%struct.timer_list* noundef %7, i64 noundef %3) #23
  br label %if.end8

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %8 = phi i32 [ %5, %land.rhs.lr.ph ], [ %11, %for.inc ]
  %i.025 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %9 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %6, align 8
  %idxprom = sext i32 %i.025 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %9, i64 %idxprom
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %call5 = call fastcc i1 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx* noundef %10) #24
  br i1 %call5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %land.rhs
  call fastcc void @blk_mq_tag_idle(%struct.blk_mq_hw_ctx* noundef %10) #24
  %.pre = load i32, i32* %4, align 8
  br label %for.inc

for.inc:                                          ; preds = %land.rhs, %if.then6
  %11 = phi i32 [ %8, %land.rhs ], [ %.pre, %if.then6 ]
  %inc = add nuw i32 %i.025, 1
  %cmp3 = icmp ult i32 %inc, %11
  br i1 %cmp3, label %land.rhs, label %if.end8

if.end8:                                          ; preds = %for.inc, %for.cond.preheader, %if.then1
  call void @blk_queue_exit(%struct.request_queue* noundef %0) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(%struct.request_queue* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_mq_requeue_work(%struct.work_struct* noundef %work) #0 {
entry:
  %rq_list = alloca %struct.list_head, align 8
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -40, i32 1, i32 1
  %0 = bitcast %struct.list_head* %rq_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %rq_list, i64 0, i32 0
  store %struct.list_head* %rq_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %rq_list, i64 0, i32 1
  store %struct.list_head* %rq_list, %struct.list_head** %prev, align 8
  %requeue_lock = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 157
  %rlock.i = bitcast %struct.list_head** %requeue_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #23
  %requeue_list = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 155
  %1 = bitcast %struct.list_head** %requeue_list to %struct.list_head*
  call fastcc void @list_splice_init(%struct.list_head* noundef %1, %struct.list_head* noundef nonnull %rq_list) #24
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #23
  %2 = bitcast %struct.list_head* %rq_list to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to %struct.list_head*
  %cmp.not71 = icmp eq %struct.list_head* %rq_list, %4
  br i1 %cmp.not71, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.inc, %entry
  %call75 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %rq_list) #24
  %tobool34.not76 = icmp eq i32 %call75, 0
  br i1 %tobool34.not76, label %while.body, label %while.end

for.body:                                         ; preds = %entry, %for.inc
  %5 = phi %struct.list_head* [ %9, %for.inc ], [ %4, %entry ]
  %.pn.in.in72 = phi i8* [ %.pn74, %for.inc ], [ %3, %entry ]
  %rq.073.in = getelementptr i8, i8* %.pn.in.in72, i64 -72
  %rq.073 = bitcast i8* %rq.073.in to %struct.request*
  %.pn74.in = bitcast i8* %.pn.in.in72 to i8**
  %.pn74 = load i8*, i8** %.pn74.in, align 8
  %rq_flags = getelementptr i8, i8* %.pn.in.in72, i64 -44
  %6 = bitcast i8* %rq_flags to i32*
  %7 = load i32, i32* %6, align 4
  %and = and i32 %7, 136
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %and19 = and i32 %7, -9
  store i32 %and19, i32* %6, align 4
  call fastcc void @list_del_init(%struct.list_head* noundef %5) #24
  %8 = load i32, i32* %6, align 4
  %and22 = and i32 %8, 128
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end
  call void @blk_mq_request_bypass_insert(%struct.request* noundef %rq.073, i1 noundef false, i1 noundef false) #24
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @blk_mq_sched_insert_request(%struct.request* noundef %rq.073, i1 noundef true, i1 noundef false, i1 noundef false) #23
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.else, %for.body
  %9 = bitcast i8* %.pn74 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %rq_list, %9
  br i1 %cmp.not, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %10 = load i8*, i8** %2, align 8
  %add.ptr42 = getelementptr i8, i8* %10, i64 -72
  %11 = bitcast i8* %add.ptr42 to %struct.request*
  %12 = bitcast i8* %10 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %12) #24
  call void @blk_mq_sched_insert_request(%struct.request* noundef %11, i1 noundef false, i1 noundef false, i1 noundef false) #23
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %rq_list) #24
  %tobool34.not = icmp eq i32 %call, 0
  br i1 %tobool34.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %13 = bitcast %struct.list_head** %add.ptr to %struct.request_queue*
  call void @blk_mq_run_hw_queues(%struct.request_queue* noundef %13, i1 noundef false) #24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_init_cpu_queues(%struct.request_queue* noundef %q, i32 noundef %nr_hw_queues) unnamed_addr #11 {
entry:
  %call52 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp53 = icmp ult i32 %call52, %0
  br i1 %cmp53, label %for.body.lr.ph, label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %1 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %queue_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 6
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %1, i64 0, i32 1
  %cmp16 = icmp ugt i32 %nr_hw_queues, 1
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc19, %for.body
  %call = call i32 @cpumask_next(i32 noundef %call54, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %call54 = phi i32 [ %call52, %for.body.lr.ph ], [ %call, %for.cond.loopexit ]
  %3 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %queue_ctx, align 8
  %4 = ptrtoint %struct.blk_mq_ctx* %3 to i64
  %idxprom = zext i32 %call54 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.blk_mq_ctx*
  %cpu = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %6, i64 0, i32 1
  store i32 %call54, i32* %cpu, align 64
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 64
  %arrayidx11 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %6, i64 0, i32 0, i32 1, i64 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx11) #24
  %arrayidx11.1 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %6, i64 0, i32 0, i32 1, i64 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx11.1) #24
  %arrayidx11.2 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %6, i64 0, i32 0, i32 1, i64 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx11.2) #24
  %queue = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %6, i64 0, i32 7
  store %struct.request_queue* %q, %struct.request_queue** %queue, align 16
  %7 = load i32, i32* %nr_maps, align 8
  %cmp1349.not = icmp eq i32 %7, 0
  br i1 %cmp1349.not, label %for.cond.loopexit, label %for.body14

for.body14:                                       ; preds = %for.body, %for.inc19
  %8 = phi i32 [ %10, %for.inc19 ], [ %7, %for.body ]
  %j.050 = phi i32 [ %inc20, %for.inc19 ], [ 0, %for.body ]
  br i1 %cmp16, label %land.lhs.true, label %for.inc19

land.lhs.true:                                    ; preds = %for.body14
  %call15 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue_type(%struct.request_queue* noundef %q, i32 noundef %j.050, i32 noundef %call54) #24
  %numa_node = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %call15, i64 0, i32 24
  %9 = load i32, i32* %numa_node, align 16
  %cmp17 = icmp eq i32 %9, -1
  br i1 %cmp17, label %if.then, label %for.inc19

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %numa_node, align 16
  %.pre = load i32, i32* %nr_maps, align 8
  br label %for.inc19

for.inc19:                                        ; preds = %for.body14, %land.lhs.true, %if.then
  %10 = phi i32 [ %8, %for.body14 ], [ %8, %land.lhs.true ], [ %.pre, %if.then ]
  %inc20 = add nuw i32 %j.050, 1
  %cmp13 = icmp ult i32 %inc20, %10
  br i1 %cmp13, label %for.body14, label %for.cond.loopexit

for.end22:                                        ; preds = %for.cond.loopexit, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_add_queue_tag_set(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %tag_list_lock = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 15
  call void @mutex_lock(%struct.mutex* noundef %tag_list_lock) #23
  %tag_list = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 16
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %tag_list) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 2
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %or = or i32 %0, 2
  store i32 %or, i32* %flags, align 8
  call fastcc void @blk_mq_update_tag_set_shared(%struct.blk_mq_tag_set* noundef %set, i1 noundef true) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %flags3 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  %1 = load i32, i32* %flags3, align 8
  %and4 = and i32 %1, 2
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call fastcc void @queue_set_hctx_shared(%struct.request_queue* noundef %q, i1 noundef true) #24
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %tag_set_list = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 48
  call fastcc void @list_add_tail(%struct.list_head* noundef %tag_set_list, %struct.list_head* noundef %tag_list) #24
  call void @mutex_unlock(%struct.mutex* noundef %tag_list_lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_map_swqueue(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #0 {
entry:
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %1 = load i32, i32* %nr_hw_queues, align 8
  %cmp229.not = icmp eq i32 %1, 0
  br i1 %cmp229.not, label %for.cond1.preheader, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs

for.cond1.preheader:                              ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %6, %land.rhs ]
  %call236 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2237 = icmp ult i32 %call236, %3
  br i1 %cmp2237, label %do.body.lr.ph, label %for.cond86.preheader

do.body.lr.ph:                                    ; preds = %for.cond1.preheader
  %queue_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 6
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 1
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 14
  br label %do.body

land.rhs:                                         ; preds = %land.rhs.lr.ph, %land.rhs
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %land.rhs ]
  %4 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, i64 %indvars.iv
  %5 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %5, i64 0, i32 2, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #24
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %5, i64 0, i32 14
  store i16 0, i16* %nr_ctx, align 2
  %dispatch_from = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %5, i64 0, i32 11
  store %struct.blk_mq_ctx* null, %struct.blk_mq_ctx** %dispatch_from, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, i32* %nr_hw_queues, align 8
  %7 = zext i32 %6 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %7
  br i1 %cmp, label %land.rhs, label %for.cond1.preheader

for.cond1.loopexit:                               ; preds = %for.body77, %for.cond74.preheader
  %call = call i32 @cpumask_next(i32 noundef %call238, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call, %8
  br i1 %cmp2, label %do.body, label %for.cond86.preheader.loopexit

for.cond86.preheader.loopexit:                    ; preds = %for.cond1.loopexit
  %.pre = load i32, i32* %nr_hw_queues, align 8
  br label %for.cond86.preheader

for.cond86.preheader:                             ; preds = %for.cond86.preheader.loopexit, %for.cond1.preheader
  %9 = phi i32 [ %.pre, %for.cond86.preheader.loopexit ], [ %2, %for.cond1.preheader ]
  %cmp88239.not = icmp eq i32 %9, 0
  br i1 %cmp88239.not, label %for.end146, label %land.rhs90.lr.ph

land.rhs90.lr.ph:                                 ; preds = %for.cond86.preheader
  %queue_hw_ctx91 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %tags111 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 14
  %10 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx91, align 8
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %10, align 8
  %nr_ctx98.peel = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i64 0, i32 14
  %12 = load i16, i16* %nr_ctx98.peel, align 2
  %tobool99.not.peel = icmp eq i16 %12, 0
  br i1 %tobool99.not.peel, label %if.end108.peel, label %if.end110.peel

if.end110.peel:                                   ; preds = %land.rhs90.lr.ph
  %13 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags111, align 8
  %14 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %13, align 8
  %tags114.peel = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i64 0, i32 19
  store %struct.blk_mq_tags* %14, %struct.blk_mq_tags** %tags114.peel, align 8
  %tobool116.not.peel = icmp eq %struct.blk_mq_tags* %14, null
  br i1 %tobool116.not.peel, label %if.then131.peel, label %if.end132.peel, !prof !9

if.then131.peel:                                  ; preds = %if.end110.peel
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 2974; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !34
  %.pre254 = load i16, i16* %nr_ctx98.peel, align 2
  br label %if.end132.peel

if.end132.peel:                                   ; preds = %if.then131.peel, %if.end110.peel
  %15 = phi i16 [ %.pre254, %if.then131.peel ], [ %12, %if.end110.peel ]
  %ctx_map.peel = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i64 0, i32 10
  %conv142.peel = zext i16 %15 to i32
  call void @sbitmap_resize(%struct.sbitmap* noundef %ctx_map.peel, i32 noundef %conv142.peel) #23
  %call143.peel = call fastcc i32 @blk_mq_first_mapped_cpu(%struct.blk_mq_hw_ctx* noundef %11) #24
  %next_cpu.peel = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i64 0, i32 3
  store i32 %call143.peel, i32* %next_cpu.peel, align 8
  %next_cpu_batch.peel = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i64 0, i32 4
  store i32 8, i32* %next_cpu_batch.peel, align 4
  br label %for.inc144.peel

if.end108.peel:                                   ; preds = %land.rhs90.lr.ph
  %tags109.peel = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i64 0, i32 19
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %tags109.peel, align 8
  br label %for.inc144.peel

for.inc144.peel:                                  ; preds = %if.end108.peel, %if.end132.peel
  %16 = load i32, i32* %nr_hw_queues, align 8
  %cmp88.peel = icmp ugt i32 %16, 1
  br i1 %cmp88.peel, label %land.rhs90, label %for.end146

do.body:                                          ; preds = %do.body.lr.ph, %for.cond1.loopexit
  %call238 = phi i32 [ %call236, %do.body.lr.ph ], [ %call, %for.cond1.loopexit ]
  %17 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %queue_ctx, align 8
  %18 = ptrtoint %struct.blk_mq_ctx* %17 to i64
  %idxprom6 = zext i32 %call238 to i64
  %arrayidx7 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom6
  %19 = load i64, i64* %arrayidx7, align 8
  %add = add i64 %19, %18
  %20 = inttoptr i64 %add to %struct.blk_mq_ctx*
  %21 = load i32, i32* %nr_maps, align 8
  %cmp9231.not = icmp eq i32 %21, 0
  br i1 %cmp9231.not, label %for.body77.preheader, label %for.body10

for.cond74.preheader:                             ; preds = %for.inc71
  %22 = trunc i64 %indvars.iv.next245 to i32
  %cmp75234 = icmp ult i32 %22, 3
  br i1 %cmp75234, label %for.body77.preheader, label %for.cond1.loopexit

for.body77.preheader:                             ; preds = %do.body, %for.cond74.preheader
  %j.0.lcssa258 = phi i64 [ %indvars.iv.next245, %for.cond74.preheader ], [ 0, %do.body ]
  %23 = and i64 %j.0.lcssa258, 4294967295
  br label %for.body77

for.body10:                                       ; preds = %do.body, %for.inc71
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.inc71 ], [ 0, %do.body ]
  %nr_queues = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 0, i64 %indvars.iv244, i32 1
  %24 = load i32, i32* %nr_queues, align 8
  %tobool13.not = icmp eq i32 %24, 0
  br i1 %tobool13.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %call14 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue_type(%struct.request_queue* noundef %q, i32 noundef 0, i32 noundef %call238) #24
  %arrayidx16 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %20, i64 0, i32 3, i64 %indvars.iv244
  store %struct.blk_mq_hw_ctx* %call14, %struct.blk_mq_hw_ctx** %arrayidx16, align 8
  br label %for.inc71

if.end:                                           ; preds = %for.body10
  %mq_map = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 0, i64 %indvars.iv244, i32 0
  %25 = load i32*, i32** %mq_map, align 8
  %arrayidx21 = getelementptr i32, i32* %25, i64 %idxprom6
  %26 = load i32, i32* %arrayidx21, align 4
  %27 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %idxprom22 = zext i32 %26 to i64
  %arrayidx23 = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %27, i64 %idxprom22
  %28 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx23, align 8
  %tobool24.not = icmp eq %struct.blk_mq_tags* %28, null
  br i1 %tobool24.not, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end
  %call25 = call fastcc i1 @__blk_mq_alloc_map_and_request(%struct.blk_mq_tag_set* noundef %0, i32 noundef %26) #24
  br i1 %call25, label %if.end33, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %29 = load i32*, i32** %mq_map, align 8
  %arrayidx32 = getelementptr i32, i32* %29, i64 %idxprom6
  store i32 0, i32* %arrayidx32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %land.lhs.true, %if.end
  %30 = trunc i64 %indvars.iv244 to i32
  %call34 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue_type(%struct.request_queue* noundef %q, i32 noundef %30, i32 noundef %call238) #24
  %arrayidx37 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %20, i64 0, i32 3, i64 %indvars.iv244
  store %struct.blk_mq_hw_ctx* %call34, %struct.blk_mq_hw_ctx** %arrayidx37, align 8
  %arraydecay39 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %call34, i64 0, i32 2, i64 0
  %call40 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call238, %struct.cpumask* noundef %arraydecay39) #24
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %for.inc71

if.end43:                                         ; preds = %if.end33
  call fastcc void @cpumask_set_cpu(i32 noundef %call238, %struct.cpumask* noundef %arraydecay39) #24
  %conv = trunc i64 %indvars.iv244 to i16
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %call34, i64 0, i32 13
  store i16 %conv, i16* %type, align 4
  %nr_ctx46 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %call34, i64 0, i32 14
  %31 = load i16, i16* %nr_ctx46, align 2
  %conv.mask = and i64 %indvars.iv244, 65535
  %arrayidx49 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %20, i64 0, i32 2, i64 %conv.mask
  store i16 %31, i16* %arrayidx49, align 2
  %ctxs = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %call34, i64 0, i32 15
  %32 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %ctxs, align 8
  %33 = load i16, i16* %nr_ctx46, align 2
  %inc51 = add i16 %33, 1
  store i16 %inc51, i16* %nr_ctx46, align 2
  %idxprom52 = zext i16 %33 to i64
  %arrayidx53 = getelementptr %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %32, i64 %idxprom52
  store %struct.blk_mq_ctx* %20, %struct.blk_mq_ctx** %arrayidx53, align 8
  %34 = load i16, i16* %nr_ctx46, align 2
  %tobool56.not = icmp eq i16 %34, 0
  br i1 %tobool56.not, label %do.body62, label %for.inc71, !prof !9

do.body62:                                        ; preds = %if.end43
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 2948; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !35
  unreachable

for.inc71:                                        ; preds = %if.end43, %if.end33, %if.then
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1
  %35 = load i32, i32* %nr_maps, align 8
  %36 = zext i32 %35 to i64
  %cmp9 = icmp ult i64 %indvars.iv.next245, %36
  br i1 %cmp9, label %for.body10, label %for.cond74.preheader

for.body77:                                       ; preds = %for.body77.preheader, %for.body77
  %indvars.iv247 = phi i64 [ %23, %for.body77.preheader ], [ %indvars.iv.next248, %for.body77 ]
  %call78 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue_type(%struct.request_queue* noundef %q, i32 noundef 0, i32 noundef %call238) #24
  %arrayidx81 = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %20, i64 0, i32 3, i64 %indvars.iv247
  store %struct.blk_mq_hw_ctx* %call78, %struct.blk_mq_hw_ctx** %arrayidx81, align 8
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next248 to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond.not, label %for.cond1.loopexit, label %for.body77

land.rhs90:                                       ; preds = %for.inc144.peel, %for.inc144
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %for.inc144 ], [ 1, %for.inc144.peel ]
  %37 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx91, align 8
  %arrayidx93 = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %37, i64 %indvars.iv250
  %38 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx93, align 8
  %nr_ctx98 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %38, i64 0, i32 14
  %39 = load i16, i16* %nr_ctx98, align 2
  %tobool99.not = icmp eq i16 %39, 0
  %40 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags111, align 8
  %arrayidx105 = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %40, i64 %indvars.iv250
  %41 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx105, align 8
  br i1 %tobool99.not, label %land.lhs.true102, label %if.end110

land.lhs.true102:                                 ; preds = %land.rhs90
  %tobool106.not = icmp eq %struct.blk_mq_tags* %41, null
  br i1 %tobool106.not, label %if.end108, label %if.then107

if.then107:                                       ; preds = %land.lhs.true102
  %42 = trunc i64 %indvars.iv250 to i32
  call fastcc void @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* noundef %0, i32 noundef %42) #24
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %land.lhs.true102
  %tags109 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %38, i64 0, i32 19
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %tags109, align 8
  br label %for.inc144

if.end110:                                        ; preds = %land.rhs90
  %tags114 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %38, i64 0, i32 19
  store %struct.blk_mq_tags* %41, %struct.blk_mq_tags** %tags114, align 8
  %tobool116.not = icmp eq %struct.blk_mq_tags* %41, null
  br i1 %tobool116.not, label %if.then131, label %if.end132, !prof !9

if.then131:                                       ; preds = %if.end110
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 2974; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !34
  %.pre255 = load i16, i16* %nr_ctx98, align 2
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end110
  %43 = phi i16 [ %.pre255, %if.then131 ], [ %39, %if.end110 ]
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %38, i64 0, i32 10
  %conv142 = zext i16 %43 to i32
  call void @sbitmap_resize(%struct.sbitmap* noundef %ctx_map, i32 noundef %conv142) #23
  %call143 = call fastcc i32 @blk_mq_first_mapped_cpu(%struct.blk_mq_hw_ctx* noundef %38) #24
  %next_cpu = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %38, i64 0, i32 3
  store i32 %call143, i32* %next_cpu, align 8
  %next_cpu_batch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %38, i64 0, i32 4
  store i32 8, i32* %next_cpu_batch, align 4
  br label %for.inc144

for.inc144:                                       ; preds = %if.end132, %if.end108
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %44 = load i32, i32* %nr_hw_queues, align 8
  %45 = zext i32 %44 to i64
  %cmp88 = icmp ult i64 %indvars.iv.next251, %45
  br i1 %cmp88, label %land.rhs90, label %for.end146, !llvm.loop !36

for.end146:                                       ; preds = %for.inc144, %for.inc144.peel, %for.cond86.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_free_callback(%struct.blk_stat_callback* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_exit_queue(%struct.request_queue* noundef %q) local_unnamed_addr #0 {
entry:
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 3
  %1 = load i32, i32* %nr_hw_queues, align 8
  call fastcc void @blk_mq_exit_hw_queues(%struct.request_queue* noundef %q, %struct.blk_mq_tag_set* noundef %0, i32 noundef %1) #24
  call fastcc void @blk_mq_del_queue_tag_set(%struct.request_queue* noundef %q) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_exit_hw_queues(%struct.request_queue* noundef %q, %struct.blk_mq_tag_set* noundef %set, i32 noundef %nr_queue) unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp11 = icmp eq i32 %0, 0
  %cmp112 = icmp eq i32 %nr_queue, 0
  %or.cond13 = or i1 %cmp112, %cmp11
  br i1 %or.cond13, label %for.end, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %1 = zext i32 %nr_queue to i64
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %if.end.lr.ph ], [ %indvars.iv.next, %if.end ]
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %indvars.iv
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %4 = trunc i64 %indvars.iv to i32
  call fastcc void @blk_mq_exit_hctx(%struct.request_queue* noundef %q, %struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_hw_ctx* noundef %3, i32 noundef %4) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, i32* %nr_hw_queues, align 8
  %6 = zext i32 %5 to i64
  %cmp = icmp uge i64 %indvars.iv.next, %6
  %cmp1 = icmp eq i64 %indvars.iv.next, %1
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %for.end, label %if.end

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_del_queue_tag_set(%struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %tag_list_lock = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 15
  call void @mutex_lock(%struct.mutex* noundef %tag_list_lock) #23
  %tag_set_list = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 48
  call fastcc void @list_del(%struct.list_head* noundef %tag_set_list) #24
  %tag_list = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 16
  %call = call fastcc i32 @list_is_singular(%struct.list_head* noundef %tag_list) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 9
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, -3
  store i32 %and, i32* %flags, align 8
  call fastcc void @blk_mq_update_tag_set_shared(%struct.blk_mq_tag_set* noundef %0, i1 noundef false) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* noundef %tag_list_lock) #23
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %tag_set_list) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set* noundef %set) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %0 = load i32, i32* %nr_hw_queues, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 4
  %1 = load i32, i32* %queue_depth, align 4
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 5
  %2 = load i32, i32* %reserved_tags, align 8
  %add = add i32 %2, 1
  %cmp = icmp ult i32 %1, %add
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  %3 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %queue_rq = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %3, i64 0, i32 0
  %4 = load i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)** %queue_rq, align 8
  %tobool7.not = icmp eq i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* %4, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %get_budget = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %3, i64 0, i32 2
  %5 = load i32 (%struct.request_queue*)*, i32 (%struct.request_queue*)** %get_budget, align 8
  %tobool11.not = icmp eq i32 (%struct.request_queue*)* %5, null
  %put_budget = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %3, i64 0, i32 3
  %6 = load void (%struct.request_queue*, i32)*, void (%struct.request_queue*, i32)** %put_budget, align 8
  %tobool13.not = icmp eq void (%struct.request_queue*, i32)* %6, null
  %xor181 = xor i1 %tobool11.not, %tobool13.not
  br i1 %xor181, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end9
  %cmp20 = icmp ugt i32 %1, 10240
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end18
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 10240) #28
  store i32 10240, i32* %queue_depth, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.end18
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 1
  %7 = load i32, i32* %nr_maps, align 8
  %tobool27.not = icmp eq i32 %7, 0
  br i1 %tobool27.not, label %if.end34.thread, label %if.else

if.end34.thread:                                  ; preds = %if.end26
  store i32 1, i32* %nr_maps, align 8
  br label %land.lhs.true

if.else:                                          ; preds = %if.end26
  %cmp31 = icmp ugt i32 %7, 3
  br i1 %cmp31, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.else
  %cmp45 = icmp eq i32 %7, 1
  br i1 %cmp45, label %land.lhs.true, label %if.end34.if.end50_crit_edge

if.end34.if.end50_crit_edge:                      ; preds = %if.end34
  %.pre = load i32, i32* %nr_hw_queues, align 8
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end34.thread, %if.end34
  %8 = load i32, i32* %nr_hw_queues, align 8
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp47 = icmp ugt i32 %8, %9
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %land.lhs.true
  store i32 %9, i32* %nr_hw_queues, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end34.if.end50_crit_edge, %if.then48, %land.lhs.true
  %10 = phi i32 [ %.pre, %if.end34.if.end50_crit_edge ], [ %9, %if.then48 ], [ %8, %land.lhs.true ]
  %call52 = call fastcc i32 @blk_mq_alloc_tag_set_tags(%struct.blk_mq_tag_set* noundef %set, i32 noundef %10) #24
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end50
  %11 = load i32, i32* %nr_maps, align 8
  %cmp57184.not = icmp eq i32 %11, 0
  br i1 %cmp57184.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %if.end65
  %i.0185 = phi i32 [ %inc, %if.end65 ], [ 0, %for.cond.preheader ]
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %conv = zext i32 %12 to i64
  %call58 = call fastcc i8* @kcalloc_node(i64 noundef %conv, i64 noundef 4, i32 noundef 3264) #24
  %idxprom = sext i32 %i.0185 to i64
  %arrayidx = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 %idxprom
  %13 = bitcast %struct.blk_mq_queue_map* %arrayidx to i8**
  store i8* %call58, i8** %13, align 8
  %tobool63.not = icmp eq i8* %call58, null
  br i1 %tobool63.not, label %out_free_mq_map, label %if.end65

if.end65:                                         ; preds = %for.body
  %14 = load i32, i32* %nr_hw_queues, align 8
  %nr_queues = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 %idxprom, i32 1
  store i32 %14, i32* %nr_queues, align 8
  %inc = add nuw i32 %i.0185, 1
  %15 = load i32, i32* %nr_maps, align 8
  %cmp57 = icmp ult i32 %inc, %15
  br i1 %cmp57, label %for.body, label %for.end

for.end:                                          ; preds = %if.end65, %for.cond.preheader
  %call76 = call fastcc i32 @blk_mq_update_queue_map(%struct.blk_mq_tag_set* noundef %set) #24
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %out_free_mq_map

if.end79:                                         ; preds = %for.end
  %call80 = call fastcc i32 @blk_mq_alloc_map_and_requests(%struct.blk_mq_tag_set* noundef %set) #24
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %out_free_mq_map

if.end83:                                         ; preds = %if.end79
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  %16 = load i32, i32* %flags, align 8
  %call84 = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %16) #24
  br i1 %call84, label %if.then85, label %do.body91

if.then85:                                        ; preds = %if.end83
  %counter.i = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 11, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %call86 = call i32 @blk_mq_init_shared_sbitmap(%struct.blk_mq_tag_set* noundef %set) #23
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.body91, label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %if.then85
  %17 = load i32, i32* %nr_hw_queues, align 8
  %cmp96186.not = icmp eq i32 %17, 0
  br i1 %cmp96186.not, label %out_free_mq_map, label %for.body98

do.body91:                                        ; preds = %if.end83, %if.then85
  %tag_list_lock = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 15
  call void @__mutex_init(%struct.mutex* noundef %tag_list_lock, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @blk_mq_alloc_tag_set.__key) #23
  %tag_list = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %tag_list) #24
  br label %cleanup

for.body98:                                       ; preds = %for.cond94.preheader, %for.body98
  %i.1187 = phi i32 [ %inc100, %for.body98 ], [ 0, %for.cond94.preheader ]
  call fastcc void @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* noundef %set, i32 noundef %i.1187) #24
  %inc100 = add nuw i32 %i.1187, 1
  %18 = load i32, i32* %nr_hw_queues, align 8
  %cmp96 = icmp ult i32 %inc100, %18
  br i1 %cmp96, label %for.body98, label %out_free_mq_map

out_free_mq_map:                                  ; preds = %for.body, %for.body98, %for.cond94.preheader, %if.end79, %for.end
  %ret.0 = phi i32 [ %call76, %for.end ], [ %call80, %if.end79 ], [ -12, %for.cond94.preheader ], [ -12, %for.body98 ], [ -12, %for.body ]
  %19 = load i32, i32* %nr_maps, align 8
  %cmp104188.not = icmp eq i32 %19, 0
  br i1 %cmp104188.not, label %for.end117, label %for.body106

for.body106:                                      ; preds = %out_free_mq_map, %for.body106
  %i.2189 = phi i32 [ %inc116, %for.body106 ], [ 0, %out_free_mq_map ]
  %idxprom108 = sext i32 %i.2189 to i64
  %mq_map110 = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 %idxprom108, i32 0
  %20 = bitcast i32** %mq_map110 to i8**
  %21 = load i8*, i8** %20, align 8
  call void @kfree(i8* noundef %21) #23
  store i32* null, i32** %mq_map110, align 8
  %inc116 = add nuw i32 %i.2189, 1
  %22 = load i32, i32* %nr_maps, align 8
  %cmp104 = icmp ult i32 %inc116, %22
  br i1 %cmp104, label %for.body106, label %for.end117

for.end117:                                       ; preds = %for.body106, %out_free_mq_map
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  %23 = bitcast %struct.blk_mq_tags*** %tags to i8**
  %24 = load i8*, i8** %23, align 8
  call void @kfree(i8* noundef %24) #23
  store %struct.blk_mq_tags** null, %struct.blk_mq_tags*** %tags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.else, %if.end9, %if.end6, %if.end3, %if.end, %entry, %for.end117, %do.body91
  %retval.0 = phi i32 [ %ret.0, %for.end117 ], [ 0, %do.body91 ], [ -22, %entry ], [ -22, %if.end ], [ -22, %if.end3 ], [ -22, %if.end6 ], [ -22, %if.end9 ], [ -22, %if.else ], [ -12, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_alloc_tag_set_tags(%struct.blk_mq_tag_set* nocapture noundef %set, i32 noundef %new_nr_hw_queues) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @blk_mq_realloc_tag_set_tags(%struct.blk_mq_tag_set* noundef %set, i32 noundef 0, i32 noundef %new_nr_hw_queues) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_update_queue_map(%struct.blk_mq_tag_set* noundef %set) unnamed_addr #0 {
entry:
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 1
  %0 = load i32, i32* %nr_maps, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  %1 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %map_queues = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %1, i64 0, i32 16
  %2 = load i32 (%struct.blk_mq_tag_set*)*, i32 (%struct.blk_mq_tag_set*)** %map_queues, align 8
  %tobool.not = icmp eq i32 (%struct.blk_mq_tag_set*)* %2, null
  br i1 %tobool.not, label %do.body, label %land.lhs.true

if.end.thread:                                    ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %3 = load i32, i32* %nr_hw_queues, align 8
  %nr_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 0, i32 1
  store i32 %3, i32* %nr_queues, align 8
  %ops34 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  %4 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops34, align 8
  %map_queues35 = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %4, i64 0, i32 16
  %5 = load i32 (%struct.blk_mq_tag_set*)*, i32 (%struct.blk_mq_tag_set*)** %map_queues35, align 8
  %tobool.not36 = icmp eq i32 (%struct.blk_mq_tag_set*)* %5, null
  br i1 %tobool.not36, label %do.end18, label %for.body.preheader

land.lhs.true:                                    ; preds = %if.end
  %cmp339.not = icmp eq i32 %0, 0
  br i1 %cmp339.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.thread, %land.lhs.true
  %ops3743 = phi %struct.blk_mq_ops** [ %ops, %land.lhs.true ], [ %ops34, %if.end.thread ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.040 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %idxprom = sext i32 %i.040 to i64
  %arrayidx5 = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 %idxprom
  call fastcc void @blk_mq_clear_mq_map(%struct.blk_mq_queue_map* noundef %arrayidx5) #24
  %inc = add nuw i32 %i.040, 1
  %6 = load i32, i32* %nr_maps, align 8
  %cmp3 = icmp ult i32 %inc, %6
  br i1 %cmp3, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops3743, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %land.lhs.true
  %7 = phi %struct.blk_mq_ops* [ %.pre, %for.end.loopexit ], [ %1, %land.lhs.true ]
  %map_queues7 = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %7, i64 0, i32 16
  %8 = load i32 (%struct.blk_mq_tag_set*)*, i32 (%struct.blk_mq_tag_set*)** %map_queues7, align 8
  %call8 = call i32 %8(%struct.blk_mq_tag_set* noundef %set) #23
  br label %return

do.body:                                          ; preds = %if.end
  %cmp10 = icmp ugt i32 %0, 1
  br i1 %cmp10, label %do.body14, label %do.end18, !prof !9

do.body14:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 3433; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !38
  unreachable

do.end18:                                         ; preds = %if.end.thread, %do.body
  %arrayidx20 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 0
  %call21 = call i32 @blk_mq_map_queues(%struct.blk_mq_queue_map* noundef %arrayidx20) #23
  br label %return

return:                                           ; preds = %do.end18, %for.end
  %retval.0 = phi i32 [ %call21, %do.end18 ], [ %call8, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_alloc_map_and_requests(%struct.blk_mq_tag_set* noundef %set) unnamed_addr #0 {
entry:
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 4
  %0 = load i32, i32* %queue_depth, align 4
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %call = call fastcc i32 @__blk_mq_alloc_rq_maps(%struct.blk_mq_tag_set* noundef %set) #24
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i32, i32* %queue_depth, align 4
  br i1 %tobool.not, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %shr = lshr i32 %1, 1
  store i32 %shr, i32* %queue_depth, align 4
  %2 = load i32, i32* %reserved_tags, align 8
  %add = add i32 %2, 1
  %cmp = icmp ult i32 %shr, %add
  %tobool6.not = icmp ult i32 %1, 2
  %or.cond40 = or i1 %tobool6.not, %cmp
  br i1 %or.cond40, label %do.end13, label %do.body

do.end:                                           ; preds = %do.body
  %tobool8 = icmp eq i32 %1, 0
  br i1 %tobool8, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end, %do.end
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0)) #28
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %cmp17.not = icmp eq i32 %0, %1
  br i1 %cmp17.not, label %cleanup, label %do.end21

do.end21:                                         ; preds = %if.end15
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #28
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end21, %do.end13
  %retval.0 = phi i32 [ -12, %do.end13 ], [ 0, %do.end21 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_init_shared_sbitmap(%struct.blk_mq_tag_set* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* noundef %set, i32 noundef %hctx_idx) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  %0 = load i32, i32* %flags1, align 8
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  %1 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %tobool.not = icmp eq %struct.blk_mq_tags** %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %idxprom = zext i32 %hctx_idx to i64
  %arrayidx = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %1, i64 %idxprom
  %2 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx, align 8
  %tobool3.not = icmp eq %struct.blk_mq_tags* %2, null
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @blk_mq_free_rqs(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_tags* noundef nonnull %2, i32 noundef %hctx_idx) #24
  %3 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %arrayidx9 = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %3, i64 %idxprom
  %4 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx9, align 8
  call void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef %4, i32 noundef %0) #24
  %5 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %arrayidx12 = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, i64 %idxprom
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_alloc_sq_tag_set(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_ops* noundef %ops, i32 noundef %queue_depth, i32 noundef %set_flags) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.blk_mq_tag_set* %set to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 280) #23
  %ops1 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  store %struct.blk_mq_ops* %ops, %struct.blk_mq_ops** %ops1, align 8
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  store i32 1, i32* %nr_hw_queues, align 8
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 1
  store i32 1, i32* %nr_maps, align 8
  %queue_depth2 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 4
  store i32 %queue_depth, i32* %queue_depth2, align 4
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 7
  store i32 -1, i32* %numa_node, align 8
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  store i32 %set_flags, i32* %flags, align 8
  %call3 = call i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set* noundef %set) #24
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_free_tag_set(%struct.blk_mq_tag_set* noundef %set) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp27.not = icmp eq i32 %0, 0
  br i1 %cmp27.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.028 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  call fastcc void @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* noundef %set, i32 noundef %i.028) #24
  %inc = add nuw i32 %i.028, 1
  %1 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  %2 = load i32, i32* %flags, align 8
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %2) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @blk_mq_exit_shared_sbitmap(%struct.blk_mq_tag_set* noundef %set) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 1
  %3 = load i32, i32* %nr_maps, align 8
  %cmp229.not = icmp eq i32 %3, 0
  br i1 %cmp229.not, label %for.end10, label %for.body3

for.body3:                                        ; preds = %if.end, %for.body3
  %j.030 = phi i32 [ %inc9, %for.body3 ], [ 0, %if.end ]
  %idxprom = sext i32 %j.030 to i64
  %mq_map = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 %idxprom, i32 0
  %4 = bitcast i32** %mq_map to i8**
  %5 = load i8*, i8** %4, align 8
  call void @kfree(i8* noundef %5) #23
  store i32* null, i32** %mq_map, align 8
  %inc9 = add nuw i32 %j.030, 1
  %6 = load i32, i32* %nr_maps, align 8
  %cmp2 = icmp ult i32 %inc9, %6
  br i1 %cmp2, label %for.body3, label %for.end10

for.end10:                                        ; preds = %for.body3, %if.end
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  %7 = bitcast %struct.blk_mq_tags*** %tags to i8**
  %8 = load i8*, i8** %7, align 8
  call void @kfree(i8* noundef %8) #23
  store %struct.blk_mq_tags** null, %struct.blk_mq_tags*** %tags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_exit_shared_sbitmap(%struct.blk_mq_tag_set* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_update_nr_requests(%struct.request_queue* noundef %q, i32 noundef %nr) local_unnamed_addr #0 {
entry:
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %0 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %tobool.not = icmp eq %struct.blk_mq_tag_set* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nr_requests = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 18
  %1 = load i64, i64* %nr_requests, align 8
  %conv = zext i32 %nr to i64
  %cmp = icmp eq i64 %1, %conv
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  call void @blk_mq_freeze_queue(%struct.request_queue* noundef %q) #24
  call void @blk_mq_quiesce_queue(%struct.request_queue* noundef %q) #24
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %2 = load i32, i32* %nr_hw_queues, align 8
  %cmp4109.not = icmp eq i32 %2, 0
  br i1 %cmp4109.not, label %if.then41, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end3
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %flags20 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 9
  %sched_bitmap_tags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 28
  %sched_breserved_tags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 29
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %i.0110 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %3 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.0110 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, i64 %idxprom
  %4 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %4, i64 0, i32 19
  %5 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %tobool7.not = icmp eq %struct.blk_mq_tags* %5, null
  br i1 %tobool7.not, label %for.inc, label %if.end9

if.end9:                                          ; preds = %land.rhs
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %4, i64 0, i32 20
  %6 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %tobool10.not = icmp eq %struct.blk_mq_tags* %6, null
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %call = call i32 @blk_mq_tag_update_depth(%struct.blk_mq_hw_ctx* noundef %4, %struct.blk_mq_tags** noundef %tags, i32 noundef %nr, i1 noundef false) #23
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.then11
  %7 = load i32, i32* %flags20, align 8
  %call14 = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %7) #24
  br i1 %call14, label %if.then16, label %if.end29

if.then16:                                        ; preds = %land.lhs.true
  call void @blk_mq_tag_resize_shared_sbitmap(%struct.blk_mq_tag_set* noundef nonnull %0, i32 noundef %nr) #23
  br label %if.end29

if.else:                                          ; preds = %if.end9
  %call19 = call i32 @blk_mq_tag_update_depth(%struct.blk_mq_hw_ctx* noundef %4, %struct.blk_mq_tags** noundef %sched_tags, i32 noundef %nr, i1 noundef true) #23
  %8 = load i32, i32* %flags20, align 8
  %call21 = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %8) #24
  br i1 %call21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.else
  %9 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %9, i64 0, i32 3
  store %struct.sbitmap_queue* %sched_bitmap_tags, %struct.sbitmap_queue** %bitmap_tags, align 8
  %10 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %10, i64 0, i32 4
  store %struct.sbitmap_queue* %sched_breserved_tags, %struct.sbitmap_queue** %breserved_tags, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  %tobool27.not = icmp eq i32 %call19, 0
  br i1 %tobool27.not, label %if.end29, label %if.end53

if.end29:                                         ; preds = %land.lhs.true, %if.then16, %if.end26
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool30.not = icmp eq %struct.elevator_queue* %11, null
  br i1 %tobool30.not, label %for.inc, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end29
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %11, i64 0, i32 0
  %12 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %depth_updated = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %12, i64 0, i32 1, i32 4
  %13 = load void (%struct.blk_mq_hw_ctx*)*, void (%struct.blk_mq_hw_ctx*)** %depth_updated, align 8
  %tobool33.not = icmp eq void (%struct.blk_mq_hw_ctx*)* %13, null
  br i1 %tobool33.not, label %for.inc, label %if.then34

if.then34:                                        ; preds = %land.lhs.true31
  call void %13(%struct.blk_mq_hw_ctx* noundef %4) #23
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %land.lhs.true31, %if.then34, %land.rhs
  %inc = add nuw i32 %i.0110, 1
  %14 = load i32, i32* %nr_hw_queues, align 8
  %cmp4 = icmp ult i32 %inc, %14
  br i1 %cmp4, label %land.rhs, label %if.then41

if.then41:                                        ; preds = %for.inc, %if.end3
  store i64 %conv, i64* %nr_requests, align 8
  %elevator44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %15 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator44, align 8
  %tobool45.not = icmp eq %struct.elevator_queue* %15, null
  br i1 %tobool45.not, label %if.end53, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.then41
  %flags47 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 9
  %16 = load i32, i32* %flags47, align 8
  %call48 = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %16) #24
  br i1 %call48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %land.lhs.true46
  %sched_bitmap_tags51 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 28
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %0, i64 0, i32 5
  %17 = load i32, i32* %reserved_tags, align 8
  %sub = sub i32 %nr, %17
  call void @sbitmap_queue_resize(%struct.sbitmap_queue* noundef %sched_bitmap_tags51, i32 noundef %sub) #23
  br label %if.end53

if.end53:                                         ; preds = %if.then11, %if.end26, %if.then41, %land.lhs.true46, %if.then50
  %ret.3108 = phi i32 [ 0, %if.then41 ], [ 0, %land.lhs.true46 ], [ 0, %if.then50 ], [ %call, %if.then11 ], [ %call19, %if.end26 ]
  call void @blk_mq_unquiesce_queue(%struct.request_queue* noundef %q) #24
  call void @blk_mq_unfreeze_queue(%struct.request_queue* noundef %q) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end53
  %retval.0 = phi i32 [ %ret.3108, %if.end53 ], [ -22, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_tag_update_depth(%struct.blk_mq_hw_ctx* noundef, %struct.blk_mq_tags** noundef, i32 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tag_resize_shared_sbitmap(%struct.blk_mq_tag_set* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(%struct.sbitmap_queue* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_update_nr_hw_queues(%struct.blk_mq_tag_set* noundef %set, i32 noundef %nr_hw_queues) local_unnamed_addr #0 {
entry:
  %tag_list_lock = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 15
  call void @mutex_lock(%struct.mutex* noundef %tag_list_lock) #23
  call fastcc void @__blk_mq_update_nr_hw_queues(%struct.blk_mq_tag_set* noundef %set, i32 noundef %nr_hw_queues) #24
  call void @mutex_unlock(%struct.mutex* noundef %tag_list_lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_update_nr_hw_queues(%struct.blk_mq_tag_set* noundef %set, i32 noundef %nr_hw_queues) unnamed_addr #0 {
entry:
  %head = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  store %struct.list_head* %head, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  store %struct.list_head* %head, %struct.list_head** %prev, align 8
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 1
  %1 = load i32, i32* %nr_maps, align 8
  %cmp = icmp eq i32 %1, 1
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1 = icmp ult i32 %2, %nr_hw_queues
  %3 = select i1 %cmp, i1 %cmp1, i1 false
  %nr_hw_queues.addr.0 = select i1 %3, i32 %2, i32 %nr_hw_queues
  %cmp2 = icmp slt i32 %nr_hw_queues.addr.0, 1
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  br i1 %cmp, label %land.lhs.true7, label %if.end11

land.lhs.true7:                                   ; preds = %if.end4
  %nr_hw_queues8 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %4 = load i32, i32* %nr_hw_queues8, align 8
  %cmp9 = icmp eq i32 %nr_hw_queues.addr.0, %4
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true7, %if.end4
  %tag_list = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 16
  %5 = bitcast %struct.list_head* %tag_list to i8**
  %.pn274 = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn274 to %struct.list_head*
  %cmp17.not275 = icmp eq %struct.list_head* %tag_list, %6
  br i1 %cmp17.not275, label %for.cond34.preheader, label %for.body

for.cond34.preheader.loopexit:                    ; preds = %for.body
  %.pn267277.pre = load i8*, i8** %5, align 8
  %.pre = bitcast i8* %.pn267277.pre to %struct.list_head*
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond34.preheader.loopexit, %if.end11
  %.pre-phi = phi %struct.list_head* [ %.pre, %for.cond34.preheader.loopexit ], [ %6, %if.end11 ]
  %.pn267277 = phi i8* [ %.pn267277.pre, %for.cond34.preheader.loopexit ], [ %.pn274, %if.end11 ]
  %cmp37.not278 = icmp eq %struct.list_head* %tag_list, %.pre-phi
  br i1 %cmp37.not278, label %for.cond60.preheader, label %for.body39

for.body:                                         ; preds = %if.end11, %for.body
  %.pn276 = phi i8* [ %.pn, %for.body ], [ %.pn274, %if.end11 ]
  %q.0.in = getelementptr i8, i8* %.pn276, i64 -1520
  %q.0 = bitcast i8* %q.0.in to %struct.request_queue*
  call void @blk_mq_freeze_queue(%struct.request_queue* noundef %q.0) #24
  %7 = bitcast i8* %.pn276 to i8**
  %.pn = load i8*, i8** %7, align 8
  %8 = bitcast i8* %.pn to %struct.list_head*
  %cmp17.not = icmp eq %struct.list_head* %tag_list, %8
  br i1 %cmp17.not, label %for.cond34.preheader.loopexit, label %for.body

for.cond60.preheader.loopexit:                    ; preds = %for.inc42
  %.pn268280.pre = load i8*, i8** %5, align 8
  %.pre310 = bitcast i8* %.pn268280.pre to %struct.list_head*
  br label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %for.cond60.preheader.loopexit, %for.cond34.preheader
  %.pre-phi311 = phi %struct.list_head* [ %.pre310, %for.cond60.preheader.loopexit ], [ %.pre-phi, %for.cond34.preheader ]
  %.pn268280 = phi i8* [ %.pn268280.pre, %for.cond60.preheader.loopexit ], [ %.pn267277, %for.cond34.preheader ]
  %cmp63.not281 = icmp eq %struct.list_head* %tag_list, %.pre-phi311
  br i1 %cmp63.not281, label %for.end75, label %for.body65

for.body39:                                       ; preds = %for.cond34.preheader, %for.inc42
  %.pn267279 = phi i8* [ %.pn267, %for.inc42 ], [ %.pn267277, %for.cond34.preheader ]
  %q.1.in = getelementptr i8, i8* %.pn267279, i64 -1520
  %q.1 = bitcast i8* %q.1.in to %struct.request_queue*
  %call = call fastcc i1 @blk_mq_elv_switch_none(%struct.list_head* noundef nonnull %head, %struct.request_queue* noundef %q.1) #24
  br i1 %call, label %for.inc42, label %switch_back

for.inc42:                                        ; preds = %for.body39
  %9 = bitcast i8* %.pn267279 to i8**
  %.pn267 = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn267 to %struct.list_head*
  %cmp37.not = icmp eq %struct.list_head* %tag_list, %10
  br i1 %cmp37.not, label %for.cond60.preheader.loopexit, label %for.body39

for.body65:                                       ; preds = %for.cond60.preheader, %for.body65
  %.pn268282 = phi i8* [ %.pn268, %for.body65 ], [ %.pn268280, %for.cond60.preheader ]
  %q.2.in = getelementptr i8, i8* %.pn268282, i64 -1520
  %q.2 = bitcast i8* %q.2.in to %struct.request_queue*
  call void @blk_mq_sysfs_unregister(%struct.request_queue* noundef %q.2) #23
  %11 = bitcast i8* %.pn268282 to i8**
  %.pn268 = load i8*, i8** %11, align 8
  %12 = bitcast i8* %.pn268 to %struct.list_head*
  %cmp63.not = icmp eq %struct.list_head* %tag_list, %12
  br i1 %cmp63.not, label %for.end75, label %for.body65

for.end75:                                        ; preds = %for.body65, %for.cond60.preheader
  %nr_hw_queues76 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %13 = load i32, i32* %nr_hw_queues76, align 8
  %call78 = call fastcc i32 @blk_mq_realloc_tag_set_tags(%struct.blk_mq_tag_set* noundef %set, i32 noundef %13, i32 noundef %nr_hw_queues.addr.0) #24
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %reregister, label %if.end81

if.end81:                                         ; preds = %for.end75
  store i32 %nr_hw_queues.addr.0, i32* %nr_hw_queues76, align 8
  %call83289 = call fastcc i32 @blk_mq_update_queue_map(%struct.blk_mq_tag_set* noundef %set) #24
  %.pn269283290 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %.pn269283290 to %struct.list_head*
  %cmp95.not286293 = icmp eq %struct.list_head* %tag_list, %14
  br i1 %cmp95.not286293, label %reregister, label %for.body97.lr.ph.lr.ph

for.body97.lr.ph.lr.ph:                           ; preds = %if.end81
  %arrayidx = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 0, i64 0
  br label %for.body97

for.body97:                                       ; preds = %for.body97.backedge, %for.body97.lr.ph.lr.ph
  %.pn269287 = phi i8* [ %.pn269283290, %for.body97.lr.ph.lr.ph ], [ %.pn269287.be, %for.body97.backedge ]
  %q.3288.in = getelementptr i8, i8* %.pn269287, i64 -1520
  %q.3288 = bitcast i8* %q.3288.in to %struct.request_queue*
  call fastcc void @blk_mq_realloc_hw_ctxs(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef %q.3288) #24
  %nr_hw_queues98 = getelementptr i8, i8* %.pn269287, i64 -1440
  %15 = bitcast i8* %nr_hw_queues98 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %nr_hw_queues76, align 8
  %cmp100.not = icmp eq i32 %16, %17
  br i1 %cmp100.not, label %if.end109, label %do.end104

do.end104:                                        ; preds = %for.body97
  %call106 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 noundef %nr_hw_queues.addr.0, i32 noundef %13) #28
  store i32 %13, i32* %nr_hw_queues76, align 8
  %call108 = call i32 @blk_mq_map_queues(%struct.blk_mq_queue_map* noundef %arrayidx) #23
  %call83 = call fastcc i32 @blk_mq_update_queue_map(%struct.blk_mq_tag_set* noundef %set) #24
  %.pn269283 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %.pn269283 to %struct.list_head*
  %cmp95.not286 = icmp eq %struct.list_head* %tag_list, %18
  br i1 %cmp95.not286, label %reregister, label %for.body97.backedge

if.end109:                                        ; preds = %for.body97
  call fastcc void @blk_mq_map_swqueue(%struct.request_queue* noundef %q.3288) #24
  %19 = bitcast i8* %.pn269287 to i8**
  %.pn269 = load i8*, i8** %19, align 8
  %20 = bitcast i8* %.pn269 to %struct.list_head*
  %cmp95.not = icmp eq %struct.list_head* %tag_list, %20
  br i1 %cmp95.not, label %reregister, label %for.body97.backedge

for.body97.backedge:                              ; preds = %if.end109, %do.end104
  %.pn269287.be = phi i8* [ %.pn269, %if.end109 ], [ %.pn269283, %do.end104 ]
  br label %for.body97

reregister:                                       ; preds = %do.end104, %if.end109, %if.end81, %for.end75
  %.pn270296 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %.pn270296 to %struct.list_head*
  %cmp131.not297 = icmp eq %struct.list_head* %tag_list, %21
  br i1 %cmp131.not297, label %switch_back, label %for.body133

for.body133:                                      ; preds = %reregister, %for.body133
  %.pn270298 = phi i8* [ %.pn270, %for.body133 ], [ %.pn270296, %reregister ]
  %q.4.in = getelementptr i8, i8* %.pn270298, i64 -1520
  %q.4 = bitcast i8* %q.4.in to %struct.request_queue*
  %call134 = call i32 @blk_mq_sysfs_register(%struct.request_queue* noundef %q.4) #23
  %22 = bitcast i8* %.pn270298 to i8**
  %.pn270 = load i8*, i8** %22, align 8
  %23 = bitcast i8* %.pn270 to %struct.list_head*
  %cmp131.not = icmp eq %struct.list_head* %tag_list, %23
  br i1 %cmp131.not, label %switch_back, label %for.body133

switch_back:                                      ; preds = %for.body39, %for.body133, %reregister
  %.pn271299 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %.pn271299 to %struct.list_head*
  %cmp156.not300 = icmp eq %struct.list_head* %tag_list, %24
  br i1 %cmp156.not300, label %for.cond177.preheader, label %for.body158

for.cond177.preheader.loopexit:                   ; preds = %for.body158
  %.pn272302.pre = load i8*, i8** %5, align 8
  %.pre312 = bitcast i8* %.pn272302.pre to %struct.list_head*
  br label %for.cond177.preheader

for.cond177.preheader:                            ; preds = %for.cond177.preheader.loopexit, %switch_back
  %.pre-phi313 = phi %struct.list_head* [ %.pre312, %for.cond177.preheader.loopexit ], [ %24, %switch_back ]
  %.pn272302 = phi i8* [ %.pn272302.pre, %for.cond177.preheader.loopexit ], [ %.pn271299, %switch_back ]
  %cmp180.not303 = icmp eq %struct.list_head* %tag_list, %.pre-phi313
  br i1 %cmp180.not303, label %cleanup, label %for.body182

for.body158:                                      ; preds = %switch_back, %for.body158
  %.pn271301 = phi i8* [ %.pn271, %for.body158 ], [ %.pn271299, %switch_back ]
  %q.5.in = getelementptr i8, i8* %.pn271301, i64 -1520
  %q.5 = bitcast i8* %q.5.in to %struct.request_queue*
  call fastcc void @blk_mq_elv_switch_back(%struct.list_head* noundef nonnull %head, %struct.request_queue* noundef %q.5) #24
  %25 = bitcast i8* %.pn271301 to i8**
  %.pn271 = load i8*, i8** %25, align 8
  %26 = bitcast i8* %.pn271 to %struct.list_head*
  %cmp156.not = icmp eq %struct.list_head* %tag_list, %26
  br i1 %cmp156.not, label %for.cond177.preheader.loopexit, label %for.body158

for.body182:                                      ; preds = %for.cond177.preheader, %for.body182
  %.pn272304 = phi i8* [ %.pn272, %for.body182 ], [ %.pn272302, %for.cond177.preheader ]
  %q.6.in = getelementptr i8, i8* %.pn272304, i64 -1520
  %q.6 = bitcast i8* %q.6.in to %struct.request_queue*
  call void @blk_mq_unfreeze_queue(%struct.request_queue* noundef %q.6) #24
  %27 = bitcast i8* %.pn272304 to i8**
  %.pn272 = load i8*, i8** %27, align 8
  %28 = bitcast i8* %.pn272 to %struct.list_head*
  %cmp180.not = icmp eq %struct.list_head* %tag_list, %28
  br i1 %cmp180.not, label %cleanup, label %for.body182

cleanup:                                          ; preds = %for.body182, %for.cond177.preheader, %land.lhs.true7, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_poll(%struct.request_queue* noundef %q, i32 noundef %cookie, i1 noundef %spin) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_qc_t_valid(i32 noundef %cookie) #24
  br i1 %call, label %lor.lhs.false, label %cleanup93

lor.lhs.false:                                    ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup93, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #27, !srcloc !31
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %plug = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 109
  %4 = load %struct.blk_plug*, %struct.blk_plug** %plug, align 8
  %tobool3.not = icmp eq %struct.blk_plug* %4, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @blk_flush_plug_list(%struct.blk_plug* noundef nonnull %4, i1 noundef false) #23
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %5 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %call8 = call fastcc i32 @blk_qc_t_to_queue_num(i32 noundef %cookie) #24
  %idxprom = zext i32 %call8 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, i64 %idxprom
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  br i1 %spin, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %call10 = call fastcc i1 @blk_mq_poll_hybrid(%struct.request_queue* noundef %q, %struct.blk_mq_hw_ctx* noundef %6, i32 noundef %cookie) #24
  br i1 %call10, label %cleanup93, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %poll_considered = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i64 0, i32 30
  %7 = load i64, i64* %poll_considered, align 32
  %inc = add i64 %7, 1
  store i64 %inc, i64* %poll_considered, align 32
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 1
  %8 = load volatile i32, i32* %__state, align 16
  %poll_invoked = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i64 0, i32 31
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 5
  %9 = getelementptr %struct.task_struct, %struct.task_struct* %3, i64 0, i32 0
  br label %do.body14

do.body14:                                        ; preds = %do.cond73, %if.end12
  %10 = load i64, i64* %poll_invoked, align 8
  %inc15 = add i64 %10, 1
  store i64 %inc15, i64* %poll_invoked, align 8
  %11 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %poll = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %11, i64 0, i32 7
  %12 = load i32 (%struct.blk_mq_hw_ctx*)*, i32 (%struct.blk_mq_hw_ctx*)** %poll, align 8
  %call16 = call i32 %12(%struct.blk_mq_hw_ctx* noundef %6) #23
  %cmp = icmp sgt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.end36

if.then17:                                        ; preds = %do.body14
  %poll_success = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i64 0, i32 32
  %13 = load i64, i64* %poll_success, align 16
  %inc18 = add i64 %13, 1
  store i64 %inc18, i64* %poll_success, align 16
  br label %cleanup93.sink.split

if.end36:                                         ; preds = %do.body14
  %call38 = call fastcc i32 @signal_pending_state(i32 noundef %8, %struct.task_struct* noundef %3) #24
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end61, label %do.body49

do.body49:                                        ; preds = %if.end36
  store volatile i32 0, i32* %__state, align 16
  br label %do.end61

do.end61:                                         ; preds = %if.end36, %do.body49
  %14 = load volatile i32, i32* %__state, align 16
  %cmp65 = icmp eq i32 %14, 0
  br i1 %cmp65, label %cleanup93, label %if.end67

if.end67:                                         ; preds = %do.end61
  %cmp68 = icmp sgt i32 %call16, -1
  %15 = and i1 %cmp68, %spin
  br i1 %15, label %do.cond73, label %cleanup93.sink.split

do.cond73:                                        ; preds = %if.end67
  call fastcc void @cpu_relax() #24
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %9, i32 noundef 1) #23
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %do.body14, label %cleanup93.sink.split

cleanup93.sink.split:                             ; preds = %do.cond73, %if.end67, %if.then17
  %retval.2.ph = phi i32 [ %call16, %if.then17 ], [ 0, %if.end67 ], [ 0, %do.cond73 ]
  store volatile i32 0, i32* %__state, align 16
  br label %cleanup93

cleanup93:                                        ; preds = %do.end61, %cleanup93.sink.split, %land.lhs.true, %entry, %lor.lhs.false
  %retval.2 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %land.lhs.true ], [ %retval.2.ph, %cleanup93.sink.split ], [ 1, %do.end61 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_qc_t_valid(i32 noundef %cookie) unnamed_addr #6 {
entry:
  %cmp = icmp ne i32 %cookie, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @blk_qc_t_to_queue_num(i32 noundef %cookie) unnamed_addr #6 {
entry:
  %and = lshr i32 %cookie, 16
  %shr = and i32 %and, 32767
  ret i32 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_poll_hybrid(%struct.request_queue* noundef %q, %struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, i32 noundef %cookie) unnamed_addr #0 {
entry:
  %poll_nsec = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 22
  %0 = load i32, i32* %poll_nsec, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @blk_qc_t_is_internal(i32 noundef %cookie) #24
  br i1 %call, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %1 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %call2 = call fastcc i32 @blk_qc_t_to_tag(i32 noundef %cookie) #24, !range !39
  %call3 = call %struct.request* @blk_mq_tag_to_rq(%struct.blk_mq_tags* noundef %1, i32 noundef %call2) #24
  br label %if.end8

if.else:                                          ; preds = %if.end
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 20
  %2 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %call4 = call fastcc i32 @blk_qc_t_to_tag(i32 noundef %cookie) #24, !range !39
  %call5 = call %struct.request* @blk_mq_tag_to_rq(%struct.blk_mq_tags* noundef %2, i32 noundef %call4) #24
  %tobool.not = icmp eq %struct.request* %call5, null
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.else, %if.then1
  %rq.0 = phi %struct.request* [ %call5, %if.else ], [ %call3, %if.then1 ]
  %call9 = call fastcc i1 @blk_mq_poll_hybrid_sleep(%struct.request_queue* noundef %q, %struct.request* noundef %rq.0) #24
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.end8
  %retval.0 = phi i1 [ %call9, %if.end8 ], [ false, %entry ], [ false, %if.else ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %and = and i32 %state, 257
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @signal_pending(%struct.task_struct* noundef %p) #24
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %state, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.end3
  %call6 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #24
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %return

return:                                           ; preds = %if.end3, %lor.rhs, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end3 ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #22, !srcloc !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @blk_mq_rq_cpu(%struct.request* nocapture noundef readonly %rq) local_unnamed_addr #5 {
entry:
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %0 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %cpu = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %0, i64 0, i32 1
  %1 = load i32, i32* %cpu, align 64
  ret i32 %1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @blk_mq_init() #17 section ".init.text" {
entry:
  %call10 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call12 = phi i32 [ %call, %do.body ], [ %call10, %entry ]
  %idxprom = sext i32 %call12 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.llist_head* @blk_cpu_done to i64)
  %2 = inttoptr i64 %add to %struct.llist_head*
  call fastcc void @init_llist_head(%struct.llist_head* noundef %2) #24
  %call = call i32 @cpumask_next(i32 noundef %call12, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  call void @open_softirq(i32 noundef 4, void (%struct.softirq_action*)* noundef nonnull @blk_done_softirq) #23
  call fastcc void @cpuhp_setup_state_nocalls() #24
  call fastcc void @cpuhp_setup_state_multi(i32 noundef 26, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 (i32, %struct.hlist_node*)* noundef null, i32 (i32, %struct.hlist_node*)* noundef nonnull @blk_mq_hctx_notify_dead) #24
  call fastcc void @cpuhp_setup_state_multi(i32 noundef 155, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 (i32, %struct.hlist_node*)* noundef nonnull @blk_mq_hctx_notify_online, i32 (i32, %struct.hlist_node*)* noundef nonnull @blk_mq_hctx_notify_offline) #24
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @op_is_write(i32 noundef %op) unnamed_addr #6 {
entry:
  %and = and i32 %op, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(%struct.percpu_ref* noundef, void (%struct.percpu_ref*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_op_is_passthrough(i32 noundef %op) unnamed_addr #6 {
entry:
  %and = and i32 %op, 254
  %0 = icmp eq i32 %and, 34
  ret i1 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.blk_mq_ctx* @blk_mq_get_ctx(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #12 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc %struct.blk_mq_ctx* @__blk_mq_get_ctx(%struct.request_queue* noundef %q, i32 noundef %1) #24
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #29, !srcloc !41
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #18

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__blk_mq_tag_busy(%struct.blk_mq_hw_ctx* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data* nocapture noundef readonly %data) unnamed_addr #5 {
entry:
  %q = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %1, null
  %hctx1 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx1, align 8
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 20
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 19
  %retval.0.in = select i1 %tobool.not, %struct.blk_mq_tags** %tags, %struct.blk_mq_tags** %sched_tags
  %retval.0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %retval.0.in, align 8
  ret %struct.blk_mq_tags* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #19 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_assign_ioc(%struct.request* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_done(%struct.rq_qos* noundef, %struct.request* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #24
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #23
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #22, !srcloc !43
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !12

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !44
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_tag(%struct.blk_mq_tags* noundef, %struct.blk_mq_ctx* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_restart(%struct.blk_mq_hw_ctx* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cpus_share_cache(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_online_mask) #24
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #4 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @llist_add(%struct.llist_node* noundef %new, %struct.llist_head* noundef %head) unnamed_addr #0 {
entry:
  %call = call i1 @llist_add_batch(%struct.llist_node* noundef %new, %struct.llist_node* noundef %new, %struct.llist_head* noundef %head) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__blk_mq_complete_request_remote(i8* nocapture noundef readnone %data) #0 {
entry:
  call void @__raise_softirq_irqoff(i32 noundef 4) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single_async(i32 noundef, %struct.__call_single_data* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @llist_add_batch(%struct.llist_node* noundef, %struct.llist_node* noundef, %struct.llist_head* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raise_softirq_irqoff(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_issue(%struct.rq_qos* noundef, %struct.request* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_put_driver_tag(%struct.request* nocapture noundef %rq) unnamed_addr #0 {
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
  call fastcc void @__blk_mq_put_driver_tag(%struct.blk_mq_hw_ctx* noundef %2, %struct.request* noundef %rq) #24
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_requeue(%struct.request_queue* nocapture noundef readonly %q, %struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_requeue(%struct.rq_qos* noundef nonnull %0, %struct.request* noundef %rq) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @blk_mq_request_started(%struct.request* noundef %rq) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) #24
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_put_driver_tag(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* nocapture noundef %rq) unnamed_addr #0 {
entry:
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %mq_ctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 1
  %1 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %mq_ctx, align 8
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %2 = load i32, i32* %tag, align 8
  call void @blk_mq_put_tag(%struct.blk_mq_tags* noundef %0, %struct.blk_mq_ctx* noundef %1, i32 noundef %2) #23
  store i32 -1, i32* %tag, align 8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %3 = load i32, i32* %rq_flags, align 4
  %and = and i32 %3, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i32 %3, -65
  store i32 %and3, i32* %rq_flags, align 4
  call fastcc void @__blk_mq_dec_active_requests(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_requeue(%struct.rq_qos* noundef, %struct.request* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #24
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #24
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #23
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #23
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #22, !srcloc !45
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #22, !srcloc !46
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #24
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #22, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #22, !srcloc !48
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #22, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #22, !srcloc !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @_msecs_to_jiffies(i32 noundef %m) unnamed_addr #6 {
entry:
  %conv = zext i32 %m to i64
  %sub = add nuw nsw i64 %conv, 3
  %div = lshr i64 %sub, 2
  ret i64 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_clear_bit(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %bitnr) unnamed_addr #0 {
entry:
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %0 = load i32, i32* %shift, align 4
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %bitnr
  %conv = zext i32 %and to i64
  %call = call fastcc i64* @__sbitmap_word(%struct.sbitmap* noundef %sb, i32 noundef %bitnr) #24
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %call) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64* @__sbitmap_word(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %bitnr) unnamed_addr #5 {
entry:
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %0 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %1 = load i32, i32* %shift, align 4
  %shr = lshr i32 %bitnr, %1
  %idxprom = zext i32 %shr to i64
  %word = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %0, i64 %idxprom, i32 2
  ret i64* %word
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #23
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_mq_tag_is_reserved(%struct.blk_mq_tags* nocapture noundef readonly %tags, i32 noundef %tag) unnamed_addr #5 {
entry:
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 1
  %0 = load i32, i32* %nr_reserved_tags, align 4
  %cmp = icmp ugt i32 %0, %tag
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hctx_may_queue(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.sbitmap_queue* nocapture noundef readonly %bt) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.blk_mq_hw_ctx* %hctx, null
  br i1 %tobool.not, label %cleanup29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 2
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %cleanup29, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %depth2 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %bt, i64 0, i32 0, i32 0
  %1 = load i32, i32* %depth2, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %cleanup29, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv = trunc i64 %0 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #24
  br i1 %call, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 47
  %3 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 11
  %4 = load volatile i64, i64* %queue_flags, align 8
  %5 = and i64 %4, 268435456
  %tobool8.not = icmp eq i64 %5, 0
  br i1 %tobool8.not, label %cleanup29, label %cleanup

cleanup:                                          ; preds = %if.then6
  %counter.i = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %3, i64 0, i32 11, i32 0
  br label %if.end18

if.else:                                          ; preds = %if.end4
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %6 = load volatile i64, i64* %state, align 8
  %7 = and i64 %6, 2
  %tobool14.not = icmp eq i64 %7, 0
  br i1 %tobool14.not, label %cleanup29, label %if.end16

if.end16:                                         ; preds = %if.else
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %8 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %counter.i52 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %8, i64 0, i32 2, i32 0
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %if.end16
  %users.1.in = phi i32* [ %counter.i, %cleanup ], [ %counter.i52, %if.end16 ]
  %users.1 = load volatile i32, i32* %users.1.in, align 4
  %tobool19.not = icmp eq i32 %users.1, 0
  br i1 %tobool19.not, label %cleanup29, label %if.end21

if.end21:                                         ; preds = %if.end18
  %add = add i32 %1, -1
  %sub = add i32 %add, %users.1
  %div = udiv i32 %sub, %users.1
  %cmp24 = icmp ugt i32 %div, 4
  %cond = select i1 %cmp24, i32 %div, i32 4
  %call26 = call fastcc i32 @__blk_mq_active_requests(%struct.blk_mq_hw_ctx* noundef nonnull %hctx) #24
  %cmp27 = icmp ult i32 %call26, %cond
  br label %cleanup29

cleanup29:                                        ; preds = %if.then6, %if.end18, %if.else, %if.end, %entry, %lor.lhs.false, %if.end21
  %retval.1 = phi i1 [ %cmp27, %if.end21 ], [ true, %lor.lhs.false ], [ true, %entry ], [ true, %if.end ], [ true, %if.else ], [ true, %if.end18 ], [ true, %if.then6 ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(%struct.sbitmap_queue* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @__blk_mq_active_requests(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %conv = trunc i64 %0 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %counter.i = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 27, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %counter.i5 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 26, i32 0
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0.in = phi i32* [ %counter.i, %if.then ], [ %counter.i5, %if.end ]
  %retval.0 = load volatile i32, i32* %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !52
  ret void
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
  %call = call i32 %1(%struct.request_queue* noundef %q) #23
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
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
  call void %2(%struct.request* noundef %rq, i32 noundef %token) #23
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_mark_tag_wait(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 3
  %1 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bitmap_tags, align 8
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %2 = load i64, i64* %flags, align 64
  %and = and i64 %2, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @blk_mq_sched_mark_restart_hctx(%struct.blk_mq_hw_ctx* noundef %hctx) #23
  %call = call i1 @blk_mq_get_driver_tag(%struct.request* noundef %rq) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %dispatch_wait = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 17
  %entry1 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 17, i32 3
  %call2 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %entry1) #24
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue* noundef %1, %struct.blk_mq_hw_ctx* noundef %hctx) #24
  %wait7 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %call6, i64 0, i32 1
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wait7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #23
  %rlock.i52 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 16, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i52) #23
  %call9 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry1) #24
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i52) #23
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #23
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %ws_active = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %1, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %ws_active) #23
  %flags15 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %dispatch_wait, i64 0, i32 0
  %3 = load i32, i32* %flags15, align 8
  %and16 = and i32 %3, -2
  store i32 %and16, i32* %flags15, align 8
  call fastcc void @__add_wait_queue(%struct.wait_queue_head* noundef %wait7, %struct.wait_queue_entry* noundef %dispatch_wait) #24
  %call17 = call i1 @blk_mq_get_driver_tag(%struct.request* noundef %rq) #24
  br i1 %call17, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i52) #23
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #23
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call fastcc void @list_del_init(%struct.list_head* noundef %entry1) #24
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %ws_active) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i52) #23
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end22, %if.then19, %if.then11, %if.then
  %retval.0 = phi i1 [ true, %if.end22 ], [ false, %if.then19 ], [ false, %if.then11 ], [ %call, %if.then ], [ false, %if.end ]
  ret i1 %retval.0
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
  call void %1(%struct.request_queue* noundef %q, i32 noundef %budget_token) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_mark_restart_hctx(%struct.blk_mq_hw_ctx* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue* nocapture noundef readonly %bt, %struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.blk_mq_hw_ctx* %hctx, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ws = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %bt, i64 0, i32 3
  %0 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  br label %return

if.end:                                           ; preds = %entry
  %wait_index = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 18
  %call = call fastcc %struct.sbq_wait_state* @sbq_wait_ptr(%struct.sbitmap_queue* noundef %bt, %struct.atomic_t* noundef %wait_index) #24
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.sbq_wait_state* [ %call, %if.end ], [ %0, %if.then ]
  ret %struct.sbq_wait_state* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__add_wait_queue(%struct.wait_queue_head* noundef %wq_head, %struct.wait_queue_entry* noundef %wq_entry) unnamed_addr #8 {
entry:
  %head1 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %0 = bitcast %struct.list_head* %head1 to i8**
  %.pn24 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn24 to %struct.list_head*
  %cmp.not25 = icmp eq %struct.list_head* %head1, %1
  br i1 %cmp.not25, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wq.0.in29 = getelementptr i8, i8* %.pn24, i64 -24
  %flags30 = bitcast i8* %wq.0.in29 to i32*
  %2 = load i32, i32* %flags30, align 8
  %and31 = and i32 %2, 32
  %tobool.not32 = icmp eq i32 %and31, 0
  br i1 %tobool.not32, label %for.end, label %if.end

for.body:                                         ; preds = %if.end
  %wq.0.in = getelementptr i8, i8* %.pn, i64 -24
  %flags = bitcast i8* %wq.0.in to i32*
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %for.body.preheader, %for.body
  %.pn2733 = phi i8* [ %.pn, %for.body ], [ %.pn24, %for.body.preheader ]
  %4 = phi %struct.list_head* [ %6, %for.body ], [ %1, %for.body.preheader ]
  %5 = bitcast i8* %.pn2733 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %head1, %6
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end, %for.body.preheader, %entry
  %head.0.lcssa = phi %struct.list_head* [ %head1, %entry ], [ %head1, %for.body.preheader ], [ %4, %if.end ], [ %4, %for.body ]
  %entry14 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %entry14, %struct.list_head* noundef %head.0.lcssa) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sbq_wait_state* @sbq_wait_ptr(%struct.sbitmap_queue* nocapture noundef readonly %sbq, %struct.atomic_t* noundef %wait_index) unnamed_addr #0 {
entry:
  %ws1 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %0 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws1, align 8
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %wait_index, i64 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %0, i64 %idxprom
  call fastcc void @sbq_index_atomic_inc(%struct.atomic_t* noundef %wait_index) #24
  ret %struct.sbq_wait_state* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbq_index_atomic_inc(%struct.atomic_t* noundef %index) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %index, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %call1 = call fastcc i32 @sbq_index_inc(i32 noundef %0) #24, !range !53
  %1 = bitcast %struct.atomic_t* %index to i8*
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %0, i32 noundef %call1) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @sbq_index_inc(i32 noundef %index) unnamed_addr #6 {
entry:
  %add = add i32 %index, 1
  %and = and i32 %add, 7
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #24
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #22, !srcloc !54
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #22, !srcloc !55
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !56
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #23
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #23
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  call fastcc void @arch_local_irq_enable() #24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !57
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #22, !srcloc !58
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #8 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
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

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u32(i32 noundef %n) unnamed_addr #9 {
entry:
  %tobool.not.i = icmp eq i32 %n, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %n, i1 false) #22, !range !59
  %narrow.i.op = sub nsw i32 31, %0
  %sub = select i1 %tobool.not.i, i32 -1, i32 %narrow.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_get_rq_budget_token(%struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 5
  %1 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %get_rq_budget_token = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %1, i64 0, i32 5
  %2 = load i32 (%struct.request*)*, i32 (%struct.request*)** %get_rq_budget_token, align 8
  %tobool.not = icmp eq i32 (%struct.request*)* %2, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %2(%struct.request* noundef %rq) #23
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !60
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !61
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %srcu_idx = alloca i32, align 4
  %0 = bitcast i32* %srcu_idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #22
  store i32 0, i32* %srcu_idx, align 4, !annotation !8
  %call = call fastcc i32 @preempt_count() #24
  %1 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #24
  %2 = and i32 %call1, 983040
  %or40 = or i32 %2, %1
  %call4 = call fastcc i32 @preempt_count() #24
  %3 = and i32 %call4, 65280
  %or742 = or i32 %or40, %3
  %tobool.not = icmp eq i32 %or742, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 1487; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @hctx_lock(%struct.blk_mq_hw_ctx* noundef %hctx, i32* noundef nonnull %srcu_idx) #24
  call void @blk_mq_sched_dispatch_requests(%struct.blk_mq_hw_ctx* noundef %hctx) #23
  %4 = load i32, i32* %srcu_idx, align 4
  call fastcc void @hctx_unlock(%struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %4) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_hctx_next_cpu(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %next_cpu1 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 3
  %0 = load i32, i32* %next_cpu1, align 8
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 9
  %2 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %next_cpu_batch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 4
  %3 = load i32, i32* %next_cpu_batch, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %next_cpu_batch, align 4
  %cmp2 = icmp slt i32 %dec, 1
  br i1 %cmp2, label %select_cpu, label %if.end9

select_cpu:                                       ; preds = %if.then11, %if.end
  %tried.0 = phi i1 [ false, %if.end ], [ true, %if.then11 ]
  %next_cpu.0 = phi i32 [ %0, %if.end ], [ %next_cpu.2, %if.then11 ]
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 2, i64 0
  %call = call i32 @cpumask_next_and(i32 noundef %next_cpu.0, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_online_mask) #25
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp4.not = icmp ult i32 %call, %4
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %select_cpu
  %call6 = call fastcc i32 @blk_mq_first_mapped_cpu(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %select_cpu
  %next_cpu.1 = phi i32 [ %call6, %if.then5 ], [ %call, %select_cpu ]
  store i32 8, i32* %next_cpu_batch, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end
  %tried.1.off0 = phi i1 [ %tried.0, %if.end7 ], [ false, %if.end ]
  %next_cpu.2 = phi i32 [ %next_cpu.1, %if.end7 ], [ %0, %if.end ]
  %call10 = call fastcc i1 @cpu_online(i32 noundef %next_cpu.2) #24
  br i1 %call10, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end9
  br i1 %tried.1.off0, label %if.end13, label %select_cpu

if.end13:                                         ; preds = %if.then11
  store i32 %next_cpu.2, i32* %next_cpu1, align 8
  store i32 1, i32* %next_cpu_batch, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  store i32 %next_cpu.2, i32* %next_cpu1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end16, %if.end13
  %retval.0 = phi i32 [ %next_cpu.2, %if.end16 ], [ 256, %if.end13 ], [ 256, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #27, !srcloc !31
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.27* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_dispatch_requests(%struct.blk_mq_hw_ctx* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_first_mapped_cpu(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 2, i64 0
  %call = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_online_mask) #25
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %call, %0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %arraydecay) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cpu.0 = phi i32 [ %call3, %if.then ], [ %call, %entry ]
  ret i32 %cpu.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #24
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #23
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @srcu_read_lock(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  %call = call i32 @__srcu_read_lock(%struct.srcu_struct* noundef %ssp) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(%struct.srcu_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @sbitmap_any_bit_set(%struct.sbitmap* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_sched_has_work(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %1, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %1, i64 0, i32 0
  %2 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %has_work = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %2, i64 0, i32 1, i32 15
  %3 = load i1 (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)** %has_work, align 8
  %tobool1.not = icmp eq i1 (%struct.blk_mq_hw_ctx*)* %3, null
  br i1 %tobool1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i1 %3(%struct.blk_mq_hw_ctx* noundef %hctx) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %land.lhs.true ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_read_unlock(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %idx, 2
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/srcu.h\22; .popsection; .long 14472b - 14470b; .short 188; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @__srcu_read_unlock(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !65
  call void @rcu_read_unlock_strict() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(%struct.srcu_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue_type(%struct.request_queue* nocapture noundef readonly %q, i32 noundef %type, i32 noundef %cpu) unnamed_addr #5 {
entry:
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  %0 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 47
  %1 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %idxprom = zext i32 %type to i64
  %mq_map = getelementptr %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %1, i64 0, i32 0, i64 %idxprom, i32 0
  %2 = load i32*, i32** %mq_map, align 8
  %idxprom1 = zext i32 %cpu to i64
  %arrayidx2 = getelementptr i32, i32* %2, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = zext i32 %3 to i64
  %arrayidx4 = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %0, i64 %idxprom3
  %4 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx4, align 8
  ret %struct.blk_mq_hw_ctx* %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #22, !srcloc !66
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #22, !srcloc !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @sbitmap_test_bit(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %bitnr) unnamed_addr #4 {
entry:
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %0 = load i32, i32* %shift, align 4
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %bitnr
  %call = call fastcc i64* @__sbitmap_word(%struct.sbitmap* noundef %sb, i32 noundef %bitnr) #24
  %div.i = lshr i32 %and, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %call, i64 %idxprom.i
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %and, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %1, %sh_prom.i
  %2 = trunc i64 %shr.i to i32
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_set_bit(%struct.sbitmap* nocapture noundef readonly %sb, i32 noundef %bitnr) unnamed_addr #0 {
entry:
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %0 = load i32, i32* %shift, align 4
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %bitnr
  %conv = zext i32 %and to i64
  %call = call fastcc i64* @__sbitmap_word(%struct.sbitmap* noundef %sb, i32 noundef %bitnr) #24
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %call) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @blk_rq_pos(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %__sector = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 8
  %0 = load i64, i64* %__sector, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @__blk_mq_issue_directly(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* noundef %rq, i32* nocapture noundef writeonly %cookie, i1 noundef %last) unnamed_addr #0 {
entry:
  %bd = alloca %struct.blk_mq_queue_data, align 8
  %frombool = zext i1 %last to i8
  %q1 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %1 = bitcast %struct.blk_mq_queue_data* %bd to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #22
  %2 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %bd, i64 0, i32 1
  %3 = bitcast i8* %2 to i64*, !annotation !8
  store i64 0, i64* %3, align 8, !annotation !8
  %rq2 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %bd, i64 0, i32 0
  store %struct.request* %rq, %struct.request** %rq2, align 8
  %last3 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %bd, i64 0, i32 1
  store i8 %frombool, i8* %last3, align 8
  %call = call fastcc i32 @request_to_qc_t(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.request* noundef %rq) #24
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 5
  %4 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %queue_rq = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %4, i64 0, i32 0
  %5 = load i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)** %queue_rq, align 8
  %call5 = call i8 %5(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.blk_mq_queue_data* noundef nonnull %bd) #23
  switch i8 %call5, label %sw.default [
    i8 0, label %sw.bb
    i8 9, label %sw.bb6
    i8 13, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call fastcc void @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef false) #24
  store i32 %call, i32* %cookie, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry
  call fastcc void @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef true) #24
  call fastcc void @__blk_mq_requeue_request(%struct.request* noundef %rq) #24
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call fastcc void @blk_mq_update_dispatch_busy(%struct.blk_mq_hw_ctx* noundef %hctx, i1 noundef false) #24
  store i32 -1, i32* %cookie, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #22
  ret i8 %call5
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

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__blk_mq_sched_bio_merge(%struct.request_queue* noundef, %struct.bio* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bio_set_flag(%struct.bio* nocapture noundef %bio, i32 noundef %bit) unnamed_addr #10 {
entry:
  %shl = shl nuw i32 1, %bit
  %bi_flags = getelementptr inbounds %struct.bio, %struct.bio* %bio, i64 0, i32 3
  %0 = load i16, i16* %bi_flags, align 4
  %1 = trunc i32 %shl to i16
  %conv1 = or i16 %0, %1
  store i16 %conv1, i16* %bi_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_throttle(%struct.rq_qos* noundef, %struct.bio* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_cleanup(%struct.rq_qos* noundef, %struct.bio* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_track(%struct.rq_qos* noundef, %struct.request* noundef, %struct.bio* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @blk_rq_bio_prep(%struct.request* nocapture noundef writeonly %rq, %struct.bio* noundef %bio, i32 noundef %nr_segs) unnamed_addr #10 {
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
declare dso_local void @blk_account_io_start(%struct.request* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_is_singular(%struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp = icmp eq %struct.list_head* %0, %1
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array_node(i64 noundef %n, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 %size)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !9

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call.i = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call.i, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_mem_id() unnamed_addr #12 {
entry:
  call fastcc void @numa_node_id() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %order) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef 77056, i32 noundef %order, i32 noundef %nid, %struct.nodemask_t* noundef null) #23
  ret %struct.page* %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #12 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.request_queue* @blk_alloc_queue(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_rq_stats_sectors(%struct.request* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %stats_sectors = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 19
  %0 = load i16, i16* %stats_sectors, align 8
  %conv = zext i16 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #23
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.blk_mq_hw_ctx* @blk_mq_alloc_and_init_hctx(%struct.blk_mq_tag_set* noundef %set, %struct.request_queue* noundef %q, i32 noundef %hctx_idx, i32 noundef %node) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 42, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %unused_hctx_list = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 41
  %0 = bitcast %struct.list_head* %unused_hctx_list to i8**
  %.pn57 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn57 to %struct.list_head*
  %cmp.not58 = icmp eq %struct.list_head* %unused_hctx_list, %1
  br i1 %cmp.not58, label %if.end18, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn59 = phi i8* [ %.pn, %for.inc ], [ %.pn57, %entry ]
  %numa_node = getelementptr i8, i8* %.pn59, i64 -136
  %2 = bitcast i8* %numa_node to i32*
  %3 = load i32, i32* %2, align 16
  %cmp3 = icmp eq i32 %3, %node
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = bitcast i8* %.pn59 to i8**
  %.pn = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %unused_hctx_list, %5
  br i1 %cmp.not, label %if.end18, label %for.body

for.end:                                          ; preds = %for.body
  %tmp.0.in.le = getelementptr i8, i8* %.pn59, i64 -568
  %tobool.not = icmp eq i8* %tmp.0.in.le, null
  br i1 %tobool.not, label %if.end18, label %if.end18.thread

if.end18.thread:                                  ; preds = %for.end
  %tmp.0.le = bitcast i8* %tmp.0.in.le to %struct.blk_mq_hw_ctx*
  %6 = bitcast i8* %.pn59 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %6) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  br label %if.end21

if.end18:                                         ; preds = %for.inc, %entry, %for.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  %call = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_alloc_hctx(%struct.request_queue* noundef %q, %struct.blk_mq_tag_set* noundef %set, i32 noundef %node) #24
  %tobool19.not = icmp eq %struct.blk_mq_hw_ctx* %call, null
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end18.thread, %if.end18
  %hctx.153 = phi %struct.blk_mq_hw_ctx* [ %tmp.0.le, %if.end18.thread ], [ %call, %if.end18 ]
  %call22 = call fastcc i32 @blk_mq_init_hctx(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_hw_ctx* noundef nonnull %hctx.153, i32 noundef %hctx_idx) #24
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %free_hctx

free_hctx:                                        ; preds = %if.end21
  %kobj = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx.153, i64 0, i32 29
  call void @kobject_put(%struct.kobject* noundef %kobj) #23
  br label %cleanup

cleanup:                                          ; preds = %free_hctx, %if.end18, %if.end21
  %retval.0 = phi %struct.blk_mq_hw_ctx* [ %hctx.153, %if.end21 ], [ null, %if.end18 ], [ null, %free_hctx ]
  ret %struct.blk_mq_hw_ctx* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_exit_hctx(%struct.request_queue* noundef %q, %struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %hctx_idx) unnamed_addr #0 {
entry:
  %fq = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 8
  %0 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %fq, align 8
  %flush_rq1 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %0, i64 0, i32 5
  %1 = load %struct.request*, %struct.request** %flush_rq1, align 8
  %call = call fastcc i1 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @blk_mq_tag_idle(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  %2 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %idxprom = zext i32 %hctx_idx to i64
  %arrayidx = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %2, i64 %idxprom
  %3 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx, align 8
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 4
  %4 = load i32, i32* %queue_depth, align 4
  call fastcc void @blk_mq_clear_flush_rq_mapping(%struct.blk_mq_tags* noundef %3, i32 noundef %4, %struct.request* noundef %1) #24
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  %5 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %exit_request = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %5, i64 0, i32 12
  %6 = load void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)** %exit_request, align 8
  %tobool.not = icmp eq void (%struct.blk_mq_tag_set*, %struct.request*, i32)* %6, null
  br i1 %tobool.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void %6(%struct.blk_mq_tag_set* noundef %set, %struct.request* noundef %1, i32 noundef %hctx_idx) #23
  %.pre = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %7 = phi %struct.blk_mq_ops* [ %.pre, %if.then2 ], [ %5, %if.end ]
  %exit_hctx = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %7, i64 0, i32 10
  %8 = load void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)** %exit_hctx, align 8
  %tobool7.not = icmp eq void (%struct.blk_mq_hw_ctx*, i32)* %8, null
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void %8(%struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %hctx_idx) #23
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5
  call fastcc void @blk_mq_remove_cpuhp(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  %rlock.i = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 42, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %hctx_list = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 33
  %unused_hctx_list = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 41
  call fastcc void @list_add(%struct.list_head* noundef %hctx_list, %struct.list_head* noundef %unused_hctx_list) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.blk_mq_hw_ctx* @blk_mq_alloc_hctx(%struct.request_queue* noundef %q, %struct.blk_mq_tag_set* nocapture noundef readonly %set, i32 noundef %node) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @blk_mq_hw_ctx_size(%struct.blk_mq_tag_set* noundef %set) #24
  %0 = zext i32 %call to i64
  %call1 = call fastcc i8* @kzalloc_node(i64 noundef %0) #24
  %1 = bitcast i8* %call1 to %struct.blk_mq_hw_ctx*
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cpumask = getelementptr inbounds i8, i8* %call1, i64 152
  %2 = bitcast i8* %cpumask to [1 x %struct.cpumask]*
  call fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %2) #24
  %nr_active = getelementptr inbounds i8, i8* %call1, i64 440
  %counter.i = bitcast i8* %nr_active to i32*
  store volatile i32 0, i32* %counter.i, align 4
  %cmp = icmp eq i32 %node, -1
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 7
  %3 = load i32, i32* %numa_node, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %node.addr.0 = phi i32 [ %3, %if.then6 ], [ %node, %if.end ]
  %numa_node8 = getelementptr inbounds i8, i8* %call1, i64 432
  %4 = bitcast i8* %numa_node8 to i32*
  store i32 %node.addr.0, i32* %4, align 16
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call1, i64 64
  %5 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i64*
  store i64 68719476704, i64* %5, align 64
  %entry14 = getelementptr inbounds i8, i8* %call1, i64 72
  %6 = bitcast i8* %entry14 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %6) #24
  %func = getelementptr inbounds i8, i8* %call1, i64 88
  %7 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @blk_mq_run_work_fn, void (%struct.work_struct*)** %7, align 8
  %timer = getelementptr inbounds i8, i8* %call1, i64 96
  %8 = bitcast i8* %timer to %struct.timer_list*
  call void @init_timer_key(%struct.timer_list* noundef %8, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #23
  %.compoundliteral23.sroa.0.0..sroa_idx = bitcast i8* %call1 to i32*
  store i32 0, i32* %.compoundliteral23.sroa.0.0..sroa_idx, align 64
  %dispatch = getelementptr inbounds i8, i8* %call1, i64 8
  %9 = bitcast i8* %dispatch to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %9) #24
  %queue = getelementptr inbounds i8, i8* %call1, i64 208
  %10 = bitcast i8* %queue to %struct.request_queue**
  store %struct.request_queue* %q, %struct.request_queue** %10, align 16
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  %11 = load i32, i32* %flags, align 8
  %and = and i32 %11, -3
  %conv27 = zext i32 %and to i64
  %flags28 = getelementptr inbounds i8, i8* %call1, i64 192
  %12 = bitcast i8* %flags28 to i64*
  store i64 %conv27, i64* %12, align 64
  %hctx_list = getelementptr inbounds i8, i8* %call1, i64 568
  %13 = bitcast i8* %hctx_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %13) #24
  %14 = load i32, i32* @nr_cpu_ids, align 4
  %conv29 = zext i32 %14 to i64
  %call30 = call fastcc i8* @kmalloc_array_node(i64 noundef %conv29, i64 noundef 8, i32 noundef 76800) #24
  %ctxs = getelementptr inbounds i8, i8* %call1, i64 280
  %15 = bitcast i8* %ctxs to i8**
  store i8* %call30, i8** %15, align 8
  %tobool32.not = icmp eq i8* %call30, null
  br i1 %tobool32.not, label %free_cpumask, label %if.end34

if.end34:                                         ; preds = %if.end7
  %ctx_map = getelementptr inbounds i8, i8* %call1, i64 232
  %16 = bitcast i8* %ctx_map to %struct.sbitmap*
  %17 = load i32, i32* @nr_cpu_ids, align 4
  %call35 = call i32 @sbitmap_init_node(%struct.sbitmap* noundef %16, i32 noundef %17, i32 noundef 3, i32 noundef 76800, i32 noundef %node.addr.0, i1 noundef false, i1 noundef false) #23
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %free_ctxs

if.end38:                                         ; preds = %if.end34
  %nr_ctx = getelementptr inbounds i8, i8* %call1, i64 278
  %18 = bitcast i8* %nr_ctx to i16*
  store i16 0, i16* %18, align 2
  %dispatch_wait_lock = getelementptr inbounds i8, i8* %call1, i64 288
  %19 = bitcast i8* %dispatch_wait_lock to i32*
  store i32 0, i32* %19, align 32
  %dispatch_wait = getelementptr inbounds i8, i8* %call1, i64 296
  %20 = bitcast i8* %dispatch_wait to %struct.wait_queue_entry*
  call fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* noundef %20) #24
  %entry50 = getelementptr inbounds i8, i8* %call1, i64 320
  %21 = bitcast i8* %entry50 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %21) #24
  %22 = load i32, i32* %4, align 16
  %cmd_size = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 6
  %23 = load i32, i32* %cmd_size, align 4
  %call52 = call %struct.blk_flush_queue* @blk_alloc_flush_queue(i32 noundef %22, i32 noundef %23, i32 noundef 76800) #23
  %fq = getelementptr inbounds i8, i8* %call1, i64 216
  %24 = bitcast i8* %fq to %struct.blk_flush_queue**
  store %struct.blk_flush_queue* %call52, %struct.blk_flush_queue** %24, align 8
  %tobool54.not = icmp eq %struct.blk_flush_queue* %call52, null
  br i1 %tobool54.not, label %free_bitmap, label %if.end56

if.end56:                                         ; preds = %if.end38
  %25 = load i64, i64* %12, align 64
  %and58 = and i64 %25, 32
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.end56
  %srcu = getelementptr inbounds i8, i8* %call1, i64 584
  %arraydecay = bitcast i8* %srcu to %struct.srcu_struct*
  %call61 = call i32 @init_srcu_struct(%struct.srcu_struct* noundef %arraydecay) #23
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end56
  call void @blk_mq_hctx_kobj_init(%struct.blk_mq_hw_ctx* noundef %1) #23
  br label %cleanup

free_bitmap:                                      ; preds = %if.end38
  call fastcc void @sbitmap_free(%struct.sbitmap* noundef %16) #24
  br label %free_ctxs

free_ctxs:                                        ; preds = %if.end34, %free_bitmap
  %26 = load i8*, i8** %15, align 8
  call void @kfree(i8* noundef %26) #23
  br label %free_cpumask

free_cpumask:                                     ; preds = %if.end7, %free_ctxs
  call void @kfree(i8* noundef nonnull %call1) #23
  br label %cleanup

cleanup:                                          ; preds = %free_cpumask, %entry, %if.end62
  %retval.0 = phi %struct.blk_mq_hw_ctx* [ %1, %if.end62 ], [ null, %entry ], [ null, %free_cpumask ]
  ret %struct.blk_mq_hw_ctx* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_init_hctx(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %hctx_idx) unnamed_addr #0 {
entry:
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 25
  store i32 %hctx_idx, i32* %queue_num, align 4
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cpuhp_online = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 27
  call fastcc void @cpuhp_state_add_instance_nocalls(i32 noundef 155, %struct.hlist_node* noundef %cpuhp_online) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cpuhp_dead = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 28
  call fastcc void @cpuhp_state_add_instance_nocalls(i32 noundef 26, %struct.hlist_node* noundef %cpuhp_dead) #24
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  %1 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %idxprom = zext i32 %hctx_idx to i64
  %arrayidx = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %1, i64 %idxprom
  %2 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx, align 8
  %tags2 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  store %struct.blk_mq_tags* %2, %struct.blk_mq_tags** %tags2, align 8
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 2
  %3 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %init_hctx = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %3, i64 0, i32 9
  %4 = load i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)** %init_hctx, align 8
  %tobool3.not = icmp eq i32 (%struct.blk_mq_hw_ctx*, i8*, i32)* %4, null
  br i1 %tobool3.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 10
  %5 = load i8*, i8** %driver_data, align 8
  %call6 = call i32 %4(%struct.blk_mq_hw_ctx* noundef %hctx, i8* noundef %5, i32 noundef %hctx_idx) #23
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %unregister_cpu_notifier

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %fq = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 8
  %6 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %fq, align 8
  %flush_rq = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %6, i64 0, i32 5
  %7 = load %struct.request*, %struct.request** %flush_rq, align 8
  %numa_node = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 24
  %8 = load i32, i32* %numa_node, align 16
  %call10 = call fastcc i32 @blk_mq_init_request(%struct.blk_mq_tag_set* noundef %set, %struct.request* noundef %7, i32 noundef %hctx_idx, i32 noundef %8) #24
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %exit_hctx

exit_hctx:                                        ; preds = %if.end9
  %9 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %ops, align 8
  %exit_hctx15 = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %9, i64 0, i32 10
  %10 = load void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)** %exit_hctx15, align 8
  %tobool16.not = icmp eq void (%struct.blk_mq_hw_ctx*, i32)* %10, null
  br i1 %tobool16.not, label %unregister_cpu_notifier, label %if.then17

if.then17:                                        ; preds = %exit_hctx
  call void %10(%struct.blk_mq_hw_ctx* noundef %hctx, i32 noundef %hctx_idx) #23
  br label %unregister_cpu_notifier

unregister_cpu_notifier:                          ; preds = %exit_hctx, %if.then17, %land.lhs.true
  call fastcc void @blk_mq_remove_cpuhp(%struct.blk_mq_hw_ctx* noundef %hctx) #24
  br label %return

return:                                           ; preds = %if.end9, %unregister_cpu_notifier
  %retval.0 = phi i32 [ -1, %unregister_cpu_notifier ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc_node(i64 noundef %size) unnamed_addr #0 {
entry:
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 77056) #23
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @blk_mq_hw_ctx_size(%struct.blk_mq_tag_set* nocapture noundef readonly %tag_set) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %tag_set, i64 0, i32 9
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 640, i32 2584
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %mask) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_mq_run_work_fn(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr4 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2
  %0 = bitcast %struct.work_struct* %add.ptr4 to %struct.blk_mq_hw_ctx*
  %call = call fastcc i1 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* noundef %0) #24
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %0) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_init_node(%struct.sbitmap* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* nocapture noundef writeonly %wq_entry) unnamed_addr #19 {
entry:
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 0
  store i32 0, i32* %flags, align 8
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 1
  store i8* null, i8** %private, align 8
  %func1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @blk_mq_dispatch_wake, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blk_mq_dispatch_wake(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %flags, i8* nocapture noundef readnone %key) #0 {
entry:
  %add.ptr = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 -8, i32 3
  %dispatch_wait_lock = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 18
  %rlock.i = bitcast %struct.list_head* %dispatch_wait_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %entry1) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @list_del_init(%struct.list_head* noundef %entry1) #24
  %tags = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 21, i32 1
  %0 = bitcast %struct.list_head** %tags to %struct.blk_mq_tags**
  %1 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %0, align 8
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %1, i64 0, i32 3
  %2 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bitmap_tags, align 8
  %ws_active = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %2, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %ws_active) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast %struct.list_head* %add.ptr to %struct.blk_mq_hw_ctx*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %3, i1 noundef true) #24
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.blk_flush_queue* @blk_alloc_flush_queue(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_srcu_struct(%struct.srcu_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_hctx_kobj_init(%struct.blk_mq_hw_ctx* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_free(%struct.sbitmap* nocapture noundef %sb) unnamed_addr #0 {
entry:
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = bitcast i32** %alloc_hint to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #23
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %2 = bitcast %struct.sbitmap_word** %map to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #23
  store %struct.sbitmap_word* null, %struct.sbitmap_word** %map, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_state_add_instance_nocalls(i32 noundef %state, %struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_state_add_instance(i32 noundef %state, %struct.hlist_node* noundef %node, i1 noundef false) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_remove_cpuhp(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cpuhp_online = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 27
  call fastcc void @cpuhp_state_remove_instance_nocalls(i32 noundef 155, %struct.hlist_node* noundef %cpuhp_online) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cpuhp_dead = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 28
  call fastcc void @cpuhp_state_remove_instance_nocalls(i32 noundef 26, %struct.hlist_node* noundef %cpuhp_dead) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, %struct.hlist_node* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_state_remove_instance_nocalls(i32 noundef %state, %struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_state_remove_instance(i32 noundef %state, %struct.hlist_node* noundef %node, i1 noundef false) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, %struct.hlist_node* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_tag_idle(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @__blk_mq_tag_idle(%struct.blk_mq_hw_ctx* noundef %hctx) #23
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_clear_flush_rq_mapping(%struct.blk_mq_tags* noundef %tags, i32 noundef %queue_depth, %struct.request* noundef %flush_rq) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.blk_mq_tags* %tags, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.request, %struct.request* %flush_rq, i64 0, i32 24
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %ref) #24
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end9, label %if.then8, !prof !12

if.then8:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 2661; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !68
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %cmp1746.not = icmp eq i32 %queue_depth, 0
  br i1 %cmp1746.not, label %do.body22, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end9
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 7
  %0 = ptrtoint %struct.request* %flush_rq to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %1 = load %struct.request**, %struct.request*** %rqs, align 8
  %idxprom = sext i32 %i.047 to i64
  %arrayidx = getelementptr %struct.request*, %struct.request** %1, i64 %idxprom
  %2 = bitcast %struct.request** %arrayidx to i8*
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %2, i64 noundef %0, i64 noundef 0) #23
  %inc = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %queue_depth
  br i1 %exitcond.not, label %do.body22, label %for.body

do.body22:                                        ; preds = %for.body, %if.end9
  %rlock.i = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 10, i32 0, i32 0
  %call27 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call27) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_tag_idle(%struct.blk_mq_hw_ctx* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @percpu_ref_tryget(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @percpu_ref_tryget_many(%struct.percpu_ref* noundef %ref) #24
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @blk_mq_check_expired(%struct.blk_mq_hw_ctx* nocapture noundef readnone %hctx, %struct.request* noundef %rq, i8* nocapture noundef %priv, i1 noundef %reserved) #0 {
entry:
  %0 = bitcast i8* %priv to i64*
  %call = call fastcc i1 @blk_mq_req_expired(%struct.request* noundef %rq, i64* noundef %0) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @blk_mq_rq_timed_out(%struct.request* noundef %rq, i1 noundef %reserved) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @percpu_ref_tryget_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store i64* null, i64** %percpu_count, align 8, !annotation !8
  call fastcc void @__rcu_read_lock() #23
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #24
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !69
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef 1) #24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !70
  br label %if.end

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %counter.i.i.i.i = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0, i32 0
  %5 = load volatile i64, i64* %counter.i.i.i.i, align 8
  %6 = bitcast %struct.percpu_ref_data* %4 to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %if.else
  %c.0.i.i.i.i = phi i64 [ %5, %if.else ], [ %call14.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i64 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %atomic_long_add_unless.exit, label %do.cond.i.i.i.i, !prof !9

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i64 %c.0.i.i.i.i, 1
  %call14.i.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %6, i64 noundef %c.0.i.i.i.i, i64 noundef %add.i.i.i.i) #23
  %cmp.not.i.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i.i, %c.0.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %atomic_long_add_unless.exit, label %do.body.i.i.i.i, !prof !12

atomic_long_add_unless.exit:                      ; preds = %do.body.i.i.i.i, %do.cond.i.i.i.i
  %7 = xor i1 %cmp.i.i.i.i, true
  br label %if.end

if.end:                                           ; preds = %atomic_long_add_unless.exit, %do.body1
  %ret.0.off0 = phi i1 [ true, %do.body1 ], [ %7, %atomic_long_add_unless.exit ]
  call fastcc void @rcu_read_unlock() #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret i1 %ret.0.off0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** nocapture noundef writeonly %percpu_countp) unnamed_addr #4 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load volatile i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !12

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
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #22, !srcloc !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_mq_req_expired(%struct.request* noundef %rq, i64* nocapture noundef %next) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) #24
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end
  %deadline3 = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 26
  %1 = load volatile i64, i64* %deadline3, align 8
  %2 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %2, %1
  %cmp4 = icmp sgt i64 %sub, -1
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %do.end
  %3 = load i64, i64* %next, align 8
  %cmp7 = icmp eq i64 %3, 0
  %sub9 = sub i64 %1, %3
  %cmp10 = icmp slt i64 %sub9, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp10
  br i1 %or.cond, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end6
  store i64 %1, i64* %next, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %cleanup.sink.split, %do.end, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ true, %do.end ], [ false, %cleanup.sink.split ], [ false, %if.end6 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_rq_timed_out(%struct.request* noundef %req, i1 noundef %reserved) unnamed_addr #0 {
entry:
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 4
  %0 = load i32, i32* %rq_flags, align 4
  %or = or i32 %0, 2097152
  store i32 %or, i32* %rq_flags, align 4
  %q = getelementptr inbounds %struct.request, %struct.request* %req, i64 0, i32 0
  %1 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 5
  %2 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %timeout = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %2, i64 0, i32 6
  %3 = load i32 (%struct.request*, i1)*, i32 (%struct.request*, i1)** %timeout, align 8
  %tobool.not = icmp eq i32 (%struct.request*, i1)* %3, null
  br i1 %tobool.not, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %3(%struct.request* noundef %req, i1 noundef %reserved) #23
  %cmp.not = icmp eq i32 %call, 0
  %switch32 = icmp ult i32 %call, 2
  br i1 %switch32, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq.c\22; .popsection; .long 14472b - 14470b; .short 893; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then14
  br i1 %cmp.not, label %return, label %if.end23

if.end23:                                         ; preds = %cleanup, %entry
  call void @blk_add_timer(%struct.request* noundef %req) #23
  br label %return

return:                                           ; preds = %cleanup, %if.end23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_update_tag_set_shared(%struct.blk_mq_tag_set* noundef readonly %set, i1 noundef %shared) unnamed_addr #0 {
entry:
  %tag_list = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 16
  %0 = bitcast %struct.list_head* %tag_list to i8**
  %.pn22 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn22 to %struct.list_head*
  %cmp.not25 = icmp eq %struct.list_head* %tag_list, %1
  br i1 %cmp.not25, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn26 = phi i8* [ %.pn, %for.body ], [ %.pn22, %entry ]
  %q.027.in = getelementptr i8, i8* %.pn26, i64 -1520
  %q.027 = bitcast i8* %q.027.in to %struct.request_queue*
  call void @blk_mq_freeze_queue(%struct.request_queue* noundef %q.027) #24
  call fastcc void @queue_set_hctx_shared(%struct.request_queue* noundef %q.027, i1 noundef %shared) #24
  call void @blk_mq_unfreeze_queue(%struct.request_queue* noundef %q.027) #24
  %2 = bitcast i8* %.pn26 to i8**
  %.pn = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %tag_list, %3
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_set_hctx_shared(%struct.request_queue* nocapture noundef readonly %q, i1 noundef %shared) unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp10.not = icmp eq i32 %0, 0
  br i1 %cmp10.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %i.011 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %1 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.011 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %1, i64 %idxprom
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  br i1 %shared, label %if.then, label %if.else

if.then:                                          ; preds = %land.rhs
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 5
  %3 = load i64, i64* %flags, align 64
  %or = or i64 %3, 2
  store i64 %or, i64* %flags, align 64
  br label %for.inc

if.else:                                          ; preds = %land.rhs
  call fastcc void @blk_mq_tag_idle(%struct.blk_mq_hw_ctx* noundef %2) #24
  %flags2 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 5
  %4 = load i64, i64* %flags2, align 64
  %and = and i64 %4, -3
  store i64 %and, i64* %flags2, align 64
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %inc = add nuw i32 %i.011, 1
  %5 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %land.rhs, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__blk_mq_alloc_map_and_request(%struct.blk_mq_tag_set* noundef %set, i32 noundef %hctx_idx) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  %0 = load i32, i32* %flags1, align 8
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 4
  %1 = load i32, i32* %queue_depth, align 4
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 5
  %2 = load i32, i32* %reserved_tags, align 8
  %call = call %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* noundef %set, i32 noundef %hctx_idx, i32 noundef %1, i32 noundef %2, i32 noundef %0) #24
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  %3 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %idxprom = sext i32 %hctx_idx to i64
  %arrayidx = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %3, i64 %idxprom
  store %struct.blk_mq_tags* %call, %struct.blk_mq_tags** %arrayidx, align 8
  %4 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %arrayidx4 = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %4, i64 %idxprom
  %5 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx4, align 8
  %tobool.not = icmp eq %struct.blk_mq_tags* %5, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %queue_depth, align 4
  %call9 = call i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* noundef %set, %struct.blk_mq_tags* noundef nonnull %5, i32 noundef %hctx_idx, i32 noundef %6) #24
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %7 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %arrayidx15 = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %7, i64 %idxprom
  %8 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx15, align 8
  call void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef %8, i32 noundef %0) #24
  %9 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %arrayidx18 = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %9, i64 %idxprom
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %arrayidx18, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end12
  %retval.0 = phi i1 [ false, %if.end12 ], [ false, %entry ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_resize(%struct.sbitmap* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_realloc_tag_set_tags(%struct.blk_mq_tag_set* nocapture noundef %set, i32 noundef %cur_nr_hw_queues, i32 noundef %new_nr_hw_queues) unnamed_addr #0 {
entry:
  %cmp.not = icmp slt i32 %cur_nr_hw_queues, %new_nr_hw_queues
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %new_nr_hw_queues to i64
  %call = call fastcc i8* @kcalloc_node(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #24
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  %0 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %tobool3.not = icmp eq %struct.blk_mq_tags** %0, null
  %1 = bitcast %struct.blk_mq_tags** %0 to i8*
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end2
  %conv6 = sext i32 %cur_nr_hw_queues to i64
  %mul = shl nsw i64 %conv6, 3
  %call7 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %1, i64 noundef %mul) #23
  %.phi.trans.insert = bitcast %struct.blk_mq_tags*** %tags to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end2, %if.then4
  %2 = phi i8* [ %.pre, %if.then4 ], [ %1, %if.end2 ]
  %.pre-phi = bitcast %struct.blk_mq_tags*** %tags to i8**
  call void @kfree(i8* noundef %2) #23
  store i8* %call, i8** %.pre-phi, align 8
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  store i32 %new_nr_hw_queues, i32* %nr_hw_queues, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_clear_mq_map(%struct.blk_mq_queue_map* nocapture noundef readonly %qmap) unnamed_addr #11 {
entry:
  %call4 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp5 = icmp ult i32 %call4, %0
  br i1 %cmp5, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mq_map = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %qmap, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call6 = phi i32 [ %call4, %for.body.lr.ph ], [ %call, %for.body ]
  %1 = load i32*, i32** %mq_map, align 8
  %idxprom = sext i32 %call6 to i64
  %arrayidx = getelementptr i32, i32* %1, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %call = call i32 @cpumask_next(i32 noundef %call6, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #25
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(%struct.blk_mq_queue_map* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__blk_mq_alloc_rq_maps(%struct.blk_mq_tag_set* noundef %set) unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp12.not = icmp eq i32 %0, 0
  br i1 %cmp12.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %i.013 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %call = call fastcc i1 @__blk_mq_alloc_map_and_request(%struct.blk_mq_tag_set* noundef %set, i32 noundef %i.013) #24
  br i1 %call, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  %dec14 = add i32 %i.013, -1
  %cmp215 = icmp sgt i32 %dec14, -1
  br i1 %cmp215, label %while.body, label %cleanup

if.end:                                           ; preds = %for.body
  call fastcc void @_cond_resched() #24
  %inc = add nuw i32 %i.013, 1
  %1 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body, label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %dec16 = phi i32 [ %dec, %while.body ], [ %dec14, %while.cond.preheader ]
  call fastcc void @blk_mq_free_map_and_requests(%struct.blk_mq_tag_set* noundef %set, i32 noundef %dec16) #24
  %dec = add nsw i32 %dec16, -1
  %cmp2 = icmp sgt i32 %dec16, 0
  br i1 %cmp2, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.end, %while.body, %entry, %while.cond.preheader
  %retval.0 = phi i32 [ -12, %while.cond.preheader ], [ 0, %entry ], [ -12, %while.body ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_elv_switch_none(%struct.list_head* noundef %head, %struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 1
  %0 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 76800) #23
  %tobool1.not = icmp eq i8* %call.i.i, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %node = bitcast i8* %call.i.i to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %node) #24
  %q4 = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %2 = bitcast i8* %q4 to %struct.request_queue**
  store %struct.request_queue* %q, %struct.request_queue** %2, align 8
  %3 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %type = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %3, i64 0, i32 0
  %4 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %type6 = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %5 = bitcast i8* %type6 to %struct.elevator_type**
  store %struct.elevator_type* %4, %struct.elevator_type** %5, align 8
  call fastcc void @list_add(%struct.list_head* noundef nonnull %node, %struct.list_head* noundef %head) #24
  %sysfs_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 39
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #23
  %call9 = call i32 @elevator_switch_mq(%struct.request_queue* noundef %q, %struct.elevator_type* noundef null) #23
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i1 [ true, %if.end3 ], [ true, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sysfs_unregister(%struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_sysfs_register(%struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_elv_switch_back(%struct.list_head* noundef readonly %head, %struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.list_head* %head to %struct.blk_mq_qe_pair**
  %qe.034 = load %struct.blk_mq_qe_pair*, %struct.blk_mq_qe_pair** %0, align 8
  %node35 = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %qe.034, i64 0, i32 0
  %cmp.not36 = icmp eq %struct.list_head* %node35, %head
  br i1 %cmp.not36, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %q145 = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %qe.034, i64 0, i32 1
  %1 = load %struct.request_queue*, %struct.request_queue** %q145, align 8
  %cmp246 = icmp eq %struct.request_queue* %1, %q
  br i1 %cmp246, label %for.end, label %for.inc

for.body:                                         ; preds = %for.inc
  %q1 = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %qe.0, i64 0, i32 1
  %2 = load %struct.request_queue*, %struct.request_queue** %q1, align 8
  %cmp2 = icmp eq %struct.request_queue* %2, %q
  br i1 %cmp2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %qe.03747 = phi %struct.blk_mq_qe_pair* [ %qe.0, %for.body ], [ %qe.034, %for.body.preheader ]
  %3 = bitcast %struct.blk_mq_qe_pair* %qe.03747 to %struct.blk_mq_qe_pair**
  %qe.0 = load %struct.blk_mq_qe_pair*, %struct.blk_mq_qe_pair** %3, align 8
  %node = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %qe.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, %head
  br i1 %cmp.not, label %cleanup, label %for.body

for.end:                                          ; preds = %for.body, %for.body.preheader
  %node38.lcssa = phi %struct.list_head* [ %node35, %for.body.preheader ], [ %node, %for.body ]
  %qe.037.lcssa = phi %struct.blk_mq_qe_pair* [ %qe.034, %for.body.preheader ], [ %qe.0, %for.body ]
  %type = getelementptr inbounds %struct.blk_mq_qe_pair, %struct.blk_mq_qe_pair* %qe.037.lcssa, i64 0, i32 2
  %4 = load %struct.elevator_type*, %struct.elevator_type** %type, align 8
  %tobool.not = icmp eq %struct.elevator_type* %4, null
  br i1 %tobool.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %for.end
  call fastcc void @list_del(%struct.list_head* noundef %node38.lcssa) #24
  %5 = bitcast %struct.blk_mq_qe_pair* %qe.037.lcssa to i8*
  call void @kfree(i8* noundef %5) #23
  %sysfs_lock = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 39
  call void @mutex_lock(%struct.mutex* noundef %sysfs_lock) #23
  %call = call i32 @elevator_switch_mq(%struct.request_queue* noundef %q, %struct.elevator_type* noundef nonnull %4) #23
  call void @mutex_unlock(%struct.mutex* noundef %sysfs_lock) #23
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %for.end, %if.end12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elevator_switch_mq(%struct.request_queue* noundef, %struct.elevator_type* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_stat_is_active(%struct.blk_stat_callback* noundef %cb) unnamed_addr #4 {
entry:
  %timer = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 1
  %call = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #24
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_stat_activate_msecs(%struct.blk_stat_callback* noundef %cb) unnamed_addr #0 {
entry:
  %timer = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %cb, i64 0, i32 1
  %0 = load volatile i64, i64* @jiffies, align 64
  %call.i = call fastcc i64 @_msecs_to_jiffies(i32 noundef 100) #23
  %add = add i64 %call.i, %0
  %call1 = call i32 @mod_timer(%struct.timer_list* noundef %timer, i64 noundef %add) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) unnamed_addr #4 {
entry:
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0
  %call = call fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %entry1) #24
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %h) unnamed_addr #4 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load volatile %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_qc_t_is_internal(i32 noundef %cookie) unnamed_addr #6 {
entry:
  %cmp = icmp slt i32 %cookie, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @blk_qc_t_to_tag(i32 noundef %cookie) unnamed_addr #6 {
entry:
  %and = and i32 %cookie, 65535
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_poll_hybrid_sleep(%struct.request_queue* noundef %q, %struct.request* noundef %rq) unnamed_addr #0 {
entry:
  %hs = alloca %struct.hrtimer_sleeper, align 8
  %0 = bitcast %struct.hrtimer_sleeper* %hs to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !8
  %rq_flags = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 4
  %1 = load i32, i32* %rq_flags, align 4
  %and = and i32 %1, 1048576
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %poll_nsec = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 22
  %2 = load i32, i32* %poll_nsec, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.end6, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = call fastcc i64 @blk_mq_poll_nsecs(%struct.request_queue* noundef %q, %struct.request* noundef %rq) #24
  %conv = trunc i64 %call to i32
  %tobool4.not = icmp eq i32 %conv, 0
  br i1 %tobool4.not, label %cleanup, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  %.pre = load i32, i32* %rq_flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end3.if.end6_crit_edge, %if.end
  %3 = phi i32 [ %.pre, %if.end3.if.end6_crit_edge ], [ %1, %if.end ]
  %nsecs.076 = phi i32 [ %conv, %if.end3.if.end6_crit_edge ], [ %2, %if.end ]
  %or = or i32 %3, 1048576
  store i32 %or, i32* %rq_flags, align 4
  %conv8 = zext i32 %nsecs.076 to i64
  call fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef nonnull %hs) #24
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %hs, i64 0, i32 0
  call fastcc void @hrtimer_set_expires(%struct.hrtimer* noundef nonnull %timer, i64 noundef %conv8) #24
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %hs, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end6
  %mode.0 = phi i32 [ 1, %if.end6 ], [ 0, %land.rhs ]
  %call9 = call fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) #24
  %cmp10 = icmp eq i32 %call9, 2
  br i1 %cmp10, label %do.body51, label %do.body21

do.body21:                                        ; preds = %do.body
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #27, !srcloc !31
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !73
  call void @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* noundef nonnull %hs, i32 noundef %mode.0) #23
  %6 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool31.not = icmp eq %struct.task_struct* %6, null
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %do.body21
  call void @io_schedule() #23
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.body21
  %call35 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef nonnull %timer) #23
  %7 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool38.not = icmp eq %struct.task_struct* %7, null
  br i1 %tobool38.not, label %do.body51, label %land.rhs

land.rhs:                                         ; preds = %if.end33
  %call40 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %5) #24
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body, label %do.body51

do.body51:                                        ; preds = %if.end33, %land.rhs, %do.body
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #27, !srcloc !31
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %__state53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 1
  store volatile i32 0, i32* %__state53, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %do.body51
  %retval.0 = phi i1 [ true, %do.body51 ], [ false, %entry ], [ false, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #22
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @blk_mq_poll_nsecs(%struct.request_queue* noundef %q, %struct.request* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_poll_stats_enable(%struct.request_queue* noundef %q) #24
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @blk_mq_poll_stats_bkt(%struct.request* noundef %rq) #24
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %idxprom17 = zext i32 %call1 to i64
  %nr_samples = getelementptr %struct.request_queue, %struct.request_queue* %q, i64 0, i32 24, i64 %idxprom17, i32 3
  %0 = load i32, i32* %nr_samples, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end3
  %mean = getelementptr %struct.request_queue, %struct.request_queue* %q, i64 0, i32 24, i64 %idxprom17, i32 0
  %1 = load i64, i64* %mean, align 8
  %add = add i64 %1, 1
  %div = lshr i64 %add, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then4, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.end ], [ %div, %if.then4 ], [ 0, %if.end3 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef %sl) unnamed_addr #0 {
entry:
  call void @hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef %sl, i32 noundef 1, i32 noundef 1) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @hrtimer_set_expires(%struct.hrtimer* nocapture noundef writeonly %timer, i64 noundef %time) unnamed_addr #19 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  store i64 %time, i64* %expires, align 8
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  store i64 %time, i64* %_softexpires, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(%struct.hrtimer* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #24
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_poll_stats_enable(%struct.request_queue* noundef %q) unnamed_addr #0 {
entry:
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  %1 = and i64 %0, 2097152
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i1 @blk_queue_flag_test_and_set(i32 noundef 21, %struct.request_queue* noundef %q) #23
  br i1 %call1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %poll_cb = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 23
  %2 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %poll_cb, align 8
  call void @blk_stat_add_callback(%struct.request_queue* noundef %q, %struct.blk_stat_callback* noundef %2) #23
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ true, %lor.lhs.false ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @blk_queue_flag_test_and_set(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_add_callback(%struct.request_queue* noundef, %struct.blk_stat_callback* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #24
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #24
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #24
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %div.i = lshr i32 %flag, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %flags, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #6 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #24
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_llist_head(%struct.llist_head* nocapture noundef writeonly %list) unnamed_addr #19 {
entry:
  %first = getelementptr inbounds %struct.llist_head, %struct.llist_head* %list, i64 0, i32 0
  store %struct.llist_node* null, %struct.llist_node** %first, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, void (%struct.softirq_action*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @blk_done_softirq(%struct.softirq_action* nocapture noundef readnone %h) #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.llist_head* @blk_cpu_done to i64)
  %0 = inttoptr i64 %add to %struct.llist_head*
  call fastcc void @blk_complete_reqs(%struct.llist_head* noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_setup_state_nocalls() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 22, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef null, i32 (i32)* noundef nonnull @blk_softirq_cpu_dead, i1 noundef false) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blk_softirq_cpu_dead(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.llist_head* @blk_cpu_done to i64)
  %1 = inttoptr i64 %add to %struct.llist_head*
  call fastcc void @blk_complete_reqs(%struct.llist_head* noundef %1) #24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_setup_state_multi(i32 noundef %state, i8* noundef %name, i32 (i32, %struct.hlist_node*)* noundef %startup, i32 (i32, %struct.hlist_node*)* noundef %teardown) unnamed_addr #0 {
entry:
  %0 = bitcast i32 (i32, %struct.hlist_node*)* %startup to i32 (i32)*
  %1 = bitcast i32 (i32, %struct.hlist_node*)* %teardown to i32 (i32)*
  %call = call i32 @__cpuhp_setup_state(i32 noundef %state, i8* noundef %name, i1 noundef false, i32 (i32)* noundef %0, i32 (i32)* noundef %1, i1 noundef true) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blk_mq_hctx_notify_dead(i32 noundef %cpu, %struct.hlist_node* noundef %node) #0 {
entry:
  %tmp = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp, i64 0, i32 0
  store %struct.list_head* %tmp, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp, i64 0, i32 1
  store %struct.list_head* %tmp, %struct.list_head** %prev, align 8
  %tobool.not = icmp eq %struct.hlist_node* %node, null
  %add.ptr42 = getelementptr %struct.hlist_node, %struct.hlist_node* %node, i64 -29
  %1 = bitcast %struct.hlist_node* %add.ptr42 to %struct.blk_mq_hw_ctx*
  %cond = select i1 %tobool.not, %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx* %1
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 2, i64 0
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %arraydecay) #24
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 7
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %call4 = call fastcc %struct.blk_mq_ctx* @__blk_mq_get_ctx(%struct.request_queue* noundef %2, i32 noundef %cpu) #24
  %type5 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 13
  %3 = load i16, i16* %type5, align 4
  %rlock.i = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %call4, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  %idxprom = zext i16 %3 to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %call4, i64 0, i32 0, i32 1, i64 %idxprom
  %call6 = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx) #24
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call fastcc void @list_splice_init(%struct.list_head* noundef %arrayidx, %struct.list_head* noundef nonnull %tmp) #24
  call fastcc void @blk_mq_hctx_clear_pending(%struct.blk_mq_hw_ctx* noundef %cond, %struct.blk_mq_ctx* noundef %call4) #24
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  %call14 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %tmp) #24
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end12
  %rlock.i44 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i44) #23
  %dispatch = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 0, i32 1
  call fastcc void @list_splice_tail_init(%struct.list_head* noundef nonnull %tmp, %struct.list_head* noundef %dispatch) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i44) #23
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %cond, i1 noundef true) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry, %if.end17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blk_mq_hctx_notify_online(i32 noundef %cpu, %struct.hlist_node* noundef %node) #0 {
entry:
  %tobool.not = icmp eq %struct.hlist_node* %node, null
  %add.ptr8 = getelementptr %struct.hlist_node, %struct.hlist_node* %node, i64 -28
  %0 = bitcast %struct.hlist_node* %add.ptr8 to %struct.blk_mq_hw_ctx*
  %cond = select i1 %tobool.not, %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx* %0
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 2, i64 0
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %arraydecay) #24
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 0, i32 2
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %state) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @blk_mq_hctx_notify_offline(i32 noundef %cpu, %struct.hlist_node* noundef %node) #0 {
entry:
  %tobool.not = icmp eq %struct.hlist_node* %node, null
  %add.ptr20 = getelementptr %struct.hlist_node, %struct.hlist_node* %node, i64 -28
  %0 = bitcast %struct.hlist_node* %add.ptr20 to %struct.blk_mq_hw_ctx*
  %cond = select i1 %tobool.not, %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx* %0
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 2, i64 0
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %arraydecay) #24
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc i1 @blk_mq_last_cpu_in_hctx(i32 noundef %cpu, %struct.blk_mq_hw_ctx* noundef %cond) #24
  br i1 %call3, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 0, i32 2
  call fastcc void @set_bit(i64 noundef 3, i64* noundef %state) #24
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !74
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %cond, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 2
  %call4 = call fastcc i1 @percpu_ref_tryget(%struct.percpu_ref* noundef %q_usage_counter) #24
  br i1 %call4, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %call621 = call fastcc i1 @blk_mq_hctx_has_requests(%struct.blk_mq_hw_ctx* noundef %cond) #24
  br i1 %call621, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  call void @msleep(i32 noundef 5) #23
  %call6 = call fastcc i1 @blk_mq_hctx_has_requests(%struct.blk_mq_hw_ctx* noundef %cond) #24
  br i1 %call6, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %q_usage_counter8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 2
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %q_usage_counter8) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end, %entry, %lor.lhs.false
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_complete_reqs(%struct.llist_head* noundef %list) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %list) #24
  %call2 = call %struct.llist_node* @llist_reverse_order(%struct.llist_node* noundef %call) #23
  %add.ptr18 = getelementptr %struct.llist_node, %struct.llist_node* %call2, i64 -11
  %cmp.not19 = icmp eq %struct.llist_node* %add.ptr18, inttoptr (i64 -88 to %struct.llist_node*)
  br i1 %cmp.not19, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %0 = bitcast %struct.llist_node* %add.ptr18 to %struct.request*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %rq.020 = phi %struct.request* [ %4, %land.rhs ], [ %0, %land.rhs.preheader ]
  %1 = getelementptr inbounds %struct.request, %struct.request* %rq.020, i64 0, i32 12
  %2 = bitcast %union.anon.72* %1 to i8**
  %3 = load i8*, i8** %2, align 8
  %add.ptr9 = getelementptr i8, i8* %3, i64 -88
  %4 = bitcast i8* %add.ptr9 to %struct.request*
  %q = getelementptr inbounds %struct.request, %struct.request* %rq.020, i64 0, i32 0
  %5 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %mq_ops = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i64 0, i32 5
  %6 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %mq_ops, align 8
  %complete = getelementptr inbounds %struct.blk_mq_ops, %struct.blk_mq_ops* %6, i64 0, i32 8
  %7 = load void (%struct.request*)*, void (%struct.request*)** %complete, align 8
  call void %7(%struct.request* noundef %rq.020) #23
  %cmp.not = icmp eq i8* %add.ptr9, inttoptr (i64 -88 to i8*)
  br i1 %cmp.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.llist_node* @llist_reverse_order(%struct.llist_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %head) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.llist_head* %head to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %0) #23
  %1 = inttoptr i64 %call11.i to %struct.llist_node*
  ret %struct.llist_node* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #22, !srcloc !75
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_mq_hctx_clear_pending(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.blk_mq_ctx* nocapture noundef readonly %ctx) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 13
  %0 = load i16, i16* %type, align 4
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 2, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 10
  call fastcc void @sbitmap_clear_bit(%struct.sbitmap* noundef %ctx_map, i32 noundef %conv) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_mq_last_cpu_in_hctx(i32 noundef %cpu, %struct.blk_mq_hw_ctx* noundef readonly %hctx) unnamed_addr #21 {
entry:
  %arraydecay = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 2, i64 0
  %call = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_online_mask) #25
  %cmp.not = icmp eq i32 %call, %cpu
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call3 = call i32 @cpumask_next_and(i32 noundef %cpu, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_online_mask) #25
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp4 = icmp uge i32 %call3, %0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp4, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @blk_mq_hctx_has_requests(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %data = alloca %struct.rq_iter_data, align 8
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 20
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %sched_tags, align 32
  %tobool.not = icmp eq %struct.blk_mq_tags* %0, null
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %tags2 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %1 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags2, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.blk_mq_tags* [ %1, %cond.false ], [ %0, %entry ]
  %2 = bitcast %struct.rq_iter_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #22
  %3 = getelementptr inbounds %struct.rq_iter_data, %struct.rq_iter_data* %data, i64 0, i32 1
  %4 = bitcast i8* %3 to i64*, !annotation !8
  store i64 0, i64* %4, align 8, !annotation !8
  %hctx3 = getelementptr inbounds %struct.rq_iter_data, %struct.rq_iter_data* %data, i64 0, i32 0
  store %struct.blk_mq_hw_ctx* %hctx, %struct.blk_mq_hw_ctx** %hctx3, align 8
  %has_rq = getelementptr inbounds %struct.rq_iter_data, %struct.rq_iter_data* %data, i64 0, i32 1
  call void @blk_mq_all_tag_iter(%struct.blk_mq_tags* noundef %cond, i1 (%struct.request*, i8*, i1)* noundef nonnull @blk_mq_has_request, i8* noundef nonnull %2) #23
  %5 = load i8, i8* %has_rq, align 8, !range !21
  %tobool5 = icmp ne i8 %5, 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #22
  ret i1 %tobool5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  call fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_all_tag_iter(%struct.blk_mq_tags* noundef, i1 (%struct.request*, i8*, i1)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i1 @blk_mq_has_request(%struct.request* nocapture noundef readonly %rq, i8* nocapture noundef %data, i1 noundef %reserved) #10 {
entry:
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %hctx = bitcast i8* %data to %struct.blk_mq_hw_ctx**
  %1 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  %cmp.not = icmp eq %struct.blk_mq_hw_ctx* %0, %1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, i8* %data, i64 8
  store i8 1, i8* %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %3 = xor i1 %cmp.not, true
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store i64* null, i64** %percpu_count, align 8, !annotation !8
  call fastcc void @__rcu_read_lock() #23
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #24
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !76
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef -1) #24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !77
  br label %if.end14

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %count) #23
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then12, label %if.end14, !prof !9

if.then12:                                        ; preds = %if.else
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %release = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 1
  %6 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %release, align 8
  call void %6(%struct.percpu_ref* noundef %ref) #23
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %do.body1
  call fastcc void @rcu_read_unlock() #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #22, !srcloc !78
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #16 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #17 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #22 = { nounwind }
attributes #23 = { nobuiltin nounwind "no-builtins" }
attributes #24 = { nobuiltin "no-builtins" }
attributes #25 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #26 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #27 = { nounwind readnone }
attributes #28 = { cold nobuiltin nounwind "no-builtins" }
attributes #29 = { nounwind readonly }

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
!10 = !{i64 2155455992}
!11 = !{i64 2155461044}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155464913}
!14 = !{i64 2155475777}
!15 = !{i64 2155476570}
!16 = !{i64 2155480043}
!17 = !{i64 2155489188}
!18 = !{i64 2155502785}
!19 = !{i64 2149557086}
!20 = !{i64 1914260}
!21 = !{i8 0, i8 2}
!22 = !{i1 (%struct.sbitmap*, i32, i8*)* @dispatch_rq_from_ctx, i1 (%struct.sbitmap*, i32, i8*)* @flush_busy_ctx}
!23 = !{i64 2155533595}
!24 = !{i64 2155536319}
!25 = !{i64 2148651117}
!26 = !{i64 2155539372}
!27 = !{i64 2155540248}
!28 = !{i64 2155540183}
!29 = !{i64 2155551243}
!30 = !{i64 2155561028}
!31 = !{i64 1540317}
!32 = !{i64 2155581763}
!33 = !{i64 2155619679}
!34 = !{i64 2155611229}
!35 = !{i64 2155609516}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = !{i64 2155639285}
!39 = !{i32 0, i32 65536}
!40 = !{i64 1916935}
!41 = !{i64 2149102622, i64 2149102669, i64 2149102675, i64 2149102712, i64 2149102730, i64 2149103657, i64 2149103705, i64 2149103753, i64 2149103816, i64 2149103865, i64 2149102808, i64 2149102833, i64 2149102859, i64 2149102865, i64 2149102902, i64 2149102908, i64 2149102958, i64 2149103004, i64 2149103037}
!42 = !{i64 2147831823, i64 2147832339, i64 2147832369, i64 2147832396, i64 2147832430, i64 2147832460}
!43 = !{i64 2150128978}
!44 = !{i64 2147839848, i64 2147840522, i64 2147840552, i64 2147840584, i64 2147840618, i64 2147840654, i64 2147840679}
!45 = !{i64 2149336257, i64 2149336304, i64 2149336310, i64 2149336347, i64 2149336365, i64 2149337676, i64 2149337724, i64 2149337772, i64 2149337835, i64 2149337884, i64 2149336443, i64 2149336468, i64 2149336494, i64 2149336500, i64 2149337342, i64 2149337382, i64 2149337400, i64 2149337432, i64 2149337460, i64 2149337514, i64 2149337534, i64 2149337631, i64 2149336523, i64 2149336537, i64 2149336543, i64 2149336593, i64 2149336639, i64 2149336672}
!46 = !{i64 2149338436, i64 2149338483, i64 2149338489, i64 2149338526, i64 2149338544, i64 2149339487, i64 2149339535, i64 2149339583, i64 2149339646, i64 2149339695, i64 2149338622, i64 2149338647, i64 2149338673, i64 2149338679, i64 2149338716, i64 2149338722, i64 2149338772, i64 2149338818, i64 2149338851}
!47 = !{i64 2149330554, i64 2149330601, i64 2149330607, i64 2149330644, i64 2149330662, i64 2149332003, i64 2149332051, i64 2149332099, i64 2149332162, i64 2149332211, i64 2149330740, i64 2149330765, i64 2149330791, i64 2149330797, i64 2149331669, i64 2149331709, i64 2149331727, i64 2149331759, i64 2149331787, i64 2149331841, i64 2149331861, i64 2149331958, i64 2149330820, i64 2149330834, i64 2149330840, i64 2149330890, i64 2149330936, i64 2149330969}
!48 = !{i64 2147917964, i64 2147917997, i64 2147918050, i64 2147918109, i64 2147918143, i64 2147918198, i64 2147918227, i64 2147918247}
!49 = !{i64 2149582929}
!50 = !{i64 2149382450}
!51 = !{i64 2149346331, i64 2149346378, i64 2149346384, i64 2149346421, i64 2149346439, i64 2149347750, i64 2149347798, i64 2149347846, i64 2149347909, i64 2149347958, i64 2149346517, i64 2149346542, i64 2149346568, i64 2149346574, i64 2149347416, i64 2149347456, i64 2149347474, i64 2149347506, i64 2149347534, i64 2149347588, i64 2149347608, i64 2149347705, i64 2149346597, i64 2149346611, i64 2149346617, i64 2149346667, i64 2149346713, i64 2149346746}
!52 = !{i64 2147822102, i64 2147822618, i64 2147822648, i64 2147822675, i64 2147822709, i64 2147822739}
!53 = !{i32 0, i32 8}
!54 = !{i64 2147935172, i64 2147935205, i64 2147935257, i64 2147935316, i64 2147935350, i64 2147935406, i64 2147935435, i64 2147935462}
!55 = !{i64 2147936822, i64 2147936855, i64 2147936906, i64 2147936962, i64 2147936995, i64 2147937050, i64 2147937079, i64 2147937106}
!56 = !{i64 2149561379}
!57 = !{i64 2149586232}
!58 = !{i64 2149321098, i64 2149321145, i64 2149321151, i64 2149321188, i64 2149321206, i64 2149322546, i64 2149322594, i64 2149322642, i64 2149322705, i64 2149322754, i64 2149321284, i64 2149321309, i64 2149321335, i64 2149321341, i64 2149322212, i64 2149322252, i64 2149322270, i64 2149322302, i64 2149322330, i64 2149322384, i64 2149322404, i64 2149322501, i64 2149321364, i64 2149321378, i64 2149321384, i64 2149321434, i64 2149321480, i64 2149321513}
!59 = !{i32 0, i32 33}
!60 = !{i64 2149572087}
!61 = !{i64 2149579368}
!62 = !{i64 2155538442}
!63 = !{i64 2149752832}
!64 = !{i64 2150534957}
!65 = !{i64 2149753049}
!66 = !{i64 2147891182, i64 2147891693, i64 2147891723, i64 2147891749, i64 2147891781, i64 2147891810}
!67 = !{i64 2147901752, i64 2147902273, i64 2147902303, i64 2147902329, i64 2147902361, i64 2147902390}
!68 = !{i64 2155598473}
!69 = !{i64 2152230128}
!70 = !{i64 2152230940}
!71 = !{i64 2149128568, i64 2149128609, i64 2149128665, i64 2149128717}
!72 = !{i64 2155505385}
!73 = !{i64 2155688416}
!74 = !{i64 2155592338}
!75 = !{i64 2147956980, i64 2147957012, i64 2147957056, i64 2147957103, i64 2147957129}
!76 = !{i64 2152241427}
!77 = !{i64 2152242239}
!78 = !{i64 2147877369, i64 2147878017, i64 2147878047, i64 2147878078, i64 2147878110, i64 2147878145, i64 2147878170}
