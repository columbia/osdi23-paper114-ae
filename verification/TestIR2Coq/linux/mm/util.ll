; ModuleID = 'mm/util.c'
source_filename = "mm/util.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.24 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.kuid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.36 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.36 = type { %struct.callback_head }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.15, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.52, %struct.list_head, %struct.list_head, %union.anon.53 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.9, i8* }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.54 }
%union.anon.54 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.2, %union.anon.75, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.75 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.55, %union.anon.56 }
%union.anon.55 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.56 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.58, %struct.qspinlock }
%union.anon.58 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.14, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.14 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.16, %union.anon.17, %union.anon.18, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.23, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.16 = type { %struct.hlist_node }
%union.anon.17 = type { %struct.rb_node }
%union.anon.18 = type { %struct.anon.22 }
%struct.anon.22 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.23 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.20, %union.anon.21, i32 }
%union.anon.20 = type { %struct.list_head }
%union.anon.21 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
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
%struct.workqueue_struct = type opaque
%struct.blk_mq_tag_set = type opaque
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
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
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
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
%union.anon.15 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.51, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.51 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33, [48 x i8] }
%struct.anon.33 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.1, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.1 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.anon.69 = type { i64, i8, i8, %struct.atomic_t, i32 }

@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@mmap_rnd_bits = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@sysctl_overcommit_memory = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sysctl_overcommit_ratio = dso_local local_unnamed_addr global i32 50, section ".data..read_mostly", align 4
@sysctl_max_map_count = dso_local local_unnamed_addr global i32 65530, section ".data..read_mostly", align 4
@sysctl_user_reserve_kbytes = dso_local local_unnamed_addr global i64 131072, section ".data..read_mostly", align 8
@sysctl_admin_reserve_kbytes = dso_local local_unnamed_addr global i64 8192, section ".data..read_mostly", align 8
@sysctl_overcommit_kbytes = dso_local local_unnamed_addr global i64 0, section ".data..read_mostly", align 8
@vm_committed_as = dso_local global %struct.percpu_counter zeroinitializer, align 64
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"non-slab/vmalloc memory\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"NULL pointer\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"zero-size pointer\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"non-paged memory\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\01c %s\0A\00", align 1
@page_offline_rwsem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @page_offline_rwsem to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @page_offline_rwsem to i8*), i64 24) to %struct.list_head*) } }, align 8
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@sysctl_legacy_va_layout = external dso_local local_unnamed_addr global i32, align 4
@stack_guard_gap = external dso_local local_unnamed_addr global i64, align 8
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kfree_const(i8* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %x to i64
  %call = call fastcc i1 @is_kernel_rodata(i64 noundef %0) #12
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @kfree(i8* noundef %x) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_kernel_rodata(i64 noundef %addr) unnamed_addr #1 {
entry:
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @__start_rodata to i64)
  %cmp1 = icmp ult i64 %addr, ptrtoint ([0 x i8]* @__end_rodata to i64)
  %0 = and i1 %cmp, %cmp1
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @kstrdup(i8* noundef %s, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %s, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @strlen(i8* noundef nonnull %s) #13
  %add = add i64 %call, 1
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool1.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %2
  %or = or i64 %shl5.neg, %1
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %1
  %cond = select i1 %tobool1.not, i64 %and10, i64 %or
  %call11 = call i8* @__kmalloc_track_caller(i64 noundef %add, i32 noundef %gfp, i64 noundef %cond) #13
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end
  %call14 = call i8* @memcpy(i8* noundef nonnull %call11, i8* noundef nonnull %s, i64 noundef %add) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then13, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call11, %if.then13 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__kmalloc_track_caller(i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kstrdup_const(i8* noundef %s, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %s to i64
  %call = call fastcc i1 @is_kernel_rodata(i64 noundef %0) #12
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @kstrdup(i8* noundef %s, i32 noundef %gfp) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call1, %if.end ], [ %s, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kstrndup(i8* noundef %s, i64 noundef %max, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %s, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @strnlen(i8* noundef nonnull %s, i64 noundef %max) #13
  %add = add i64 %call, 1
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool1.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %2
  %or = or i64 %shl5.neg, %1
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %1
  %cond = select i1 %tobool1.not, i64 %and10, i64 %or
  %call11 = call i8* @__kmalloc_track_caller(i64 noundef %add, i32 noundef %gfp, i64 noundef %cond) #13
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end
  %call14 = call i8* @memcpy(i8* noundef nonnull %call11, i8* noundef nonnull %s, i64 noundef %call) #13
  %arrayidx = getelementptr i8, i8* %call11, i64 %call
  store i8 0, i8* %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then13, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call11, %if.then13 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strnlen(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kmemdup(i8* noundef %src, i64 noundef %len, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %call = call i8* @__kmalloc_track_caller(i64 noundef %len, i32 noundef %gfp, i64 noundef %cond) #13
  %tobool9.not = icmp eq i8* %call, null
  br i1 %tobool9.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %src, i64 noundef %len) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kmemdup_nul(i8* noundef %s, i64 noundef %len, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %s, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %len, 1
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool1.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %2
  %or = or i64 %shl5.neg, %1
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %1
  %cond = select i1 %tobool1.not, i64 %and10, i64 %or
  %call = call i8* @__kmalloc_track_caller(i64 noundef %add, i32 noundef %gfp, i64 noundef %cond) #13
  %tobool11.not = icmp eq i8* %call, null
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end
  %call13 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %s, i64 noundef %len) #13
  %arrayidx = getelementptr i8, i8* %call, i64 %len
  store i8 0, i8* %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then12, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call, %if.then12 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @memdup_user(i8* noundef %src, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %call = call i8* @__kmalloc_track_caller(i64 noundef %len, i32 noundef 1060032, i64 noundef %cond) #13
  %tobool9.not = icmp eq i8* %call, null
  br i1 %tobool9.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %cmp11.i.i = icmp ugt i64 %len, 2147483647
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !7

copy_from_user.exit.thread:                       ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !8
  br label %if.then13

copy_from_user.exit:                              ; preds = %if.end
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %call, i8* noundef %src, i64 noundef %len) #13
  %tobool12.not = icmp eq i64 %call2.i, 0
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %copy_from_user.exit.thread, %copy_from_user.exit
  call void @kfree(i8* noundef nonnull %call) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then13
  %.sink = phi i64 [ -14, %if.then13 ], [ -12, %entry ]
  %call14 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %copy_from_user.exit
  %retval.0 = phi i8* [ %call, %copy_from_user.exit ], [ %call14, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vmemdup_user(i8* noundef %src, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kvmalloc(i64 noundef %len, i32 noundef 1051840) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %cmp11.i.i = icmp ugt i64 %len, 2147483647
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !7

copy_from_user.exit.thread:                       ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !8
  br label %if.then4

copy_from_user.exit:                              ; preds = %if.end
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %call, i8* noundef %src, i64 noundef %len) #13
  %tobool3.not = icmp eq i64 %call2.i, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %copy_from_user.exit.thread, %copy_from_user.exit
  call void @kvfree(i8* noundef nonnull %call) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then4
  %.sink = phi i64 [ -14, %if.then4 ], [ -12, %entry ]
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %copy_from_user.exit
  %retval.0 = phi i8* [ %call, %copy_from_user.exit ], [ %call5, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef -1) #12
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kvfree(i8* noundef %addr) local_unnamed_addr #0 {
entry:
  %call = call i1 @is_vmalloc_addr(i8* noundef %addr) #13
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @vfree(i8* noundef %addr) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @kfree(i8* noundef %addr) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @strndup_user(i8* noundef %s, i64 noundef %n) local_unnamed_addr #0 {
entry:
  %call = call i64 @strnlen_user(i8* noundef %s, i64 noundef %n) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -14) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i64 %call, %n
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -22) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @memdup_user(i8* noundef %s, i64 noundef %call) #12
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %call5) #12
  br i1 %call6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %sub = add i64 %call, -1
  %arrayidx = getelementptr i8, i8* %call5, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end8, %if.then2, %if.then
  %retval.0 = phi i8* [ %call3, %if.then2 ], [ %call5, %if.end8 ], [ %call1, %if.then ], [ %call5, %if.end4 ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strnlen_user(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #1 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @memdup_user_nul(i8* noundef %src, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %add = add i64 %len, 1
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl4.neg = shl nsw i64 -1, %2
  %or = or i64 %shl4.neg, %1
  %and7 = and i64 %shl4.neg, 36028797018963967
  %neg = xor i64 %and7, -1
  %and9 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and9, i64 %or
  %call = call i8* @__kmalloc_track_caller(i64 noundef %add, i32 noundef 3264, i64 noundef %cond) #13
  %tobool10.not = icmp eq i8* %call, null
  br i1 %tobool10.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -12) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp11.i.i = icmp ugt i64 %len, 2147483647
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !7

copy_from_user.exit.thread:                       ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !8
  br label %if.then14

copy_from_user.exit:                              ; preds = %if.end
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %call, i8* noundef %src, i64 noundef %len) #13
  %tobool13.not = icmp eq i64 %call2.i, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %copy_from_user.exit.thread, %copy_from_user.exit
  call void @kfree(i8* noundef nonnull %call) #13
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef -14) #12
  br label %cleanup

if.end16:                                         ; preds = %copy_from_user.exit
  %arrayidx = getelementptr i8, i8* %call, i64 %len
  store i8 0, i8* %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then
  %retval.0 = phi i8* [ %call15, %if.then14 ], [ %call, %if.end16 ], [ %call11, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__vma_link_list(%struct.mm_struct* nocapture noundef %mm, %struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %prev) local_unnamed_addr #5 {
entry:
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 3
  store %struct.vm_area_struct* %prev, %struct.vm_area_struct** %vm_prev, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %prev, null
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 2
  %mmap.sink19 = select i1 %tobool.not, %struct.vm_area_struct** %mmap, %struct.vm_area_struct** %vm_next
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap.sink19, align 8
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %mmap.sink19, align 8
  %vm_next3 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %vm_next3, align 8
  %tobool4.not = icmp eq %struct.vm_area_struct* %0, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %entry
  %vm_prev6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 3
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vm_prev6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__vma_unlink_list(%struct.mm_struct* nocapture noundef writeonly %mm, %struct.vm_area_struct* nocapture noundef readonly %vma) local_unnamed_addr #5 {
entry:
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 3
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %1, null
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %vm_next1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 2
  %mmap.sink = select i1 %tobool.not, %struct.vm_area_struct** %mmap, %struct.vm_area_struct** %vm_next1
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %mmap.sink, align 8
  %tobool2.not = icmp eq %struct.vm_area_struct* %0, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %entry
  %vm_prev4 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 3
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %vm_prev4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @vma_is_stack_for_current(%struct.vm_area_struct* nocapture noundef readonly %vma) local_unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %2 = load i64, i64* %vm_start, align 8
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %1) #12
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %3 = bitcast i8* %add.ptr2 to %struct.pt_regs*
  %call3 = call fastcc i64 @user_stack_pointer(%struct.pt_regs* noundef %3) #12
  %cmp.not = icmp ugt i64 %2, %call3
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  %cmp8 = icmp uge i64 %4, %call3
  %phi.cast = zext i1 %cmp8 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @user_stack_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #7 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 31
  %cmp = icmp eq i64 %and, 16
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 13
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %retval.0.in = select i1 %cmp, i64* %arrayidx, i64* %2
  %retval.0 = load i64, i64* %retval.0.in, align 8
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #7 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vma_set_file(%struct.vm_area_struct* nocapture noundef %vma, %struct.file* noundef %file) local_unnamed_addr #0 {
entry:
  call fastcc void @get_file(%struct.file* noundef %file) #12
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  store %struct.file* %file, %struct.file** %vm_file, align 8
  call void @fput(%struct.file* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_file(%struct.file* noundef %f) unnamed_addr #0 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @randomize_stack_top(i64 noundef %stack_top) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 4194304
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @get_random_long() #12
  %and2 = and i64 %call1, 262143
  %shl.neg = mul nsw i64 %and2, -4096
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %random_variable.0.neg = phi i64 [ %shl.neg, %if.then ], [ 0, %entry ]
  %add = add i64 %stack_top, 4095
  %and3 = and i64 %add, -4096
  %sub = add i64 %random_variable.0.neg, %and3
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_random_long() unnamed_addr #0 {
entry:
  %call = call i64 @get_random_u64() #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @arch_randomize_brk(%struct.mm_struct* nocapture noundef readonly %mm) local_unnamed_addr #0 {
entry:
  %brk = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 33
  %0 = load i64, i64* %brk, align 8
  %call = call i64 @randomize_page(i64 noundef %0, i64 noundef 1073741824) #13
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @randomize_page(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @arch_mmap_rnd() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @get_random_long() #12
  %0 = load i32, i32* @mmap_rnd_bits, align 4
  %sh_prom = zext i32 %0 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %call, %sub
  %shl1 = shl i64 %and, 12
  ret i64 %shl1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arch_pick_mmap_layout(%struct.mm_struct* nocapture noundef writeonly %mm, %struct.rlimit* nocapture noundef readonly %rlim_stack) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 4194304
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @arch_mmap_rnd() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %random_factor.0 = phi i64 [ %call1, %if.then ], [ 0, %entry ]
  %call2 = call fastcc i32 @mmap_is_legacy(%struct.rlimit* noundef %rlim_stack) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %add = add i64 %random_factor.0, 137438953472
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call5 = call fastcc i64 @mmap_base(i64 noundef %random_factor.0, %struct.rlimit* noundef %rlim_stack) #12
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %add.sink = phi i64 [ %call5, %if.else ], [ %add, %if.then4 ]
  %arch_get_unmapped_area.sink = phi i64 (%struct.file*, i64, i64, i64, i64)* [ @arch_get_unmapped_area_topdown, %if.else ], [ @arch_get_unmapped_area, %if.then4 ]
  %3 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 4
  store i64 %add.sink, i64* %3, align 8
  %4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 3
  store i64 (%struct.file*, i64, i64, i64, i64)* %arch_get_unmapped_area.sink, i64 (%struct.file*, i64, i64, i64, i64)** %4, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @mmap_is_legacy(%struct.rlimit* nocapture noundef readonly %rlim_stack) unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %2 = load i32, i32* %personality, align 16
  %and = and i32 %2, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim_stack, i64 0, i32 0
  %3 = load i64, i64* %rlim_cur, align 8
  %cmp = icmp eq i64 %3, -1
  %4 = load i32, i32* @sysctl_legacy_va_layout, align 4
  %spec.select = select i1 %cmp, i32 1, i32 %4
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @arch_get_unmapped_area(%struct.file* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @mmap_base(i64 noundef %rnd, %struct.rlimit* nocapture noundef readonly %rlim_stack) unnamed_addr #6 {
entry:
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim_stack, i64 0, i32 0
  %0 = load i64, i64* %rlim_cur, align 8
  %1 = load i64, i64* @stack_guard_gap, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 4
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 4194304
  %tobool.not = icmp eq i32 %and, 0
  %add = add i64 %1, 1073737728
  %spec.select = select i1 %tobool.not, i64 %1, i64 %add
  %add1 = add i64 %spec.select, %0
  %cmp = icmp ugt i64 %add1, %0
  %gap.0 = select i1 %cmp, i64 %add1, i64 %0
  %cmp5 = icmp ult i64 %gap.0, 134217728
  %5 = icmp ult i64 %gap.0, 458129844905
  %spec.store.select = select i1 %5, i64 %gap.0, i64 458129844905
  %phi.bo = sub nuw nsw i64 549755813888, %spec.store.select
  %gap.1 = select i1 %cmp5, i64 549621596160, i64 %phi.bo
  %sub11 = sub i64 4095, %rnd
  %add12 = add i64 %sub11, %gap.1
  %and13 = and i64 %add12, -4096
  ret i64 %and13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @arch_get_unmapped_area_topdown(%struct.file* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__account_locked_vm(%struct.mm_struct* nocapture noundef %mm, i64 noundef %pages, i1 noundef %inc, %struct.task_struct* nocapture noundef readonly %task, i1 noundef %bypass_rlim) local_unnamed_addr #0 {
entry:
  %locked_vm2 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 20
  %0 = load i64, i64* %locked_vm2, align 8
  br i1 %inc, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %bypass_rlim, label %if.then.if.then8_crit_edge, label %if.end6

if.then.if.then8_crit_edge:                       ; preds = %if.then
  %.pre = add i64 %0, %pages
  br label %if.end30.sink.split

if.end6:                                          ; preds = %if.then
  %call = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %task) #12
  %shr = lshr i64 %call, 12
  %add = add i64 %0, %pages
  %cmp = icmp ugt i64 %add, %shr
  br i1 %cmp, label %if.end30, label %if.end30.sink.split

if.else:                                          ; preds = %entry
  %cmp12 = icmp ult i64 %0, %pages
  br i1 %cmp12, label %if.then20, label %if.end21, !prof !7

if.then20:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/util.c\22; .popsection; .long 14472b - 14470b; .short 465; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else
  %sub = sub i64 %0, %pages
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.end6, %if.then.if.then8_crit_edge, %if.end21
  %add9.pre-phi.sink = phi i64 [ %sub, %if.end21 ], [ %.pre, %if.then.if.then8_crit_edge ], [ %add, %if.end6 ]
  store i64 %add9.pre-phi.sink, i64* %locked_vm2, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.end6
  %ret.1 = phi i32 [ -12, %if.end6 ], [ 0, %if.end30.sink.split ]
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 8, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @account_locked_vm(%struct.mm_struct* noundef %mm, i64 noundef %pages, i1 noundef %inc) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i64 %pages, 0
  %tobool = icmp ne %struct.mm_struct* %mm, null
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @mmap_write_lock(%struct.mm_struct* noundef nonnull %mm) #12
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call i1 @capable(i32 noundef 14) #13
  %call3 = call i32 @__account_locked_vm(%struct.mm_struct* noundef nonnull %mm, i64 noundef %pages, i1 noundef %inc, %struct.task_struct* noundef %1, i1 noundef %call2) #12
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef nonnull %mm) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_write(%struct.rw_semaphore* noundef %mmap_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vm_mmap_pgoff(%struct.file* noundef %file, i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flag, i64 noundef %pgoff) local_unnamed_addr #0 {
entry:
  %populate = alloca i64, align 8
  %uf = alloca %struct.list_head, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast i64* %populate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store i64 0, i64* %populate, align 8, !annotation !11
  %4 = bitcast %struct.list_head* %uf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #14
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 0
  store %struct.list_head* %uf, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 1
  store %struct.list_head* %uf, %struct.list_head** %prev, align 8
  %call3 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #12
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call i64 @do_mmap(%struct.file* noundef %file, i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flag, i64 noundef %pgoff, i64* noundef nonnull %populate, %struct.list_head* noundef nonnull %uf) #13
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #12
  %5 = load i64, i64* %populate, align 8
  %tobool7.not = icmp eq i64 %5, 0
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end
  call fastcc void @mm_populate(i64 noundef %call6, i64 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry
  %retval.0 = phi i64 [ -4, %entry ], [ %call6, %if.end ], [ %call6, %if.then8 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @do_mmap(%struct.file* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_populate(i64 noundef %addr, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call i32 @__mm_populate(i64 noundef %addr, i64 noundef %len, i32 noundef 1) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vm_mmap(%struct.file* noundef %file, i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flag, i64 noundef %offset) local_unnamed_addr #0 {
entry:
  %add = add i64 %len, 4095
  %and = and i64 %add, -4096
  %0 = xor i64 %offset, -1
  %cmp = icmp ule i64 %and, %0
  %and3 = and i64 %offset, 4095
  %tobool4.not = icmp eq i64 %and3, 0
  %or.cond = and i1 %cmp, %tobool4.not
  br i1 %or.cond, label %if.end13, label %return, !prof !12

if.end13:                                         ; preds = %entry
  %shr = lshr i64 %offset, 12
  %call = call i64 @vm_mmap_pgoff(%struct.file* noundef %file, i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flag, i64 noundef %shr) #12
  br label %return

return:                                           ; preds = %entry, %if.end13
  %retval.0 = phi i64 [ %call, %if.end13 ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kvmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 3264
  %cmp.not = icmp eq i32 %and, 3264
  br i1 %cmp.not, label %if.end6.i94, label %if.end6.i

if.end6.i:                                        ; preds = %entry
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %flags) #13
  br label %cleanup

if.end6.i94:                                      ; preds = %entry
  %cmp1 = icmp ugt i64 %size, 4096
  %and3 = and i32 %flags, 16384
  %tobool.not = icmp eq i32 %and3, 0
  %spec.select.v = select i1 %tobool.not, i32 73728, i32 8192
  %spec.select = select i1 %cmp1, i32 %spec.select.v, i32 0
  %kmalloc_flags.0 = or i32 %spec.select, %flags
  %call.i.i93 = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %kmalloc_flags.0) #13
  %tobool9 = icmp ne i8* %call.i.i93, null
  %cmp10 = icmp ult i64 %size, 4097
  %or.cond = or i1 %cmp10, %tobool9
  br i1 %or.cond, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end6.i94
  %cmp13 = icmp ugt i64 %size, 2147483647
  br i1 %cmp13, label %if.then21, label %if.end32, !prof !7

if.then21:                                        ; preds = %if.end12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/util.c\22; .popsection; .long 14472b - 14470b; .short 597; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  br label %cleanup

if.end32:                                         ; preds = %if.end12
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and33 = and i64 %1, 36028797018963968
  %tobool34.not = icmp eq i64 %and33, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl38.neg = shl nsw i64 -1, %2
  %or37 = or i64 %shl38.neg, %1
  %and41 = and i64 %shl38.neg, 36028797018963967
  %neg = xor i64 %and41, -1
  %and43 = and i64 %neg, %1
  %cond = select i1 %tobool34.not, i64 %and43, i64 %or37
  %3 = inttoptr i64 %cond to i8*
  %call44 = call i8* @__vmalloc_node(i64 noundef %size, i64 noundef 1, i32 noundef %flags, i32 noundef %node, i8* noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then21, %if.end6.i94, %if.end32
  %retval.0 = phi i8* [ %call44, %if.end32 ], [ %call.i.i93, %if.end6.i94 ], [ null, %if.then21 ], [ %call.i.i, %if.end6.i ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__vmalloc_node(i64 noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_vmalloc_addr(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kvfree_sensitive(i8* noundef %addr, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp ult i8* %addr, inttoptr (i64 17 to i8*)
  br i1 %cmp.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call fastcc void @memzero_explicit(i8* noundef %addr, i64 noundef %len) #12
  call void @kvfree(i8* noundef %addr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memzero_explicit(i8* noundef %s, i64 noundef %count) unnamed_addr #0 {
entry:
  %call = call i8* @memset(i8* noundef %s, i32 noundef 0, i64 noundef %count) #13
  call void asm sideeffect "", "r,~{memory}"(i8* %s) #14, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kvrealloc(i8* noundef %p, i64 noundef %oldsize, i64 noundef %newsize, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp ult i64 %oldsize, %newsize
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kvmalloc(i64 noundef %newsize, i32 noundef %flags) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %p, i64 noundef %oldsize) #13
  call void @kvfree(i8* noundef %p) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8* [ %call, %if.end2 ], [ %p, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i8* @page_rmapping(%struct.page* noundef %page) local_unnamed_addr #8 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call to %struct.page*
  %call1 = call fastcc i8* @__page_rmapping(%struct.page* noundef %0) #12
  ret i8* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.2* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !15

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @__page_rmapping(%struct.page* nocapture noundef readonly %page) unnamed_addr #7 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %1 = ptrtoint %struct.address_space* %0 to i64
  %and = and i64 %1, -4
  %2 = inttoptr i64 %and to i8*
  ret i8* %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i1 @page_mapped(%struct.page* noundef %page) local_unnamed_addr #9 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.end

PageCompound.exit:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.2* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %PageCompound.exit
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %5, -1
  br label %cleanup

if.end:                                           ; preds = %entry, %PageCompound.exit
  %call6 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %6 = inttoptr i64 %call6 to %struct.page*
  %call7 = call fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef %6) #12
  %counter.i36 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call7, i64 0, i32 0
  %7 = load volatile i32, i32* %counter.i36, align 4
  %cmp9 = icmp sgt i32 %7, -1
  br i1 %cmp9, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call1839 = call fastcc i64 @compound_nr(%struct.page* noundef %6) #12
  %cmp1940.not = icmp eq i64 %call1839, 0
  br i1 %cmp1940.not, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %inc = shl nsw i64 %conv1742, 32
  %sext = add i64 %inc, 4294967296
  %conv17 = ashr exact i64 %sext, 32
  %call18 = call fastcc i64 @compound_nr(%struct.page* noundef %6) #12
  %cmp19 = icmp ugt i64 %call18, %conv17
  br i1 %cmp19, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %conv1742 = phi i64 [ %conv17, %for.cond ], [ 0, %for.cond.preheader ]
  %counter.i37 = getelementptr %struct.page, %struct.page* %6, i64 %conv1742, i32 2, i32 0, i32 0
  %8 = load volatile i32, i32* %counter.i37, align 4
  %cmp23 = icmp sgt i32 %8, -1
  br i1 %cmp23, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %if.end, %if.then
  %retval.0 = phi i1 [ %cmp, %if.then ], [ true, %if.end ], [ false, %for.cond.preheader ], [ %cmp23, %for.cond ], [ %cmp23, %for.body ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef readnone %page) unnamed_addr #1 {
entry:
  %0 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %1 = bitcast %union.anon.2* %0 to %struct.anon.69*
  %compound_mapcount = getelementptr inbounds %struct.anon.69, %struct.anon.69* %1, i64 0, i32 3
  ret %struct.atomic_t* %compound_mapcount
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local %struct.anon_vma* @page_anon_vma(%struct.page* noundef %page) local_unnamed_addr #8 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call to %struct.page*
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %and = and i64 %2, 3
  %cmp.not = icmp eq i64 %and, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @__page_rmapping(%struct.page* noundef %0) #12
  %3 = bitcast i8* %call2 to %struct.anon_vma*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.anon_vma* [ %3, %if.end ], [ null, %entry ]
  ret %struct.anon_vma* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local %struct.address_space* @page_mapping(%struct.page* noundef %page) local_unnamed_addr #8 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call to %struct.page*
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %0) #13
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 512
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !15

if.end:                                           ; preds = %entry
  %mapping17 = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %4 = load %struct.address_space*, %struct.address_space** %mapping17, align 8
  %5 = ptrtoint %struct.address_space* %4 to i64
  %and = and i64 %5, 1
  %tobool18.not = icmp eq i64 %and, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end
  %and21 = and i64 %5, -4
  %6 = inttoptr i64 %and21 to %struct.address_space*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end20
  %retval.0 = phi %struct.address_space* [ %6, %if.end20 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.address_space* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @__page_mapcount(%struct.page* noundef %page) local_unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %add = add i32 %0, 1
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %1 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1, i32 0, i32 1
  %2 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %3 = ptrtoint %struct.address_space* %2 to i64
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %5 = inttoptr i64 %call4 to %struct.page*
  %call5 = call fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef %5) #12
  %counter.i22 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call5, i64 0, i32 0
  %6 = load volatile i32, i32* %counter.i22, align 4
  %add7 = add i32 %0, 2
  %add8 = add i32 %add7, %6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %add8, %if.end ], [ %add, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @copy_huge_page(%struct.page* noundef %dst, %struct.page* noundef %src) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @compound_nr(%struct.page* noundef %src) #12
  %conv = trunc i64 %call to i32
  %cmp11.not = icmp eq i32 %conv, 0
  br i1 %cmp11.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %call, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call fastcc void @_cond_resched() #12
  %add.ptr = getelementptr %struct.page, %struct.page* %dst, i64 %indvars.iv
  %add.ptr4 = getelementptr %struct.page, %struct.page* %src, i64 %indvars.iv
  call void @copy_highpage(%struct.page* noundef %add.ptr, %struct.page* noundef %add.ptr4) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_highpage(%struct.page* noundef, %struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @overcommit_ratio_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call i32 @proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #13
  %cmp = icmp eq i32 %call, 0
  %tobool = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* @sysctl_overcommit_kbytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @overcommit_policy_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %t = alloca %struct.ctl_table, align 8
  %new_policy = alloca i32, align 4
  %0 = bitcast %struct.ctl_table* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast i32* %new_policy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  store i32 -1, i32* %new_policy, align 4
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.ctl_table* %table to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8* noundef align 8 dereferenceable(64) %2, i64 64, i1 false)
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %t, i64 0, i32 1
  %3 = bitcast i8** %data to i32**
  store i32* %new_policy, i32** %3, align 8
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef nonnull %t, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #13
  %tobool1 = icmp ne i32 %call, 0
  %4 = load i32, i32* %new_policy, align 4
  %cmp = icmp eq i32 %4, -1
  %or.cond = select i1 %tobool1, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  call void @mm_compute_batch(i32 noundef %4) #13
  %5 = load i32, i32* %new_policy, align 4
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @schedule_on_each_cpu(void (%struct.work_struct*)* noundef nonnull @sync_overcommit_as) #13
  %.pre = load i32, i32* %new_policy, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %6 = phi i32 [ %.pre, %if.then4 ], [ %5, %if.end ]
  store i32 %6, i32* @sysctl_overcommit_memory, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call7 = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef 0, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end6 ], [ %call7, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_compute_batch(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_on_each_cpu(void (%struct.work_struct*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @sync_overcommit_as(%struct.work_struct* nocapture noundef readnone %dummy) #0 {
entry:
  call void @percpu_counter_sync(%struct.percpu_counter* noundef nonnull @vm_committed_as) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @overcommit_kbytes_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #13
  %cmp = icmp eq i32 %call, 0
  %tobool = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @sysctl_overcommit_ratio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @vm_commit_limit() local_unnamed_addr #8 {
entry:
  %0 = load i64, i64* @sysctl_overcommit_kbytes, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shr = lshr i64 %0, 2
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call fastcc i64 @totalram_pages() #12
  %1 = load i32, i32* @sysctl_overcommit_ratio, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %call, %conv
  %div = udiv i64 %mul, 100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %allowed.0 = phi i64 [ %shr, %if.then ], [ %div, %if.else ]
  ret i64 %allowed.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #8 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vm_memory_committed() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @percpu_counter_sum_positive() #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @percpu_counter_sum_positive() unnamed_addr #0 {
entry:
  %call = call i64 @__percpu_counter_sum(%struct.percpu_counter* noundef nonnull @vm_committed_as) #13
  %0 = icmp sgt i64 %call, 0
  %cond = select i1 %0, i64 %call, i64 0
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__vm_enough_memory(%struct.mm_struct* noundef readonly %mm, i64 noundef %pages, i32 noundef %cap_sys_admin) local_unnamed_addr #0 {
entry:
  call fastcc void @vm_acct_memory(i64 noundef %pages) #12
  %0 = load i32, i32* @sysctl_overcommit_memory, align 4
  switch i32 %0, label %if.end6 [
    i32 1, label %cleanup
    i32 0, label %if.then2
  ]

if.then2:                                         ; preds = %entry
  %call = call fastcc i64 @totalram_pages() #12
  %cmp3 = icmp ult i64 %call, %pages
  br i1 %cmp3, label %error, label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = call i64 @vm_commit_limit() #12
  %tobool.not = icmp eq i32 %cap_sys_admin, 0
  %1 = load i64, i64* @sysctl_admin_reserve_kbytes, align 8
  %shr = lshr i64 %1, 2
  %sub = select i1 %tobool.not, i64 %shr, i64 0
  %allowed.0 = sub i64 %call7, %sub
  %tobool10.not = icmp eq %struct.mm_struct* %mm, null
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end6
  %2 = load i64, i64* @sysctl_user_reserve_kbytes, align 8
  %shr12 = lshr i64 %2, 2
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 19
  %3 = load i64, i64* %total_vm, align 8
  %div = lshr i64 %3, 5
  %cmp13 = icmp ult i64 %div, %shr12
  %cond = select i1 %cmp13, i64 %div, i64 %shr12
  %sub14 = sub i64 %allowed.0, %cond
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end6
  %allowed.1 = phi i64 [ %sub14, %if.then11 ], [ %allowed.0, %if.end6 ]
  %call16 = call fastcc i64 @percpu_counter_read_positive() #12
  %cmp17 = icmp slt i64 %call16, %allowed.1
  br i1 %cmp17, label %cleanup, label %error

error:                                            ; preds = %if.end15, %if.then2
  call fastcc void @vm_unacct_memory(i64 noundef %pages) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then2, %entry, %error
  %retval.0 = phi i32 [ -12, %error ], [ 0, %entry ], [ 0, %if.then2 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_acct_memory(i64 noundef %pages) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef nonnull @vm_committed_as, i64 noundef %pages, i32 noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @percpu_counter_read_positive() unnamed_addr #8 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.percpu_counter, %struct.percpu_counter* @vm_committed_as, i64 0, i32 1), align 8
  %1 = icmp sgt i64 %0, 0
  %. = select i1 %1, i64 %0, i64 0
  ret i64 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_unacct_memory(i64 noundef %pages) unnamed_addr #0 {
entry:
  %sub = sub i64 0, %pages
  call fastcc void @vm_acct_memory(i64 noundef %sub) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_cmdline(%struct.task_struct* noundef %task, i8* noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %call = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %task) #13
  %tobool.not = icmp eq %struct.mm_struct* %call, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %arg_end1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call, i64 0, i32 0, i32 36
  %0 = load i64, i64* %arg_end1, align 8
  %tobool2.not = icmp eq i64 %0, 0
  br i1 %tobool2.not, label %out_mm, label %if.end4

if.end4:                                          ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call, i64 0, i32 0, i32 27, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %arg_start5 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call, i64 0, i32 0, i32 35
  %1 = load i64, i64* %arg_start5, align 8
  %2 = load i64, i64* %arg_end1, align 8
  %env_start7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call, i64 0, i32 0, i32 37
  %3 = load i64, i64* %env_start7, align 8
  %env_end8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call, i64 0, i32 0, i32 38
  %4 = load i64, i64* %env_end8, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  %sub = sub i64 %2, %1
  %conv = trunc i64 %sub to i32
  %cmp = icmp ugt i32 %conv, %buflen
  %spec.select = select i1 %cmp, i32 %buflen, i32 %conv
  %call13 = call i32 @access_process_vm(%struct.task_struct* noundef %task, i64 noundef %1, i8* noundef %buffer, i32 noundef %spec.select, i32 noundef 16) #13
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true, label %out_mm

land.lhs.true:                                    ; preds = %if.end4
  %sub16 = add nsw i32 %call13, -1
  %5 = zext i32 %sub16 to i64
  %arrayidx = getelementptr i8, i8* %buffer, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %cmp18.not = icmp ne i8 %6, 0
  %cmp21 = icmp ult i32 %conv, %buflen
  %or.cond = and i1 %cmp21, %cmp18.not
  br i1 %or.cond, label %if.then23, label %out_mm

if.then23:                                        ; preds = %land.lhs.true
  %conv2488 = zext i32 %call13 to i64
  %call25 = call i64 @strnlen(i8* noundef %buffer, i64 noundef %conv2488) #13
  %conv26 = trunc i64 %call25 to i32
  %cmp27 = icmp ugt i32 %call13, %conv26
  br i1 %cmp27, label %out_mm, label %if.else

if.else:                                          ; preds = %if.then23
  %sub30 = sub i64 %4, %3
  %conv31 = trunc i64 %sub30 to i32
  %sub32 = sub i32 %buflen, %call13
  %cmp33 = icmp ult i32 %sub32, %conv31
  %spec.select86 = select i1 %cmp33, i32 %sub32, i32 %conv31
  %add.ptr = getelementptr i8, i8* %buffer, i64 %conv2488
  %call38 = call i32 @access_process_vm(%struct.task_struct* noundef %task, i64 noundef %3, i8* noundef %add.ptr, i32 noundef %spec.select86, i32 noundef 16) #13
  %add = add i32 %call38, %call13
  %conv39 = sext i32 %add to i64
  %call40 = call i64 @strnlen(i8* noundef %buffer, i64 noundef %conv39) #13
  %conv41 = trunc i64 %call40 to i32
  br label %out_mm

out_mm:                                           ; preds = %if.then23, %if.end4, %land.lhs.true, %if.else, %if.end
  %res.0 = phi i32 [ %conv41, %if.else ], [ %call13, %land.lhs.true ], [ %call13, %if.end4 ], [ 0, %if.end ], [ %conv26, %if.then23 ]
  call void @mmput(%struct.mm_struct* noundef nonnull %call) #13
  br label %out

out:                                              ; preds = %entry, %out_mm
  %res.1 = phi i32 [ %res.0, %out_mm ], [ 0, %entry ]
  ret i32 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @access_process_vm(%struct.task_struct* noundef, i64 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @memcmp_pages(%struct.page* noundef %page1, %struct.page* noundef %page2) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page1) #12
  %call1 = call fastcc i8* @kmap_atomic(%struct.page* noundef %page2) #12
  %call2 = call i32 @memcmp(i8* noundef %call, i8* noundef %call1, i64 noundef 4096) #13
  call fastcc void @__kunmap_atomic() #12
  call fastcc void @__kunmap_atomic() #12
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  call fastcc void @pagefault_disable() #12
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mem_dump_obj(i8* noundef %object) local_unnamed_addr #0 {
entry:
  %call = call i1 @kmem_valid_obj(i8* noundef %object) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @kmem_dump_obj(i8* noundef %object) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i1 @vmalloc_dump_obj(i8* noundef %object) #13
  br i1 %call1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint i8* %object to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  br i1 %cmp, label %cond.end, label %if.else

cond.end:                                         ; preds = %if.end3
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %shr = lshr i64 %add, 12
  %call10 = call i32 @pfn_is_map_memory(i64 noundef %shr) #13
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.else, label %do.end

if.else:                                          ; preds = %if.end3, %cond.end
  %switch.selectcmp = icmp eq i8* %object, inttoptr (i64 16 to i8*)
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)
  %switch.selectcmp35 = icmp eq i8* %object, null
  %switch.select36 = select i1 %switch.selectcmp35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %switch.select
  br label %do.end

do.end:                                           ; preds = %if.else, %cond.end
  %type.0 = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %cond.end ], [ %switch.select36, %if.else ]
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %type.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kmem_valid_obj(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_dump_obj(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @vmalloc_dump_obj(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_is_map_memory(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_offline_freeze() local_unnamed_addr #0 {
entry:
  call void @down_read(%struct.rw_semaphore* noundef nonnull @page_offline_rwsem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_offline_thaw() local_unnamed_addr #0 {
entry:
  call void @up_read(%struct.rw_semaphore* noundef nonnull @page_offline_rwsem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_offline_begin() local_unnamed_addr #0 {
entry:
  call void @down_write(%struct.rw_semaphore* noundef nonnull @page_offline_rwsem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_offline_end() local_unnamed_addr #0 {
entry:
  call void @up_write(%struct.rw_semaphore* noundef nonnull @page_offline_rwsem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #12
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !15

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #14, !srcloc !18
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #14, !srcloc !19
  call void asm sideeffect "hint #20", "~{memory}"() #14, !srcloc !20
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #14, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_random_u64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_sync(%struct.percpu_counter* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(%struct.percpu_counter* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !23
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !27
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2148888312}
!9 = !{i64 1376249}
!10 = !{i64 2155292457}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 4000000, i32 4001}
!13 = !{i64 2155299403}
!14 = !{i64 2149305997}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2154444944}
!17 = !{i64 2154447202}
!18 = !{i64 4607715, i64 4607798, i64 4608022, i64 4608242, i64 4608265}
!19 = !{i64 4612417, i64 4612441}
!20 = !{i64 2152127256}
!21 = !{i64 2148013715, i64 2148014229, i64 2148014259, i64 2148014285, i64 2148014317, i64 2148014346}
!22 = !{i64 2149562675}
!23 = !{i64 2148072952, i64 2148072985, i64 2148073038, i64 2148073097, i64 2148073131, i64 2148073186, i64 2148073215, i64 2148073235}
!24 = !{i64 2149569956}
!25 = !{i64 2149362186}
!26 = !{i64 2152132449}
!27 = !{i64 2152132656}
