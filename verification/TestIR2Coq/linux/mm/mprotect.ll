; ModuleID = 'mm/mprotect.c'
source_filename = "mm/mprotect.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.79, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.11, %union.anon.28, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.28 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.30, %union.anon.31 }
%union.anon.30 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.31 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
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
%struct.reclaim_state = type { i64 }
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
%struct.vm_userfaultfd_ctx = type {}
%struct.mempolicy = type {}
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mmu_notifier_range = type { i64, i64 }

@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @change_protection(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) local_unnamed_addr #0 {
entry:
  %and = and i64 %cp_flags, 12
  %cmp = icmp eq i64 %and, 12
  br i1 %cmp, label %do.body2, label %do.end7, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mprotect.c\22; .popsection; .long 14472b - 14470b; .short 370; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  unreachable

do.end7:                                          ; preds = %entry
  %call12 = call fastcc i64 @change_protection_range(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) #11
  ret i64 %call12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @change_protection_range(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %cmp.not = icmp ult i64 %addr, %end
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !10

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mprotect.c\22; .popsection; .long 14472b - 14470b; .short 344; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !11
  unreachable

do.end7:                                          ; preds = %entry
  %pgd8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 8
  %1 = load %struct.pgd_t*, %struct.pgd_t** %pgd8, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %addr) #11
  call fastcc void @inc_tlb_flush_pending(%struct.mm_struct* noundef %0) #11
  %sub10 = add i64 %end, -1
  br label %do.body9

do.body9:                                         ; preds = %do.body9, %do.end7
  %pgd.0 = phi %struct.pgd_t* [ %call, %do.end7 ], [ %incdec.ptr, %do.body9 ]
  %pages.0 = phi i64 [ 0, %do.end7 ], [ %add19, %do.body9 ]
  %addr.addr.0 = phi i64 [ %addr, %do.end7 ], [ %cond, %do.body9 ]
  %add = add i64 %addr.addr.0, 1073741824
  %and = and i64 %add, -1073741824
  %sub = add i64 %and, -1
  %cmp11 = icmp ult i64 %sub, %sub10
  %cond = select i1 %cmp11, i64 %and, i64 %end
  %call18 = call fastcc i64 @change_p4d_range(%struct.vm_area_struct* noundef %vma, %struct.pgd_t* noundef %pgd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 %newprot.coerce, i64 noundef %cp_flags) #11
  %add19 = add i64 %call18, %pages.0
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %cmp21.not = icmp eq i64 %cond, %end
  br i1 %cmp21.not, label %do.end23, label %do.body9

do.end23:                                         ; preds = %do.body9
  %tobool24.not = icmp eq i64 %add19, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %do.end23
  call fastcc void @flush_tlb_range(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %end) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.end23
  call fastcc void @dec_tlb_flush_pending(%struct.mm_struct* noundef %0) #11
  ret i64 %add19
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mprotect_fixup(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef %pprev, i64 noundef %start, i64 noundef %end, i64 noundef %newflags) local_unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %sub = sub i64 %end, %start
  %shr = lshr i64 %sub, 12
  %cmp = icmp eq i64 %1, %newflags
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %pprev, align 8
  br label %cleanup68

if.end:                                           ; preds = %entry
  %and14 = and i64 %newflags, 2
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end30, label %if.then16

if.then16:                                        ; preds = %if.end
  %call17 = call i1 @may_expand_vm(%struct.mm_struct* noundef %0, i64 noundef %newflags, i64 noundef %shr) #12
  br i1 %call17, label %if.end21, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.then16
  %call19 = call i1 @may_expand_vm(%struct.mm_struct* noundef %0, i64 noundef %1, i64 noundef %shr) #12
  br i1 %call19, label %cleanup68, label %if.end21

if.end21:                                         ; preds = %land.lhs.true18, %if.then16
  %and22 = and i64 %1, 7340042
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end21
  %call25 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %0, i64 noundef %shr) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup68

if.end28:                                         ; preds = %if.then24
  %or = or i64 %newflags, 1048576
  br label %if.end30

if.end30:                                         ; preds = %if.end21, %if.end28, %if.end
  %newflags.addr.0 = phi i64 [ %newflags, %if.end21 ], [ %or, %if.end28 ], [ %newflags, %if.end ]
  %charged.0 = phi i64 [ 0, %if.end21 ], [ %shr, %if.end28 ], [ 0, %if.end ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %2 = load i64, i64* %vm_pgoff, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %sub31 = sub i64 %start, %3
  %shr32 = lshr i64 %sub31, 12
  %add = add i64 %shr32, %2
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %pprev, align 8
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %5 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %6 = load %struct.file*, %struct.file** %vm_file, align 8
  %call33 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef %4, i64 noundef %start, i64 noundef %end, i64 noundef %newflags.addr.0, %struct.anon_vma* noundef %5, %struct.file* noundef %6, i64 noundef %add, %struct.mempolicy* noundef null) #12
  store %struct.vm_area_struct* %call33, %struct.vm_area_struct** %pprev, align 8
  %tobool34.not = icmp eq %struct.vm_area_struct* %call33, null
  br i1 %tobool34.not, label %if.end36, label %success

if.end36:                                         ; preds = %if.end30
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %pprev, align 8
  %7 = load i64, i64* %vm_start, align 8
  %cmp38.not = icmp eq i64 %7, %start
  br i1 %cmp38.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %if.end36
  %call40 = call i32 @split_vma(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef %vma, i64 noundef %start, i32 noundef 1) #12
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end44, label %fail

if.end44:                                         ; preds = %if.then39, %if.end36
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %8 = load i64, i64* %vm_end, align 8
  %cmp45.not = icmp eq i64 %8, %end
  br i1 %cmp45.not, label %success, label %if.then46

if.then46:                                        ; preds = %if.end44
  %call47 = call i32 @split_vma(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef %vma, i64 noundef %end, i32 noundef 0) #12
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %success, label %fail

success:                                          ; preds = %if.end30, %if.end44, %if.then46
  %vma.addr.0 = phi %struct.vm_area_struct* [ %vma, %if.then46 ], [ %vma, %if.end44 ], [ %call33, %if.end30 ]
  %vm_flags52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.0, i64 0, i32 8
  store i64 %newflags.addr.0, i64* %vm_flags52, align 8
  %coerce.dive53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.0, i64 0, i32 7, i32 0
  %9 = load i64, i64* %coerce.dive53, align 8
  %call54 = call i32 @vma_wants_writenotify(%struct.vm_area_struct* noundef %vma.addr.0, i64 %9) #12
  call void @vma_set_page_prot(%struct.vm_area_struct* noundef %vma.addr.0) #12
  %tobool56.not = icmp ne i32 %call54, 0
  %cond = zext i1 %tobool56.not to i64
  %10 = load i64, i64* %coerce.dive53, align 8
  %call58 = call i64 @change_protection(%struct.vm_area_struct* noundef %vma.addr.0, i64 noundef %start, i64 noundef %end, i64 %10, i64 noundef %cond) #11
  %and59 = and i64 %1, 8202
  %cmp60 = icmp ne i64 %and59, 8192
  %and62 = and i64 %newflags.addr.0, 2
  %tobool63.not = icmp eq i64 %and62, 0
  %or.cond = or i1 %cmp60, %tobool63.not
  br i1 %or.cond, label %if.end66, label %if.then64

if.then64:                                        ; preds = %success
  %call65 = call i64 @populate_vma_page_range(%struct.vm_area_struct* noundef %vma.addr.0, i64 noundef %start, i64 noundef %end, i32* noundef null) #12
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %success
  %sub67 = sub nsw i64 0, %shr
  call void @vm_stat_account(%struct.mm_struct* noundef %0, i64 noundef %1, i64 noundef %sub67) #12
  call void @vm_stat_account(%struct.mm_struct* noundef %0, i64 noundef %newflags.addr.0, i64 noundef %shr) #12
  br label %cleanup68

fail:                                             ; preds = %if.then46, %if.then39
  %error.0 = phi i32 [ %call40, %if.then39 ], [ %call47, %if.then46 ]
  call fastcc void @vm_unacct_memory(i64 noundef %charged.0) #11
  br label %cleanup68

cleanup68:                                        ; preds = %if.then24, %land.lhs.true18, %fail, %if.end66, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.end66 ], [ %error.0, %fail ], [ -12, %land.lhs.true18 ], [ -12, %if.then24 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @may_expand_vm(%struct.mm_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %mm, i64 noundef %pages) unnamed_addr #0 {
entry:
  %call = call i32 @cap_vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages) #12
  %call1 = call i32 @__vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages, i32 noundef %call) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i64 noundef, %struct.anon_vma* noundef, %struct.file* noundef, i64 noundef, %struct.mempolicy* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @split_vma(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vma_wants_writenotify(%struct.vm_area_struct* noundef, i64) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_page_prot(%struct.vm_area_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @populate_vma_page_range(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(%struct.mm_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_unacct_memory(i64 noundef %pages) unnamed_addr #0 {
entry:
  %sub = sub i64 0, %pages
  call fastcc void @vm_acct_memory(i64 noundef %sub) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mprotect(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_mprotect(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mprotect(i64 noundef %start, i64 noundef %len, i64 noundef %prot) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__do_sys_mprotect(i64 noundef %start, i64 noundef %len, i64 noundef %prot) #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #4 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_tlb_flush_pending(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %tlb_flush_pending = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 49
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %tlb_flush_pending) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @change_p4d_range(%struct.vm_area_struct* noundef %vma, %struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #11
  %call3 = call fastcc i64 @change_pud_range(%struct.vm_area_struct* noundef %vma, %struct.p4d_t* noundef %call, i64 noundef %addr, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) #11
  ret i64 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_range(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  call fastcc void @__flush_tlb_range(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_tlb_flush_pending(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %tlb_flush_pending = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 49
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %tlb_flush_pending) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @change_pud_range(%struct.vm_area_struct* noundef %vma, %struct.p4d_t* noundef readonly %p4d, i64 noundef %addr, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #11
  %call1 = call fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* noundef %call) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i64 @change_pmd_range(%struct.vm_area_struct* noundef %vma, %struct.pud_t* noundef %call, i64 noundef %addr, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) #11
  br label %do.end

do.end:                                           ; preds = %if.end, %entry
  %pages.1 = phi i64 [ 0, %entry ], [ %call3, %if.end ]
  ret i64 %pages.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* nocapture noundef readonly %pud) unnamed_addr #5 {
entry:
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %and = and i64 %0, 3
  %cmp.not = icmp ne i64 %and, 3
  %retval.0 = zext i1 %cmp.not to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @change_pmd_range(%struct.vm_area_struct* noundef %vma, %struct.pud_t* nocapture noundef readonly %pud, i64 noundef %addr, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) unnamed_addr #0 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %0 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %start = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  %1 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %addr) #11
  %sub1 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %next58, %entry
  %pages.0 = phi i64 [ 0, %entry ], [ %pages.4, %next58 ]
  %pmd.0 = phi %struct.pmd_t* [ %call, %entry ], [ %incdec.ptr, %next58 ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %cond, %next58 ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub1
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call8 = call fastcc i32 @pmd_none_or_clear_bad_unless_trans_huge(%struct.pmd_t* noundef %pmd.0) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end, label %next58

if.end:                                           ; preds = %do.body
  %2 = load i64, i64* %start, align 8
  %tobool11.not = icmp eq i64 %2, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %addr.addr.0, i64 noundef %end) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  %call56 = call fastcc i64 @change_pte_range(%struct.vm_area_struct* noundef %vma, %struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 %newprot.coerce, i64 noundef %cp_flags) #11
  %add57 = add i64 %call56, %pages.0
  br label %next58

next58:                                           ; preds = %do.body, %if.end13
  %pages.4 = phi i64 [ %add57, %if.end13 ], [ %pages.0, %do.body ]
  call fastcc void @_cond_resched() #11
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %cmp62.not = icmp eq i64 %cond, %end
  br i1 %cmp62.not, label %if.end74, label %do.body

if.end74:                                         ; preds = %next58
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i64 %pages.4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #5 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #11
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #11
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pmd_none_or_clear_bad_unless_trans_huge(%struct.pmd_t* noundef %pmd) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @pmd_read_atomic(%struct.pmd_t* noundef %pmd) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %call, 3
  %cmp.not = icmp eq i64 %and, 3
  br i1 %cmp.not, label %cleanup, label %if.then11, !prof !10

if.then11:                                        ; preds = %if.end
  call void @pmd_clear_bad(%struct.pmd_t* noundef %pmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then11
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* nocapture noundef writeonly %range, i64 noundef %start, i64 noundef %end) unnamed_addr #6 {
entry:
  %start1 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  store i64 %start, i64* %start1, align 8
  %end2 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  store i64 %end, i64* %end2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @change_pte_range(%struct.vm_area_struct* noundef %vma, %struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, i64 %newprot.coerce, i64 noundef %cp_flags) unnamed_addr #0 {
entry:
  %and = and i64 %cp_flags, 1
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i64 %cp_flags, 2
  %tobool2.not = icmp eq i64 %and1, 0
  %and4 = and i64 %cp_flags, 4
  %tobool5.not = icmp eq i64 %and4, 0
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %call11 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #11
  %call12 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #11
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call11, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  br i1 %tobool2.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and14 = and i64 %0, 8
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %if.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 10, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then19, label %if.end21

if.then19:                                        ; preds = %land.lhs.true16
  call fastcc void @numa_node_id() #11
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true16, %land.lhs.true, %entry
  %cmp63 = phi i1 [ false, %if.then19 ], [ true, %land.lhs.true16 ], [ true, %land.lhs.true ], [ true, %entry ]
  %not.tobool2.not = xor i1 %tobool2.not, true
  %vm_flags48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  br label %do.body23

do.body23:                                        ; preds = %do.cond256, %if.end21
  %pages.0 = phi i64 [ 0, %if.end21 ], [ %pages.3, %do.cond256 ]
  %pte.0 = phi %struct.pte_t* [ %call12, %if.end21 ], [ %incdec.ptr, %do.cond256 ]
  %addr.addr.0 = phi i64 [ %addr, %if.end21 ], [ %add, %do.cond256 ]
  %oldpte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.0, i64 0, i32 0
  %oldpte.sroa.0.0.copyload = load i64, i64* %oldpte.sroa.0.0..sroa_idx, align 8
  %and25 = and i64 %oldpte.sroa.0.0.copyload, 288230376151711745
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.else133, label %if.then27

if.then27:                                        ; preds = %do.body23
  %and30 = and i64 %oldpte.sroa.0.0.copyload, 2251799813685248
  %tobool31 = icmp ne i64 %and30, 0
  %3 = select i1 %not.tobool2.not, i1 %tobool31, i1 false
  br i1 %tobool2.not, label %if.end66, label %if.then35

if.then35:                                        ; preds = %if.then27
  %call42 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %vma, i64 noundef %addr.addr.0, i64 %oldpte.sroa.0.0.copyload) #12
  %tobool43.not = icmp eq %struct.page* %call42, null
  br i1 %tobool43.not, label %do.cond256, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then35
  %4 = load i64, i64* %vm_flags48, align 8
  %call49 = call fastcc i1 @is_cow_mapping(i64 noundef %4) #11
  br i1 %call49, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %lor.lhs.false
  %call51 = call fastcc i32 @page_mapcount(%struct.page* noundef nonnull %call42) #11
  %cmp52.not = icmp eq i32 %call51, 1
  br i1 %cmp52.not, label %if.end54, label %do.cond256

if.end54:                                         ; preds = %land.lhs.true50, %lor.lhs.false
  %call55 = call fastcc i32 @page_is_file_lru(%struct.page* noundef nonnull %call42) #11
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end61, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %if.end54
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call42) #12
  %5 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i, align 8
  %7 = and i64 %6, 8
  %tobool59.not = icmp eq i64 %7, 0
  %8 = and i1 %cmp63, %tobool59.not
  br i1 %8, label %if.end66, label %do.cond256

if.end61:                                         ; preds = %if.end54
  br i1 %cmp63, label %if.end66, label %do.cond256

if.end66:                                         ; preds = %land.lhs.true57, %if.end61, %if.then27
  %call68 = call fastcc i64 @ptep_modify_prot_start(%struct.vm_area_struct* noundef %vma, %struct.pte_t* noundef %pte.0) #11
  %call73 = call fastcc i64 @pte_modify(i64 %call68, i64 %newprot.coerce) #11
  br i1 %3, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end66
  %call79 = call fastcc i64 @pte_mkwrite(i64 %call73) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end66
  %ptent.sroa.0.1 = phi i64 [ %call79, %if.then76 ], [ %call73, %if.end66 ]
  br i1 %tobool5.not, label %if.end99, label %if.then83

if.then83:                                        ; preds = %if.end81
  %call86 = call fastcc i64 @pte_wrprotect(i64 %ptent.sroa.0.1) #11
  br label %if.end99

if.end99:                                         ; preds = %if.end81, %if.then83
  %ptent.sroa.0.2 = phi i64 [ %call86, %if.then83 ], [ %ptent.sroa.0.1, %if.end81 ]
  br i1 %tobool.not, label %if.end126, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.end99
  %and103 = and i64 %ptent.sroa.0.2, 36028797018963968
  %tobool104.not = icmp ne i64 %and103, 0
  %9 = and i64 %ptent.sroa.0.2, 2251799813685376
  %10 = icmp eq i64 %9, 2251799813685248
  %or.cond = or i1 %tobool104.not, %10
  br i1 %or.cond, label %land.lhs.true113, label %if.end126

land.lhs.true113:                                 ; preds = %land.lhs.true101
  %call124 = call fastcc i64 @pte_mkwrite(i64 %ptent.sroa.0.2) #11
  br label %if.end126

if.end126:                                        ; preds = %land.lhs.true101, %land.lhs.true113, %if.end99
  %ptent.sroa.0.3 = phi i64 [ %call124, %land.lhs.true113 ], [ %ptent.sroa.0.2, %if.end99 ], [ %ptent.sroa.0.2, %land.lhs.true101 ]
  call fastcc void @ptep_modify_prot_commit(%struct.vm_area_struct* noundef %vma, %struct.pte_t* noundef %pte.0, i64 %ptent.sroa.0.3) #11
  %inc = add i64 %pages.0, 1
  br label %do.cond256

if.else133:                                       ; preds = %do.body23
  %call135 = call fastcc i32 @is_swap_pte(i64 %oldpte.sroa.0.0.copyload) #11
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.cond256, label %if.then137

if.then137:                                       ; preds = %if.else133
  %call247 = call fastcc i32 @pte_same(i64 %oldpte.sroa.0.0.copyload, i64 %oldpte.sroa.0.0.copyload) #11
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.then249, label %do.cond256

if.then249:                                       ; preds = %if.then137
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte.0, i64 %oldpte.sroa.0.0.copyload) #11
  %inc252 = add i64 %pages.0, 1
  br label %do.cond256

do.cond256:                                       ; preds = %land.lhs.true57, %if.then137, %if.then249, %if.end126, %if.end61, %if.then35, %land.lhs.true50, %if.else133
  %pages.3 = phi i64 [ %pages.0, %if.else133 ], [ %pages.0, %land.lhs.true57 ], [ %pages.0, %land.lhs.true50 ], [ %pages.0, %if.then35 ], [ %pages.0, %if.end61 ], [ %inc, %if.end126 ], [ %inc252, %if.then249 ], [ %pages.0, %if.then137 ]
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.0, i64 1
  %add = add i64 %addr.addr.0, 4096
  %cmp257.not = icmp eq i64 %add, %end
  br i1 %cmp257.not, label %do.body262, label %do.body23

do.body262:                                       ; preds = %do.cond256
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret i64 %pages.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #11
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #4 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #4 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_read_atomic(%struct.pmd_t* nocapture noundef readonly %pmdp) unnamed_addr #5 {
entry:
  %retval.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %retval.sroa.0.0.copyload = load i64, i64* %retval.sroa.0.0..sroa_idx, align 8
  ret i64 %retval.sroa.0.0.copyload
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(%struct.pmd_t* noundef) local_unnamed_addr #3

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
  %call4 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %add.ptr3) #11
  ret %struct.spinlock* %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #5 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #11
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #11
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #7 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef, i64 noundef, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_cow_mapping(i64 noundef %flags) unnamed_addr #4 {
entry:
  %and = and i64 %flags, 40
  %cmp = icmp eq i64 %and, 32
  ret i1 %cmp
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
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_is_file_lru(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 19
  %4 = and i32 %3, 1
  %5 = xor i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_modify_prot_start(%struct.vm_area_struct* nocapture noundef readnone %vma, %struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ptep_modify_prot_start(%struct.vm_area_struct* noundef %vma, %struct.pte_t* noundef %ptep) #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_modify(i64 %pte.coerce, i64 %newprot.coerce) unnamed_addr #4 {
entry:
  %0 = and i64 %pte.coerce, 2251799813685376
  %1 = icmp eq i64 %0, 2251799813685248
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @pte_mkdirty(i64 %pte.coerce) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pte.sroa.0.0 = phi i64 [ %call, %if.then ], [ %pte.coerce, %entry ]
  %and9 = and i64 %pte.sroa.0.0, -318629673636462814
  %and10 = and i64 %newprot.coerce, 318629673636462813
  %or = or i64 %and9, %and10
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkwrite(i64 %pte.coerce) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 2251799813685248) #11
  %call9 = call fastcc i64 @clear_pte_bit(i64 %call, i64 128) #11
  ret i64 %call9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_wrprotect(i64 %pte.coerce) unnamed_addr #4 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptep_modify_prot_commit(%struct.vm_area_struct* nocapture noundef readnone %vma, %struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  call fastcc void @__ptep_modify_prot_commit(%struct.vm_area_struct* noundef %vma, %struct.pte_t* noundef %ptep, i64 %pte.coerce) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_swap_pte(i64 %pte.coerce) unnamed_addr #4 {
entry:
  %tobool.not = icmp ne i64 %pte.coerce, 0
  %and = and i64 %pte.coerce, 288230376151711745
  %tobool3.not = icmp eq i64 %and, 0
  %narrow = and i1 %tobool.not, %tobool3.not
  %0 = zext i1 %narrow to i32
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pte_same(i64 %pte_a.coerce, i64 %pte_b.coerce) unnamed_addr #4 {
entry:
  %cmp = icmp eq i64 %pte_a.coerce, %pte_b.coerce
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #4 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #11
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #4 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #4 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !14
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #13, !srcloc !15
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.11* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

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
define internal fastcc i64 @__ptep_modify_prot_start(%struct.vm_area_struct* nocapture noundef readnone %vma, %struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %ptep) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pte_t* %ptep to i8*
  %call11.i = call fastcc i64 @__xchg_case_64(i8* noundef %0) #12
  ret i64 %call11.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #10, !srcloc !16
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkdirty(i64 %pte.coerce) unnamed_addr #4 {
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
define internal fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #4 {
entry:
  %or = or i64 %prot.coerce, %pte.coerce
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #4 {
entry:
  %neg = xor i64 %prot.coerce, -1
  %and = and i64 %neg, %pte.coerce
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ptep_modify_prot_commit(%struct.vm_area_struct* nocapture noundef readnone %vma, %struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  call fastcc void @set_pte_at(%struct.pte_t* noundef %ptep, i64 %pte.coerce) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i64) local_unnamed_addr #3

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
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !17
  call void asm sideeffect "isb", "~{memory}"() #10, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__flush_tlb_range(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %and = and i64 %start, -4096
  %sub1 = add i64 %end, -1
  %or = or i64 %sub1, 4095
  %add = sub i64 1, %and
  %sub3 = add i64 %add, %or
  %cmp = icmp ugt i64 %sub3, 2097151
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  %vm_mm6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm6, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 42, i32 0, i32 0
  %2 = load volatile i64, i64* %counter.i, align 8
  %cmp9.not10 = icmp eq i64 %sub3, 0
  br i1 %cmp9.not10, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %shr = lshr exact i64 %sub3, 12
  %shl = shl i64 %2, 48
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end191
  %start.addr.012 = phi i64 [ %and, %while.body.lr.ph ], [ %add192, %if.end191 ]
  %pages.011 = phi i64 [ %shr, %while.body.lr.ph ], [ %sub194, %if.end191 ]
  %shr14 = lshr exact i64 %start.addr.012, 12
  %and15 = and i64 %shr14, 17592186044415
  %or16 = or i64 %and15, %shl
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %while.body
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #12
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %while.body
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 7) #12
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or16) #10, !srcloc !22
  %call143 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #11
  br i1 %call143, label %do.body145, label %if.end191

do.body145:                                       ; preds = %cpus_have_const_cap.exit
  %call.i.i1 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i2 = icmp sgt i32 %call.i.i1, 0
  br i1 %cmp.i.i2, label %if.then3.i5, label %if.else5.i7

if.then3.i5:                                      ; preds = %do.body145
  %call.i9.i3 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #12
  br label %cpus_have_const_cap.exit9

if.else5.i7:                                      ; preds = %do.body145
  %call6.i6 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #12
  br label %cpus_have_const_cap.exit9

cpus_have_const_cap.exit9:                        ; preds = %if.then3.i5, %if.else5.i7
  %or147 = or i64 %or16, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or147) #10, !srcloc !23
  br label %if.end191

if.end191:                                        ; preds = %cpus_have_const_cap.exit, %cpus_have_const_cap.exit9
  %add192 = add i64 %start.addr.012, 4096
  %sub194 = add i64 %pages.011, -1
  %cmp9.not = icmp eq i64 %sub194, 0
  br i1 %cmp9.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end191, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #10, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !25
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %0, 48
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %shl) #10, !srcloc !26
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #11
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %shl, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #10, !srcloc !27
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dsb ish", "~{memory}"() #10, !srcloc !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #8 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #12
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #12
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #8 {
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
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(%struct.mm_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_acct_memory(i64 noundef %pages) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef nonnull @vm_committed_as, i64 noundef %pages, i32 noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mprotect(i64 noundef %start, i64 noundef %len, i64 noundef %prot) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_mprotect_pkey(i64 noundef %start, i64 noundef %len, i64 noundef %prot) #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_mprotect_pkey(i64 noundef %start, i64 noundef %len, i64 noundef %prot) unnamed_addr #0 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %0 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = trunc i64 %prot to i32
  %conv = and i32 %1, 50331648
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !30
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 44
  %4 = load i32, i32* %personality, align 16
  %and1 = and i32 %4, 4194304
  %tobool = icmp ne i32 %and1, 0
  %and2 = and i64 %prot, 1
  %tobool3 = icmp ne i64 %and2, 0
  %5 = and i1 %tobool3, %tobool
  %shl.i = shl i64 %start, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and5 = and i64 %shr.i, %start
  %and7 = and i64 %prot, -50331649
  %cmp = icmp ne i32 %conv, 50331648
  %and9 = and i64 %and5, 4095
  %tobool10.not = icmp eq i64 %and9, 0
  %or.cond = select i1 %cmp, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %if.end12, label %cleanup152

if.end12:                                         ; preds = %entry
  %tobool13.not = icmp eq i64 %len, 0
  br i1 %tobool13.not, label %cleanup152, label %if.end15

if.end15:                                         ; preds = %if.end12
  %add = add i64 %len, 4095
  %and16 = and i64 %add, -4096
  %add17 = add i64 %and5, %and16
  %cmp18.not = icmp ugt i64 %add17, %and5
  br i1 %cmp18.not, label %if.end21, label %cleanup152

if.end21:                                         ; preds = %if.end15
  %call22 = call fastcc i1 @arch_validate_prot(i64 noundef %and7) #11
  br i1 %call22, label %if.end24, label %cleanup152

if.end24:                                         ; preds = %if.end21
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 35
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call26 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %6) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end36, label %cleanup152

if.end36:                                         ; preds = %if.end24
  %7 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call39 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %7, i64 noundef %and5) #12
  %tobool40.not = icmp eq %struct.vm_area_struct* %call39, null
  br i1 %tobool40.not, label %out, label %if.end42

if.end42:                                         ; preds = %if.end36
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call39, i64 0, i32 3
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %prev, align 8
  %and43 = and i32 %1, 16777216
  %tobool44.not = icmp eq i32 %and43, 0
  %vm_start58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call39, i64 0, i32 0
  %9 = load i64, i64* %vm_start58, align 8
  br i1 %tobool44.not, label %if.else, label %if.then48, !prof !10

if.then48:                                        ; preds = %if.end42
  %cmp49.not = icmp ult i64 %9, %add17
  br i1 %cmp49.not, label %if.end52, label %out

if.end52:                                         ; preds = %if.then48
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call39, i64 0, i32 8
  %10 = load i64, i64* %vm_flags, align 8
  %and54 = and i64 %10, 256
  %tobool55.not = icmp eq i64 %and54, 0
  br i1 %tobool55.not, label %out, label %for.cond.preheader

if.else:                                          ; preds = %if.end42
  %cmp59 = icmp ugt i64 %9, %and5
  br i1 %cmp59, label %out, label %if.end62

if.end62:                                         ; preds = %if.else
  %and63 = and i32 %1, 33554432
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end79, label %out, !prof !10

if.end79:                                         ; preds = %if.end62
  %cmp81 = icmp ugt i64 %and5, %9
  br i1 %cmp81, label %if.then83, label %for.cond.preheader

if.then83:                                        ; preds = %if.end79
  store %struct.vm_area_struct* %call39, %struct.vm_area_struct** %prev, align 8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end52, %if.then83, %if.end79
  %nstart.0.ph = phi i64 [ %9, %if.end52 ], [ %and5, %if.end79 ], [ %and5, %if.then83 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %lor.lhs.false
  %nstart.0 = phi i64 [ %spec.select1, %lor.lhs.false ], [ %nstart.0.ph, %for.cond.preheader ]
  %vma.0 = phi %struct.vm_area_struct* [ %19, %lor.lhs.false ], [ %call39, %for.cond.preheader ]
  %vm_flags88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 8
  %11 = load i64, i64* %vm_flags88, align 8
  %and89 = lshr i64 %11, 4
  %12 = and i64 %and89, 4
  %13 = select i1 %5, i64 %12, i64 0
  %prot.addr.1 = or i64 %and7, %13
  %call94 = call fastcc i64 @calc_vm_prot_bits(i64 noundef %prot.addr.1) #11
  %and96 = and i64 %11, -16777224
  %or97 = or i64 %and96, %call94
  %shr = lshr i64 %or97, 4
  %neg98 = xor i64 %shr, -1
  %and99 = and i64 %call94, 7
  %and100 = and i64 %and99, %neg98
  %tobool101.not = icmp eq i64 %and100, 0
  br i1 %tobool101.not, label %if.end103, label %out

if.end103:                                        ; preds = %for.cond
  %vm_end111 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 1
  %14 = load i64, i64* %vm_end111, align 8
  %cmp112 = icmp ugt i64 %14, %add17
  %tmp.0 = select i1 %cmp112, i64 %add17, i64 %14
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 12
  %15 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool116.not = icmp eq %struct.vm_operations_struct* %15, null
  br i1 %tobool116.not, label %if.end127, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end103
  %mprotect = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %15, i64 0, i32 4
  %16 = load i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_area_struct*, i64, i64, i64)** %mprotect, align 8
  %tobool119.not = icmp eq i32 (%struct.vm_area_struct*, i64, i64, i64)* %16, null
  br i1 %tobool119.not, label %if.end127, label %if.then120

if.then120:                                       ; preds = %land.lhs.true117
  %call123 = call i32 %16(%struct.vm_area_struct* noundef nonnull %vma.0, i64 noundef %nstart.0, i64 noundef %tmp.0, i64 noundef %or97) #12
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end127, label %out

if.end127:                                        ; preds = %if.then120, %land.lhs.true117, %if.end103
  %call128 = call i32 @mprotect_fixup(%struct.vm_area_struct* noundef nonnull %vma.0, %struct.vm_area_struct** noundef nonnull %prev, i64 noundef %nstart.0, i64 noundef %tmp.0, i64 noundef %or97) #11
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %out

if.end131:                                        ; preds = %if.end127
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %vm_end132 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i64 0, i32 1
  %18 = load i64, i64* %vm_end132, align 8
  %cmp133 = icmp ult i64 %tmp.0, %18
  %spec.select1 = select i1 %cmp133, i64 %18, i64 %tmp.0
  %cmp138.not = icmp ult i64 %spec.select1, %add17
  br i1 %cmp138.not, label %if.end141, label %out

if.end141:                                        ; preds = %if.end131
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i64 0, i32 2
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool142.not = icmp eq %struct.vm_area_struct* %19, null
  br i1 %tobool142.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end141
  %vm_start143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i64 0, i32 0
  %20 = load i64, i64* %vm_start143, align 8
  %cmp144.not = icmp eq i64 %20, %spec.select1
  br i1 %cmp144.not, label %for.cond, label %out

out:                                              ; preds = %if.end141, %lor.lhs.false, %if.end131, %if.end127, %if.then120, %for.cond, %if.end62, %if.else, %if.end52, %if.then48, %if.end36
  %error.1 = phi i32 [ -12, %if.then48 ], [ -22, %if.end52 ], [ -12, %if.else ], [ -12, %if.end36 ], [ -22, %if.end62 ], [ -13, %for.cond ], [ %call123, %if.then120 ], [ %call128, %if.end127 ], [ 0, %if.end131 ], [ -12, %lor.lhs.false ], [ -12, %if.end141 ]
  %21 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %21) #11
  br label %cleanup152

cleanup152:                                       ; preds = %if.end24, %if.end21, %if.end15, %if.end12, %entry, %out
  %retval.0 = phi i32 [ %error.1, %out ], [ -22, %entry ], [ 0, %if.end12 ], [ -12, %if.end15 ], [ -22, %if.end21 ], [ -4, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @arch_validate_prot(i64 noundef %prot) unnamed_addr #4 {
entry:
  %cmp = icmp ult i64 %prot, 16
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @calc_vm_prot_bits(i64 noundef %prot) unnamed_addr #4 {
entry:
  %or5 = and i64 %prot, 7
  ret i64 %or5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }

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
!9 = !{i64 2155720022}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2155717849}
!12 = !{i64 2147968081, i64 2147968597, i64 2147968627, i64 2147968654, i64 2147968688, i64 2147968718}
!13 = !{i64 2149557727}
!14 = !{i64 2148068004, i64 2148068037, i64 2148068090, i64 2148068149, i64 2148068183, i64 2148068238, i64 2148068267, i64 2148068287}
!15 = !{i64 2149130872, i64 2149130919, i64 2149130925, i64 2149130962, i64 2149130980, i64 2149131907, i64 2149131955, i64 2149132003, i64 2149132066, i64 2149132115, i64 2149131058, i64 2149131083, i64 2149131109, i64 2149131115, i64 2149131152, i64 2149131158, i64 2149131208, i64 2149131254, i64 2149131287}
!16 = !{i64 2148089877, i64 2148089909, i64 2148089953, i64 2148089999, i64 2148090025}
!17 = !{i64 2151504701}
!18 = !{i64 2151504750}
!19 = !{i64 2149565008}
!20 = !{i64 2149357238}
!21 = !{i64 2151316753}
!22 = !{i64 2151420401, i64 2151420131, i64 2151420761, i64 2151420807, i64 2151420813, i64 2151422201, i64 2151420850, i64 2151420868, i64 2151422274, i64 2151422322, i64 2151422370, i64 2151422433, i64 2151422482, i64 2151420946, i64 2151420971, i64 2151420997, i64 2151421003, i64 2151422222, i64 2151421040, i64 2151421046, i64 2151421096, i64 2151421142, i64 2151421175}
!23 = !{i64 2151458219, i64 2151457949, i64 2151458579, i64 2151458625, i64 2151458631, i64 2151460019, i64 2151458668, i64 2151458686, i64 2151460092, i64 2151460140, i64 2151460188, i64 2151460251, i64 2151460300, i64 2151458764, i64 2151458789, i64 2151458815, i64 2151458821, i64 2151460040, i64 2151458858, i64 2151458864, i64 2151458914, i64 2151458960, i64 2151458993}
!24 = !{i64 2151473164}
!25 = !{i64 2151303038}
!26 = !{i64 2151304424, i64 2151304149, i64 2151304788, i64 2151304834, i64 2151304840, i64 2151306228, i64 2151304877, i64 2151304895, i64 2151306303, i64 2151306351, i64 2151306399, i64 2151306462, i64 2151306511, i64 2151304973, i64 2151304998, i64 2151305024, i64 2151305030, i64 2151306249, i64 2151305067, i64 2151305073, i64 2151305123, i64 2151305169, i64 2151305202}
!27 = !{i64 2151307270, i64 2151306963, i64 2151307634, i64 2151307680, i64 2151307686, i64 2151309074, i64 2151307723, i64 2151307741, i64 2151309149, i64 2151309197, i64 2151309245, i64 2151309308, i64 2151309357, i64 2151307819, i64 2151307844, i64 2151307870, i64 2151307876, i64 2151309095, i64 2151307913, i64 2151307919, i64 2151307969, i64 2151308015, i64 2151308048}
!28 = !{i64 2151309421}
!29 = !{i64 2147977802, i64 2147978318, i64 2147978348, i64 2147978375, i64 2147978409, i64 2147978439}
!30 = !{i64 1371301}
