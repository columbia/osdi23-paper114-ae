; ModuleID = 'mm/madvise.c'
source_filename = "mm/madvise.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mm_walk_ops = type { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)*, i32 (i64, i64, i32, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)*, i32 (i64, i64, %struct.mm_walk*)*, i32 (i64, i64, %struct.mm_walk*)*, void (%struct.mm_walk*)* }
%struct.pgd_t = type { i64 }
%struct.mm_walk = type { %struct.mm_walk_ops*, %struct.mm_struct*, %struct.pgd_t*, %struct.vm_area_struct*, i32, i8, i8* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.52, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.32 }
%union.anon.32 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.18 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.18 = type { %struct.callback_head }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.22, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.54, %struct.list_head, %struct.list_head, %union.anon.55 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.9, i8* }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.56 }
%union.anon.56 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.5, %union.anon.77, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.77 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.58 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%union.anon.81 = type { %struct.pipe_inode_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.21, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.21 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.23, %union.anon.24, %union.anon.25, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.30, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.23 = type { %struct.hlist_node }
%union.anon.24 = type { %struct.rb_node }
%union.anon.25 = type { %struct.anon.29 }
%struct.anon.29 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.30 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.27, %union.anon.28, i32 }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
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
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.13, i64, i32 }
%union.anon.13 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.20, i32 }
%union.anon.20 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
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
%union.anon.22 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [48 x i8] }
%struct.anon.15 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.16, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.3, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.4, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.3 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.4 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.82, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.82 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mmu_gather = type { %struct.mm_struct*, %struct.mmu_table_batch*, i64, i64, i16, i32, %struct.mmu_gather_batch*, %struct.mmu_gather_batch, [8 x %struct.page*] }
%struct.mmu_table_batch = type { %struct.callback_head, i32, [0 x i8*] }
%struct.mmu_gather_batch = type { %struct.mmu_gather_batch*, i32, i32, [0 x %struct.page*] }
%struct.mempolicy = type {}
%struct.madvise_walk_private = type { %struct.mmu_gather*, i8 }
%struct.mmu_notifier_range = type { i64, i64 }

@cold_walk_ops = internal constant %struct.mm_walk_ops { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* @madvise_cold_or_pageout_pte_range, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, i32, %struct.mm_walk*)* null, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, void (%struct.mm_walk*)* null }, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@madvise_free_walk_ops = internal constant %struct.mm_walk_ops { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* null, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* @madvise_free_pte_range, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, i32, %struct.mm_walk*)* null, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, i32 (i64, i64, %struct.mm_walk*)* null, void (%struct.mm_walk*)* null }, align 8
@madvise_populate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\014%s: unhandled return value: %ld\0A\00", align 1
@__func__.madvise_populate = private unnamed_addr constant [17 x i8] c"madvise_populate\00", align 1
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_madvise(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %len_in, i32 noundef %behavior) local_unnamed_addr #0 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %plug = alloca %struct.blk_plug, align 8
  %0 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8, !annotation !7
  %1 = bitcast %struct.blk_plug* %plug to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !7
  %shl.i = shl i64 %start, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %start
  %call2 = call fastcc i1 @madvise_behavior_valid(i32 noundef %behavior) #13
  %and3 = and i64 %and, 4095
  %cmp = icmp eq i64 %and3, 0
  %or.cond135 = select i1 %call2, i1 %cmp, i1 false
  br i1 %or.cond135, label %if.end5, label %cleanup

if.end5:                                          ; preds = %entry
  %add = add i64 %len_in, 4095
  %and6 = and i64 %add, -4096
  %tobool = icmp eq i64 %len_in, 0
  %tobool7 = icmp ne i64 %and6, 0
  %or.cond = or i1 %tobool, %tobool7
  br i1 %or.cond, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end5
  %add10 = add i64 %and, %and6
  %cmp11 = icmp ult i64 %add10, %and
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp eq i64 %and6, 0
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end13
  %call17 = call fastcc i32 @madvise_need_mmap_write(i32 noundef %behavior) #13
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  %call20 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) #13
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %cleanup

if.else:                                          ; preds = %if.end16
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.else
  %call25 = call %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* noundef %mm, i64 noundef %and, %struct.vm_area_struct** noundef nonnull %prev) #14
  %tobool26.not = icmp eq %struct.vm_area_struct* %call25, null
  br i1 %tobool26.not, label %if.end30, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end24
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call25, i64 0, i32 0
  %2 = load i64, i64* %vm_start, align 8
  %cmp28 = icmp ugt i64 %and, %2
  br i1 %cmp28, label %if.then29, label %if.end33.preheader

if.then29:                                        ; preds = %land.lhs.true27
  store %struct.vm_area_struct* %call25, %struct.vm_area_struct** %prev, align 8
  br label %if.end33.preheader

if.end30:                                         ; preds = %if.end24
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #14
  br label %out

if.end33.preheader:                               ; preds = %if.then29, %land.lhs.true27
  call void @blk_start_plug(%struct.blk_plug* noundef nonnull %plug) #14
  br label %if.end33

if.end33:                                         ; preds = %if.end33.preheader, %if.end65
  %start.addr.0153 = phi i64 [ %start.addr.2139, %if.end65 ], [ %and, %if.end33.preheader ]
  %unmapped_error.0152 = phi i32 [ %unmapped_error.1, %if.end65 ], [ 0, %if.end33.preheader ]
  %vma.0151 = phi %struct.vm_area_struct* [ %vma.1, %if.end65 ], [ %call25, %if.end33.preheader ]
  %vm_start34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0151, i64 0, i32 0
  %3 = load i64, i64* %vm_start34, align 8
  %cmp35 = icmp ult i64 %start.addr.0153, %3
  br i1 %cmp35, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end33
  %cmp38.not = icmp ult i64 %3, %add10
  br i1 %cmp38.not, label %if.end41, label %out

if.end41:                                         ; preds = %if.then36, %if.end33
  %unmapped_error.1 = phi i32 [ -12, %if.then36 ], [ %unmapped_error.0152, %if.end33 ]
  %start.addr.1 = phi i64 [ %3, %if.then36 ], [ %start.addr.0153, %if.end33 ]
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0151, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  %cmp42 = icmp ult i64 %add10, %4
  %spec.select = select i1 %cmp42, i64 %add10, i64 %4
  %call45 = call fastcc i64 @madvise_vma(%struct.vm_area_struct* noundef nonnull %vma.0151, %struct.vm_area_struct** noundef nonnull %prev, i64 noundef %start.addr.1, i64 noundef %spec.select, i32 noundef %behavior) #13
  %conv = trunc i64 %call45 to i32
  %tobool46.not = icmp eq i32 %conv, 0
  br i1 %tobool46.not, label %if.end48, label %out.loopexit.split.loop.exit

if.end48:                                         ; preds = %if.end41
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %tobool49.not = icmp eq %struct.vm_area_struct* %5, null
  br i1 %tobool49.not, label %if.end56, label %if.end56.thread

if.end56:                                         ; preds = %if.end48
  %cmp57.not = icmp ugt i64 %add10, %4
  br i1 %cmp57.not, label %if.else63, label %out

if.end56.thread:                                  ; preds = %if.end48
  %vm_end51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i64 0, i32 1
  %6 = load i64, i64* %vm_end51, align 8
  %cmp52 = icmp ult i64 %spec.select, %6
  %spec.select134 = select i1 %cmp52, i64 %6, i64 %spec.select
  %cmp57.not137 = icmp ult i64 %spec.select134, %add10
  br i1 %cmp57.not137, label %if.then62, label %out

if.then62:                                        ; preds = %if.end56.thread
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i64 0, i32 2
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  br label %if.end65

if.else63:                                        ; preds = %if.end56
  %call64 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %spec.select) #14
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then62
  %start.addr.2139 = phi i64 [ %spec.select134, %if.then62 ], [ %spec.select, %if.else63 ]
  %vma.1 = phi %struct.vm_area_struct* [ %7, %if.then62 ], [ %call64, %if.else63 ]
  %tobool31.not = icmp eq %struct.vm_area_struct* %vma.1, null
  br i1 %tobool31.not, label %out, label %if.end33

out.loopexit.split.loop.exit:                     ; preds = %if.end41
  %conv.le = trunc i64 %call45 to i32
  br label %out

out:                                              ; preds = %if.end56.thread, %if.end56, %if.then36, %if.end65, %out.loopexit.split.loop.exit, %if.end30
  %error.0 = phi i32 [ -12, %if.end30 ], [ %conv.le, %out.loopexit.split.loop.exit ], [ %unmapped_error.1, %if.end56.thread ], [ %unmapped_error.1, %if.end56 ], [ -12, %if.then36 ], [ -12, %if.end65 ]
  call void @blk_finish_plug(%struct.blk_plug* noundef nonnull %plug) #14
  br i1 %tobool18.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %out
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) #13
  br label %cleanup

if.else68:                                        ; preds = %out
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.else68, %if.then19, %if.end13, %if.end9, %if.end5, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.end5 ], [ -22, %if.end9 ], [ 0, %if.end13 ], [ -4, %if.then19 ], [ %error.0, %if.else68 ], [ %error.0, %if.then67 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @madvise_behavior_valid(i32 noundef %behavior) unnamed_addr #3 {
entry:
  %0 = icmp ult i32 %behavior, 24
  %switch.cast = trunc i32 %behavior to i24
  %switch.downshift = lshr i24 -61665, %switch.cast
  %1 = and i24 %switch.downshift, 1
  %switch.masked = icmp ne i24 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @madvise_need_mmap_write(i32 noundef %behavior) unnamed_addr #3 {
entry:
  switch i32 %behavior, label %sw.default [
    i32 9, label %return
    i32 3, label %return
    i32 4, label %return
    i32 20, label %return
    i32 21, label %return
    i32 8, label %return
    i32 22, label %return
    i32 23, label %return
  ]

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* noundef, i64 noundef, %struct.vm_area_struct** noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(%struct.blk_plug* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @madvise_vma(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef %prev, i64 noundef %start, i64 noundef %end, i32 noundef %behavior) unnamed_addr #0 {
entry:
  switch i32 %behavior, label %sw.default [
    i32 9, label %sw.bb
    i32 3, label %sw.bb1
    i32 20, label %sw.bb3
    i32 21, label %sw.bb5
    i32 8, label %sw.bb7
    i32 4, label %sw.bb7
    i32 22, label %sw.bb9
    i32 23, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i64 @madvise_remove(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** noundef %prev, i64 noundef %start, i64 noundef %end) #13
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = call fastcc i64 @madvise_willneed(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** noundef %prev, i64 noundef %start, i64 noundef %end) #13
  br label %return

sw.bb3:                                           ; preds = %entry
  %call4 = call fastcc i64 @madvise_cold(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** noundef %prev, i64 noundef %start, i64 noundef %end) #13
  br label %return

sw.bb5:                                           ; preds = %entry
  %call6 = call fastcc i64 @madvise_pageout(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** noundef %prev, i64 noundef %start, i64 noundef %end) #13
  br label %return

sw.bb7:                                           ; preds = %entry, %entry
  %call8 = call fastcc i64 @madvise_dontneed_free(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** noundef %prev, i64 noundef %start, i64 noundef %end, i32 noundef %behavior) #13
  br label %return

sw.bb9:                                           ; preds = %entry, %entry
  %call10 = call fastcc i64 @madvise_populate(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** noundef %prev, i64 noundef %start, i64 noundef %end, i32 noundef %behavior) #13
  br label %return

sw.default:                                       ; preds = %entry
  %call11 = call fastcc i64 @madvise_behavior(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** noundef %prev, i64 noundef %start, i64 noundef %end, i32 noundef %behavior) #13
  br label %return

return:                                           ; preds = %sw.default, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i64 [ %call11, %sw.default ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(%struct.blk_plug* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_madvise(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_madvise(i64 noundef %0, i64 noundef %1, i64 noundef %2) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_madvise(i64 noundef %start, i64 noundef %len_in, i64 noundef %behavior) unnamed_addr #0 {
entry:
  %conv = trunc i64 %behavior to i32
  %call = call fastcc i64 @__do_sys_madvise(i64 noundef %start, i64 noundef %len_in, i32 noundef %conv) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_process_madvise(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_process_madvise(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_process_madvise(i64 noundef %pidfd, i64 noundef %vec, i64 noundef %vlen, i64 noundef %behavior, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pidfd to i32
  %0 = inttoptr i64 %vec to %struct.iovec*
  %conv1 = trunc i64 %behavior to i32
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_process_madvise(i32 noundef %conv, %struct.iovec* noundef %0, i64 noundef %vlen, i32 noundef %conv1, i32 noundef %conv2) #13
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @madvise_remove(%struct.vm_area_struct* nocapture noundef readonly %vma, %struct.vm_area_struct** nocapture noundef writeonly %prev, i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %and = and i64 %1, 8192
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %2 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool1.not = icmp eq %struct.file* %2, null
  br i1 %tobool1.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 17
  %3 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %tobool2.not = icmp eq %struct.address_space* %3, null
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %3, i64 0, i32 0
  %4 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool5.not = icmp eq %struct.inode* %4, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false3
  %and9 = and i64 %1, 10
  %cmp.not = icmp eq i64 %and9, 10
  br i1 %cmp.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end7
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %5 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %start, %5
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %6 = load i64, i64* %vm_pgoff, align 8
  %shl = shl i64 %6, 12
  %add = add i64 %sub, %shl
  call fastcc void @get_file(%struct.file* noundef nonnull %2) #13
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %0) #13
  %sub15 = sub i64 %end, %start
  %call16 = call i32 @vfs_fallocate(%struct.file* noundef nonnull %2, i32 noundef 3, i64 noundef %add, i64 noundef %sub15) #14
  call void @fput(%struct.file* noundef nonnull %2) #14
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %0) #13
  %conv = sext i32 %call16 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %lor.lhs.false, %lor.lhs.false3, %entry, %if.end11
  %retval.0 = phi i64 [ %conv, %if.end11 ], [ -22, %entry ], [ -22, %lor.lhs.false3 ], [ -22, %lor.lhs.false ], [ -22, %if.end ], [ -13, %if.end7 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @madvise_willneed(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef writeonly %prev, i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %prev, align 8
  %tobool.not = icmp eq %struct.file* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8
  call fastcc void @get_file(%struct.file* noundef nonnull %1) #13
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %2 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %start, %2
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %3 = load i64, i64* %vm_pgoff, align 8
  %shl = shl i64 %3, 12
  %add = add i64 %sub, %shl
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %0) #13
  %sub5 = sub i64 %end, %start
  %call6 = call i32 @vfs_fadvise(%struct.file* noundef nonnull %1, i64 noundef %add, i64 noundef %sub5, i32 noundef 3) #14
  call void @fput(%struct.file* noundef nonnull %1) #14
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ 0, %if.end ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @madvise_cold(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef writeonly %prev, i64 noundef %start_addr, i64 noundef %end_addr) unnamed_addr #0 {
entry:
  %tlb = alloca %struct.mmu_gather, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %1 = bitcast %struct.mmu_gather* %tlb to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !7
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %prev, align 8
  %call = call fastcc i1 @can_madv_lru_vma(%struct.vm_area_struct* noundef %vma) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @lru_add_drain() #14
  call void @tlb_gather_mmu(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %0) #14
  call fastcc void @madvise_cold_page_range(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %start_addr, i64 noundef %end_addr) #13
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ 0, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @madvise_pageout(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef writeonly %prev, i64 noundef %start_addr, i64 noundef %end_addr) unnamed_addr #0 {
entry:
  %tlb = alloca %struct.mmu_gather, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %1 = bitcast %struct.mmu_gather* %tlb to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !7
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %prev, align 8
  %call = call fastcc i1 @can_madv_lru_vma(%struct.vm_area_struct* noundef %vma) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @can_do_pageout(%struct.vm_area_struct* noundef %vma) #13
  br i1 %call1, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  call void @lru_add_drain() #14
  call void @tlb_gather_mmu(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %0) #14
  call fastcc void @madvise_pageout_page_range(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %start_addr, i64 noundef %end_addr) #13
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i64 [ 0, %if.end3 ], [ -22, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @madvise_dontneed_free(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef writeonly %prev, i64 noundef %start, i64 noundef %end, i32 noundef %behavior) unnamed_addr #0 {
entry:
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %prev, align 8
  %call = call fastcc i1 @can_madv_lru_vma(%struct.vm_area_struct* noundef %vma) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %behavior, label %cleanup [
    i32 4, label %if.then17
    i32 8, label %if.then20
  ]

if.then17:                                        ; preds = %if.end
  call fastcc void @madvise_dontneed_single_vma(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end) #13
  br label %cleanup

if.then20:                                        ; preds = %if.end
  %call21 = call fastcc i32 @madvise_free_single_vma(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end) #13
  %conv = sext i32 %call21 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then20, %if.then17
  %retval.0 = phi i64 [ 0, %if.then17 ], [ %conv, %if.then20 ], [ -22, %entry ], [ -22, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @madvise_populate(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef writeonly %prev, i64 noundef %start, i64 noundef %end, i32 noundef %behavior) unnamed_addr #0 {
entry:
  %locked = alloca i32, align 4
  %cmp = icmp eq i32 %behavior, 23
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %1 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  store i32 1, i32* %locked, align 4
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %prev, align 8
  %cmp170 = icmp ult i64 %start, %end
  br i1 %cmp170, label %while.body, label %cleanup

while.body:                                       ; preds = %entry, %if.end38
  %vma.addr.074 = phi %struct.vm_area_struct* [ %vma.addr.2, %if.end38 ], [ %vma, %entry ]
  %start.addr.071 = phi i64 [ %add, %if.end38 ], [ %start, %entry ]
  %tobool.not = icmp eq %struct.vm_area_struct* %vma.addr.074, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.074, i64 0, i32 1
  %2 = load i64, i64* %vm_end, align 8
  %cmp2.not = icmp ult i64 %start.addr.071, %2
  br i1 %cmp2.not, label %if.end7, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %0, i64 noundef %start.addr.071) #14
  %tobool3.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.then
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %cmp5 = icmp ult i64 %start.addr.071, %3
  br i1 %cmp5, label %cleanup, label %lor.lhs.false4.if.end7_crit_edge

lor.lhs.false4.if.end7_crit_edge:                 ; preds = %lor.lhs.false4
  %vm_end8.phi.trans.insert = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 1
  %.pre = load i64, i64* %vm_end8.phi.trans.insert, align 8
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false4.if.end7_crit_edge, %lor.lhs.false
  %4 = phi i64 [ %.pre, %lor.lhs.false4.if.end7_crit_edge ], [ %2, %lor.lhs.false ]
  %vma.addr.1 = phi %struct.vm_area_struct* [ %call, %lor.lhs.false4.if.end7_crit_edge ], [ %vma.addr.074, %lor.lhs.false ]
  %cmp9 = icmp ugt i64 %4, %end
  %cond = select i1 %cmp9, i64 %end, i64 %4
  %call11 = call i64 @faultin_vma_page_range(%struct.vm_area_struct* noundef nonnull %vma.addr.1, i64 noundef %start.addr.071, i64 noundef %cond, i1 noundef %cmp, i32* noundef nonnull %locked) #14
  %5 = load i32, i32* %locked, align 4
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %0) #13
  store i32 1, i32* %locked, align 4
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end7
  %vma.addr.2 = phi %struct.vm_area_struct* [ %vma.addr.1, %if.end7 ], [ null, %if.then13 ]
  %cmp15 = icmp slt i64 %call11, 0
  br i1 %cmp15, label %if.then16, label %if.end38

if.then16:                                        ; preds = %if.end14
  switch i64 %call11, label %sw.default [
    i64 -4, label %cleanup
    i64 -22, label %cleanup
    i64 -133, label %cleanup
    i64 -14, label %cleanup
    i64 -12, label %sw.bb37
  ]

sw.default:                                       ; preds = %if.then16
  %.b69 = load i1, i1* @madvise_populate.__already_done, align 1
  br i1 %.b69, label %sw.bb37, label %if.then25, !prof !8

if.then25:                                        ; preds = %sw.default
  store i1 true, i1* @madvise_populate.__already_done, align 1
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.madvise_populate, i64 0, i64 0), i64 noundef %call11) #15
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.default, %if.then25, %if.then16
  br label %cleanup

if.end38:                                         ; preds = %if.end14
  %mul = shl i64 %call11, 12
  %add = add i64 %mul, %start.addr.071
  %cmp1 = icmp ult i64 %add, %end
  br i1 %cmp1, label %while.body, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false4, %if.then, %if.end38, %if.then16, %if.then16, %if.then16, %entry, %if.then16, %sw.bb37
  %retval.0 = phi i64 [ -12, %sw.bb37 ], [ %call11, %if.then16 ], [ 0, %entry ], [ %call11, %if.then16 ], [ %call11, %if.then16 ], [ %call11, %if.then16 ], [ -12, %lor.lhs.false4 ], [ -12, %if.then ], [ 0, %if.end38 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @madvise_behavior(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef %prev, i64 noundef %start, i64 noundef %end, i32 noundef %behavior) unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  switch i32 %behavior, label %if.then42 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb4
    i32 10, label %sw.bb7
    i32 11, label %sw.bb9
    i32 18, label %sw.bb13
    i32 19, label %sw.bb21
    i32 16, label %sw.bb23
    i32 17, label %sw.bb25
    i32 15, label %out_convert_errno.thread140
    i32 14, label %out_convert_errno.thread140
  ]

sw.bb:                                            ; preds = %entry
  %and1 = and i64 %1, -98305
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %and3 = and i64 %1, -98305
  %or = or i64 %and3, 32768
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %and5 = and i64 %1, -98305
  %or6 = or i64 %and5, 65536
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %or8 = or i64 %1, 131072
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %and11 = and i64 %1, 16384
  %tobool.not = icmp eq i64 %and11, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %sw.bb9
  %and12 = and i64 %1, -131073
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %2 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool14.not = icmp eq %struct.file* %2, null
  %and16 = and i64 %1, 8
  %tobool17.not = icmp eq i64 %and16, 0
  %or.cond = select i1 %tobool14.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %if.end19, label %out

if.end19:                                         ; preds = %sw.bb13
  %or20 = or i64 %1, 33554432
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %and22 = and i64 %1, -33554433
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %or24 = or i64 %1, 67108864
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %and26 = and i64 %1, 268715008
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %if.end29, label %out

if.end29:                                         ; preds = %sw.bb25
  %and30 = and i64 %1, -67108865
  br label %sw.epilog

out_convert_errno.thread140:                      ; preds = %entry, %entry
  call fastcc void @hugepage_madvise() #13
  unreachable

sw.epilog:                                        ; preds = %if.end29, %sw.bb23, %sw.bb21, %if.end19, %if.end, %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb
  %new_flags.0 = phi i64 [ %and30, %if.end29 ], [ %or24, %sw.bb23 ], [ %and22, %sw.bb21 ], [ %or20, %if.end19 ], [ %and12, %if.end ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb4 ], [ %or, %sw.bb2 ], [ %and1, %sw.bb ]
  %cmp = icmp eq i64 %new_flags.0, %1
  br i1 %cmp, label %if.then42, label %if.end43

if.then42:                                        ; preds = %entry, %sw.epilog
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %prev, align 8
  br label %out

if.end43:                                         ; preds = %sw.epilog
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %3 = load i64, i64* %vm_pgoff, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %4 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %start, %4
  %shr = lshr i64 %sub, 12
  %add = add i64 %shr, %3
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %6 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %vm_file44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %7 = load %struct.file*, %struct.file** %vm_file44, align 8
  %call45 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef %5, i64 noundef %start, i64 noundef %end, i64 noundef %new_flags.0, %struct.anon_vma* noundef %6, %struct.file* noundef %7, i64 noundef %add, %struct.mempolicy* noundef null) #14
  store %struct.vm_area_struct* %call45, %struct.vm_area_struct** %prev, align 8
  %tobool46.not = icmp eq %struct.vm_area_struct* %call45, null
  br i1 %tobool46.not, label %if.end48, label %out_convert_errno.thread

if.end48:                                         ; preds = %if.end43
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %prev, align 8
  %8 = load i64, i64* %vm_start, align 8
  %cmp50.not = icmp eq i64 %8, %start
  br i1 %cmp50.not, label %if.end61, label %if.then51

if.then51:                                        ; preds = %if.end48
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 13
  %9 = load i32, i32* %map_count, align 8
  %10 = load i32, i32* @sysctl_max_map_count, align 4
  %cmp52.not = icmp slt i32 %9, %10
  br i1 %cmp52.not, label %if.end56, label %out, !prof !8

if.end56:                                         ; preds = %if.then51
  %call57 = call i32 @__split_vma(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef %vma, i64 noundef %start, i32 noundef 1) #14
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end61, label %out_convert_errno

if.end61:                                         ; preds = %if.end56, %if.end48
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %11 = load i64, i64* %vm_end, align 8
  %cmp62.not = icmp eq i64 %11, %end
  br i1 %cmp62.not, label %out_convert_errno.thread, label %if.then64

if.then64:                                        ; preds = %if.end61
  %map_count65 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 13
  %12 = load i32, i32* %map_count65, align 8
  %13 = load i32, i32* @sysctl_max_map_count, align 4
  %cmp66.not = icmp slt i32 %12, %13
  br i1 %cmp66.not, label %if.end76, label %out, !prof !8

if.end76:                                         ; preds = %if.then64
  %call77 = call i32 @__split_vma(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef %vma, i64 noundef %end, i32 noundef 0) #14
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %out_convert_errno.thread, label %out_convert_errno

out_convert_errno.thread:                         ; preds = %if.end76, %if.end61, %if.end43
  %vma.addr.0 = phi %struct.vm_area_struct* [ %vma, %if.end76 ], [ %vma, %if.end61 ], [ %call45, %if.end43 ]
  %vm_flags82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.0, i64 0, i32 8
  store i64 %new_flags.0, i64* %vm_flags82, align 8
  br label %out

out_convert_errno:                                ; preds = %if.end76, %if.end56
  %error.3 = phi i32 [ %call57, %if.end56 ], [ %call77, %if.end76 ]
  %cmp83 = icmp eq i32 %error.3, -12
  %spec.select = select i1 %cmp83, i32 -11, i32 %error.3
  %phi.cast143 = sext i32 %spec.select to i64
  br label %out

out:                                              ; preds = %out_convert_errno.thread, %out_convert_errno, %if.then64, %if.then51, %sw.bb25, %sw.bb13, %sw.bb9, %if.then42
  %error.4 = phi i64 [ 0, %if.then42 ], [ -22, %sw.bb9 ], [ -22, %sw.bb13 ], [ -22, %sw.bb25 ], [ -12, %if.then51 ], [ -12, %if.then64 ], [ 0, %out_convert_errno.thread ], [ %phi.cast143, %out_convert_errno ]
  ret i64 %error.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_file(%struct.file* noundef %f) unnamed_addr #0 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(%struct.file* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #12, !srcloc !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #5 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fadvise(%struct.file* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @can_madv_lru_vma(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #5 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 4203520
  %tobool.not = icmp eq i64 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(%struct.mmu_gather* noundef, %struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @madvise_cold_page_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %addr, i64 noundef %end) unnamed_addr #0 {
entry:
  %walk_private = alloca %struct.madvise_walk_private, align 8
  %0 = bitcast %struct.madvise_walk_private* %walk_private to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %walk_private, i64 0, i32 1
  %2 = bitcast i8* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %tlb1 = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %walk_private, i64 0, i32 0
  store %struct.mmu_gather* %tlb, %struct.mmu_gather** %tlb1, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %3 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call = call i32 @walk_page_range(%struct.mm_struct* noundef %3, i64 noundef %addr, i64 noundef %end, %struct.mm_walk_ops* noundef nonnull @cold_walk_ops, i8* noundef nonnull %0) #14
  call fastcc void @tlb_end_vma(%struct.mmu_gather* noundef %tlb) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(%struct.mmu_gather* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(%struct.mm_struct* noundef, i64 noundef, i64 noundef, %struct.mm_walk_ops* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_end_vma(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #0 {
entry:
  %fullmm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %fullmm, align 8
  %bf.clear = and i16 %bf.load, 1
  %tobool.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @tlb_flush_mmu_tlbonly(%struct.mmu_gather* noundef %tlb) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @madvise_cold_or_pageout_pte_range(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* nocapture noundef readonly %walk) #0 {
entry:
  %page_list = alloca %struct.list_head, align 8
  %private1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  %0 = bitcast i8** %private1 to %struct.madvise_walk_private**
  %1 = load %struct.madvise_walk_private*, %struct.madvise_walk_private** %0, align 8
  %tlb2 = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %1, i64 0, i32 0
  %2 = load %struct.mmu_gather*, %struct.mmu_gather** %tlb2, align 8
  %pageout3 = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %1, i64 0, i32 1
  %3 = load i8, i8* %pageout3, align 8, !range !10
  %tobool.not = icmp eq i8 %3, 0
  %vma5 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma5, align 8
  %5 = bitcast %struct.list_head* %page_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %page_list, i64 0, i32 0
  store %struct.list_head* %page_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %page_list, i64 0, i32 1
  store %struct.list_head* %page_list, %struct.list_head** %prev, align 8
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %call6 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %7) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #13
  %call9 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #13
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call8, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %cmp187 = icmp ult i64 %addr, %end
  br i1 %cmp187, label %for.body, label %do.body91

for.body:                                         ; preds = %if.end, %for.inc
  %addr.addr.0191 = phi i64 [ %add, %for.inc ], [ %addr, %if.end ]
  %pte.0188 = phi %struct.pte_t* [ %incdec.ptr87, %for.inc ], [ %call9, %if.end ]
  %ptent.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.0188, i64 0, i32 0
  %ptent.sroa.0.0.copyload = load i64, i64* %ptent.sroa.0.0..sroa_idx, align 8
  %and = and i64 %ptent.sroa.0.0.copyload, 288230376151711745
  %tobool15.not = icmp eq i64 %and, 0
  br i1 %tobool15.not, label %for.inc, label %if.end17

if.end17:                                         ; preds = %for.body
  %call18 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %4, i64 noundef %addr.addr.0191, i64 %ptent.sroa.0.0.copyload) #14
  %tobool19.not = icmp eq %struct.page* %call18, null
  br i1 %tobool19.not, label %for.inc, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call51 = call fastcc i32 @page_mapcount(%struct.page* noundef nonnull %call18) #13
  %cmp52.not = icmp eq i32 %call51, 1
  br i1 %cmp52.not, label %if.end54, label %for.inc

if.end54:                                         ; preds = %if.end21
  %and56 = and i64 %ptent.sroa.0.0.copyload, 1024
  %tobool57.not = icmp eq i64 %and56, 0
  br i1 %tobool57.not, label %if.end73, label %if.then58

if.then58:                                        ; preds = %if.end54
  %call60 = call fastcc i64 @ptep_get_and_clear_full(%struct.pte_t* noundef %pte.0188) #13
  %call64 = call fastcc i64 @pte_mkold(i64 %call60) #13
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte.0188, i64 %call64) #13
  call fastcc void @tlb_flush_pte_range(%struct.mmu_gather* noundef %2, i64 noundef %addr.addr.0191) #13
  br label %if.end73

if.end73:                                         ; preds = %if.then58, %if.end54
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call18) #14
  %8 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags.i) #14
  br i1 %tobool.not, label %if.else85, label %if.then76

if.then76:                                        ; preds = %if.end73
  %call77 = call i32 @isolate_lru_page(%struct.page* noundef nonnull %call18) #14
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %for.inc

if.then79:                                        ; preds = %if.then76
  %call.i184 = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call18) #14
  %9 = inttoptr i64 %call.i184 to %struct.page*
  %flags.i185 = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i185, align 8
  %11 = and i64 %10, 1048576
  %tobool81.not = icmp eq i64 %11, 0
  br i1 %tobool81.not, label %if.else, label %if.then82

if.then82:                                        ; preds = %if.then79
  call void @putback_lru_page(%struct.page* noundef nonnull %call18) #14
  br label %for.inc

if.else:                                          ; preds = %if.then79
  %lru = getelementptr inbounds %struct.page, %struct.page* %call18, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %lru, %struct.list_head* noundef nonnull %page_list) #13
  br label %for.inc

if.else85:                                        ; preds = %if.end73
  call void @deactivate_page(%struct.page* noundef nonnull %call18) #14
  br label %for.inc

for.inc:                                          ; preds = %if.else85, %if.then82, %if.else, %if.then76, %if.end21, %if.end17, %for.body
  %incdec.ptr87 = getelementptr %struct.pte_t, %struct.pte_t* %pte.0188, i64 1
  %add = add i64 %addr.addr.0191, 4096
  %cmp = icmp ult i64 %add, %end
  br i1 %cmp, label %for.body, label %do.body91

do.body91:                                        ; preds = %for.inc, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  br i1 %tobool.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %do.body91
  %call96 = call i64 @reclaim_pages(%struct.list_head* noundef nonnull %page_list) #14
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %do.body91
  call fastcc void @_cond_resched() #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end97
  %retval.0 = phi i32 [ 0, %if.end97 ], [ -4, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #13
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* nocapture noundef readonly %pmd) unnamed_addr #5 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %1 = load i64, i64* %coerce.dive, align 8
  %and = lshr i64 %1, 12
  %shr2 = and i64 %and, 68719476735
  %add.ptr3 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr2
  %call4 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %add.ptr3) #13
  ret %struct.spinlock* %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #5 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #13
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #13
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef, i64 noundef, i64) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_mapcount(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.then

PageCompound.exit:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.5* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry, %PageCompound.exit
  %call3 = call i32 @__page_mapcount(%struct.page* noundef %page) #14
  br label %return

if.end:                                           ; preds = %PageCompound.exit
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %add = add i32 %5, 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %add, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #13
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get_and_clear_full(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %ptep) #13
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkold(i64 %pte.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 1024) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte_at(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  %and = and i64 %pte.coerce, 288230376151711745
  %tobool.not = icmp ne i64 %and, 0
  %and3 = and i64 %pte.coerce, 18014398509481984
  %tobool4.not = icmp eq i64 %and3, 0
  %or.cond = and i1 %tobool.not, %tobool4.not
  %and7 = and i64 %pte.coerce, 72057594037927936
  %tobool8.not = icmp eq i64 %and7, 0
  %or.cond1 = select i1 %or.cond, i1 %tobool8.not, i1 false
  br i1 %or.cond1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sync_icache_dcache(i64 %pte.coerce) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @tlb_flush_pte_range(%struct.mmu_gather* nocapture noundef %tlb, i64 noundef %address) unnamed_addr #7 {
entry:
  call fastcc void @__tlb_adjust_range(%struct.mmu_gather* noundef %tlb, i64 noundef %address) #13
  %cleared_ptes = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %cleared_ptes, align 8
  %bf.set = or i16 %bf.load, 8
  store i16 %bf.set, i16* %cleared_ptes, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_page(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @reclaim_pages(%struct.list_head* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #13
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #13
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #13
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #13
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #3 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #3 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #13
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #3 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #3 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #14
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #14
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.5* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

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
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #14
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #12, !srcloc !14
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pte_t* %ptep to i8*
  %call11.i = call fastcc i64 @__xchg_case_64(i8* noundef %0) #14
  ret i64 %call11.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #12, !srcloc !17
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #3 {
entry:
  %neg = xor i64 %prot.coerce, -1
  %and = and i64 %neg, %pte.coerce
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i64) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  store i64 %pte.coerce, i64* %pte.sroa.0, align 8
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0, align 8
  store volatile i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload, i64* %pte.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload, 18014398509482049
  %cmp = icmp eq i64 %and, 18014398509481985
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !18
  call void asm sideeffect "isb", "~{memory}"() #12, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__tlb_adjust_range(%struct.mmu_gather* nocapture noundef %tlb, i64 noundef %address) unnamed_addr #7 {
entry:
  %start = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 2
  %0 = load i64, i64* %start, align 8
  %cmp = icmp ult i64 %0, %address
  %cond = select i1 %cmp, i64 %0, i64 %address
  store i64 %cond, i64* %start, align 8
  %end = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 3
  %1 = load i64, i64* %end, align 8
  %add = add i64 %address, 4096
  %cmp3 = icmp ugt i64 %1, %add
  %cond8 = select i1 %cmp3, i64 %1, i64 %add
  store i64 %cond8, i64* %end, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !20
  ret void
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_flush_mmu_tlbonly(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #0 {
entry:
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %0 = and i16 %bf.load, 124
  %1 = icmp eq i16 %0, 0
  br i1 %1, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @tlb_flush(%struct.mmu_gather* noundef %tlb) #13
  call fastcc void @__tlb_reset_range(%struct.mmu_gather* noundef %tlb) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_flush(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #0 {
entry:
  %vma = alloca %struct.vm_area_struct, align 8
  %0 = bitcast %struct.vm_area_struct* %vma to i8*
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %0) #12
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %mm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  %1 = bitcast %struct.vm_area_struct* %vma to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(176) %1, i8 0, i64 176, i1 false)
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  store %struct.mm_struct* %2, %struct.mm_struct** %vm_mm, align 8
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %3 = and i16 %bf.load, 4
  %tobool.not = icmp eq i16 %3, 0
  %bf.clear3 = and i16 %bf.load, 1
  %tobool5.not = icmp eq i16 %bf.clear3, 0
  br i1 %tobool5.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.then
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %2) #13
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call1 = call fastcc i32 @tlb_get_level(%struct.mmu_gather* noundef %tlb) #13
  %call = call fastcc i64 @tlb_get_unmap_size(%struct.mmu_gather* noundef %tlb) #13
  %start = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 2
  %4 = load i64, i64* %start, align 8
  %end = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 3
  %5 = load i64, i64* %end, align 8
  call fastcc void @__flush_tlb_range(%struct.vm_area_struct* noundef nonnull %vma, i64 noundef %4, i64 noundef %5, i64 noundef %call, i1 noundef %tobool.not, i32 noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then7, %if.end9
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__tlb_reset_range(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #7 {
entry:
  %fullmm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %fullmm, align 8
  %bf.clear = and i16 %bf.load, 1
  %tobool.not = icmp eq i16 %bf.clear, 0
  %0 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %0
  %.sink26 = select i1 %tobool.not, i64 %shl, i64 -1
  %not.tobool.not = xor i1 %tobool.not, true
  %.sink = sext i1 %not.tobool.not to i64
  %1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 2
  store i64 %.sink26, i64* %1, align 8
  %2 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 3
  store i64 %.sink, i64* %2, align 8
  %bf.clear15 = and i16 %bf.load, -125
  store i16 %bf.clear15, i16* %fullmm, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @tlb_get_unmap_size(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @tlb_get_unmap_shift(%struct.mmu_gather* noundef %tlb) #13
  %shl = shl nuw i64 1, %call
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @tlb_get_level(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #5 {
entry:
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %0 = and i16 %bf.load, 4
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = and i16 %bf.load, 120
  %trunc = trunc i16 %1 to i7
  switch i7 %trunc, label %if.end52 [
    i7 8, label %return
    i7 16, label %return.fold.split
  ]

if.end52:                                         ; preds = %if.end
  %2 = icmp eq i16 %1, 32
  %spec.select = zext i1 %2 to i32
  br label %return

return.fold.split:                                ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end, %return.fold.split, %if.end52, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 3, %if.end ], [ %spec.select, %if.end52 ], [ 2, %return.fold.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !21
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %0, 48
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %shl) #12, !srcloc !22
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #13
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %shl, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #12, !srcloc !23
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dsb ish", "~{memory}"() #12, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__flush_tlb_range(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start, i64 noundef %end, i64 noundef %stride, i1 noundef %last_level, i32 noundef %tlb_level) unnamed_addr #0 {
entry:
  %sub = add i64 %stride, -1
  %neg = sub i64 0, %stride
  %and = and i64 %neg, %start
  %sub1 = add i64 %end, -1
  %or = or i64 %sub, %sub1
  %add = sub i64 1, %and
  %sub3 = add i64 %add, %or
  %mul = shl i64 %stride, 9
  %cmp = icmp uge i64 %sub3, %mul
  %cmp5 = icmp ugt i64 %sub3, 8589934591
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %0) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !25
  %vm_mm6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm6, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 42, i32 0, i32 0
  %2 = load volatile i64, i64* %counter.i, align 8
  %cmp9.not382 = icmp ult i64 %sub3, 4096
  br i1 %cmp9.not382, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %shr = lshr i64 %sub3, 12
  %shl = shl i64 %2, 48
  %tobool105 = icmp ne i32 %tlb_level, 0
  %and108 = and i32 %tlb_level, 3
  %3 = or i32 %and108, 4
  %or112 = zext i32 %3 to i64
  %shl136 = shl nuw nsw i64 %or112, 44
  %shr193 = lshr i64 %stride, 12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end191
  %start.addr.0384 = phi i64 [ %and, %while.body.lr.ph ], [ %add192, %if.end191 ]
  %pages.0383 = phi i64 [ %shr, %while.body.lr.ph ], [ %sub194, %if.end191 ]
  %shr14 = lshr i64 %start.addr.0384, 12
  %and15 = and i64 %shr14, 17592186044415
  %or16 = or i64 %and15, %shl
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #14
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %last_level, label %do.body, label %do.body100

do.body:                                          ; preds = %while.body
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %do.body
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #14
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %do.body
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 7) #14
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  %or.cond262 = and i1 %tobool105, %retval.0.i
  %or47 = select i1 %or.cond262, i64 %shl136, i64 0
  %arg.0 = or i64 %or47, %or16
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg.0) #12, !srcloc !26
  %call52 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #13
  br i1 %call52, label %do.body54, label %if.end191

do.body54:                                        ; preds = %cpus_have_const_cap.exit
  %call.i.i355 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #14
  %cmp.i.i356 = icmp sgt i32 %call.i.i355, 0
  br i1 %cmp.i.i356, label %if.then3.i359, label %if.else5.i361

if.then3.i359:                                    ; preds = %do.body54
  %call.i9.i357 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #14
  %cmp1.i.i358 = icmp sgt i32 %call.i9.i357, 0
  br label %cpus_have_const_cap.exit363

if.else5.i361:                                    ; preds = %do.body54
  %call6.i360 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #14
  br label %cpus_have_const_cap.exit363

cpus_have_const_cap.exit363:                      ; preds = %if.then3.i359, %if.else5.i361
  %retval.0.i362 = phi i1 [ %cmp1.i.i358, %if.then3.i359 ], [ %call6.i360, %if.else5.i361 ]
  %or.cond264 = and i1 %tobool105, %retval.0.i362
  %or93 = select i1 %or.cond264, i64 %shl136, i64 0
  %or56 = or i64 %or16, %or93
  %arg55.0 = or i64 %or56, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg55.0) #12, !srcloc !27
  br label %if.end191

do.body100:                                       ; preds = %while.body
  br i1 %cmp.i.i, label %if.then3.i368, label %if.else5.i370

if.then3.i368:                                    ; preds = %do.body100
  %call.i9.i366 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #14
  %cmp1.i.i367 = icmp sgt i32 %call.i9.i366, 0
  br label %cpus_have_const_cap.exit372

if.else5.i370:                                    ; preds = %do.body100
  %call6.i369 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #14
  br label %cpus_have_const_cap.exit372

cpus_have_const_cap.exit372:                      ; preds = %if.then3.i368, %if.else5.i370
  %retval.0.i371 = phi i1 [ %cmp1.i.i367, %if.then3.i368 ], [ %call6.i369, %if.else5.i370 ]
  %or.cond266 = and i1 %tobool105, %retval.0.i371
  %or138 = select i1 %or.cond266, i64 %shl136, i64 0
  %arg101.0 = or i64 %or138, %or16
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg101.0) #12, !srcloc !28
  %call143 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #13
  br i1 %call143, label %do.body145, label %if.end191

do.body145:                                       ; preds = %cpus_have_const_cap.exit372
  %call.i.i373 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #14
  %cmp.i.i374 = icmp sgt i32 %call.i.i373, 0
  br i1 %cmp.i.i374, label %if.then3.i377, label %if.else5.i379

if.then3.i377:                                    ; preds = %do.body145
  %call.i9.i375 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #14
  %cmp1.i.i376 = icmp sgt i32 %call.i9.i375, 0
  br label %cpus_have_const_cap.exit381

if.else5.i379:                                    ; preds = %do.body145
  %call6.i378 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #14
  br label %cpus_have_const_cap.exit381

cpus_have_const_cap.exit381:                      ; preds = %if.then3.i377, %if.else5.i379
  %retval.0.i380 = phi i1 [ %cmp1.i.i376, %if.then3.i377 ], [ %call6.i378, %if.else5.i379 ]
  %or.cond268 = and i1 %tobool105, %retval.0.i380
  %or184 = select i1 %or.cond268, i64 %shl136, i64 0
  %or147 = or i64 %or16, %or184
  %arg146.0 = or i64 %or147, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg146.0) #12, !srcloc !29
  br label %if.end191

if.end191:                                        ; preds = %cpus_have_const_cap.exit372, %cpus_have_const_cap.exit381, %cpus_have_const_cap.exit, %cpus_have_const_cap.exit363
  %add192 = add i64 %start.addr.0384, %stride
  %sub194 = sub i64 %pages.0383, %shr193
  %cmp9.not = icmp eq i64 %sub194, 0
  br i1 %cmp9.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end191, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #12, !srcloc !30
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @tlb_get_unmap_shift(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #5 {
entry:
  %cleared_ptes = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %cleared_ptes, align 8
  %0 = and i16 %bf.load, 8
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = and i16 %bf.load, 16
  %tobool5.not = icmp eq i16 %1, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end
  %2 = and i16 %bf.load, 32
  %tobool12.not = icmp eq i16 %2, 0
  br i1 %tobool12.not, label %if.end14, label %return

if.end14:                                         ; preds = %if.end7
  %3 = and i16 %bf.load, 64
  %tobool19.not = icmp eq i16 %3, 0
  %. = select i1 %tobool19.not, i64 12, i64 30
  br label %return

return:                                           ; preds = %if.end14, %if.end7, %if.end, %entry
  %retval.0 = phi i64 [ 12, %entry ], [ 21, %if.end ], [ 30, %if.end7 ], [ %., %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #6 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #14
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #14
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #14
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %and.i = and i32 %num, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @can_do_pageout(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* noundef %vma) #13
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %call4 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %0) #13
  %call5 = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call4) #14
  br i1 %call5, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %if.end2
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %call7 = call fastcc i32 @file_permission(%struct.file* noundef %1) #13
  %cmp = icmp eq i32 %call7, 0
  br label %return

return:                                           ; preds = %if.end2, %lor.rhs, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ false, %if.end ], [ true, %if.end2 ], [ %cmp, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @madvise_pageout_page_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %addr, i64 noundef %end) unnamed_addr #0 {
entry:
  %walk_private = alloca %struct.madvise_walk_private, align 8
  %0 = bitcast %struct.madvise_walk_private* %walk_private to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %walk_private, i64 0, i32 1
  %2 = bitcast i8* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %tlb1 = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %walk_private, i64 0, i32 0
  store %struct.mmu_gather* %tlb, %struct.mmu_gather** %tlb1, align 8
  %pageout = getelementptr inbounds %struct.madvise_walk_private, %struct.madvise_walk_private* %walk_private, i64 0, i32 1
  store i8 1, i8* %pageout, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %3 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call = call i32 @walk_page_range(%struct.mm_struct* noundef %3, i64 noundef %addr, i64 noundef %end, %struct.mm_walk_ops* noundef nonnull @cold_walk_ops, i8* noundef nonnull %0) #14
  call fastcc void @tlb_end_vma(%struct.mmu_gather* noundef %tlb) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #5 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %0, null
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @inode_owner_or_capable(%struct.user_namespace* noundef, %struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @file_permission(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #13
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #13
  %call2 = call i32 @inode_permission(%struct.user_namespace* noundef %call, %struct.inode* noundef %call1, i32 noundef 2) #14
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #13
  ret %struct.user_namespace* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #12, !srcloc !31
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @madvise_dontneed_single_vma(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %sub = sub i64 %end, %start
  call void @zap_page_range(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %sub) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @madvise_free_single_vma(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start_addr, i64 noundef %end_addr) unnamed_addr #0 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %tlb = alloca %struct.mmu_gather, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %1 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast %struct.mmu_gather* %tlb to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !annotation !7
  %call = call fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* noundef %vma) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %3, %start_addr
  %cond = select i1 %cmp, i64 %3, i64 %start_addr
  %start = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  store i64 %cond, i64* %start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  %cmp2.not = icmp ult i64 %cond, %4
  br i1 %cmp2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp7 = icmp ult i64 %4, %end_addr
  %cond11 = select i1 %cmp7, i64 %4, i64 %end_addr
  %end = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  store i64 %cond11, i64* %end, align 8
  %cmp14.not = icmp ugt i64 %cond11, %3
  br i1 %cmp14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end4
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %cond, i64 noundef %cond11) #13
  call void @lru_add_drain() #14
  call void @tlb_gather_mmu(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %0) #14
  call fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %0) #13
  %5 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %6 = load i64, i64* %start, align 8
  %7 = load i64, i64* %end, align 8
  %call22 = call i32 @walk_page_range(%struct.mm_struct* noundef %5, i64 noundef %6, i64 noundef %7, %struct.mm_walk_ops* noundef nonnull @madvise_free_walk_ops, i8* noundef nonnull %2) #14
  call fastcc void @tlb_end_vma(%struct.mmu_gather* noundef nonnull %tlb) #13
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end16
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry ], [ -22, %if.end ], [ -22, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zap_page_range(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* nocapture noundef writeonly %range, i64 noundef %start, i64 noundef %end) unnamed_addr #9 {
entry:
  %start1 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  store i64 %start, i64* %start1, align 8
  %end2 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  store i64 %end, i64* %end2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %mm) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) #13
  %hiwater_rss = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 17
  %0 = load i64, i64* %hiwater_rss, align 8
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %call, i64* %hiwater_rss, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #13
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #13
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #13
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #6 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @madvise_free_pte_range(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* nocapture noundef readonly %walk) #0 {
entry:
  %private = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  %0 = bitcast i8** %private to %struct.mmu_gather**
  %1 = load %struct.mmu_gather*, %struct.mmu_gather** %0, align 8
  %mm1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %1, i64 0, i32 0
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %vma2 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma2, align 8
  %call11 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #13
  %call12 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #13
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call11, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %cmp14.not269 = icmp eq i64 %addr, %end
  br i1 %cmp14.not269, label %do.body143, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %addr.addr.0277 = phi i64 [ %add131, %for.inc ], [ %addr, %entry ]
  %pte.0274 = phi %struct.pte_t* [ %incdec.ptr130, %for.inc ], [ %call12, %entry ]
  %nr_swap.0272 = phi i32 [ %nr_swap.2, %for.inc ], [ 0, %entry ]
  %ptent.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.0274, i64 0, i32 0
  %ptent.sroa.0.0.copyload = load i64, i64* %ptent.sroa.0.0..sroa_idx, align 8
  %tobool16.not = icmp eq i64 %ptent.sroa.0.0.copyload, 0
  br i1 %tobool16.not, label %for.inc, label %if.end18

if.end18:                                         ; preds = %for.body
  %and20 = and i64 %ptent.sroa.0.0.copyload, 288230376151711745
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end35

if.then22:                                        ; preds = %if.end18
  call fastcc void @pte_clear_not_present_full(%struct.pte_t* noundef %pte.0274) #13
  %dec = add i32 %nr_swap.0272, -1
  br label %for.inc

if.end35:                                         ; preds = %if.end18
  %call37 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %3, i64 noundef %addr.addr.0277, i64 %ptent.sroa.0.0.copyload) #14
  %tobool38.not = icmp eq %struct.page* %call37, null
  br i1 %tobool38.not, label %for.inc, label %if.end40

if.end40:                                         ; preds = %if.end35
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call37) #14
  %4 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 8
  %tobool74.not = icmp eq i64 %6, 0
  br i1 %tobool74.not, label %if.end90, label %if.then75

if.then75:                                        ; preds = %if.end40
  %call76 = call fastcc i32 @trylock_page(%struct.page* noundef nonnull %call37) #13
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %for.inc, label %if.end79

if.end79:                                         ; preds = %if.then75
  %call80 = call fastcc i32 @page_mapcount(%struct.page* noundef nonnull %call37) #13
  %cmp81.not = icmp eq i32 %call80, 1
  br i1 %cmp81.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @unlock_page(%struct.page* noundef nonnull %call37) #14
  br label %for.inc

if.end83:                                         ; preds = %if.end79
  %call.i265 = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call37) #14
  %7 = inttoptr i64 %call.i265 to %struct.page*
  %flags.i266 = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %flags.i266) #14
  call void @unlock_page(%struct.page* noundef nonnull %call37) #14
  br label %if.end90

if.end90:                                         ; preds = %if.end83, %if.end40
  %8 = and i64 %ptent.sroa.0.0.copyload, 36028797018964992
  %9 = icmp ne i64 %8, 0
  %10 = and i64 %ptent.sroa.0.0.copyload, 2251799813685376
  %11 = icmp eq i64 %10, 2251799813685248
  %or.cond = or i1 %9, %11
  br i1 %or.cond, label %if.then106, label %if.end129

if.then106:                                       ; preds = %if.end90
  %call112 = call fastcc i64 @ptep_get_and_clear_full(%struct.pte_t* noundef %pte.0274) #13
  %call116 = call fastcc i64 @pte_mkold(i64 %call112) #13
  %call120 = call fastcc i64 @pte_mkclean(i64 %call116) #13
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte.0274, i64 %call120) #13
  call fastcc void @tlb_flush_pte_range(%struct.mmu_gather* noundef %1, i64 noundef %addr.addr.0277) #13
  br label %if.end129

if.end129:                                        ; preds = %if.end90, %if.then106
  call void @mark_page_lazyfree(%struct.page* noundef nonnull %call37) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then75, %if.end35, %for.body, %if.end129, %if.then82, %if.then22
  %nr_swap.2 = phi i32 [ %nr_swap.0272, %if.then82 ], [ %nr_swap.0272, %if.end129 ], [ %nr_swap.0272, %if.then75 ], [ %nr_swap.0272, %if.end35 ], [ %dec, %if.then22 ], [ %nr_swap.0272, %for.body ]
  %incdec.ptr130 = getelementptr %struct.pte_t, %struct.pte_t* %pte.0274, i64 1
  %add131 = add i64 %addr.addr.0277, 4096
  %cmp14.not = icmp eq i64 %add131, %end
  br i1 %cmp14.not, label %out, label %for.body

out:                                              ; preds = %for.inc
  %tobool132.not = icmp eq i32 %nr_swap.2, 0
  br i1 %tobool132.not, label %do.body143, label %if.then133

if.then133:                                       ; preds = %out
  %12 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %13 = inttoptr i64 %12 to %struct.task_struct*
  %mm135 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i64 0, i32 35
  %14 = load %struct.mm_struct*, %struct.mm_struct** %mm135, align 8
  %cmp136 = icmp eq %struct.mm_struct* %14, %2
  br i1 %cmp136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.then133
  call void @sync_mm_rss(%struct.mm_struct* noundef %2) #14
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.then133
  %conv = sext i32 %nr_swap.2 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %2, i64 noundef %conv) #13
  br label %do.body143

do.body143:                                       ; preds = %entry, %if.end138, %out
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  call fastcc void @_cond_resched() #13
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pte_clear_not_present_full(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkclean(i64 %pte.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 36028797018963968) #13
  %call9 = call fastcc i64 @set_pte_bit(i64 %call) #13
  ret i64 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_lazyfree(%struct.page* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i64 noundef %value) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 2
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %value, %struct.atomic64_t* noundef %arrayidx) #14
  call void @mm_trace_rss_stat(%struct.mm_struct* noundef %mm, i32 noundef 2, i64 noundef %call.i.i.i) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @set_pte_bit(i64 %pte.coerce) unnamed_addr #3 {
entry:
  %or = or i64 %pte.coerce, 128
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(%struct.mm_struct* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !32
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @faultin_vma_page_range(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i1 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @hugepage_madvise() unnamed_addr #11 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/huge_mm.h\22; .popsection; .long 14472b - 14470b; .short 420; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !33
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i64 noundef, %struct.anon_vma* noundef, %struct.file* noundef, i64 noundef, %struct.mempolicy* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__split_vma(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_madvise(i64 noundef %start, i64 noundef %len_in, i32 noundef %behavior) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call1 = call i32 @do_madvise(%struct.mm_struct* noundef %2, i64 noundef %start, i64 noundef %len_in, i32 noundef %behavior) #13
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_process_madvise(i32 noundef %pidfd, %struct.iovec* noundef %vec, i64 noundef %vlen, i32 noundef %behavior, i32 noundef %flags) unnamed_addr #0 {
entry:
  %iovstack = alloca [8 x %struct.iovec], align 8
  %iov = alloca %struct.iovec*, align 8
  %iter = alloca %struct.iov_iter, align 8
  %f_flags = alloca i32, align 4
  %0 = bitcast [8 x %struct.iovec]* %iovstack to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !7
  %1 = bitcast %struct.iovec** %iov to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %arraydecay = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %iovstack, i64 0, i64 0
  store %struct.iovec* %arraydecay, %struct.iovec** %iov, align 8
  %2 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !7
  %3 = bitcast i32* %f_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #12
  store i32 0, i32* %f_flags, align 4, !annotation !7
  %cmp.not = icmp eq i32 %flags, 0
  br i1 %cmp.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %conv = trunc i64 %vlen to i32
  %call = call i64 @import_iovec(i32 noundef 0, %struct.iovec* noundef %vec, i32 noundef %conv, i32 noundef 8, %struct.iovec** noundef nonnull %iov, %struct.iov_iter* noundef nonnull %iter) #14
  %cmp1 = icmp slt i64 %call, 0
  br i1 %cmp1, label %out, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.pid* @pidfd_get_pid(i32 noundef %pidfd, i32* noundef nonnull %f_flags) #14
  %4 = bitcast %struct.pid* %call5 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %4) #13
  br i1 %call6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %call8 = call fastcc i64 @PTR_ERR(i8* noundef %4) #13
  br label %free_iov

if.end9:                                          ; preds = %if.end4
  %call10 = call %struct.task_struct* @get_pid_task(%struct.pid* noundef %call5, i32 noundef 0) #14
  %tobool.not = icmp eq %struct.task_struct* %call10, null
  br i1 %tobool.not, label %put_pid, label %if.end12

if.end12:                                         ; preds = %if.end9
  %call13 = call fastcc i1 @process_madvise_behavior_valid(i32 noundef %behavior) #13
  br i1 %call13, label %if.end15, label %release_task

if.end15:                                         ; preds = %if.end12
  %call16 = call %struct.mm_struct* @mm_access(%struct.task_struct* noundef nonnull %call10, i32 noundef 9) #14
  %5 = bitcast %struct.mm_struct* %call16 to i8*
  %call17 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %5) #13
  br i1 %call17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end15
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %5) #13
  br i1 %call19, label %cond.true, label %release_task

cond.true:                                        ; preds = %if.then18
  %call21 = call fastcc i64 @PTR_ERR(i8* noundef %5) #13
  br label %release_task

if.end22:                                         ; preds = %if.end15
  %call23 = call i1 @capable(i32 noundef 23) #14
  br i1 %call23, label %if.end25, label %release_mm

if.end25:                                         ; preds = %if.end22
  %call26 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef nonnull %iter) #13
  %tobool28.not70 = icmp eq i64 %call26, 0
  br i1 %tobool28.not70, label %while.end, label %while.body

while.body:                                       ; preds = %if.end25, %if.end35
  %call29 = call fastcc [2 x i64] @iov_iter_iovec(%struct.iov_iter* noundef nonnull %iter) #13
  %call29.fca.0.extract = extractvalue [2 x i64] %call29, 0
  %call29.fca.1.extract = extractvalue [2 x i64] %call29, 1
  %call30 = call i32 @do_madvise(%struct.mm_struct* noundef %call16, i64 noundef %call29.fca.0.extract, i64 noundef %call29.fca.1.extract, i32 noundef %behavior) #13
  %cmp32 = icmp slt i32 %call30, 0
  br i1 %cmp32, label %while.end.thread, label %if.end35

if.end35:                                         ; preds = %while.body
  call void @iov_iter_advance(%struct.iov_iter* noundef nonnull %iter, i64 noundef %call29.fca.1.extract) #14
  %call27 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef nonnull %iter) #13
  %tobool28.not = icmp eq i64 %call27, 0
  br i1 %tobool28.not, label %while.cond.while.end_crit_edge, label %while.body

while.end.thread:                                 ; preds = %while.body
  %conv31.le72 = sext i32 %call30 to i64
  br label %release_mm

while.cond.while.end_crit_edge:                   ; preds = %if.end35
  %conv31.le77 = zext i32 %call30 to i64
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end25
  %ret.1 = phi i64 [ %conv31.le77, %while.cond.while.end_crit_edge ], [ %call, %if.end25 ]
  %cmp37 = icmp eq i64 %ret.1, 0
  br i1 %cmp37, label %if.then39, label %release_mm

if.then39:                                        ; preds = %while.end
  %call40 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef nonnull %iter) #13
  %sub = sub i64 %call26, %call40
  br label %release_mm

release_mm:                                       ; preds = %while.end.thread, %if.end22, %while.end, %if.then39
  %ret.2 = phi i64 [ %sub, %if.then39 ], [ %ret.1, %while.end ], [ -1, %if.end22 ], [ %conv31.le72, %while.end.thread ]
  call void @mmput(%struct.mm_struct* noundef %call16) #14
  br label %release_task

release_task:                                     ; preds = %cond.true, %if.then18, %if.end12, %release_mm
  %ret.3 = phi i64 [ %ret.2, %release_mm ], [ -22, %if.end12 ], [ %call21, %cond.true ], [ -3, %if.then18 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call10) #13
  br label %put_pid

put_pid:                                          ; preds = %if.end9, %release_task
  %ret.4 = phi i64 [ %ret.3, %release_task ], [ -3, %if.end9 ]
  call void @put_pid(%struct.pid* noundef %call5) #14
  br label %free_iov

free_iov:                                         ; preds = %put_pid, %if.then7
  %ret.5 = phi i64 [ %call8, %if.then7 ], [ %ret.4, %put_pid ]
  %6 = bitcast %struct.iovec** %iov to i8**
  %7 = load i8*, i8** %6, align 8
  call void @kfree(i8* noundef %7) #14
  br label %out

out:                                              ; preds = %entry, %if.end, %free_iov
  %ret.6 = phi i64 [ %call, %if.end ], [ %ret.5, %free_iov ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #12
  ret i64 %ret.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @import_iovec(i32 noundef, %struct.iovec* noundef, i32 noundef, i32 noundef, %struct.iovec** noundef, %struct.iov_iter* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @pidfd_get_pid(i32 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @get_pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @process_madvise_behavior_valid(i32 noundef %behavior) unnamed_addr #3 {
entry:
  %switch.tableidx = add i32 %behavior, -3
  %0 = icmp ult i32 %switch.tableidx, 19
  %switch.cast = trunc i32 %switch.tableidx to i19
  %switch.downshift = lshr i19 -131071, %switch.cast
  %1 = and i19 %switch.downshift, 1
  %switch.masked = icmp ne i19 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @mm_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc [2 x i64] @iov_iter_iovec(%struct.iov_iter* nocapture noundef readonly %iter) unnamed_addr #5 {
entry:
  %iov = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 4, i32 0
  %0 = load %struct.iovec*, %struct.iovec** %iov, align 8
  %iov_base1 = getelementptr inbounds %struct.iovec, %struct.iovec* %0, i64 0, i32 0
  %1 = load i8*, i8** %iov_base1, align 8
  %iov_offset = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 2
  %2 = load i64, i64* %iov_offset, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %2
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 3
  %3 = load i64, i64* %count, align 8
  %iov_len3 = getelementptr inbounds %struct.iovec, %struct.iovec* %0, i64 0, i32 1
  %4 = load i64, i64* %iov_len3, align 8
  %sub = sub i64 %4, %2
  %cmp = icmp ult i64 %3, %sub
  %cond = select i1 %cmp, i64 %3, i64 %sub
  %5 = ptrtoint i8* %add.ptr to i64
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %5, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %cond, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #14
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #12, !srcloc !34
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !8

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !35
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148023667, i64 2148024181, i64 2148024211, i64 2148024237, i64 2148024269, i64 2148024298}
!10 = !{i8 0, i8 2}
!11 = !{i64 1386201}
!12 = !{i64 2149572627}
!13 = !{i64 2148082904, i64 2148082937, i64 2148082990, i64 2148083049, i64 2148083083, i64 2148083138, i64 2148083167, i64 2148083187}
!14 = !{i64 2148054949, i64 2148055619, i64 2148055649, i64 2148055681, i64 2148055713, i64 2148055747, i64 2148055772}
!15 = !{i64 2149579908}
!16 = !{i64 2149372138}
!17 = !{i64 2148104777, i64 2148104809, i64 2148104853, i64 2148104899, i64 2148104925}
!18 = !{i64 2151519601}
!19 = !{i64 2151519650}
!20 = !{i64 2148062631, i64 2148063152, i64 2148063182, i64 2148063208, i64 2148063240, i64 2148063269}
!21 = !{i64 2151317938}
!22 = !{i64 2151319324, i64 2151319049, i64 2151319688, i64 2151319734, i64 2151319740, i64 2151321128, i64 2151319777, i64 2151319795, i64 2151321203, i64 2151321251, i64 2151321299, i64 2151321362, i64 2151321411, i64 2151319873, i64 2151319898, i64 2151319924, i64 2151319930, i64 2151321149, i64 2151319967, i64 2151319973, i64 2151320023, i64 2151320069, i64 2151320102}
!23 = !{i64 2151322170, i64 2151321863, i64 2151322534, i64 2151322580, i64 2151322586, i64 2151323974, i64 2151322623, i64 2151322641, i64 2151324049, i64 2151324097, i64 2151324145, i64 2151324208, i64 2151324257, i64 2151322719, i64 2151322744, i64 2151322770, i64 2151322776, i64 2151323995, i64 2151322813, i64 2151322819, i64 2151322869, i64 2151322915, i64 2151322948}
!24 = !{i64 2151324321}
!25 = !{i64 2151331653}
!26 = !{i64 2151363970, i64 2151363698, i64 2151364332, i64 2151364378, i64 2151364384, i64 2151365772, i64 2151364421, i64 2151364439, i64 2151365846, i64 2151365894, i64 2151365942, i64 2151366005, i64 2151366054, i64 2151364517, i64 2151364542, i64 2151364568, i64 2151364574, i64 2151365793, i64 2151364611, i64 2151364617, i64 2151364667, i64 2151364713, i64 2151364746}
!27 = !{i64 2151401797, i64 2151401525, i64 2151402159, i64 2151402205, i64 2151402211, i64 2151403599, i64 2151402248, i64 2151402266, i64 2151403673, i64 2151403721, i64 2151403769, i64 2151403832, i64 2151403881, i64 2151402344, i64 2151402369, i64 2151402395, i64 2151402401, i64 2151403620, i64 2151402438, i64 2151402444, i64 2151402494, i64 2151402540, i64 2151402573}
!28 = !{i64 2151435301, i64 2151435031, i64 2151435661, i64 2151435707, i64 2151435713, i64 2151437101, i64 2151435750, i64 2151435768, i64 2151437174, i64 2151437222, i64 2151437270, i64 2151437333, i64 2151437382, i64 2151435846, i64 2151435871, i64 2151435897, i64 2151435903, i64 2151437122, i64 2151435940, i64 2151435946, i64 2151435996, i64 2151436042, i64 2151436075}
!29 = !{i64 2151473119, i64 2151472849, i64 2151473479, i64 2151473525, i64 2151473531, i64 2151474919, i64 2151473568, i64 2151473586, i64 2151474992, i64 2151475040, i64 2151475088, i64 2151475151, i64 2151475200, i64 2151473664, i64 2151473689, i64 2151473715, i64 2151473721, i64 2151474940, i64 2151473758, i64 2151473764, i64 2151473814, i64 2151473860, i64 2151473893}
!30 = !{i64 2151488064}
!31 = !{i64 2152358958}
!32 = !{i64 2148024515, i64 2148029224, i64 2148029254, i64 2148029285, i64 2148029317, i64 2148029352, i64 2148029377}
!33 = !{i64 2152471586}
!34 = !{i64 2150252108}
!35 = !{i64 2148000727, i64 2148001401, i64 2148001431, i64 2148001463, i64 2148001497, i64 2148001533, i64 2148001558}
