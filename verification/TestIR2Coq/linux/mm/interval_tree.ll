; ModuleID = 'mm/interval_tree.c'
source_filename = "mm/interval_tree.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rb_augment_callbacks = type { void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.79, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.65, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.44 }
%union.anon.44 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.43, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.43 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.51 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.51 = type { %struct.callback_head }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.34, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.74, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.68 = type { %struct.callback_head }
%union.anon.69 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, {}*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.29 }
%union.anon.29 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.30, %union.anon.31 }
%union.anon.30 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.31 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.page = type { i64, %union.anon.11, %union.anon.28, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.28 = type { %struct.atomic_t }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.72 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.70, %struct.qspinlock }
%union.anon.70 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.72 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.74 = type { %struct.pipe_inode_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.33, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.33 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.35, %union.anon.36, %union.anon.37, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.42, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.35 = type { %struct.hlist_node }
%union.anon.36 = type { %struct.rb_node }
%union.anon.37 = type { %struct.anon.41 }
%struct.anon.41 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.42 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
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
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
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
%union.anon.34 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.64, i32, [12 x i8] }
%union.anon.64 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.66, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.66 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [48 x i8] }
%struct.anon.3 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.4, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.79 = type { %struct.rb_node, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon_vma_chain = type { %struct.vm_area_struct*, %struct.anon_vma*, %struct.list_head, %struct.rb_node, i64 }

@vma_interval_tree_augment = internal constant %struct.rb_augment_callbacks { void (%struct.rb_node*, %struct.rb_node*)* @vma_interval_tree_augment_propagate, void (%struct.rb_node*, %struct.rb_node*)* @vma_interval_tree_augment_copy, void (%struct.rb_node*, %struct.rb_node*)* @vma_interval_tree_augment_rotate }, align 8
@__anon_vma_interval_tree_augment = internal constant %struct.rb_augment_callbacks { void (%struct.rb_node*, %struct.rb_node*)* @__anon_vma_interval_tree_augment_propagate, void (%struct.rb_node*, %struct.rb_node*)* @__anon_vma_interval_tree_augment_copy, void (%struct.rb_node*, %struct.rb_node*)* @__anon_vma_interval_tree_augment_rotate }, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vma_interval_tree_insert(%struct.vm_area_struct* noundef %node, %struct.rb_root_cached* noundef %root) local_unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0, i32 0
  %call = call fastcc i64 @vma_start_pgoff(%struct.vm_area_struct* noundef %node) #8
  %call1 = call fastcc i64 @vma_last_pgoff(%struct.vm_area_struct* noundef %node) #8
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not39 = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not39, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %1 = phi %struct.rb_node* [ %5, %if.end ], [ %0, %entry ]
  %leftmost.0.off040 = phi i1 [ %leftmost.1.off0, %if.end ], [ true, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %1, i64 -4, i32 1
  %2 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 14
  %3 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %4 = load i64, i64* %3, align 8
  %cmp = icmp ult i64 %4, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i64 %call1, i64* %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call4 = call fastcc i64 @vma_start_pgoff(%struct.vm_area_struct* noundef %2) #8
  %cmp5 = icmp ult i64 %call, %call4
  %leftmost.1.off0 = select i1 %cmp5, i1 %leftmost.0.off040, i1 false
  %link.1.v = select i1 %cmp5, i64 13, i64 12
  %link.1 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 %link.1.v
  %5 = load %struct.rb_node*, %struct.rb_node** %link.1, align 8
  %tobool.not = icmp eq %struct.rb_node* %5, null
  br i1 %tobool.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %if.end
  %link.1.le = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 %link.1.v
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %leftmost.0.off0.lcssa = phi i1 [ true, %entry ], [ %leftmost.1.off0, %while.end.loopexit ]
  %rb_parent.0.lcssa = phi %struct.rb_node* [ null, %entry ], [ %1, %while.end.loopexit ]
  %link.0.lcssa = phi %struct.rb_node** [ %rb_node, %entry ], [ %link.1.le, %while.end.loopexit ]
  %rb_subtree_last12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 1
  store i64 %call1, i64* %rb_subtree_last12, align 8
  %rb14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 0
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb14, %struct.rb_node* noundef %rb_parent.0.lcssa, %struct.rb_node** noundef %link.0.lcssa) #8
  call fastcc void @rb_insert_augmented_cached(%struct.rb_node* noundef %rb14, %struct.rb_root_cached* noundef %root, i1 noundef %leftmost.0.off0.lcssa, %struct.rb_augment_callbacks* noundef nonnull @vma_interval_tree_augment) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_start_pgoff(%struct.vm_area_struct* nocapture noundef readonly %v) unnamed_addr #1 {
entry:
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %v, i64 0, i32 13
  %0 = load i64, i64* %vm_pgoff, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_last_pgoff(%struct.vm_area_struct* nocapture noundef readonly %v) unnamed_addr #1 {
entry:
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %v, i64 0, i32 13
  %0 = load i64, i64* %vm_pgoff, align 8
  %call = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %v) #8
  %add = add i64 %0, -1
  %sub = add i64 %add, %call
  ret i64 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #2 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_insert_augmented_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root, i1 noundef %newleft, %struct.rb_augment_callbacks* nocapture noundef readonly %augment) unnamed_addr #0 {
entry:
  br i1 %newleft, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  store %struct.rb_node* %node, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call fastcc void @rb_insert_augmented(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root, %struct.rb_augment_callbacks* noundef %augment) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vma_interval_tree_remove(%struct.vm_area_struct* noundef %node, %struct.rb_root_cached* noundef %root) local_unnamed_addr #0 {
entry:
  %rb = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 0
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost.i, align 8
  %cmp.i = icmp eq %struct.rb_node* %0, %rb
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %call.i = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %rb) #9
  store %struct.rb_node* %call.i, %struct.rb_node** %rb_leftmost.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %rb_root.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  %rb_right.i.i.i = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 0, i32 1
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i.i, align 8
  %rb_left.i.i.i = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 0, i32 2
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else6.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %__rb_parent_color.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %3 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %and.i.i.i = and i64 %3, -4
  %4 = inttoptr i64 %and.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb, %struct.rb_node* noundef %1, %struct.rb_node* noundef %4, %struct.rb_root* noundef %rb_root.i) #9
  %tobool1.not.i.i.i = icmp eq %struct.rb_node* %1, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  %__rb_parent_color3.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 0
  store i64 %3, i64* %__rb_parent_color3.i.i.i, align 8
  br label %__rb_erase_augmented.exit.thread.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  %and4.i.i.i = and i64 %3, 1
  %tobool5.not.i.i.i = icmp eq i64 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %__rb_erase_augmented.exit.thread.i.i, label %__rb_erase_augmented.exit.i.i

if.else6.i.i.i:                                   ; preds = %if.end.i
  %tobool7.not.i.i.i = icmp eq %struct.rb_node* %1, null
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %if.else12.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else6.i.i.i
  %__rb_parent_color9.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %5 = load i64, i64* %__rb_parent_color9.i.i.i, align 8
  %__rb_parent_color10.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %2, i64 0, i32 0
  store i64 %5, i64* %__rb_parent_color10.i.i.i, align 8
  %and11.i.i.i = and i64 %5, -4
  %6 = inttoptr i64 %and11.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb, %struct.rb_node* noundef nonnull %2, %struct.rb_node* noundef %6, %struct.rb_root* noundef %rb_root.i) #9
  br label %__rb_erase_augmented.exit.thread.i.i

if.else12.i.i.i:                                  ; preds = %if.else6.i.i.i
  %rb_left13.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 2
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i.i, align 8
  %tobool14.not.i.i.i = icmp eq %struct.rb_node* %7, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %do.body.i.i.i

if.then15.i.i.i:                                  ; preds = %if.else12.i.i.i
  %rb_right16.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 1
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i.i, align 8
  call void @vma_interval_tree_augment_copy(%struct.rb_node* noundef %rb, %struct.rb_node* noundef nonnull %1) #9
  br label %if.end42.i.i.i

do.body.i.i.i:                                    ; preds = %if.else12.i.i.i, %do.body.i.i.i
  %tmp.0.i.i.i = phi %struct.rb_node* [ %9, %do.body.i.i.i ], [ %7, %if.else12.i.i.i ]
  %successor.0.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i, %do.body.i.i.i ], [ %1, %if.else12.i.i.i ]
  %rb_left18.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i, i64 0, i32 2
  %9 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i.i, align 8
  %tobool19.not.i.i.i = icmp eq %struct.rb_node* %9, null
  br i1 %tobool19.not.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %rb_right20.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i, i64 0, i32 1
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i.i, align 8
  %rb_left26.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %10, %struct.rb_node** %rb_left26.i.i.i, align 8
  store volatile %struct.rb_node* %1, %struct.rb_node** %rb_right20.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %1, %struct.rb_node* noundef nonnull %tmp.0.i.i.i) #9
  call void @vma_interval_tree_augment_copy(%struct.rb_node* noundef %rb, %struct.rb_node* noundef nonnull %tmp.0.i.i.i) #9
  call void @vma_interval_tree_augment_propagate(%struct.rb_node* noundef nonnull %successor.0.i.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i) #9
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %do.end.i.i.i, %if.then15.i.i.i
  %parent.0.i.i.i = phi %struct.rb_node* [ %successor.0.i.i.i, %do.end.i.i.i ], [ %1, %if.then15.i.i.i ]
  %successor.1.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i, %do.end.i.i.i ], [ %1, %if.then15.i.i.i ]
  %child2.0.i.i.i = phi %struct.rb_node* [ %10, %do.end.i.i.i ], [ %8, %if.then15.i.i.i ]
  %11 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i, align 8
  %rb_left49.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %11, %struct.rb_node** %rb_left49.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %11, %struct.rb_node* noundef nonnull %successor.1.i.i.i) #9
  %__rb_parent_color54.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %12 = load i64, i64* %__rb_parent_color54.i.i.i, align 8
  %and55.i.i.i = and i64 %12, -4
  %13 = inttoptr i64 %and55.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb, %struct.rb_node* noundef nonnull %successor.1.i.i.i, %struct.rb_node* noundef %13, %struct.rb_root* noundef %rb_root.i) #9
  %tobool56.not.i.i.i = icmp eq %struct.rb_node* %child2.0.i.i.i, null
  br i1 %tobool56.not.i.i.i, label %if.else58.i.i.i, label %if.then57.i.i.i

if.then57.i.i.i:                                  ; preds = %if.end42.i.i.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i.i.i, %struct.rb_node* noundef nonnull %parent.0.i.i.i) #9
  br label %if.end66.i.i.i

if.else58.i.i.i:                                  ; preds = %if.end42.i.i.i
  %__rb_parent_color59.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i, i64 0, i32 0
  %14 = load i64, i64* %__rb_parent_color59.i.i.i, align 8
  %and60.i.i.i = and i64 %14, 1
  %tobool61.not.i.i.i = icmp eq i64 %and60.i.i.i, 0
  %cond65.i.i.i = select i1 %tobool61.not.i.i.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i.i.i
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %if.else58.i.i.i, %if.then57.i.i.i
  %rebalance.1.i.i.i = phi %struct.rb_node* [ null, %if.then57.i.i.i ], [ %cond65.i.i.i, %if.else58.i.i.i ]
  %__rb_parent_color67.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i, i64 0, i32 0
  store i64 %12, i64* %__rb_parent_color67.i.i.i, align 8
  br label %__rb_erase_augmented.exit.i.i

__rb_erase_augmented.exit.thread.i.i:             ; preds = %if.then8.i.i.i, %if.else.i.i.i, %if.then2.i.i.i
  %tmp.1.i.ph.i.i = phi %struct.rb_node* [ %4, %if.then2.i.i.i ], [ %6, %if.then8.i.i.i ], [ %4, %if.else.i.i.i ]
  call void @vma_interval_tree_augment_propagate(%struct.rb_node* noundef %tmp.1.i.ph.i.i, %struct.rb_node* noundef null) #9
  br label %rb_erase_augmented_cached.exit

__rb_erase_augmented.exit.i.i:                    ; preds = %if.end66.i.i.i, %if.else.i.i.i
  %tmp.1.i.i.i = phi %struct.rb_node* [ %successor.1.i.i.i, %if.end66.i.i.i ], [ %4, %if.else.i.i.i ]
  %rebalance.2.i.i.i = phi %struct.rb_node* [ %rebalance.1.i.i.i, %if.end66.i.i.i ], [ %4, %if.else.i.i.i ]
  call void @vma_interval_tree_augment_propagate(%struct.rb_node* noundef %tmp.1.i.i.i, %struct.rb_node* noundef null) #9
  %tobool.not.i.i = icmp eq %struct.rb_node* %rebalance.2.i.i.i, null
  br i1 %tobool.not.i.i, label %rb_erase_augmented_cached.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %__rb_erase_augmented.exit.i.i
  call void @__rb_erase_color(%struct.rb_node* noundef nonnull %rebalance.2.i.i.i, %struct.rb_root* noundef %rb_root.i, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @vma_interval_tree_augment_rotate) #9
  br label %rb_erase_augmented_cached.exit

rb_erase_augmented_cached.exit:                   ; preds = %__rb_erase_augmented.exit.thread.i.i, %__rb_erase_augmented.exit.i.i, %if.then.i.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.vm_area_struct* @vma_interval_tree_iter_first(%struct.rb_root_cached* nocapture noundef readonly %root, i64 noundef %start, i64 noundef %last) local_unnamed_addr #3 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -4, i32 1
  %1 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 14
  %2 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %3, %start
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %4 = bitcast %struct.rb_node** %rb_leftmost to i8**
  %5 = load i8*, i8** %4, align 8
  %add.ptr10 = getelementptr i8, i8* %5, i64 -88
  %6 = bitcast i8* %add.ptr10 to %struct.vm_area_struct*
  %call = call fastcc i64 @vma_start_pgoff(%struct.vm_area_struct* noundef %6) #8
  %cmp11 = icmp ugt i64 %call, %last
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end4
  %call14 = call fastcc %struct.vm_area_struct* @vma_interval_tree_subtree_search(%struct.vm_area_struct* noundef %1, i64 noundef %start, i64 noundef %last) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end13
  %retval.0 = phi %struct.vm_area_struct* [ %call14, %if.end13 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end4 ]
  ret %struct.vm_area_struct* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.vm_area_struct* @vma_interval_tree_subtree_search(%struct.vm_area_struct* noundef readonly %node, i64 noundef %start, i64 noundef %last) unnamed_addr #3 {
entry:
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry
  %node.addr.0 = phi %struct.vm_area_struct* [ %node, %entry ], [ %node.addr.0.be, %while.body.backedge ]
  %rb_left = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node.addr.0, i64 0, i32 9, i32 0, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %while.body
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -4, i32 1
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 14
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %cmp.not = icmp ult i64 %2, %start
  br i1 %cmp.not, label %if.end6, label %while.body.backedge

if.end6:                                          ; preds = %if.then, %while.body
  %call = call fastcc i64 @vma_start_pgoff(%struct.vm_area_struct* noundef %node.addr.0) #8
  %cmp7.not = icmp ugt i64 %call, %last
  br i1 %cmp7.not, label %return, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = call fastcc i64 @vma_last_pgoff(%struct.vm_area_struct* noundef %node.addr.0) #8
  %cmp10.not = icmp ult i64 %call9, %start
  br i1 %cmp10.not, label %if.end12, label %return

if.end12:                                         ; preds = %if.then8
  %rb_right = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node.addr.0, i64 0, i32 9, i32 0, i32 1
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool15.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool15.not, label %return, label %if.then16

if.then16:                                        ; preds = %if.end12
  %add.ptr25 = getelementptr %struct.rb_node, %struct.rb_node* %3, i64 -4, i32 1
  %rb_subtree_last27 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr25, i64 14
  %4 = bitcast %struct.rb_node** %rb_subtree_last27 to i64*
  %5 = load i64, i64* %4, align 8
  %cmp28.not = icmp ult i64 %5, %start
  br i1 %cmp28.not, label %return, label %while.body.backedge

while.body.backedge:                              ; preds = %if.then16, %if.then
  %node.addr.0.be.in = phi %struct.rb_node** [ %add.ptr, %if.then ], [ %add.ptr25, %if.then16 ]
  %node.addr.0.be = bitcast %struct.rb_node** %node.addr.0.be.in to %struct.vm_area_struct*
  br label %while.body

return:                                           ; preds = %if.end6, %if.then16, %if.end12, %if.then8
  %retval.0 = phi %struct.vm_area_struct* [ %node.addr.0, %if.then8 ], [ null, %if.end12 ], [ null, %if.then16 ], [ null, %if.end6 ]
  ret %struct.vm_area_struct* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.vm_area_struct* @vma_interval_tree_iter_next(%struct.vm_area_struct* noundef readonly %node, i64 noundef %start, i64 noundef %last) local_unnamed_addr #3 {
entry:
  %rb_right = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.else, %entry
  %rb.0 = phi %struct.rb_node* [ %0, %entry ], [ %8, %if.else ]
  %node.addr.0 = phi %struct.vm_area_struct* [ %node, %entry ], [ %9, %if.else ]
  %tobool.not = icmp eq %struct.rb_node* %rb.0, null
  br i1 %tobool.not, label %do.body5.preheader, label %if.then

do.body5.preheader:                               ; preds = %if.then, %while.cond
  br label %do.body5

if.then:                                          ; preds = %while.cond
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb.0, i64 -4, i32 1
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 14
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %cmp.not = icmp ult i64 %2, %start
  br i1 %cmp.not, label %do.body5.preheader, label %cleanup

cleanup:                                          ; preds = %if.then
  %3 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %call = call fastcc %struct.vm_area_struct* @vma_interval_tree_subtree_search(%struct.vm_area_struct* noundef %3, i64 noundef %start, i64 noundef %last) #8
  br label %cleanup33

do.body5:                                         ; preds = %do.body5.preheader, %if.end10
  %node.addr.1 = phi %struct.vm_area_struct* [ %6, %if.end10 ], [ %node.addr.0, %do.body5.preheader ]
  %rb7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node.addr.1, i64 0, i32 9, i32 0
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb7, i64 0, i32 0
  %4 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %4, -4
  %tobool8.not = icmp eq i64 %and, 0
  br i1 %tobool8.not, label %cleanup33, label %if.end10

if.end10:                                         ; preds = %do.body5
  %5 = inttoptr i64 %and to i8*
  %add.ptr18 = getelementptr i8, i8* %5, i64 -88
  %6 = bitcast i8* %add.ptr18 to %struct.vm_area_struct*
  %7 = inttoptr i64 %and to %struct.anon.79*
  %rb_right21 = getelementptr inbounds %struct.anon.79, %struct.anon.79* %7, i64 0, i32 0, i32 1
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_right21, align 8
  %cmp23 = icmp eq %struct.rb_node* %rb7, %8
  br i1 %cmp23, label %do.body5, label %do.end24

do.end24:                                         ; preds = %if.end10
  %9 = bitcast i8* %add.ptr18 to %struct.vm_area_struct*
  %call25 = call fastcc i64 @vma_start_pgoff(%struct.vm_area_struct* noundef %9) #8
  %cmp26 = icmp ugt i64 %call25, %last
  br i1 %cmp26, label %cleanup33, label %if.else

if.else:                                          ; preds = %do.end24
  %call28 = call fastcc i64 @vma_last_pgoff(%struct.vm_area_struct* noundef %9) #8
  %cmp29.not = icmp ult i64 %call28, %start
  br i1 %cmp29.not, label %while.cond, label %cleanup33.loopexit62.split.loop.exit

cleanup33.loopexit62.split.loop.exit:             ; preds = %if.else
  %10 = bitcast i8* %add.ptr18 to %struct.vm_area_struct*
  br label %cleanup33

cleanup33:                                        ; preds = %do.end24, %do.body5, %cleanup33.loopexit62.split.loop.exit, %cleanup
  %retval.3 = phi %struct.vm_area_struct* [ %call, %cleanup ], [ %10, %cleanup33.loopexit62.split.loop.exit ], [ null, %do.body5 ], [ null, %do.end24 ]
  ret %struct.vm_area_struct* %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vma_interval_tree_insert_after(%struct.vm_area_struct* noundef %node, %struct.vm_area_struct* noundef %prev, %struct.rb_root_cached* noundef %root) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @vma_last_pgoff(%struct.vm_area_struct* noundef %node) #8
  %rb_right = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %prev, i64 0, i32 9, i32 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end33, label %if.else

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -4, i32 1
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 14
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %cmp = icmp ult i64 %2, %call
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  store i64 %call, i64* %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  %3 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 13
  %4 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %tobool13.not66 = icmp eq %struct.rb_node* %4, null
  br i1 %tobool13.not66, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end29
  %5 = phi %struct.rb_node* [ %9, %if.end29 ], [ %4, %if.end ]
  %add.ptr22 = getelementptr %struct.rb_node, %struct.rb_node* %5, i64 -4, i32 1
  %rb_subtree_last24 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr22, i64 14
  %6 = bitcast %struct.rb_node** %rb_subtree_last24 to i64*
  %7 = load i64, i64* %6, align 8
  %cmp25 = icmp ult i64 %7, %call
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %while.body
  store i64 %call, i64* %6, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %while.body
  %8 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr22, i64 13
  %9 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %tobool13.not = icmp eq %struct.rb_node* %9, null
  br i1 %tobool13.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end29, %if.end
  %parent.0.in.lcssa65 = phi %struct.rb_node** [ %add.ptr, %if.end ], [ %add.ptr22, %if.end29 ]
  %10 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %parent.0.in.lcssa65, i64 13
  %parent.0 = bitcast %struct.rb_node** %parent.0.in.lcssa65 to %struct.vm_area_struct*
  br label %if.end33

if.end33:                                         ; preds = %entry, %while.end
  %parent.1 = phi %struct.vm_area_struct* [ %parent.0, %while.end ], [ %prev, %entry ]
  %link.0 = phi %struct.rb_node** [ %10, %while.end ], [ %rb_right, %entry ]
  %rb_subtree_last35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 1
  store i64 %call, i64* %rb_subtree_last35, align 8
  %rb37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 0
  %rb39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %parent.1, i64 0, i32 9, i32 0
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb37, %struct.rb_node* noundef %rb39, %struct.rb_node** noundef %link.0) #8
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call fastcc void @rb_insert_augmented(%struct.rb_node* noundef %rb37, %struct.rb_root* noundef %rb_root, %struct.rb_augment_callbacks* noundef nonnull @vma_interval_tree_augment) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_insert_augmented(%struct.rb_node* noundef %node, %struct.rb_root* noundef %root, %struct.rb_augment_callbacks* nocapture noundef readonly %augment) unnamed_addr #0 {
entry:
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %augment, i64 0, i32 2
  %0 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %rotate, align 8
  call void @__rb_insert_augmented(%struct.rb_node* noundef %node, %struct.rb_root* noundef %root, void (%struct.rb_node*, %struct.rb_node*)* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @anon_vma_interval_tree_insert(%struct.anon_vma_chain* noundef %node, %struct.rb_root_cached* noundef %root) local_unnamed_addr #0 {
entry:
  call fastcc void @__anon_vma_interval_tree_insert(%struct.anon_vma_chain* noundef %node, %struct.rb_root_cached* noundef %root) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__anon_vma_interval_tree_insert(%struct.anon_vma_chain* noundef %node, %struct.rb_root_cached* noundef %root) unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0, i32 0
  %call = call fastcc i64 @avc_start_pgoff(%struct.anon_vma_chain* noundef %node) #8
  %call1 = call fastcc i64 @avc_last_pgoff(%struct.anon_vma_chain* noundef %node) #8
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not33 = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not33, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %1 = phi %struct.rb_node* [ %5, %if.end ], [ %0, %entry ]
  %leftmost.0.off034 = phi i1 [ %leftmost.1.off0, %if.end ], [ true, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %1, i64 -2, i32 2
  %2 = bitcast %struct.rb_node** %add.ptr to %struct.anon_vma_chain*
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %3 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %4 = load i64, i64* %3, align 8
  %cmp = icmp ult i64 %4, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i64 %call1, i64* %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call3 = call fastcc i64 @avc_start_pgoff(%struct.anon_vma_chain* noundef %2) #8
  %cmp4 = icmp ult i64 %call, %call3
  %leftmost.1.off0 = select i1 %cmp4, i1 %leftmost.0.off034, i1 false
  %link.1.v = select i1 %cmp4, i64 6, i64 5
  %link.1 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 %link.1.v
  %5 = load %struct.rb_node*, %struct.rb_node** %link.1, align 8
  %tobool.not = icmp eq %struct.rb_node* %5, null
  br i1 %tobool.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %if.end
  %link.1.le = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 %link.1.v
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %leftmost.0.off0.lcssa = phi i1 [ true, %entry ], [ %leftmost.1.off0, %while.end.loopexit ]
  %rb_parent.0.lcssa = phi %struct.rb_node* [ null, %entry ], [ %1, %while.end.loopexit ]
  %link.0.lcssa = phi %struct.rb_node** [ %rb_node, %entry ], [ %link.1.le, %while.end.loopexit ]
  %rb_subtree_last8 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 4
  store i64 %call1, i64* %rb_subtree_last8, align 8
  %rb9 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 3
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb9, %struct.rb_node* noundef %rb_parent.0.lcssa, %struct.rb_node** noundef %link.0.lcssa) #8
  call fastcc void @rb_insert_augmented_cached(%struct.rb_node* noundef %rb9, %struct.rb_root_cached* noundef %root, i1 noundef %leftmost.0.off0.lcssa, %struct.rb_augment_callbacks* noundef nonnull @__anon_vma_interval_tree_augment) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @anon_vma_interval_tree_remove(%struct.anon_vma_chain* noundef %node, %struct.rb_root_cached* noundef %root) local_unnamed_addr #0 {
entry:
  call fastcc void @__anon_vma_interval_tree_remove(%struct.anon_vma_chain* noundef %node, %struct.rb_root_cached* noundef %root) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__anon_vma_interval_tree_remove(%struct.anon_vma_chain* noundef %node, %struct.rb_root_cached* noundef %root) unnamed_addr #0 {
entry:
  %rb = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 3
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost.i, align 8
  %cmp.i = icmp eq %struct.rb_node* %0, %rb
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %call.i = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %rb) #9
  store %struct.rb_node* %call.i, %struct.rb_node** %rb_leftmost.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %rb_root.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  %rb_right.i.i.i = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 3, i32 1
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i.i, align 8
  %rb_left.i.i.i = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 3, i32 2
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else6.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %__rb_parent_color.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %3 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %and.i.i.i = and i64 %3, -4
  %4 = inttoptr i64 %and.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb, %struct.rb_node* noundef %1, %struct.rb_node* noundef %4, %struct.rb_root* noundef %rb_root.i) #9
  %tobool1.not.i.i.i = icmp eq %struct.rb_node* %1, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  %__rb_parent_color3.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 0
  store i64 %3, i64* %__rb_parent_color3.i.i.i, align 8
  br label %__rb_erase_augmented.exit.thread.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  %and4.i.i.i = and i64 %3, 1
  %tobool5.not.i.i.i = icmp eq i64 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %__rb_erase_augmented.exit.thread.i.i, label %__rb_erase_augmented.exit.i.i

if.else6.i.i.i:                                   ; preds = %if.end.i
  %tobool7.not.i.i.i = icmp eq %struct.rb_node* %1, null
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %if.else12.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else6.i.i.i
  %__rb_parent_color9.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %5 = load i64, i64* %__rb_parent_color9.i.i.i, align 8
  %__rb_parent_color10.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %2, i64 0, i32 0
  store i64 %5, i64* %__rb_parent_color10.i.i.i, align 8
  %and11.i.i.i = and i64 %5, -4
  %6 = inttoptr i64 %and11.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb, %struct.rb_node* noundef nonnull %2, %struct.rb_node* noundef %6, %struct.rb_root* noundef %rb_root.i) #9
  br label %__rb_erase_augmented.exit.thread.i.i

if.else12.i.i.i:                                  ; preds = %if.else6.i.i.i
  %rb_left13.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 2
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i.i, align 8
  %tobool14.not.i.i.i = icmp eq %struct.rb_node* %7, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %do.body.i.i.i

if.then15.i.i.i:                                  ; preds = %if.else12.i.i.i
  %rb_right16.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 1
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i.i, align 8
  call void @__anon_vma_interval_tree_augment_copy(%struct.rb_node* noundef %rb, %struct.rb_node* noundef nonnull %1) #9
  br label %if.end42.i.i.i

do.body.i.i.i:                                    ; preds = %if.else12.i.i.i, %do.body.i.i.i
  %tmp.0.i.i.i = phi %struct.rb_node* [ %9, %do.body.i.i.i ], [ %7, %if.else12.i.i.i ]
  %successor.0.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i, %do.body.i.i.i ], [ %1, %if.else12.i.i.i ]
  %rb_left18.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i, i64 0, i32 2
  %9 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i.i, align 8
  %tobool19.not.i.i.i = icmp eq %struct.rb_node* %9, null
  br i1 %tobool19.not.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %rb_right20.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i, i64 0, i32 1
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i.i, align 8
  %rb_left26.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %10, %struct.rb_node** %rb_left26.i.i.i, align 8
  store volatile %struct.rb_node* %1, %struct.rb_node** %rb_right20.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %1, %struct.rb_node* noundef nonnull %tmp.0.i.i.i) #9
  call void @__anon_vma_interval_tree_augment_copy(%struct.rb_node* noundef %rb, %struct.rb_node* noundef nonnull %tmp.0.i.i.i) #9
  call void @__anon_vma_interval_tree_augment_propagate(%struct.rb_node* noundef nonnull %successor.0.i.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i) #9
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %do.end.i.i.i, %if.then15.i.i.i
  %parent.0.i.i.i = phi %struct.rb_node* [ %successor.0.i.i.i, %do.end.i.i.i ], [ %1, %if.then15.i.i.i ]
  %successor.1.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i, %do.end.i.i.i ], [ %1, %if.then15.i.i.i ]
  %child2.0.i.i.i = phi %struct.rb_node* [ %10, %do.end.i.i.i ], [ %8, %if.then15.i.i.i ]
  %11 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i, align 8
  %rb_left49.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %11, %struct.rb_node** %rb_left49.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %11, %struct.rb_node* noundef nonnull %successor.1.i.i.i) #9
  %__rb_parent_color54.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %12 = load i64, i64* %__rb_parent_color54.i.i.i, align 8
  %and55.i.i.i = and i64 %12, -4
  %13 = inttoptr i64 %and55.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb, %struct.rb_node* noundef nonnull %successor.1.i.i.i, %struct.rb_node* noundef %13, %struct.rb_root* noundef %rb_root.i) #9
  %tobool56.not.i.i.i = icmp eq %struct.rb_node* %child2.0.i.i.i, null
  br i1 %tobool56.not.i.i.i, label %if.else58.i.i.i, label %if.then57.i.i.i

if.then57.i.i.i:                                  ; preds = %if.end42.i.i.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i.i.i, %struct.rb_node* noundef nonnull %parent.0.i.i.i) #9
  br label %if.end66.i.i.i

if.else58.i.i.i:                                  ; preds = %if.end42.i.i.i
  %__rb_parent_color59.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i, i64 0, i32 0
  %14 = load i64, i64* %__rb_parent_color59.i.i.i, align 8
  %and60.i.i.i = and i64 %14, 1
  %tobool61.not.i.i.i = icmp eq i64 %and60.i.i.i, 0
  %cond65.i.i.i = select i1 %tobool61.not.i.i.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i.i.i
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %if.else58.i.i.i, %if.then57.i.i.i
  %rebalance.1.i.i.i = phi %struct.rb_node* [ null, %if.then57.i.i.i ], [ %cond65.i.i.i, %if.else58.i.i.i ]
  %__rb_parent_color67.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i, i64 0, i32 0
  store i64 %12, i64* %__rb_parent_color67.i.i.i, align 8
  br label %__rb_erase_augmented.exit.i.i

__rb_erase_augmented.exit.thread.i.i:             ; preds = %if.then8.i.i.i, %if.else.i.i.i, %if.then2.i.i.i
  %tmp.1.i.ph.i.i = phi %struct.rb_node* [ %4, %if.then2.i.i.i ], [ %6, %if.then8.i.i.i ], [ %4, %if.else.i.i.i ]
  call void @__anon_vma_interval_tree_augment_propagate(%struct.rb_node* noundef %tmp.1.i.ph.i.i, %struct.rb_node* noundef null) #9
  br label %rb_erase_augmented_cached.exit

__rb_erase_augmented.exit.i.i:                    ; preds = %if.end66.i.i.i, %if.else.i.i.i
  %tmp.1.i.i.i = phi %struct.rb_node* [ %successor.1.i.i.i, %if.end66.i.i.i ], [ %4, %if.else.i.i.i ]
  %rebalance.2.i.i.i = phi %struct.rb_node* [ %rebalance.1.i.i.i, %if.end66.i.i.i ], [ %4, %if.else.i.i.i ]
  call void @__anon_vma_interval_tree_augment_propagate(%struct.rb_node* noundef %tmp.1.i.i.i, %struct.rb_node* noundef null) #9
  %tobool.not.i.i = icmp eq %struct.rb_node* %rebalance.2.i.i.i, null
  br i1 %tobool.not.i.i, label %rb_erase_augmented_cached.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %__rb_erase_augmented.exit.i.i
  call void @__rb_erase_color(%struct.rb_node* noundef nonnull %rebalance.2.i.i.i, %struct.rb_root* noundef %rb_root.i, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @__anon_vma_interval_tree_augment_rotate) #9
  br label %rb_erase_augmented_cached.exit

rb_erase_augmented_cached.exit:                   ; preds = %__rb_erase_augmented.exit.thread.i.i, %__rb_erase_augmented.exit.i.i, %if.then.i.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.anon_vma_chain* @anon_vma_interval_tree_iter_first(%struct.rb_root_cached* nocapture noundef readonly %root, i64 noundef %first, i64 noundef %last) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.anon_vma_chain* @__anon_vma_interval_tree_iter_first(%struct.rb_root_cached* noundef %root, i64 noundef %first, i64 noundef %last) #8
  ret %struct.anon_vma_chain* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.anon_vma_chain* @__anon_vma_interval_tree_iter_first(%struct.rb_root_cached* nocapture noundef readonly %root, i64 noundef %start, i64 noundef %last) unnamed_addr #3 {
entry:
  %rb_node = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -2, i32 2
  %1 = bitcast %struct.rb_node** %add.ptr to %struct.anon_vma_chain*
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %2 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %3, %start
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %4 = bitcast %struct.rb_node** %rb_leftmost to i8**
  %5 = load i8*, i8** %4, align 8
  %add.ptr10 = getelementptr i8, i8* %5, i64 -32
  %6 = bitcast i8* %add.ptr10 to %struct.anon_vma_chain*
  %call = call fastcc i64 @avc_start_pgoff(%struct.anon_vma_chain* noundef %6) #8
  %cmp11 = icmp ugt i64 %call, %last
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end4
  %call14 = call fastcc %struct.anon_vma_chain* @__anon_vma_interval_tree_subtree_search(%struct.anon_vma_chain* noundef %1, i64 noundef %start, i64 noundef %last) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end13
  %retval.0 = phi %struct.anon_vma_chain* [ %call14, %if.end13 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end4 ]
  ret %struct.anon_vma_chain* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.anon_vma_chain* @anon_vma_interval_tree_iter_next(%struct.anon_vma_chain* noundef readonly %node, i64 noundef %first, i64 noundef %last) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.anon_vma_chain* @__anon_vma_interval_tree_iter_next(%struct.anon_vma_chain* noundef %node, i64 noundef %first, i64 noundef %last) #8
  ret %struct.anon_vma_chain* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.anon_vma_chain* @__anon_vma_interval_tree_iter_next(%struct.anon_vma_chain* noundef readonly %node, i64 noundef %start, i64 noundef %last) unnamed_addr #3 {
entry:
  %rb_right = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 3, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.else, %entry
  %rb.0 = phi %struct.rb_node* [ %0, %entry ], [ %8, %if.else ]
  %node.addr.0 = phi %struct.anon_vma_chain* [ %node, %entry ], [ %9, %if.else ]
  %tobool.not = icmp eq %struct.rb_node* %rb.0, null
  br i1 %tobool.not, label %do.body4.preheader, label %if.then

do.body4.preheader:                               ; preds = %if.then, %while.cond
  br label %do.body4

if.then:                                          ; preds = %while.cond
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb.0, i64 -2, i32 2
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %cmp.not = icmp ult i64 %2, %start
  br i1 %cmp.not, label %do.body4.preheader, label %cleanup

cleanup:                                          ; preds = %if.then
  %3 = bitcast %struct.rb_node** %add.ptr to %struct.anon_vma_chain*
  %call = call fastcc %struct.anon_vma_chain* @__anon_vma_interval_tree_subtree_search(%struct.anon_vma_chain* noundef %3, i64 noundef %start, i64 noundef %last) #8
  br label %cleanup29

do.body4:                                         ; preds = %do.body4.preheader, %if.end8
  %node.addr.1 = phi %struct.anon_vma_chain* [ %6, %if.end8 ], [ %node.addr.0, %do.body4.preheader ]
  %rb5 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node.addr.1, i64 0, i32 3
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb5, i64 0, i32 0
  %4 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %4, -4
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %cleanup29, label %if.end8

if.end8:                                          ; preds = %do.body4
  %5 = inttoptr i64 %and to i8*
  %add.ptr15 = getelementptr i8, i8* %5, i64 -32
  %6 = bitcast i8* %add.ptr15 to %struct.anon_vma_chain*
  %7 = inttoptr i64 %and to %struct.rb_node*
  %rb_right17 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %7, i64 0, i32 1
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_right17, align 8
  %cmp19 = icmp eq %struct.rb_node* %rb5, %8
  br i1 %cmp19, label %do.body4, label %do.end20

do.end20:                                         ; preds = %if.end8
  %9 = bitcast i8* %add.ptr15 to %struct.anon_vma_chain*
  %call21 = call fastcc i64 @avc_start_pgoff(%struct.anon_vma_chain* noundef %9) #8
  %cmp22 = icmp ugt i64 %call21, %last
  br i1 %cmp22, label %cleanup29, label %if.else

if.else:                                          ; preds = %do.end20
  %call24 = call fastcc i64 @avc_last_pgoff(%struct.anon_vma_chain* noundef %9) #8
  %cmp25.not = icmp ult i64 %call24, %start
  br i1 %cmp25.not, label %while.cond, label %cleanup29.loopexit58.split.loop.exit

cleanup29.loopexit58.split.loop.exit:             ; preds = %if.else
  %10 = bitcast i8* %add.ptr15 to %struct.anon_vma_chain*
  br label %cleanup29

cleanup29:                                        ; preds = %do.end20, %do.body4, %cleanup29.loopexit58.split.loop.exit, %cleanup
  %retval.3 = phi %struct.anon_vma_chain* [ %call, %cleanup ], [ %10, %cleanup29.loopexit58.split.loop.exit ], [ null, %do.body4 ], [ null, %do.end20 ]
  ret %struct.anon_vma_chain* %retval.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #1 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal void @vma_interval_tree_augment_propagate(%struct.rb_node* noundef %rb, %struct.rb_node* noundef readnone %stop) #4 {
entry:
  %cmp.not9 = icmp eq %struct.rb_node* %rb, %stop
  br i1 %cmp.not9, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %rb.addr.010 = phi %struct.rb_node* [ %2, %cleanup ], [ %rb, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb.addr.010, i64 -4, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %call = call fastcc i1 @vma_interval_tree_augment_compute_max(%struct.vm_area_struct* noundef %0, i1 noundef true) #8
  br i1 %call, label %while.end, label %cleanup

cleanup:                                          ; preds = %while.body
  %shared = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 11
  %__rb_parent_color = bitcast %struct.rb_node** %shared to i64*
  %1 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %1, -4
  %2 = inttoptr i64 %and to %struct.rb_node*
  %cmp.not = icmp eq %struct.rb_node* %2, %stop
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @vma_interval_tree_augment_copy(%struct.rb_node* nocapture noundef readonly %rb_old, %struct.rb_node* nocapture noundef writeonly %rb_new) #5 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_old, i64 -4, i32 1
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %rb_new, i64 -4, i32 1
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 14
  %0 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %1 = load i64, i64* %0, align 8
  %rb_subtree_last8 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr6, i64 14
  %2 = bitcast %struct.rb_node** %rb_subtree_last8 to i64*
  store i64 %1, i64* %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @vma_interval_tree_augment_rotate(%struct.rb_node* nocapture noundef %rb_old, %struct.rb_node* nocapture noundef writeonly %rb_new) #5 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_old, i64 -4, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vm_area_struct*
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %rb_new, i64 -4, i32 1
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 14
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %rb_subtree_last8 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr6, i64 14
  %3 = bitcast %struct.rb_node** %rb_subtree_last8 to i64*
  store i64 %2, i64* %3, align 8
  %call = call fastcc i1 @vma_interval_tree_augment_compute_max(%struct.vm_area_struct* noundef %0, i1 noundef false) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @vma_interval_tree_augment_compute_max(%struct.vm_area_struct* nocapture noundef %node, i1 noundef %exit) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @vma_last_pgoff(%struct.vm_area_struct* noundef %node) #8
  %rb_left = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 0, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -4, i32 1
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 14
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %cmp = icmp ugt i64 %2, %call
  %spec.select = select i1 %cmp, i64 %2, i64 %call
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry
  %max.0 = phi i64 [ %call, %entry ], [ %spec.select, %if.then ]
  %rb_right = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 0, i32 1
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool11.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool11.not, label %if.end29, label %if.then12

if.then12:                                        ; preds = %if.end8
  %add.ptr21 = getelementptr %struct.rb_node, %struct.rb_node* %3, i64 -4, i32 1
  %rb_subtree_last23 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr21, i64 14
  %4 = bitcast %struct.rb_node** %rb_subtree_last23 to i64*
  %5 = load i64, i64* %4, align 8
  %cmp24 = icmp ugt i64 %5, %max.0
  %spec.select58 = select i1 %cmp24, i64 %5, i64 %max.0
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end8
  %max.1 = phi i64 [ %max.0, %if.end8 ], [ %spec.select58, %if.then12 ]
  br i1 %exit, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end29
  %rb_subtree_last32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 1
  %6 = load i64, i64* %rb_subtree_last32, align 8
  %cmp33 = icmp eq i64 %6, %max.1
  br i1 %cmp33, label %cleanup, label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.end29
  %rb_subtree_last37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %node, i64 0, i32 9, i32 1
  store i64 %max.1, i64* %rb_subtree_last37, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end35
  %retval.0 = phi i1 [ false, %if.end35 ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(%struct.rb_node* noundef, %struct.rb_root* noundef, void (%struct.rb_node*, %struct.rb_node*)* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__rb_change_child(%struct.rb_node* noundef readnone %old, %struct.rb_node* noundef %new, %struct.rb_node* noundef %parent, %struct.rb_root* noundef %root) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.rb_node* %parent, null
  br i1 %tobool.not, label %do.body17, label %if.then

if.then:                                          ; preds = %entry
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %cmp = icmp eq %struct.rb_node* %0, %old
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 1
  %spec.select = select i1 %cmp, %struct.rb_node** %rb_left, %struct.rb_node** %rb_right
  br label %if.end20

do.body17:                                        ; preds = %entry
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %root, i64 0, i32 0
  br label %if.end20

if.end20:                                         ; preds = %if.then, %do.body17
  %rb_left.sink = phi %struct.rb_node** [ %rb_node, %do.body17 ], [ %spec.select, %if.then ]
  store volatile %struct.rb_node* %new, %struct.rb_node** %rb_left.sink, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rb_set_parent(%struct.rb_node* nocapture noundef %rb, %struct.rb_node* noundef %p) unnamed_addr #5 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %0, 1
  %1 = ptrtoint %struct.rb_node* %p to i64
  %or = or i64 %and, %1
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_set_parent_color(%struct.rb_node* nocapture noundef writeonly %rb, %struct.rb_node* noundef %p) unnamed_addr #2 {
entry:
  %0 = ptrtoint %struct.rb_node* %p to i64
  %or = or i64 %0, 1
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(%struct.rb_node* noundef, %struct.rb_root* noundef, void (%struct.rb_node*, %struct.rb_node*)* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @avc_start_pgoff(%struct.anon_vma_chain* nocapture noundef readonly %avc) unnamed_addr #1 {
entry:
  %vma = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %avc, i64 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %call = call fastcc i64 @vma_start_pgoff(%struct.vm_area_struct* noundef %0) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @avc_last_pgoff(%struct.anon_vma_chain* nocapture noundef readonly %avc) unnamed_addr #1 {
entry:
  %vma = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %avc, i64 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %call = call fastcc i64 @vma_last_pgoff(%struct.vm_area_struct* noundef %0) #8
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal void @__anon_vma_interval_tree_augment_propagate(%struct.rb_node* noundef %rb, %struct.rb_node* noundef readnone %stop) #4 {
entry:
  %cmp.not9 = icmp eq %struct.rb_node* %rb, %stop
  br i1 %cmp.not9, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %rb.addr.010 = phi %struct.rb_node* [ %2, %cleanup ], [ %rb, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb.addr.010, i64 -2, i32 2
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.anon_vma_chain*
  %call = call fastcc i1 @__anon_vma_interval_tree_augment_compute_max(%struct.anon_vma_chain* noundef %0, i1 noundef true) #8
  br i1 %call, label %while.end, label %cleanup

cleanup:                                          ; preds = %while.body
  %rb1 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 4
  %__rb_parent_color = bitcast %struct.rb_node** %rb1 to i64*
  %1 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %1, -4
  %2 = inttoptr i64 %and to %struct.rb_node*
  %cmp.not = icmp eq %struct.rb_node* %2, %stop
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @__anon_vma_interval_tree_augment_copy(%struct.rb_node* nocapture noundef readonly %rb_old, %struct.rb_node* nocapture noundef writeonly %rb_new) #5 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_old, i64 -2, i32 2
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %rb_new, i64 -2, i32 2
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %0 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %1 = load i64, i64* %0, align 8
  %rb_subtree_last7 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr6, i64 7
  %2 = bitcast %struct.rb_node** %rb_subtree_last7 to i64*
  store i64 %1, i64* %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @__anon_vma_interval_tree_augment_rotate(%struct.rb_node* nocapture noundef %rb_old, %struct.rb_node* nocapture noundef writeonly %rb_new) #5 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_old, i64 -2, i32 2
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.anon_vma_chain*
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %rb_new, i64 -2, i32 2
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %rb_subtree_last7 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr6, i64 7
  %3 = bitcast %struct.rb_node** %rb_subtree_last7 to i64*
  store i64 %2, i64* %3, align 8
  %call = call fastcc i1 @__anon_vma_interval_tree_augment_compute_max(%struct.anon_vma_chain* noundef %0, i1 noundef false) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__anon_vma_interval_tree_augment_compute_max(%struct.anon_vma_chain* nocapture noundef %node, i1 noundef %exit) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @avc_last_pgoff(%struct.anon_vma_chain* noundef %node) #8
  %rb_left = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 3, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -2, i32 2
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %cmp = icmp ugt i64 %2, %call
  %spec.select = select i1 %cmp, i64 %2, i64 %call
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %max.0 = phi i64 [ %call, %entry ], [ %spec.select, %if.then ]
  %rb_right = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 3, i32 1
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool7.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool7.not, label %if.end22, label %if.then8

if.then8:                                         ; preds = %if.end5
  %add.ptr16 = getelementptr %struct.rb_node, %struct.rb_node* %3, i64 -2, i32 2
  %rb_subtree_last17 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr16, i64 7
  %4 = bitcast %struct.rb_node** %rb_subtree_last17 to i64*
  %5 = load i64, i64* %4, align 8
  %cmp18 = icmp ugt i64 %5, %max.0
  %spec.select49 = select i1 %cmp18, i64 %5, i64 %max.0
  br label %if.end22

if.end22:                                         ; preds = %if.then8, %if.end5
  %max.1 = phi i64 [ %max.0, %if.end5 ], [ %spec.select49, %if.then8 ]
  br i1 %exit, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end22
  %rb_subtree_last24 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 4
  %6 = load i64, i64* %rb_subtree_last24, align 8
  %cmp25 = icmp eq i64 %6, %max.1
  br i1 %cmp25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %land.lhs.true, %if.end22
  %rb_subtree_last28 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node, i64 0, i32 4
  store i64 %max.1, i64* %rb_subtree_last28, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end27
  %retval.0 = phi i1 [ false, %if.end27 ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.anon_vma_chain* @__anon_vma_interval_tree_subtree_search(%struct.anon_vma_chain* noundef readonly %node, i64 noundef %start, i64 noundef %last) unnamed_addr #3 {
entry:
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry
  %node.addr.0 = phi %struct.anon_vma_chain* [ %node, %entry ], [ %node.addr.0.be, %while.body.backedge ]
  %rb_left = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node.addr.0, i64 0, i32 3, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %while.body
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -2, i32 2
  %rb_subtree_last = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %1 = bitcast %struct.rb_node** %rb_subtree_last to i64*
  %2 = load i64, i64* %1, align 8
  %cmp.not = icmp ult i64 %2, %start
  br i1 %cmp.not, label %if.end4, label %while.body.backedge

if.end4:                                          ; preds = %if.then, %while.body
  %call = call fastcc i64 @avc_start_pgoff(%struct.anon_vma_chain* noundef %node.addr.0) #8
  %cmp5.not = icmp ugt i64 %call, %last
  br i1 %cmp5.not, label %return, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = call fastcc i64 @avc_last_pgoff(%struct.anon_vma_chain* noundef %node.addr.0) #8
  %cmp8.not = icmp ult i64 %call7, %start
  br i1 %cmp8.not, label %if.end10, label %return

if.end10:                                         ; preds = %if.then6
  %rb_right = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %node.addr.0, i64 0, i32 3, i32 1
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool12.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool12.not, label %return, label %if.then13

if.then13:                                        ; preds = %if.end10
  %add.ptr21 = getelementptr %struct.rb_node, %struct.rb_node* %3, i64 -2, i32 2
  %rb_subtree_last22 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr21, i64 7
  %4 = bitcast %struct.rb_node** %rb_subtree_last22 to i64*
  %5 = load i64, i64* %4, align 8
  %cmp23.not = icmp ult i64 %5, %start
  br i1 %cmp23.not, label %return, label %while.body.backedge

while.body.backedge:                              ; preds = %if.then13, %if.then
  %node.addr.0.be.in = phi %struct.rb_node** [ %add.ptr, %if.then ], [ %add.ptr21, %if.then13 ]
  %node.addr.0.be = bitcast %struct.rb_node** %node.addr.0.be.in to %struct.anon_vma_chain*
  br label %while.body

return:                                           ; preds = %if.end4, %if.then13, %if.end10, %if.then6
  %retval.0 = phi %struct.anon_vma_chain* [ %node.addr.0, %if.then6 ], [ null, %if.end10 ], [ null, %if.then13 ], [ null, %if.end4 ]
  ret %struct.anon_vma_chain* %retval.0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
