; ModuleID = 'mm/rmap.c'
source_filename = "mm/rmap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.rmap_walk_control = type { i8*, i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)*, i32 (%struct.page*)*, %struct.anon_vma* (%struct.page*)*, i1 (%struct.vm_area_struct*, i8*)* }
%struct.page = type { i64, %union.anon.11, %union.anon.28, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.74, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [48 x i8] }
%struct.anon.3 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.4, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, {}*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.29 }
%union.anon.29 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.30, %union.anon.31 }
%union.anon.30 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.31 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
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
%struct.pipe_inode_info = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.34, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
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
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.34 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.64, i32, [12 x i8] }
%union.anon.64 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.66, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.66 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.51 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.51 = type { %struct.callback_head }
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
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.74 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%union.anon.28 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.79, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.79 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, {}*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.anon_vma_chain = type { %struct.vm_area_struct*, %struct.anon_vma*, %struct.list_head, %struct.rb_node, i64 }
%struct.page_referenced_arg = type { i32, i32, i64, %struct.mem_cgroup* }
%struct.page_vma_mapped_walk = type { %struct.page*, %struct.vm_area_struct*, i64, %struct.pmd_t*, %struct.pte_t*, %struct.spinlock*, i32 }
%struct.mmu_notifier_range = type { i64, i64 }
%struct.anon.20 = type { i64, i8, i8, %struct.atomic_t, i32 }

@.str = private unnamed_addr constant [9 x i8] c"anon_vma\00", align 1
@anon_vma_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"anon_vma_chain\00", align 1
@anon_vma_chain_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@__const.page_mlock.rwc = private unnamed_addr constant %struct.rmap_walk_control { i8* null, i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @page_mlock_one, i32 (%struct.page*)* @page_not_mapped, %struct.anon_vma* (%struct.page*)* @page_lock_anon_vma_read, i1 (%struct.vm_area_struct*, i8*)* null }, align 8
@anon_vma_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&anon_vma->rwsem\00", align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@mmlist_lock = external dso_local global %struct.spinlock, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__anon_vma_prepare(%struct.vm_area_struct* noundef %vma) local_unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call = call fastcc %struct.anon_vma_chain* @anon_vma_chain_alloc(i32 noundef 3264) #11
  %tobool.not = icmp eq %struct.anon_vma_chain* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call %struct.anon_vma* @find_mergeable_anon_vma(%struct.vm_area_struct* noundef %vma) #12
  %tobool5.not = icmp eq %struct.anon_vma* %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc %struct.anon_vma* @anon_vma_alloc() #11
  %tobool8.not = icmp eq %struct.anon_vma* %call7, null
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.end14, !prof !7

if.end14:                                         ; preds = %if.then6, %if.end
  %anon_vma.0 = phi %struct.anon_vma* [ %call4, %if.end ], [ %call7, %if.then6 ]
  %allocated.0 = phi %struct.anon_vma* [ null, %if.end ], [ %call7, %if.then6 ]
  call fastcc void @anon_vma_lock_write(%struct.anon_vma* noundef nonnull %anon_vma.0) #11
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 14, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %anon_vma15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %1 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma15, align 8
  %tobool16.not = icmp eq %struct.anon_vma* %1, null
  br i1 %tobool16.not, label %if.then26, label %if.end28, !prof !8

if.then26:                                        ; preds = %if.end14
  store %struct.anon_vma* %anon_vma.0, %struct.anon_vma** %anon_vma15, align 8
  call fastcc void @anon_vma_chain_link(%struct.vm_area_struct* noundef %vma, %struct.anon_vma_chain* noundef nonnull %call, %struct.anon_vma* noundef nonnull %anon_vma.0) #11
  %degree = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma.0, i64 0, i32 3
  %2 = load i32, i32* %degree, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %degree, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end14
  %allocated.1 = phi %struct.anon_vma* [ null, %if.then26 ], [ %allocated.0, %if.end14 ]
  %avc.0 = phi %struct.anon_vma_chain* [ null, %if.then26 ], [ %call, %if.end14 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  call fastcc void @anon_vma_unlock_write(%struct.anon_vma* noundef nonnull %anon_vma.0) #11
  %tobool30.not = icmp eq %struct.anon_vma* %allocated.1, null
  br i1 %tobool30.not, label %if.end39, label %if.then38, !prof !8

if.then38:                                        ; preds = %if.end28
  call fastcc void @put_anon_vma(%struct.anon_vma* noundef nonnull %allocated.1) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end28
  %tobool40.not = icmp eq %struct.anon_vma_chain* %avc.0, null
  br i1 %tobool40.not, label %cleanup, label %cleanup.sink.split, !prof !8

cleanup.sink.split:                               ; preds = %if.then6, %if.end39
  %call.sink = phi %struct.anon_vma_chain* [ %avc.0, %if.end39 ], [ %call, %if.then6 ]
  %retval.0.ph = phi i32 [ 0, %if.end39 ], [ -12, %if.then6 ]
  call fastcc void @anon_vma_chain_free(%struct.anon_vma_chain* noundef nonnull %call.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry, %if.end39
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -12, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias %struct.anon_vma_chain* @anon_vma_chain_alloc(i32 noundef %gfp) unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @anon_vma_chain_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %gfp) #12
  %1 = bitcast i8* %call to %struct.anon_vma_chain*
  ret %struct.anon_vma_chain* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.anon_vma* @find_mergeable_anon_vma(%struct.vm_area_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.anon_vma* @anon_vma_alloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @anon_vma_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds i8, i8* %call, i64 48
  %counter.i = bitcast i8* %refcount to i32*
  store volatile i32 1, i32* %counter.i, align 8
  %degree = getelementptr inbounds i8, i8* %call, i64 52
  %1 = bitcast i8* %degree to i32*
  store i32 1, i32* %1, align 4
  %parent = getelementptr inbounds i8, i8* %call, i64 56
  %2 = bitcast i8* %parent to i8**
  store i8* %call, i8** %2, align 8
  %3 = bitcast i8* %call to i8**
  store i8* %call, i8** %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast i8* %call to %struct.anon_vma*
  ret %struct.anon_vma* %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_lock_write(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @down_write(%struct.rw_semaphore* noundef %rwsem) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_chain_link(%struct.vm_area_struct* noundef %vma, %struct.anon_vma_chain* noundef %avc, %struct.anon_vma* noundef %anon_vma) unnamed_addr #0 {
entry:
  %vma1 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %avc, i64 0, i32 0
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma1, align 8
  %anon_vma2 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %avc, i64 0, i32 1
  store %struct.anon_vma* %anon_vma, %struct.anon_vma** %anon_vma2, align 8
  %same_vma = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %avc, i64 0, i32 2
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 10
  call fastcc void @list_add(%struct.list_head* noundef %same_vma, %struct.list_head* noundef %anon_vma_chain) #11
  %rb_root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 5
  call void @anon_vma_interval_tree_insert(%struct.anon_vma_chain* noundef %avc, %struct.rb_root_cached* noundef %rb_root) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_unlock_write(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @up_write(%struct.rw_semaphore* noundef %rwsem) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_anon_vma(%struct.anon_vma* noundef %anon_vma) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 2
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %refcount) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_anon_vma(%struct.anon_vma* noundef %anon_vma) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_chain_free(%struct.anon_vma_chain* noundef %anon_vma_chain) unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @anon_vma_chain_cachep, align 8
  %1 = bitcast %struct.anon_vma_chain* %anon_vma_chain to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @anon_vma_clone(%struct.vm_area_struct* noundef %dst, %struct.vm_area_struct* noundef readonly %src) local_unnamed_addr #0 {
entry:
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src, i64 0, i32 10
  %prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src, i64 0, i32 10, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  %.pn75 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn75 to %struct.list_head*
  %cmp.not76 = icmp eq %struct.list_head* %anon_vma_chain, %1
  %anon_vma34.phi.trans.insert = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %dst, i64 0, i32 11
  br i1 %cmp.not76, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  %.pre = load %struct.anon_vma*, %struct.anon_vma** %anon_vma34.phi.trans.insert, align 8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %anon_vma14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src, i64 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn78 = phi i8* [ %.pn75, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %root.077 = phi %struct.anon_vma* [ null, %for.body.lr.ph ], [ %call11, %for.inc ]
  %call = call fastcc %struct.anon_vma_chain* @anon_vma_chain_alloc(i32 noundef 10240) #11
  %tobool.not = icmp eq %struct.anon_vma_chain* %call, null
  br i1 %tobool.not, label %if.then, label %if.end9, !prof !7

if.then:                                          ; preds = %for.body
  call fastcc void @unlock_anon_vma_root(%struct.anon_vma* noundef %root.077) #11
  %call6 = call fastcc %struct.anon_vma_chain* @anon_vma_chain_alloc(i32 noundef 3264) #11
  %tobool7.not = icmp eq %struct.anon_vma_chain* %call6, null
  br i1 %tobool7.not, label %enomem_failure, label %if.end9

if.end9:                                          ; preds = %if.then, %for.body
  %root.1 = phi %struct.anon_vma* [ null, %if.then ], [ %root.077, %for.body ]
  %avc.0 = phi %struct.anon_vma_chain* [ %call6, %if.then ], [ %call, %for.body ]
  %anon_vma10 = getelementptr i8, i8* %.pn78, i64 -8
  %2 = bitcast i8* %anon_vma10 to %struct.anon_vma**
  %3 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %call11 = call fastcc %struct.anon_vma* @lock_anon_vma_root(%struct.anon_vma* noundef %root.1, %struct.anon_vma* noundef %3) #11
  call fastcc void @anon_vma_chain_link(%struct.vm_area_struct* noundef %dst, %struct.anon_vma_chain* noundef nonnull %avc.0, %struct.anon_vma* noundef %3) #11
  %4 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma34.phi.trans.insert, align 8
  %tobool13.not = icmp eq %struct.anon_vma* %4, null
  br i1 %tobool13.not, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end9
  %5 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma14, align 8
  %tobool15.not = icmp eq %struct.anon_vma* %5, null
  %cmp18.not = icmp eq %struct.anon_vma* %3, %5
  %or.cond = or i1 %tobool15.not, %cmp18.not
  br i1 %or.cond, label %for.inc, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true
  %degree = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %3, i64 0, i32 3
  %6 = load i32, i32* %degree, align 4
  %cmp21 = icmp ult i32 %6, 2
  br i1 %cmp21, label %if.then23, label %for.inc

if.then23:                                        ; preds = %land.lhs.true20
  store %struct.anon_vma* %3, %struct.anon_vma** %anon_vma34.phi.trans.insert, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %land.lhs.true20, %land.lhs.true, %if.end9
  %7 = phi %struct.anon_vma* [ %3, %if.then23 ], [ null, %land.lhs.true20 ], [ null, %land.lhs.true ], [ %4, %if.end9 ]
  %prev28 = getelementptr inbounds i8, i8* %.pn78, i64 8
  %8 = bitcast i8* %prev28 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %anon_vma_chain, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry.for.end_crit_edge
  %10 = phi %struct.anon_vma* [ %.pre, %entry.for.end_crit_edge ], [ %7, %for.inc ]
  %root.0.lcssa = phi %struct.anon_vma* [ null, %entry.for.end_crit_edge ], [ %call11, %for.inc ]
  %tobool35.not = icmp eq %struct.anon_vma* %10, null
  br i1 %tobool35.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %for.end
  %degree38 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %10, i64 0, i32 3
  %11 = load i32, i32* %degree38, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %degree38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %for.end
  call fastcc void @unlock_anon_vma_root(%struct.anon_vma* noundef %root.0.lcssa) #11
  br label %cleanup41

enomem_failure:                                   ; preds = %if.then
  store %struct.anon_vma* null, %struct.anon_vma** %anon_vma34.phi.trans.insert, align 8
  call void @unlink_anon_vmas(%struct.vm_area_struct* noundef %dst) #11
  br label %cleanup41

cleanup41:                                        ; preds = %enomem_failure, %if.end39
  %retval.0 = phi i32 [ -12, %enomem_failure ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_anon_vma_root(%struct.anon_vma* noundef %root) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.anon_vma* %root, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %root, i64 0, i32 1
  call void @up_write(%struct.rw_semaphore* noundef %rwsem) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.anon_vma* @lock_anon_vma_root(%struct.anon_vma* noundef %root, %struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #0 {
entry:
  %root1 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root1, align 8
  %cmp.not = icmp eq %struct.anon_vma* %0, %root
  br i1 %cmp.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.anon_vma* %root, null
  br i1 %tobool.not, label %if.end19, label %if.then9, !prof !8

if.then9:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/rmap.c\22; .popsection; .long 14472b - 14470b; .short 243; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !9
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %root, i64 0, i32 1
  call void @up_write(%struct.rw_semaphore* noundef %rwsem) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.then9
  %rwsem20 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @down_write(%struct.rw_semaphore* noundef %rwsem20) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %entry
  %root.addr.0 = phi %struct.anon_vma* [ %0, %if.end19 ], [ %root, %entry ]
  ret %struct.anon_vma* %root.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unlink_anon_vmas(%struct.vm_area_struct* noundef %vma) local_unnamed_addr #0 {
entry:
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 10
  %0 = bitcast %struct.list_head* %anon_vma_chain to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not111 = icmp eq %struct.list_head* %anon_vma_chain, %2
  br i1 %cmp.not111, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %3 = phi %struct.list_head* [ %9, %cleanup ], [ %2, %entry ]
  %.pn.in.in113 = phi i8* [ %.pn115, %cleanup ], [ %1, %entry ]
  %root.0112 = phi %struct.anon_vma* [ %call, %cleanup ], [ null, %entry ]
  %avc.0114.in = getelementptr i8, i8* %.pn.in.in113, i64 -16
  %avc.0114 = bitcast i8* %avc.0114.in to %struct.anon_vma_chain*
  %.pn115.in = bitcast i8* %.pn.in.in113 to i8**
  %.pn115 = load i8*, i8** %.pn115.in, align 8
  %anon_vma11 = getelementptr i8, i8* %.pn.in.in113, i64 -8
  %4 = bitcast i8* %anon_vma11 to %struct.anon_vma**
  %5 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  %call = call fastcc %struct.anon_vma* @lock_anon_vma_root(%struct.anon_vma* noundef %root.0112, %struct.anon_vma* noundef %5) #11
  %rb_root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %5, i64 0, i32 5
  call void @anon_vma_interval_tree_remove(%struct.anon_vma_chain* noundef %avc.0114, %struct.rb_root_cached* noundef %rb_root) #12
  %rb_node = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %rb_root, i64 0, i32 0, i32 0
  %6 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp18 = icmp eq %struct.rb_node* %6, null
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %5, i64 0, i32 4
  %7 = load %struct.anon_vma*, %struct.anon_vma** %parent, align 8
  %degree = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %7, i64 0, i32 3
  %8 = load i32, i32* %degree, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %degree, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  call fastcc void @list_del(%struct.list_head* noundef %3) #11
  call fastcc void @anon_vma_chain_free(%struct.anon_vma_chain* noundef %avc.0114) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8* %.pn115 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %anon_vma_chain, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  %root.0.lcssa = phi %struct.anon_vma* [ null, %entry ], [ %call, %cleanup ]
  %anon_vma28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %10 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma28, align 8
  %tobool.not = icmp eq %struct.anon_vma* %10, null
  br i1 %tobool.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %for.end
  %degree31 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %10, i64 0, i32 3
  %11 = load i32, i32* %degree31, align 4
  %dec32 = add i32 %11, -1
  store i32 %dec32, i32* %degree31, align 4
  store %struct.anon_vma* null, %struct.anon_vma** %anon_vma28, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %for.end
  call fastcc void @unlock_anon_vma_root(%struct.anon_vma* noundef %root.0.lcssa) #11
  %12 = load i8*, i8** %0, align 8
  %13 = bitcast i8* %12 to %struct.list_head*
  %cmp54.not116 = icmp eq %struct.list_head* %anon_vma_chain, %13
  br i1 %cmp54.not116, label %for.end69, label %for.body56

for.body56:                                       ; preds = %if.end34, %for.body56
  %14 = phi %struct.list_head* [ %17, %for.body56 ], [ %13, %if.end34 ]
  %.pn104.in.in117 = phi i8* [ %.pn104, %for.body56 ], [ %12, %if.end34 ]
  %avc.1.in = getelementptr i8, i8* %.pn104.in.in117, i64 -16
  %avc.1 = bitcast i8* %avc.1.in to %struct.anon_vma_chain*
  %.pn104.in = bitcast i8* %.pn104.in.in117 to i8**
  %.pn104 = load i8*, i8** %.pn104.in, align 8
  %anon_vma58 = getelementptr i8, i8* %.pn104.in.in117, i64 -8
  %15 = bitcast i8* %anon_vma58 to %struct.anon_vma**
  %16 = load %struct.anon_vma*, %struct.anon_vma** %15, align 8
  call fastcc void @put_anon_vma(%struct.anon_vma* noundef %16) #11
  call fastcc void @list_del(%struct.list_head* noundef %14) #11
  call fastcc void @anon_vma_chain_free(%struct.anon_vma_chain* noundef %avc.1) #11
  %17 = bitcast i8* %.pn104 to %struct.list_head*
  %cmp54.not = icmp eq %struct.list_head* %anon_vma_chain, %17
  br i1 %cmp54.not, label %for.end69, label %for.body56

for.end69:                                        ; preds = %for.body56, %if.end34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @anon_vma_fork(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %pvma) local_unnamed_addr #0 {
entry:
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %pvma, i64 0, i32 11
  %0 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma1, align 8
  %tobool.not = icmp eq %struct.anon_vma* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %anon_vma2 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  store %struct.anon_vma* null, %struct.anon_vma** %anon_vma2, align 8
  %call = call i32 @anon_vma_clone(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct* noundef %pvma) #11
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma2, align 8
  %tobool7.not = icmp eq %struct.anon_vma* %1, null
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc %struct.anon_vma* @anon_vma_alloc() #11
  %tobool11.not = icmp eq %struct.anon_vma* %call10, null
  br i1 %tobool11.not, label %out_error, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = call fastcc %struct.anon_vma_chain* @anon_vma_chain_alloc(i32 noundef 3264) #11
  %tobool15.not = icmp eq %struct.anon_vma_chain* %call14, null
  br i1 %tobool15.not, label %out_error_free_anon_vma, label %if.end17

if.end17:                                         ; preds = %if.end13
  %2 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma1, align 8
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %2, i64 0, i32 0
  %3 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %root19 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %call10, i64 0, i32 0
  store %struct.anon_vma* %3, %struct.anon_vma** %root19, align 8
  %4 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma1, align 8
  %parent = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %call10, i64 0, i32 4
  store %struct.anon_vma* %4, %struct.anon_vma** %parent, align 8
  call fastcc void @get_anon_vma(%struct.anon_vma* noundef %3) #11
  store %struct.anon_vma* %call10, %struct.anon_vma** %anon_vma2, align 8
  call fastcc void @anon_vma_lock_write(%struct.anon_vma* noundef nonnull %call10) #11
  call fastcc void @anon_vma_chain_link(%struct.vm_area_struct* noundef %vma, %struct.anon_vma_chain* noundef nonnull %call14, %struct.anon_vma* noundef nonnull %call10) #11
  %5 = load %struct.anon_vma*, %struct.anon_vma** %parent, align 8
  %degree = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %5, i64 0, i32 3
  %6 = load i32, i32* %degree, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %degree, align 4
  call fastcc void @anon_vma_unlock_write(%struct.anon_vma* noundef nonnull %call10) #11
  br label %cleanup

out_error_free_anon_vma:                          ; preds = %if.end13
  call fastcc void @put_anon_vma(%struct.anon_vma* noundef nonnull %call10) #11
  br label %out_error

out_error:                                        ; preds = %if.end9, %out_error_free_anon_vma
  call void @unlink_anon_vmas(%struct.vm_area_struct* noundef %vma) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %out_error, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -12, %out_error ], [ 0, %entry ], [ %call, %if.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_anon_vma(%struct.anon_vma* noundef %anon_vma) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 2
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %refcount) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_remove(%struct.anon_vma_chain* noundef, %struct.rb_root_cached* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #11
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @anon_vma_init() local_unnamed_addr #4 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i32 noundef 0, i32 noundef 786432, void (i8*)* noundef nonnull @anon_vma_ctor) #12
  store %struct.kmem_cache* %call, %struct.kmem_cache** @anon_vma_cachep, align 8
  %call1 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i32 noundef 8, i32 noundef 262144, void (i8*)* noundef null) #12
  store %struct.kmem_cache* %call1, %struct.kmem_cache** @anon_vma_chain_cachep, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @anon_vma_ctor(i8* noundef %data) #0 {
entry:
  %rwsem = getelementptr inbounds i8, i8* %data, i64 8
  %0 = bitcast i8* %rwsem to %struct.rw_semaphore*
  call void @__init_rwsem(%struct.rw_semaphore* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @anon_vma_ctor.__key) #12
  %refcount = getelementptr inbounds i8, i8* %data, i64 48
  %counter.i = bitcast i8* %refcount to i32*
  store volatile i32 0, i32* %counter.i, align 4
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %data, i64 64
  %1 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to %struct.rb_node**
  store %struct.rb_node* null, %struct.rb_node** %1, align 8
  %.compoundliteral.sroa.2.0..sroa_idx2 = getelementptr inbounds i8, i8* %data, i64 72
  %2 = bitcast i8* %.compoundliteral.sroa.2.0..sroa_idx2 to %struct.rb_node**
  store %struct.rb_node* null, %struct.rb_node** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.anon_vma* @page_get_anon_vma(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load volatile %struct.address_space*, %struct.address_space** %mapping, align 8
  %1 = ptrtoint %struct.address_space* %0 to i64
  %and = and i64 %1, 3
  %cmp.not = icmp eq i64 %and, 1
  br i1 %cmp.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call = call i1 @page_mapped(%struct.page* noundef %page) #12
  br i1 %call, label %if.end2, label %out

if.end2:                                          ; preds = %if.end
  %sub = add i64 %1, -1
  %2 = inttoptr i64 %sub to %struct.anon_vma*
  %refcount = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %2, i64 0, i32 2
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %refcount, i64 0, i32 0
  %3 = load volatile i32, i32* %counter.i.i.i.i, align 4
  %4 = bitcast %struct.atomic_t* %refcount to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %if.end2
  %c.0.i.i.i.i = phi i32 [ %3, %if.end2 ], [ %call11.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %out, label %do.cond.i.i.i.i, !prof !7

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %4, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #12
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end5, label %do.body.i.i.i.i, !prof !8

if.end5:                                          ; preds = %do.cond.i.i.i.i
  %call6 = call i1 @page_mapped(%struct.page* noundef %page) #12
  br i1 %call6, label %out, label %if.then7

if.then7:                                         ; preds = %if.end5
  call fastcc void @rcu_read_unlock() #11
  call fastcc void @put_anon_vma(%struct.anon_vma* noundef %2) #11
  br label %cleanup

out:                                              ; preds = %do.body.i.i.i.i, %if.end5, %if.end, %entry
  %anon_vma.0 = phi %struct.anon_vma* [ null, %entry ], [ %2, %if.end5 ], [ null, %if.end ], [ null, %do.body.i.i.i.i ]
  call fastcc void @rcu_read_unlock() #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7
  %retval.0 = phi %struct.anon_vma* [ %anon_vma.0, %out ], [ null, %if.then7 ]
  ret %struct.anon_vma* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @page_mapped(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.anon_vma* @page_lock_anon_vma_read(%struct.page* noundef %page) #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load volatile %struct.address_space*, %struct.address_space** %mapping, align 8
  %1 = ptrtoint %struct.address_space* %0 to i64
  %and = and i64 %1, 3
  %cmp.not = icmp eq i64 %and, 1
  br i1 %cmp.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call = call i1 @page_mapped(%struct.page* noundef %page) #12
  br i1 %call, label %if.end2, label %out

if.end2:                                          ; preds = %if.end
  %sub = add i64 %1, -1
  %2 = inttoptr i64 %sub to %struct.anon_vma*
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %2, i64 0, i32 0
  %3 = load volatile %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %3, i64 0, i32 1
  %call7 = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %rwsem) #12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end2
  %call9 = call i1 @page_mapped(%struct.page* noundef %page) #12
  br i1 %call9, label %out, label %if.then10

if.then10:                                        ; preds = %if.then8
  call void @up_read(%struct.rw_semaphore* noundef %rwsem) #12
  br label %out

if.end13:                                         ; preds = %if.end2
  %refcount = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %2, i64 0, i32 2
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %refcount, i64 0, i32 0
  %4 = load volatile i32, i32* %counter.i.i.i.i, align 4
  %5 = bitcast %struct.atomic_t* %refcount to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %if.end13
  %c.0.i.i.i.i = phi i32 [ %4, %if.end13 ], [ %call11.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %out, label %do.cond.i.i.i.i, !prof !7

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %5, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #12
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end16, label %do.body.i.i.i.i, !prof !8

if.end16:                                         ; preds = %do.cond.i.i.i.i
  %call17 = call i1 @page_mapped(%struct.page* noundef %page) #12
  call fastcc void @rcu_read_unlock() #11
  br i1 %call17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end16
  call fastcc void @put_anon_vma(%struct.anon_vma* noundef %2) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  call fastcc void @anon_vma_lock_read(%struct.anon_vma* noundef %2) #11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %refcount) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then22, label %cleanup

if.then22:                                        ; preds = %if.end19
  call fastcc void @anon_vma_unlock_read(%struct.anon_vma* noundef %2) #11
  call void @__put_anon_vma(%struct.anon_vma* noundef %2) #11
  br label %cleanup

out:                                              ; preds = %do.body.i.i.i.i, %if.then8, %if.then10, %if.end, %entry
  %anon_vma.1 = phi %struct.anon_vma* [ null, %entry ], [ %2, %if.then8 ], [ null, %if.then10 ], [ null, %if.end ], [ null, %do.body.i.i.i.i ]
  call fastcc void @rcu_read_unlock() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then22, %out, %if.then18
  %retval.0 = phi %struct.anon_vma* [ %anon_vma.1, %out ], [ null, %if.then18 ], [ null, %if.then22 ], [ %2, %if.end19 ]
  ret %struct.anon_vma* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_lock_read(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @down_read(%struct.rw_semaphore* noundef %rwsem) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_unlock_read(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @up_read(%struct.rw_semaphore* noundef %rwsem) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__put_anon_vma(%struct.anon_vma* noundef %anon_vma) local_unnamed_addr #0 {
entry:
  %root1 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root1, align 8
  call fastcc void @anon_vma_free(%struct.anon_vma* noundef %anon_vma) #11
  %cmp.not = icmp eq %struct.anon_vma* %0, %anon_vma
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %refcount = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 2
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %refcount) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @anon_vma_free(%struct.anon_vma* noundef %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_unlock_anon_vma_read(%struct.anon_vma* nocapture noundef readonly %anon_vma) local_unnamed_addr #0 {
entry:
  call fastcc void @anon_vma_unlock_read(%struct.anon_vma* noundef %anon_vma) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @page_address_in_vma(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.anon_vma* @page_anon_vma(%struct.page* noundef %page) #12
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %4 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool2 = icmp ne %struct.anon_vma* %4, null
  %tobool3 = icmp ne %struct.anon_vma* %call1, null
  %or.cond = select i1 %tobool2, i1 %tobool3, i1 false
  br i1 %or.cond, label %lor.lhs.false4, label %return

lor.lhs.false4:                                   ; preds = %if.then
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %4, i64 0, i32 0
  %5 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %root6 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %call1, i64 0, i32 0
  %6 = load %struct.anon_vma*, %struct.anon_vma** %root6, align 8
  %cmp.not = icmp eq %struct.anon_vma* %5, %6
  br i1 %cmp.not, label %if.end17, label %return

if.else:                                          ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %7 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool8.not = icmp eq %struct.file* %7, null
  br i1 %tobool8.not, label %return, label %if.else10

if.else10:                                        ; preds = %if.else
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %7, i64 0, i32 17
  %8 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %call12 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %9 = inttoptr i64 %call12 to %struct.page*
  %mapping = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 1, i32 0, i32 1
  %10 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %cmp13.not = icmp eq %struct.address_space* %8, %10
  br i1 %cmp13.not, label %if.end17, label %return

if.end17:                                         ; preds = %lor.lhs.false4, %if.else10
  %call18 = call fastcc i64 @vma_address(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma) #11
  br label %return

return:                                           ; preds = %lor.lhs.false4, %if.then, %if.else10, %if.else, %if.end17
  %retval.1 = phi i64 [ %call18, %if.end17 ], [ -14, %if.else ], [ -14, %if.else10 ], [ -14, %if.then ], [ -14, %lor.lhs.false4 ]
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.anon_vma* @page_anon_vma(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.11* %0 to i64*
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @vma_address(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @page_to_pgoff(%struct.page* noundef %page) #11
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %0 = load i64, i64* %vm_pgoff, align 8
  %cmp.not = icmp ult i64 %call, %0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %call, %0
  %shl = shl i64 %sub, 12
  %add = add i64 %1, %shl
  %cmp3 = icmp ult i64 %add, %1
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %2 = load i64, i64* %vm_end, align 8
  %cmp4.not = icmp ult i64 %add, %2
  br i1 %cmp4.not, label %if.end16, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  br label %if.end16

if.else:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 65536
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call7 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #11
  %add8 = add i64 %call, -1
  %sub9 = add i64 %add8, %call7
  %5 = load i64, i64* %vm_pgoff, align 8
  %cmp11.not = icmp ult i64 %sub9, %5
  br i1 %cmp11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %vm_start13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %6 = load i64, i64* %vm_start13, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %land.lhs.true, %if.then12, %lor.lhs.false, %if.then5
  %address.0 = phi i64 [ -14, %if.then5 ], [ %add, %lor.lhs.false ], [ %6, %if.then12 ], [ -14, %land.lhs.true ], [ -14, %if.else ]
  ret i64 %address.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pmd_t* @mm_find_pmd(%struct.mm_struct* nocapture noundef readonly %mm, i64 noundef %address) local_unnamed_addr #0 {
entry:
  %pgd1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %0 = load %struct.pgd_t*, %struct.pgd_t** %pgd1, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %address) #11
  %call3 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call) #11
  %call10 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %call3) #11
  %coerce.dive13 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call10, i64 0, i32 0, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive13, align 8
  %and = and i64 %1, 288230376151711745
  %tobool16.not = icmp eq i64 %and, 0
  br i1 %tobool16.not, label %out, label %if.end18

if.end18:                                         ; preds = %entry
  %call19 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %call10, i64 noundef %address) #11
  %pmde.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call19, i64 0, i32 0
  %pmde.sroa.0.0.copyload = load i64, i64* %pmde.sroa.0.0..sroa_idx, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %call21 = call fastcc i32 @pmd_present(i64 %pmde.sroa.0.0.copyload) #11
  %tobool22.not = icmp eq i32 %call21, 0
  %spec.select = select i1 %tobool22.not, %struct.pmd_t* null, %struct.pmd_t* %call19
  br label %out

out:                                              ; preds = %if.end18, %entry
  %pmd.0 = phi %struct.pmd_t* [ null, %entry ], [ %spec.select, %if.end18 ]
  ret %struct.pmd_t* %pmd.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #7 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #8 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #11
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #11
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pmd_present(i64 %pmd.coerce) unnamed_addr #7 {
entry:
  %and = and i64 %pmd.coerce, 288230376151711745
  %tobool.not = icmp eq i64 %and, 0
  %and4 = lshr i64 %pmd.coerce, 59
  %0 = trunc i64 %and4 to i32
  %1 = and i32 %0, 1
  %2 = select i1 %tobool.not, i32 %1, i32 1
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @page_referenced(%struct.page* noundef %page, i32 noundef %is_locked, %struct.mem_cgroup* noundef %memcg, i64* nocapture noundef writeonly %vm_flags) local_unnamed_addr #0 {
entry:
  %pra = alloca %struct.page_referenced_arg, align 8
  %rwc = alloca %struct.rmap_walk_control, align 8
  %0 = bitcast %struct.page_referenced_arg* %pra to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #13
  %mapcount = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %pra, i64 0, i32 0
  %call = call fastcc i32 @total_mapcount(%struct.page* noundef %page) #11
  store i32 %call, i32* %mapcount, align 8
  %referenced = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %pra, i64 0, i32 1
  store i32 0, i32* %referenced, align 4
  %vm_flags1 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %pra, i64 0, i32 2
  store i64 0, i64* %vm_flags1, align 8
  %memcg2 = getelementptr inbounds %struct.page_referenced_arg, %struct.page_referenced_arg* %pra, i64 0, i32 3
  store %struct.mem_cgroup* %memcg, %struct.mem_cgroup** %memcg2, align 8
  %1 = bitcast %struct.rmap_walk_control* %rwc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  %2 = bitcast %struct.rmap_walk_control* %rwc to %struct.page_referenced_arg**
  store %struct.page_referenced_arg* %pra, %struct.page_referenced_arg** %2, align 8
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 1
  store i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @page_referenced_one, i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)** %rmap_one, align 8
  %done = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 2
  store i32 (%struct.page*)* null, i32 (%struct.page*)** %done, align 8
  %anon_lock = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 3
  store %struct.anon_vma* (%struct.page*)* @page_lock_anon_vma_read, %struct.anon_vma* (%struct.page*)** %anon_lock, align 8
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 4
  store i1 (%struct.vm_area_struct*, i8*)* null, i1 (%struct.vm_area_struct*, i8*)** %invalid_vma, align 8
  store i64 0, i64* %vm_flags, align 8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call i8* @page_rmapping(%struct.page* noundef %page) #12
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq i32 %is_locked, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end7
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %3 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 1, i32 0, i32 1
  %4 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %5 = ptrtoint %struct.address_space* %4 to i64
  %6 = and i64 %5, 1
  %tobool10.not = icmp eq i64 %6, 0
  br i1 %tobool10.not, label %if.then13, label %if.end18

if.then13:                                        ; preds = %land.lhs.true
  %call14 = call fastcc i32 @trylock_page(%struct.page* noundef %page) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.then13, %if.end7
  %we_locked.0 = phi i32 [ 0, %if.end7 ], [ %call14, %if.then13 ], [ 0, %land.lhs.true ]
  %tobool19.not = icmp eq %struct.mem_cgroup* %memcg, null
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  store i1 (%struct.vm_area_struct*, i8*)* @invalid_page_referenced_vma, i1 (%struct.vm_area_struct*, i8*)** %invalid_vma, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  call void @rmap_walk(%struct.page* noundef %page, %struct.rmap_walk_control* noundef nonnull %rwc) #11
  %7 = load i64, i64* %vm_flags1, align 8
  store i64 %7, i64* %vm_flags, align 8
  %tobool24.not = icmp eq i32 %we_locked.0, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @unlock_page(%struct.page* noundef %page) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %8 = load i32, i32* %referenced, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end, %entry, %if.end26
  %retval.0 = phi i32 [ %8, %if.end26 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.then13 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @total_mapcount(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_mapcount(%struct.page* noundef %page) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @page_referenced_one(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i8* nocapture noundef %arg) #0 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 8
  %0 = bitcast %struct.page_vma_mapped_walk* %pvmw to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #13
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 6
  %2 = bitcast i32* %1 to i64*, !annotation !11
  store i64 0, i64* %2, align 8, !annotation !11
  %page1 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page1, align 8
  %vma2 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 1
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma2, align 8
  %address3 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 2
  store i64 %address, i64* %address3, align 8
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 3
  store %struct.pmd_t* null, %struct.pmd_t** %pmd, align 8
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 4
  store %struct.pte_t* null, %struct.pte_t** %pte, align 8
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 5
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8
  %call80 = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call80, label %while.body.lr.ph, label %if.end54

while.body.lr.ph:                                 ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %mapcount = bitcast i8* %arg to i32*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end39
  %referenced.081 = phi i32 [ 0, %while.body.lr.ph ], [ %referenced.1, %if.end39 ]
  %3 = load i64, i64* %address3, align 8
  %4 = load i64, i64* %vm_flags, align 8
  %and = and i64 %4, 8192
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call fastcc void @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #11
  %vm_flags5 = getelementptr inbounds i8, i8* %arg, i64 8
  %5 = bitcast i8* %vm_flags5 to i64*
  %6 = load i64, i64* %5, align 8
  %or = or i64 %6, 8192
  store i64 %or, i64* %5, align 8
  br label %cleanup

if.end:                                           ; preds = %while.body
  %7 = load %struct.pte_t*, %struct.pte_t** %pte, align 8
  %tobool7.not = icmp eq %struct.pte_t* %7, null
  br i1 %tobool7.not, label %if.then30, label %if.then8

if.then8:                                         ; preds = %if.end
  %call10 = call fastcc i32 @ptep_clear_flush_young(%struct.vm_area_struct* noundef %vma, i64 noundef %3, %struct.pte_t* noundef nonnull %7) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end39, label %if.then12

if.then12:                                        ; preds = %if.then8
  %8 = load i64, i64* %vm_flags, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i32 %9, 15
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %spec.select = add i32 %12, %referenced.081
  br label %if.end39

if.then30:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/rmap.c\22; .popsection; .long 14472b - 14470b; .short 812; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !12
  br label %if.end39

if.end39:                                         ; preds = %if.then12, %if.then8, %if.then30
  %referenced.1 = phi i32 [ %referenced.081, %if.then8 ], [ %referenced.081, %if.then30 ], [ %spec.select, %if.then12 ]
  %13 = load i32, i32* %mapcount, align 8
  %dec = add i32 %13, -1
  store i32 %dec, i32* %mapcount, align 8
  %call = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call, label %while.body, label %while.end

while.end:                                        ; preds = %if.end39
  %tobool40.not = icmp eq i32 %referenced.1, 0
  br i1 %tobool40.not, label %if.end54, label %if.then48

if.then48:                                        ; preds = %while.end
  %referenced49 = getelementptr inbounds i8, i8* %arg, i64 4
  %14 = bitcast i8* %referenced49 to i32*
  %15 = load i32, i32* %14, align 4
  %inc50 = add i32 %15, 1
  store i32 %inc50, i32* %14, align 4
  %vm_flags51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %16 = load i64, i64* %vm_flags51, align 8
  %vm_flags52 = getelementptr inbounds i8, i8* %arg, i64 8
  %17 = bitcast i8* %vm_flags52 to i64*
  %18 = load i64, i64* %17, align 8
  %or53 = or i64 %18, %16
  store i64 %or53, i64* %17, align 8
  br label %if.end54

if.end54:                                         ; preds = %entry, %if.then48, %while.end
  %mapcount55 = bitcast i8* %arg to i32*
  %19 = load i32, i32* %mapcount55, align 8
  %tobool56.not = icmp ne i32 %19, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ %tobool56.not, %if.end54 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #13
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @page_rmapping(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #11
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @invalid_page_referenced_vma(%struct.vm_area_struct* nocapture noundef readnone %vma, i8* nocapture noundef readnone %arg) #7 {
entry:
  ret i1 false
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rmap_walk(%struct.page* noundef %page, %struct.rmap_walk_control* nocapture noundef readonly %rwc) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool4.not = icmp eq i64 %3, 0
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %entry
  call fastcc void @rmap_walk_anon(%struct.page* noundef %page, %struct.rmap_walk_control* noundef %rwc, i1 noundef false) #11
  br label %if.end7

if.else6:                                         ; preds = %entry
  call fastcc void @rmap_walk_file(%struct.page* noundef %page, %struct.rmap_walk_control* noundef %rwc, i1 noundef false) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @page_mkclean(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %cleaned = alloca i32, align 4
  %rwc = alloca %struct.rmap_walk_control, align 8
  %0 = bitcast i32* %cleaned to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %cleaned, align 4
  %1 = bitcast %struct.rmap_walk_control* %rwc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #13
  %2 = bitcast %struct.rmap_walk_control* %rwc to i32**
  store i32* %cleaned, i32** %2, align 8
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 1
  store i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @page_mkclean_one, i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)** %rmap_one, align 8
  %done = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 2
  store i32 (%struct.page*)* null, i32 (%struct.page*)** %done, align 8
  %anon_lock = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 3
  store %struct.anon_vma* (%struct.page*)* null, %struct.anon_vma* (%struct.page*)** %anon_lock, align 8
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 4
  store i1 (%struct.vm_area_struct*, i8*)* @invalid_mkclean_vma, i1 (%struct.vm_area_struct*, i8*)** %invalid_vma, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i23 = and i64 %4, 1
  %tobool.not = icmp eq i64 %conv.i.i23, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !7

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/rmap.c\22; .popsection; .long 14472b - 14470b; .short 994; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !13
  unreachable

do.end9:                                          ; preds = %entry
  %call10 = call i1 @page_mapped(%struct.page* noundef %page) #12
  br i1 %call10, label %if.end12, label %cleanup

if.end12:                                         ; preds = %do.end9
  %call13 = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #12
  %tobool14.not = icmp eq %struct.address_space* %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end12
  call void @rmap_walk(%struct.page* noundef %page, %struct.rmap_walk_control* noundef nonnull %rwc) #11
  %5 = load i32, i32* %cleaned, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %if.end16
  %retval.0 = phi i32 [ %5, %if.end16 ], [ 0, %do.end9 ], [ 0, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @page_mkclean_one(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i8* nocapture noundef %arg) #0 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 8
  %range = alloca %struct.mmu_notifier_range, align 8
  %0 = bitcast %struct.page_vma_mapped_walk* %pvmw to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #13
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 6
  %2 = bitcast i32* %1 to i64*, !annotation !11
  store i64 0, i64* %2, align 8, !annotation !11
  %page1 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page1, align 8
  %vma2 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 1
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma2, align 8
  %address3 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 2
  store i64 %address, i64* %address3, align 8
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 3
  store %struct.pmd_t* null, %struct.pmd_t** %pmd, align 8
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 4
  store %struct.pte_t* null, %struct.pte_t** %pte, align 8
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 5
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8
  %flags = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 6
  store i32 1, i32* %flags, align 8
  %3 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #13
  %4 = bitcast i8* %arg to i32*
  %call = call fastcc i64 @vma_address_end(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma) #11
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %address, i64 noundef %call) #11
  %call490 = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call490, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %cleanup53
  %5 = load i64, i64* %address3, align 8
  %6 = load %struct.pte_t*, %struct.pte_t** %pte, align 8
  %tobool.not = icmp eq %struct.pte_t* %6, null
  br i1 %tobool.not, label %if.end49.thread, label %if.then

if.then:                                          ; preds = %while.body
  %pte10 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %6, i64 0, i32 0
  %7 = load i64, i64* %pte10, align 8
  %and = and i64 %7, 36028797018963968
  %tobool11.not = icmp eq i64 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.then51

lor.lhs.false:                                    ; preds = %if.then
  %and13 = and i64 %7, 2251799813685248
  %8 = and i64 %7, 2251799813685376
  %9 = icmp ne i64 %8, 2251799813685248
  %tobool21.not = icmp eq i64 %and13, 0
  %or.cond89 = and i1 %9, %tobool21.not
  br i1 %or.cond89, label %cleanup53, label %if.then51

if.end49.thread:                                  ; preds = %while.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/rmap.c\22; .popsection; .long 14472b - 14470b; .short 956; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !14
  br label %cleanup53

if.then51:                                        ; preds = %lor.lhs.false, %if.then
  %call25 = call i64 @ptep_clear_flush(%struct.vm_area_struct* noundef %vma, i64 noundef %5, %struct.pte_t* noundef nonnull %6) #12
  %call28 = call fastcc i64 @pte_wrprotect(i64 %call25) #11
  %call32 = call fastcc i64 @pte_mkclean(i64 %call28) #11
  call fastcc void @set_pte_at(%struct.pte_t* noundef nonnull %6, i64 %call32) #11
  %10 = load i32, i32* %4, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %4, align 4
  br label %cleanup53

cleanup53:                                        ; preds = %lor.lhs.false, %if.end49.thread, %if.then51
  %call4 = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call4, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup53, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #13
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i1 @invalid_mkclean_vma(%struct.vm_area_struct* nocapture noundef readonly %vma, i8* nocapture noundef readnone %arg) #8 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 8
  %tobool.not = icmp eq i64 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @page_move_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma) local_unnamed_addr #3 {
entry:
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %0 = bitcast %struct.anon_vma** %anon_vma1 to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %2 = inttoptr i64 %call to %struct.page*
  %add.ptr = getelementptr i8, i8* %1, i64 1
  %3 = bitcast i8* %add.ptr to %struct.address_space*
  %mapping = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 1, i32 0, i32 1
  store volatile %struct.address_space* %3, %struct.address_space** %mapping, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_add_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address, i1 noundef %compound) local_unnamed_addr #0 {
entry:
  %cond = select i1 %compound, i32 2, i32 0
  call void @do_page_add_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %cond) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_page_add_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %entry
  %call6 = call fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef %page) #11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef 1, %struct.atomic_t* noundef %call6) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %cond.true, label %cleanup

if.end12:                                         ; preds = %entry
  %_mapcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0
  %call.i.i.i.i58 = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef 1, %struct.atomic_t* noundef %_mapcount) #12
  %cmp.i.i59 = icmp eq i32 %call.i.i.i.i58, 0
  br i1 %cmp.i.i59, label %if.then34, label %cleanup

cond.true:                                        ; preds = %if.then5
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 28, i32 noundef 1) #11
  br label %if.then34

if.then34:                                        ; preds = %if.end12, %cond.true
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 17, i32 noundef 1) #11
  %and35 = and i32 %flags, 1
  call fastcc void @__page_set_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %and35) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end12, %if.then34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef readnone %page) unnamed_addr #7 {
entry:
  %0 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %1 = bitcast %union.anon.11* %0 to %struct.anon.20*
  %compound_mapcount = getelementptr inbounds %struct.anon.20, %struct.anon.20* %1, i64 0, i32 3
  ret %struct.atomic_t* %compound_mapcount
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %idx, i32 noundef %val) unnamed_addr #0 {
entry:
  %conv = sext i32 %val to i64
  call void @__mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %idx, i64 noundef %conv) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__page_set_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address, i32 noundef %exclusive) unnamed_addr #0 {
entry:
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %0 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma1, align 8
  %tobool.not = icmp eq %struct.anon_vma* %0, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !7

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/rmap.c\22; .popsection; .long 14472b - 14470b; .short 1049; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !15
  unreachable

do.end10:                                         ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %1 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1, i32 0, i32 1
  %2 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %3 = ptrtoint %struct.address_space* %2 to i64
  %4 = and i64 %3, 1
  %tobool11.not = icmp eq i64 %4, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %do.end10
  %tobool14.not = icmp eq i32 %exclusive, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 0
  %5 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %anon_vma.0 = phi %struct.anon_vma* [ %0, %if.end13 ], [ %5, %if.then15 ]
  %6 = bitcast %struct.anon_vma* %anon_vma.0 to i8*
  %add.ptr = getelementptr i8, i8* %6, i64 1
  %7 = bitcast i8* %add.ptr to %struct.address_space*
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  store volatile %struct.address_space* %7, %struct.address_space** %mapping, align 8
  %call26 = call fastcc i64 @linear_page_index(%struct.vm_area_struct* noundef %vma, i64 noundef %address) #11
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  store i64 %call26, i64* %index, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_add_new_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address, i1 noundef %compound) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %1, 524288
  store i64 %or.i.i, i64* %flags.i, align 8
  br i1 %compound, label %cond.true, label %if.else.critedge

cond.true:                                        ; preds = %entry
  %call2 = call fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef %page) #11
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call2, i64 0, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %call3 = call fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) #11
  br i1 %call3, label %if.then4, label %if.end

if.then4:                                         ; preds = %cond.true
  %call5 = call fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef %page) #11
  %counter.i18 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call5, i64 0, i32 0
  store volatile i32 0, i32* %counter.i18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %cond.true
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 28, i32 noundef 1) #11
  br label %if.end6

if.else.critedge:                                 ; preds = %entry
  %counter.i22 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  store volatile i32 0, i32* %counter.i22, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else.critedge, %if.end
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 17, i32 noundef 1) #11
  call fastcc void @__page_set_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef 1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 65536
  %tobool.not.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %land.rhs

PageCompound.exit:                                ; preds = %entry
  %3 = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.11* %3 to i64*
  %4 = load volatile i64, i64* %compound_head.i.i, align 8
  %5 = and i64 %4, 1
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %PageCompound.exit
  %call2 = call fastcc i32 @compound_order(%struct.page* noundef %0) #11
  %cmp = icmp ugt i32 %call2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %PageCompound.exit
  %6 = phi i1 [ false, %PageCompound.exit ], [ %cmp, %land.rhs ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef readnone %page) unnamed_addr #7 {
entry:
  %hpage_pinned_refcount = getelementptr %struct.page, %struct.page* %page, i64 2, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %hpage_pinned_refcount to %struct.atomic_t*
  ret %struct.atomic_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_add_file_rmap(%struct.page* noundef %page, i1 noundef %compound) local_unnamed_addr #0 {
entry:
  %_mapcount27 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef 1, %struct.atomic_t* noundef %_mapcount27) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end31, label %out

if.end31:                                         ; preds = %entry
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 18, i32 noundef 1) #11
  br label %out

out:                                              ; preds = %entry, %if.end31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_page_mlock(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_remove_rmap(%struct.page* noundef %page, i1 noundef %compound) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @page_remove_file_rmap(%struct.page* noundef %page, i1 noundef %compound) #11
  br label %out

if.end:                                           ; preds = %entry
  br i1 %compound, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call fastcc void @page_remove_anon_compound_rmap(%struct.page* noundef %page) #11
  br label %out

if.end4:                                          ; preds = %if.end
  %_mapcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef -1, %struct.atomic_t* noundef %_mapcount) #12
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end7, label %out

if.end7:                                          ; preds = %if.end4
  call fastcc void @__dec_lruvec_page_state(%struct.page* noundef %page) #11
  %call.i30 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %4 = inttoptr i64 %call.i30 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 2097152
  %tobool9.not = icmp eq i64 %6, 0
  br i1 %tobool9.not, label %out, label %if.then12, !prof !8

if.then12:                                        ; preds = %if.end7
  call void @clear_page_mlock(%struct.page* noundef %page) #12
  br label %out

out:                                              ; preds = %if.end7, %if.then12, %if.end4, %if.then3, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_remove_file_rmap(%struct.page* noundef %page, i1 noundef %compound) unnamed_addr #0 {
entry:
  %_mapcount25 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef -1, %struct.atomic_t* noundef %_mapcount25) #12
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end29, label %cleanup42

if.end29:                                         ; preds = %entry
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 18, i32 noundef -1) #11
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 2097152
  %tobool32.not = icmp eq i64 %2, 0
  br i1 %tobool32.not, label %cleanup42, label %if.then40, !prof !8

if.then40:                                        ; preds = %if.end29
  call void @clear_page_mlock(%struct.page* noundef %page) #12
  br label %cleanup42

cleanup42:                                        ; preds = %if.end29, %if.then40, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_remove_anon_compound_rmap(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.atomic_t* @compound_mapcount_ptr(%struct.page* noundef %page) #11
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef -1, %struct.atomic_t* noundef %call) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dec_lruvec_page_state(%struct.page* nocapture noundef readnone %page) unnamed_addr #0 {
entry:
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 17, i32 noundef -1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @try_to_unmap(%struct.page* noundef %page, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %rwc = alloca %struct.rmap_walk_control, align 8
  %0 = bitcast %struct.rmap_walk_control* %rwc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  %arg = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 0
  %conv = zext i32 %flags to i64
  %1 = inttoptr i64 %conv to i8*
  store i8* %1, i8** %arg, align 8
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 1
  store i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @try_to_unmap_one, i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)** %rmap_one, align 8
  %done = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 2
  store i32 (%struct.page*)* @page_not_mapped, i32 (%struct.page*)** %done, align 8
  %anon_lock = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 3
  store %struct.anon_vma* (%struct.page*)* @page_lock_anon_vma_read, %struct.anon_vma* (%struct.page*)** %anon_lock, align 8
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 4
  store i1 (%struct.vm_area_struct*, i8*)* null, i1 (%struct.vm_area_struct*, i8*)** %invalid_vma, align 8
  %and = and i32 %flags, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @rmap_walk_locked(%struct.page* noundef %page, %struct.rmap_walk_control* noundef nonnull %rwc) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @rmap_walk(%struct.page* noundef %page, %struct.rmap_walk_control* noundef nonnull %rwc) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @try_to_unmap_one(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i8* noundef %arg) #0 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 8
  %range = alloca %struct.mmu_notifier_range, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %1 = bitcast %struct.page_vma_mapped_walk* %pvmw to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #13
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 6
  %3 = bitcast i32* %2 to i64*, !annotation !11
  store i64 0, i64* %3, align 8, !annotation !11
  %page1 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page1, align 8
  %vma2 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 1
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma2, align 8
  %address3 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 2
  store i64 %address, i64* %address3, align 8
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 3
  store %struct.pmd_t* null, %struct.pmd_t** %pmd, align 8
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 4
  store %struct.pte_t* null, %struct.pte_t** %pte, align 8
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 5
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8
  %4 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !11
  %5 = ptrtoint i8* %arg to i64
  %conv = trunc i64 %5 to i32
  %and = and i32 %conv, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 6
  store i32 1, i32* %flags, align 8
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.then
  %call11 = call fastcc i64 @vma_address_end(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma) #11
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %address, i64 noundef %call11) #11
  %call18366 = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call18366, label %while.body.lr.ph, label %cleanup236

while.body.lr.ph:                                 ; preds = %if.end9
  %and19 = and i32 %conv, 8
  %tobool20.not = icmp eq i32 %and19, 0
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %mmlist = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %discard
  br i1 %tobool20.not, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %while.body
  %6 = load i64, i64* %vm_flags, align 8
  %and21 = and i64 %6, 8192
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.end36, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  call void @mlock_vma_page(%struct.page* noundef %page) #12
  br label %cleanup236.sink.split

if.end36:                                         ; preds = %land.lhs.true, %while.body
  %7 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %7, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %idx.neg37 = sub nsw i64 0, %sub.ptr.div
  %add.ptr38 = getelementptr %struct.page, %struct.page* %page, i64 %idx.neg37
  %8 = load %struct.pte_t*, %struct.pte_t** %pte, align 8
  %pte40 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %8, i64 0, i32 0
  %9 = load i64, i64* %pte40, align 8
  %and41 = lshr i64 %9, 12
  %shr42 = and i64 %and41, 68719476735
  %add.ptr43 = getelementptr %struct.page, %struct.page* %add.ptr38, i64 %shr42
  %10 = load i64, i64* %address3, align 8
  %call82 = call i64 @ptep_clear_flush(%struct.vm_area_struct* noundef %vma, i64 noundef %10, %struct.pte_t* noundef %8) #12
  %and86 = and i64 %call82, 36028797018963968
  %tobool87.not = icmp ne i64 %and86, 0
  %11 = and i64 %call82, 2251799813685376
  %12 = icmp eq i64 %11, 2251799813685248
  %or.cond = or i1 %tobool87.not, %12
  br i1 %or.cond, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end36
  %call97 = call i32 @set_page_dirty(%struct.page* noundef %page) #12
  br label %if.end98

if.end98:                                         ; preds = %if.end36, %if.then96
  call fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %0) #11
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %13 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %13, i64 0, i32 1, i32 0, i32 1
  %14 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %15 = ptrtoint %struct.address_space* %14 to i64
  %16 = and i64 %15, 1
  %tobool134.not = icmp eq i64 %16, 0
  br i1 %tobool134.not, label %if.else228, label %if.then135

if.then135:                                       ; preds = %if.end98
  %17 = getelementptr inbounds %struct.page, %struct.page* %add.ptr43, i64 0, i32 1
  %private = getelementptr inbounds %union.anon.11, %union.anon.11* %17, i64 0, i32 0, i32 3
  %18 = load i64, i64* %private, align 8
  %call.i353 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %19 = inttoptr i64 %call.i353 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %19, i64 0, i32 0
  %20 = load volatile i64, i64* %flags.i, align 8
  %21 = and i64 %20, 524288
  %cmp.not = icmp eq i64 %21, 0
  br i1 %cmp.not, label %if.end164, label %if.then153, !prof !8

if.then153:                                       ; preds = %if.then135
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/rmap.c\22; .popsection; .long 14472b - 14470b; .short 1562; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !16
  br label %cleanup236.sink.split

if.end164:                                        ; preds = %if.then135
  %call.i354 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %22 = inttoptr i64 %call.i354 to %struct.page*
  %flags.i355 = getelementptr inbounds %struct.page, %struct.page* %22, i64 0, i32 0
  %23 = load volatile i64, i64* %flags.i355, align 8
  %24 = and i64 %23, 524288
  %tobool166.not = icmp eq i64 %24, 0
  br i1 %tobool166.not, label %if.then167, label %if.end175

if.then167:                                       ; preds = %if.end164
  %call.i357 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %25 = inttoptr i64 %call.i357 to %struct.page*
  %flags.i358 = getelementptr inbounds %struct.page, %struct.page* %25, i64 0, i32 0
  %26 = load volatile i64, i64* %flags.i358, align 8
  %27 = and i64 %26, 8
  %tobool169.not = icmp eq i64 %27, 0
  br i1 %tobool169.not, label %if.then170, label %if.end172

if.then170:                                       ; preds = %if.then167
  call fastcc void @dec_mm_counter(%struct.mm_struct* noundef %0, i32 noundef 1) #11
  br label %discard

if.end172:                                        ; preds = %if.then167
  %28 = load %struct.pte_t*, %struct.pte_t** %pte, align 8
  call fastcc void @set_pte_at(%struct.pte_t* noundef %28, i64 %call82) #11
  %call.i360 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %29 = inttoptr i64 %call.i360 to %struct.page*
  %flags.i361 = getelementptr inbounds %struct.page, %struct.page* %29, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags.i361) #12
  br label %cleanup236.sink.split

if.end175:                                        ; preds = %if.end164
  %call192 = call fastcc i32 @list_empty(%struct.list_head* noundef %mmlist) #11
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.end201, label %if.then194

if.then194:                                       ; preds = %if.end175
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @mmlist_lock, i64 0, i32 0, i32 0)) #12
  %call196 = call fastcc i32 @list_empty(%struct.list_head* noundef %mmlist) #11
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.end200, label %if.then198

if.then198:                                       ; preds = %if.then194
  call fastcc void @list_add(%struct.list_head* noundef %mmlist, %struct.list_head* noundef getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 16)) #11
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.then194
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @mmlist_lock, i64 0, i32 0, i32 0)) #12
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end175
  call fastcc void @dec_mm_counter(%struct.mm_struct* noundef %0, i32 noundef 1) #11
  call fastcc void @inc_mm_counter(%struct.mm_struct* noundef %0) #11
  %call204 = call fastcc i64 @swp_entry_to_pte(i64 %18) #11
  %30 = load %struct.pte_t*, %struct.pte_t** %pte, align 8
  call fastcc void @set_pte_at(%struct.pte_t* noundef %30, i64 %call204) #11
  br label %discard

if.else228:                                       ; preds = %if.end98
  %call229 = call fastcc i32 @mm_counter_file(%struct.page* noundef %page) #11, !range !17
  call fastcc void @dec_mm_counter(%struct.mm_struct* noundef %0, i32 noundef %call229) #11
  br label %discard

discard:                                          ; preds = %if.then170, %if.end201, %if.else228
  call void @page_remove_rmap(%struct.page* noundef %add.ptr43, i1 noundef false) #11
  call fastcc void @put_page(%struct.page* noundef %page) #11
  %call18 = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call18, label %while.body, label %cleanup236

cleanup236.sink.split:                            ; preds = %if.then153, %if.end172, %if.then23
  call fastcc void @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #11
  br label %cleanup236

cleanup236:                                       ; preds = %discard, %cleanup236.sink.split, %if.end9
  %ret.3.off0 = phi i1 [ true, %if.end9 ], [ false, %cleanup236.sink.split ], [ true, %discard ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #13
  ret i1 %ret.3.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @page_not_mapped(%struct.page* noundef %page) #0 {
entry:
  %call = call i1 @page_mapped(%struct.page* noundef %page) #12
  %lnot = xor i1 %call, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rmap_walk_locked(%struct.page* noundef %page, %struct.rmap_walk_control* nocapture noundef readonly %rwc) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @rmap_walk_anon(%struct.page* noundef %page, %struct.rmap_walk_control* noundef %rwc, i1 noundef true) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @rmap_walk_file(%struct.page* noundef %page, %struct.rmap_walk_control* noundef %rwc, i1 noundef true) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @try_to_migrate(%struct.page* noundef %page, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %rwc = alloca %struct.rmap_walk_control, align 8
  %0 = bitcast %struct.rmap_walk_control* %rwc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  %arg = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 0
  %conv = zext i32 %flags to i64
  %1 = inttoptr i64 %conv to i8*
  store i8* %1, i8** %arg, align 8
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 1
  store i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @try_to_migrate_one, i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)** %rmap_one, align 8
  %done = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 2
  store i32 (%struct.page*)* @page_not_mapped, i32 (%struct.page*)** %done, align 8
  %anon_lock = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 3
  store %struct.anon_vma* (%struct.page*)* @page_lock_anon_vma_read, %struct.anon_vma* (%struct.page*)** %anon_lock, align 8
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 4
  store i1 (%struct.vm_area_struct*, i8*)* null, i1 (%struct.vm_area_struct*, i8*)** %invalid_vma, align 8
  %and = and i32 %flags, -149
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/rmap.c\22; .popsection; .long 14472b - 14470b; .short 1943; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  br label %cleanup

if.end18:                                         ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %2 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 1, i32 0, i32 1
  %3 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %4 = ptrtoint %struct.address_space* %3 to i64
  %5 = and i64 %4, 1
  %tobool27.not = icmp eq i64 %5, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end18
  store i1 (%struct.vm_area_struct*, i8*)* @invalid_migration_vma, i1 (%struct.vm_area_struct*, i8*)** %invalid_vma, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end18
  %and31 = and i32 %flags, 128
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @rmap_walk_locked(%struct.page* noundef %page, %struct.rmap_walk_control* noundef nonnull %rwc) #11
  br label %cleanup

if.else:                                          ; preds = %if.end30
  call void @rmap_walk(%struct.page* noundef %page, %struct.rmap_walk_control* noundef nonnull %rwc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then33, %if.else
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @try_to_migrate_one(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i8* noundef %arg) #0 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 8
  %range = alloca %struct.mmu_notifier_range, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %1 = bitcast %struct.page_vma_mapped_walk* %pvmw to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #13
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 6
  %3 = bitcast i32* %2 to i64*, !annotation !11
  store i64 0, i64* %3, align 8, !annotation !11
  %page1 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page1, align 8
  %vma2 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 1
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma2, align 8
  %address3 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 2
  store i64 %address, i64* %address3, align 8
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 3
  store %struct.pmd_t* null, %struct.pmd_t** %pmd, align 8
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 4
  store %struct.pte_t* null, %struct.pte_t** %pte, align 8
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 5
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8
  %4 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #13
  %5 = ptrtoint i8* %arg to i64
  %and287 = and i64 %5, 16
  %tobool.not = icmp eq i64 %and287, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 6
  store i32 1, i32* %flags, align 8
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.then
  %call11 = call fastcc i64 @vma_address_end(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma) #11
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %address, i64 noundef %call11) #11
  %call18289 = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call18289, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end9
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end62
  %6 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %6, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %idx.neg19 = sub nsw i64 0, %sub.ptr.div
  %add.ptr20 = getelementptr %struct.page, %struct.page* %page, i64 %idx.neg19
  %7 = load %struct.pte_t*, %struct.pte_t** %pte, align 8
  %pte22 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %7, i64 0, i32 0
  %8 = load i64, i64* %pte22, align 8
  %and23 = lshr i64 %8, 12
  %shr24 = and i64 %and23, 68719476735
  %add.ptr25 = getelementptr %struct.page, %struct.page* %add.ptr20, i64 %shr24
  %9 = load i64, i64* %address3, align 8
  %call49 = call i64 @ptep_clear_flush(%struct.vm_area_struct* noundef %vma, i64 noundef %9, %struct.pte_t* noundef %7) #12
  %and51 = and i64 %call49, 36028797018963968
  %tobool52.not = icmp ne i64 %and51, 0
  %10 = and i64 %call49, 2251799813685376
  %11 = icmp eq i64 %10, 2251799813685248
  %or.cond = or i1 %tobool52.not, %11
  br i1 %or.cond, label %if.then60, label %if.end62

if.then60:                                        ; preds = %while.body
  %call61 = call i32 @set_page_dirty(%struct.page* noundef %page) #12
  br label %if.end62

if.end62:                                         ; preds = %while.body, %if.then60
  call fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %0) #11
  %call169 = call fastcc i64 @swp_entry_to_pte(i64 0) #11
  %12 = load %struct.pte_t*, %struct.pte_t** %pte, align 8
  call fastcc void @set_pte_at(%struct.pte_t* noundef %12, i64 %call169) #11
  call void @page_remove_rmap(%struct.page* noundef %add.ptr25, i1 noundef false) #11
  call fastcc void @put_page(%struct.page* noundef %page) #11
  %call18 = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call18, label %while.body, label %while.end

while.end:                                        ; preds = %if.end62, %if.end9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #13
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i1 @invalid_migration_vma(%struct.vm_area_struct* nocapture noundef readonly %vma, i8* nocapture noundef readnone %arg) #8 {
entry:
  %call = call fastcc i1 @vma_is_temporary_stack(%struct.vm_area_struct* noundef %vma) #11
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_mlock(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %rwc = alloca %struct.rmap_walk_control, align 8
  %0 = bitcast %struct.rmap_walk_control* %rwc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8* noundef align 8 dereferenceable(40) bitcast (%struct.rmap_walk_control* @__const.page_mlock.rwc to i8*), i64 40, i1 false)
  call void @rmap_walk(%struct.page* noundef %page, %struct.rmap_walk_control* noundef nonnull %rwc) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @page_mlock_one(%struct.page* noundef %page, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i8* nocapture noundef readnone %unused) #0 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 8
  %0 = bitcast %struct.page_vma_mapped_walk* %pvmw to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #13
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 6
  %2 = bitcast i32* %1 to i64*, !annotation !11
  store i64 0, i64* %2, align 8, !annotation !11
  %page1 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page1, align 8
  %vma2 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 1
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma2, align 8
  %address3 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 2
  store i64 %address, i64* %address3, align 8
  %pmd = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 3
  store %struct.pmd_t* null, %struct.pmd_t** %pmd, align 8
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 4
  store %struct.pte_t* null, %struct.pte_t** %pte, align 8
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 5
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %3 = load i64, i64* %vm_flags, align 8
  %and = and i64 %3, 8192
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %call = call i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #12
  br i1 %call, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %vm_flags, align 8
  %and5 = and i64 %4, 8192
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %while.cond, label %if.then7

if.then7:                                         ; preds = %while.body
  call void @mlock_vma_page(%struct.page* noundef %page) #12
  call fastcc void @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* noundef nonnull %pvmw) #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %entry, %if.then7
  %retval.0 = phi i1 [ false, %if.then7 ], [ true, %entry ], [ true, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #13
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_free(%struct.anon_vma* noundef %anon_vma) unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  %call = call fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %rwsem) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @anon_vma_lock_write(%struct.anon_vma* noundef %anon_vma) #11
  call fastcc void @anon_vma_unlock_write(%struct.anon_vma* noundef %anon_vma) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @anon_vma_cachep, align 8
  %2 = bitcast %struct.anon_vma* %anon_vma to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %1, i8* noundef %2) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rmap_walk_anon(%struct.page* noundef %page, %struct.rmap_walk_control* nocapture noundef readonly %rwc, i1 noundef %locked) unnamed_addr #0 {
entry:
  br i1 %locked, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.anon_vma* @page_anon_vma(%struct.page* noundef %page) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call fastcc %struct.anon_vma* @rmap_walk_anon_lock(%struct.page* noundef %page, %struct.rmap_walk_control* noundef %rwc) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %anon_vma.0 = phi %struct.anon_vma* [ %call, %if.then ], [ %call1, %if.else ]
  %tobool2.not = icmp eq %struct.anon_vma* %anon_vma.0, null
  br i1 %tobool2.not, label %cleanup34, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i64 @page_to_pgoff(%struct.page* noundef %page) #11
  %rb_root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma.0, i64 0, i32 5
  %call7 = call %struct.anon_vma_chain* @anon_vma_interval_tree_iter_first(%struct.rb_root_cached* noundef %rb_root, i64 noundef %call5, i64 noundef %call5) #12
  %tobool8.not73 = icmp eq %struct.anon_vma_chain* %call7, null
  br i1 %tobool8.not73, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end4
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 4
  %arg = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 0
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 1
  %done = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %avc.074 = phi %struct.anon_vma_chain* [ %call7, %for.body.lr.ph ], [ %call30, %for.inc ]
  %vma9 = getelementptr inbounds %struct.anon_vma_chain, %struct.anon_vma_chain* %avc.074, i64 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma9, align 8
  %call10 = call fastcc i64 @vma_address(%struct.page* noundef %page, %struct.vm_area_struct* noundef %0) #11
  call fastcc void @_cond_resched() #11
  %1 = load i1 (%struct.vm_area_struct*, i8*)*, i1 (%struct.vm_area_struct*, i8*)** %invalid_vma, align 8
  %tobool12.not = icmp eq i1 (%struct.vm_area_struct*, i8*)* %1, null
  br i1 %tobool12.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %2 = load i8*, i8** %arg, align 8
  %call14 = call i1 %1(%struct.vm_area_struct* noundef %0, i8* noundef %2) #12
  br i1 %call14, label %for.inc, label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %for.body
  %3 = load i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)*, i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)** %rmap_one, align 8
  %4 = load i8*, i8** %arg, align 8
  %call19 = call i1 %3(%struct.page* noundef %page, %struct.vm_area_struct* noundef %0, i64 noundef %call10, i8* noundef %4) #12
  br i1 %call19, label %if.end21, label %for.end

if.end21:                                         ; preds = %if.end17
  %5 = load i32 (%struct.page*)*, i32 (%struct.page*)** %done, align 8
  %tobool22.not = icmp eq i32 (%struct.page*)* %5, null
  br i1 %tobool22.not, label %for.inc, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end21
  %call25 = call i32 %5(%struct.page* noundef %page) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %if.end21, %land.lhs.true23, %land.lhs.true
  %call30 = call %struct.anon_vma_chain* @anon_vma_interval_tree_iter_next(%struct.anon_vma_chain* noundef nonnull %avc.074, i64 noundef %call5, i64 noundef %call5) #12
  %tobool8.not = icmp eq %struct.anon_vma_chain* %call30, null
  br i1 %tobool8.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end17, %land.lhs.true23, %if.end4
  br i1 %locked, label %cleanup34, label %if.then32

if.then32:                                        ; preds = %for.end
  call fastcc void @anon_vma_unlock_read(%struct.anon_vma* noundef nonnull %anon_vma.0) #11
  br label %cleanup34

cleanup34:                                        ; preds = %for.end, %if.then32, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rmap_walk_file(%struct.page* noundef %page, %struct.rmap_walk_control* nocapture noundef readonly %rwc, i1 noundef %locked) unnamed_addr #0 {
entry:
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #12
  %tobool.not = icmp eq %struct.address_space* %call, null
  br i1 %tobool.not, label %cleanup32, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @page_to_pgoff(%struct.page* noundef %page) #11
  br i1 %locked, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @i_mmap_lock_read(%struct.address_space* noundef nonnull %call) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %i_mmap = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 5
  %call6 = call %struct.vm_area_struct* @vma_interval_tree_iter_first(%struct.rb_root_cached* noundef %i_mmap, i64 noundef %call1, i64 noundef %call1) #12
  %tobool7.not67 = icmp eq %struct.vm_area_struct* %call6, null
  br i1 %tobool7.not67, label %done28, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 4
  %arg = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 0
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 1
  %done = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %vma.068 = phi %struct.vm_area_struct* [ %call6, %for.body.lr.ph ], [ %call27, %for.inc ]
  %call8 = call fastcc i64 @vma_address(%struct.page* noundef %page, %struct.vm_area_struct* noundef nonnull %vma.068) #11
  call fastcc void @_cond_resched() #11
  %0 = load i1 (%struct.vm_area_struct*, i8*)*, i1 (%struct.vm_area_struct*, i8*)** %invalid_vma, align 8
  %tobool10.not = icmp eq i1 (%struct.vm_area_struct*, i8*)* %0, null
  br i1 %tobool10.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %1 = load i8*, i8** %arg, align 8
  %call12 = call i1 %0(%struct.vm_area_struct* noundef nonnull %vma.068, i8* noundef %1) #12
  br i1 %call12, label %for.inc, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %for.body
  %2 = load i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)*, i1 (%struct.page*, %struct.vm_area_struct*, i64, i8*)** %rmap_one, align 8
  %3 = load i8*, i8** %arg, align 8
  %call17 = call i1 %2(%struct.page* noundef %page, %struct.vm_area_struct* noundef nonnull %vma.068, i64 noundef %call8, i8* noundef %3) #12
  br i1 %call17, label %if.end19, label %done28

if.end19:                                         ; preds = %if.end15
  %4 = load i32 (%struct.page*)*, i32 (%struct.page*)** %done, align 8
  %tobool20.not = icmp eq i32 (%struct.page*)* %4, null
  br i1 %tobool20.not, label %for.inc, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end19
  %call23 = call i32 %4(%struct.page* noundef %page) #12
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.inc, label %done28

for.inc:                                          ; preds = %if.end19, %land.lhs.true21, %land.lhs.true
  %call27 = call %struct.vm_area_struct* @vma_interval_tree_iter_next(%struct.vm_area_struct* noundef nonnull %vma.068, i64 noundef %call1, i64 noundef %call1) #12
  %tobool7.not = icmp eq %struct.vm_area_struct* %call27, null
  br i1 %tobool7.not, label %done28, label %for.body

done28:                                           ; preds = %for.inc, %land.lhs.true21, %if.end15, %if.end5
  br i1 %locked, label %cleanup32, label %if.then30

if.then30:                                        ; preds = %done28
  call fastcc void @i_mmap_unlock_read(%struct.address_space* noundef nonnull %call) #11
  br label %cleanup32

cleanup32:                                        ; preds = %done28, %if.then30, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_insert(%struct.anon_vma_chain* noundef, %struct.rb_root_cached* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
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
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(%struct.rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #13, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !27
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_to_pgoff(%struct.page* nocapture noundef readonly %page) unnamed_addr #8 {
entry:
  %call4 = call fastcc i64 @page_to_index(%struct.page* noundef %page) #11
  ret i64 %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_to_index(%struct.page* nocapture noundef readonly %page) unnamed_addr #8 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #8 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #11
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #7 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #7 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

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
  %compound_head.i.i = bitcast %union.anon.11* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry, %PageCompound.exit
  %call3 = call i32 @__page_mapcount(%struct.page* noundef %page) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* nocapture noundef readonly %pvmw) unnamed_addr #0 {
entry:
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %pvmw, i64 0, i32 5
  %0 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %tobool3.not = icmp eq %struct.spinlock* %0, null
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptep_clear_flush_young(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address, %struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @ptep_test_and_clear_young(%struct.pte_t* noundef %ptep) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @flush_tlb_page_nosync(%struct.vm_area_struct* noundef %vma, i64 noundef %address) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptep_test_and_clear_young(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__ptep_test_and_clear_young(%struct.pte_t* noundef %ptep) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_page_nosync(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %uaddr) unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !28
  %shr = lshr i64 %uaddr, 12
  %and = and i64 %shr, 17592186044415
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 42, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %1, 48
  %or = or i64 %shl, %and
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or) #13, !srcloc !29
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #11
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %or, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #13, !srcloc !30
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ptep_test_and_clear_young(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  %pte.sroa.0.0.sroa_cast32 = bitcast i64* %pte.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast32)
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pte.sroa.0.0.copyload, i64* %pte.sroa.0, align 8
  %0 = bitcast %struct.pte_t* %ptep to i8*
  br label %do.body1

do.body1:                                         ; preds = %do.body1, %entry
  %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21 = phi i64 [ %call14.i, %do.body1 ], [ %pte.sroa.0.0.copyload, %entry ]
  %call = call fastcc i64 @pte_mkold(i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21) #11
  store i64 %call, i64* %pte.sroa.0, align 8
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %0, i64 noundef %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21, i64 noundef %call) #12
  store i64 %call14.i, i64* %pte.sroa.0, align 8
  %cmp.not = icmp eq i64 %call14.i, %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21
  br i1 %cmp.not, label %do.end13, label %do.body1

do.end13:                                         ; preds = %do.body1
  %1 = trunc i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload21 to i32
  %2 = lshr i32 %1, 10
  %3 = and i32 %2, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast32)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkold(i64 %pte.coerce) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 1024) #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #7 {
entry:
  %neg = xor i64 %prot.coerce, -1
  %and = and i64 %neg, %pte.coerce
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #13, !srcloc !31
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #5 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #12
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap() #12
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #5 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 2199023255552
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
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
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #12
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !32
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* nocapture noundef writeonly %range, i64 noundef %start, i64 noundef %end) unnamed_addr #10 {
entry:
  %start1 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  store i64 %start, i64* %start1, align 8
  %end2 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  store i64 %end, i64* %end2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @vma_address_end(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @page_to_pgoff(%struct.page* noundef %page) #11
  %call1 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #11
  %add = add i64 %call1, %call
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %1 = load i64, i64* %vm_pgoff, align 8
  %sub = sub i64 %add, %1
  %shl = shl i64 %sub, 12
  %add2 = add i64 %shl, %0
  %cmp = icmp ult i64 %add2, %0
  %vm_end5.phi.trans.insert = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %.pre = load i64, i64* %vm_end5.phi.trans.insert, align 8
  %cmp4 = icmp ugt i64 %add2, %.pre
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  %address.0 = select i1 %or.cond, i64 %.pre, i64 %add2
  ret i64 %address.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ptep_clear_flush(%struct.vm_area_struct* noundef, i64 noundef, %struct.pte_t* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_wrprotect(i64 %pte.coerce) unnamed_addr #7 {
entry:
  %0 = and i64 %pte.coerce, 2251799813685376
  %1 = icmp eq i64 %0, 2251799813685248
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @pte_mkdirty(i64 %pte.coerce) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pte.sroa.0.0 = phi i64 [ %call, %if.then ], [ %pte.coerce, %entry ]
  %call10 = call fastcc i64 @clear_pte_bit(i64 %pte.sroa.0.0, i64 2251799813685248) #11
  %call17 = call fastcc i64 @set_pte_bit(i64 %call10, i64 128) #11
  ret i64 %call17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkclean(i64 %pte.coerce) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 36028797018963968) #11
  %call9 = call fastcc i64 @set_pte_bit(i64 %call, i64 128) #11
  ret i64 %call9
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
  call void @__sync_icache_dcache(i64 %pte.coerce) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkdirty(i64 %pte.coerce) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 36028797018963968) #11
  %and = and i64 %call, 2251799813685248
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call fastcc i64 @clear_pte_bit(i64 %call, i64 128) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pte.sroa.0.0 = phi i64 [ %call10, %if.then ], [ %call, %entry ]
  ret i64 %pte.sroa.0.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #7 {
entry:
  %or = or i64 %prot.coerce, %pte.coerce
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i64) local_unnamed_addr #2

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
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !33
  call void asm sideeffect "isb", "~{memory}"() #13, !srcloc !34
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #13, !srcloc !35
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @linear_page_index(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address) unnamed_addr #8 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %address, %0
  %shr = lshr i64 %sub, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %1 = load i64, i64* %vm_pgoff, align 8
  %add = add i64 %shr, %1
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.11* %2 to %struct.anon.20*
  %compound_order = getelementptr inbounds %struct.anon.20, %struct.anon.20* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %mm) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) #11
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @swp_entry_to_pte(i64 %entry.coerce) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @swp_type(i64 %entry.coerce) #11
  %shl = shl i32 %call, 2
  %conv = zext i32 %shl to i64
  %call5 = call fastcc i64 @swp_offset(i64 %entry.coerce) #11
  %shl6 = shl i64 %call5, 8
  %or = or i64 %shl6, %conv
  ret i64 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #0 {
entry:
  %0 = zext i32 %member to i64
  %arrayidx = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %arrayidx) #12
  call void @mm_trace_rss_stat(%struct.mm_struct* noundef %mm, i32 noundef %member, i64 noundef %call.i.i.i.i) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_mm_counter(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 2
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(%struct.atomic64_t* noundef %arrayidx) #12
  call void @mm_trace_rss_stat(%struct.mm_struct* noundef %mm, i32 noundef 2, i64 noundef %call.i.i.i.i) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @mm_counter_file(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 524288
  %tobool.not = icmp eq i64 %2, 0
  %. = select i1 %tobool.not, i32 0, i32 3
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #11
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #11
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #11
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #5 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @swp_type(i64 %entry.coerce) unnamed_addr #7 {
entry:
  %shr = lshr i64 %entry.coerce, 58
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @swp_offset(i64 %entry.coerce) unnamed_addr #7 {
entry:
  %and = and i64 %entry.coerce, 288230376151711743
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(%struct.mm_struct* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !36
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 524288, i64* elementtype(i64) %counter) #13, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !38
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #11
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_is_temporary_stack(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #8 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %1 = and i64 %0, 98560
  %2 = icmp eq i64 %1, 98560
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %sem) unnamed_addr #5 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp ne i64 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.anon_vma* @rmap_walk_anon_lock(%struct.page* noundef %page, %struct.rmap_walk_control* nocapture noundef readonly %rwc) unnamed_addr #0 {
entry:
  %anon_lock = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %rwc, i64 0, i32 3
  %0 = load %struct.anon_vma* (%struct.page*)*, %struct.anon_vma* (%struct.page*)** %anon_lock, align 8
  %tobool.not = icmp eq %struct.anon_vma* (%struct.page*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.anon_vma* %0(%struct.page* noundef %page) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.anon_vma* @page_anon_vma(%struct.page* noundef %page) #12
  %tobool3.not = icmp eq %struct.anon_vma* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  call fastcc void @anon_vma_lock_read(%struct.anon_vma* noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi %struct.anon_vma* [ %call, %if.then ], [ %call2, %if.end5 ], [ null, %if.end ]
  ret %struct.anon_vma* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.anon_vma_chain* @anon_vma_interval_tree_iter_first(%struct.rb_root_cached* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.anon_vma_chain* @anon_vma_interval_tree_iter_next(%struct.anon_vma_chain* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_lock_read(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @down_read(%struct.rw_semaphore* noundef %i_mmap_rwsem) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_interval_tree_iter_first(%struct.rb_root_cached* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_interval_tree_iter_next(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_unlock_read(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @up_read(%struct.rw_semaphore* noundef %i_mmap_rwsem) #12
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155359069}
!10 = !{i64 2155393501}
!11 = !{!"auto-init"}
!12 = !{i64 2155395875}
!13 = !{i64 2155399661}
!14 = !{i64 2155398329}
!15 = !{i64 2155403292}
!16 = !{i64 2155412847}
!17 = !{i32 0, i32 4}
!18 = !{i64 2155419987}
!19 = !{i64 2149605028}
!20 = !{i64 2148115305, i64 2148115338, i64 2148115391, i64 2148115450, i64 2148115484, i64 2148115539, i64 2148115568, i64 2148115588}
!21 = !{i64 2149612309}
!22 = !{i64 2149404539}
!23 = !{i64 2148015382, i64 2148015898, i64 2148015928, i64 2148015955, i64 2148015989, i64 2148016019}
!24 = !{i64 2150070458}
!25 = !{i64 2148128452, i64 2148128485, i64 2148128537, i64 2148128596, i64 2148128630, i64 2148128686, i64 2148128715, i64 2148128742}
!26 = !{i64 2150070675}
!27 = !{i64 2148025955, i64 2148026603, i64 2148026633, i64 2148026665, i64 2148026699, i64 2148026735, i64 2148026760}
!28 = !{i64 2151356938}
!29 = !{i64 2151358340, i64 2151358067, i64 2151358702, i64 2151358748, i64 2151358754, i64 2151360142, i64 2151358791, i64 2151358809, i64 2151360216, i64 2151360264, i64 2151360312, i64 2151360375, i64 2151360424, i64 2151358887, i64 2151358912, i64 2151358938, i64 2151358944, i64 2151360163, i64 2151358981, i64 2151358987, i64 2151359037, i64 2151359083, i64 2151359116}
!30 = !{i64 2151361178, i64 2151360873, i64 2151361540, i64 2151361586, i64 2151361592, i64 2151362980, i64 2151361629, i64 2151361647, i64 2151363054, i64 2151363102, i64 2151363150, i64 2151363213, i64 2151363262, i64 2151361725, i64 2151361750, i64 2151361776, i64 2151361782, i64 2151363001, i64 2151361819, i64 2151361825, i64 2151361875, i64 2151361921, i64 2151361954}
!31 = !{i64 2148106324, i64 2148106357, i64 2148106408, i64 2148106464, i64 2148106497, i64 2148106551, i64 2148106580, i64 2148106600}
!32 = !{i64 2148087350, i64 2148088020, i64 2148088050, i64 2148088082, i64 2148088114, i64 2148088148, i64 2148088173}
!33 = !{i64 2151552002}
!34 = !{i64 2151552051}
!35 = !{i64 2148016234, i64 2148016882, i64 2148016912, i64 2148016944, i64 2148016978, i64 2148017014, i64 2148017039}
!36 = !{i64 2148070649, i64 2148071297, i64 2148071327, i64 2148071358, i64 2148071390, i64 2148071425, i64 2148071450}
!37 = !{i64 2148084462, i64 2148084973, i64 2148085003, i64 2148085029, i64 2148085061, i64 2148085090}
!38 = !{i64 2148056916, i64 2148061625, i64 2148061655, i64 2148061686, i64 2148061718, i64 2148061753, i64 2148061778}
