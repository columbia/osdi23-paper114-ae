; ModuleID = 'mm/shmem.c'
source_filename = "mm/shmem.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.45, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.11, [0 x i64] }
%struct.anon.11 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.41, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.12 }
%union.anon.12 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.14 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.24 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.24 = type { %struct.callback_head }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.25, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.85, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.81 }
%union.anon.81 = type { %struct.kuid_t }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.83 = type { %struct.callback_head }
%union.anon.84 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.8 }
%union.anon.8 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.9, %union.anon.68, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.68 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.69, %union.anon.70 }
%union.anon.69 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.70 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.72 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.42, %struct.qspinlock }
%union.anon.42 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.72 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.85 = type { %struct.pipe_inode_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.48, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.48 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.49, %union.anon.50, %union.anon.51, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.54, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.49 = type { %struct.hlist_node }
%union.anon.50 = type { %struct.rb_node }
%union.anon.51 = type { %struct.anon.53 }
%struct.anon.53 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.54 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.26, %union.anon.27, i32 }
%union.anon.26 = type { %struct.list_head }
%union.anon.27 = type { %struct.hlist_node }
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
%struct.fs_parameter = type { i8*, i8, %union.anon.6, i64, i32 }
%union.anon.6 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.74 }
%union.anon.74 = type { i64 }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i64, i64, i64, [4 x i64] }
%struct.__kernel_fsid_t = type { [2 x i32] }
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
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.fid = type { %union.anon.76 }
%union.anon.76 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, i16, i16, i32, i32, i32 }
%struct.iomap = type opaque
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
%union.anon.25 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.28 }
%struct.anon.28 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.32 }
%struct.anon.32 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.40, i32, [12 x i8] }
%union.anon.40 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.41 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.44, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.44 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21, [48 x i8] }
%struct.anon.21 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.22, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.45 = type { %struct.rb_node, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.file = type { %union.anon.7, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.vm_fault = type { %struct.anon.46, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.47, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.46 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.47 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.vm_event_state = type { [53 x i64] }
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
%struct.shmem_inode_info = type { %struct.spinlock, i32, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.shared_policy, %struct.simple_xattrs, %struct.atomic_t, %struct.inode }
%struct.shared_policy = type {}
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.shmem_sb_info = type { i64, %struct.percpu_counter, i64, i64, %struct.raw_spinlock, i16, i8, %struct.kuid_t, %struct.kgid_t, i8, i64, i64*, %struct.mempolicy*, %struct.spinlock, %struct.list_head, i64 }
%struct.mempolicy = type {}
%struct.xa_state = type { %struct.xarray*, i64, i8, i8, i8, i8, %struct.xa_node*, %struct.xa_node*, void (%struct.xa_node*)* }
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.86, [64 x i8*], %union.anon.87 }
%union.anon.86 = type { %struct.list_head }
%union.anon.87 = type { [3 x [1 x i64]] }
%struct.pagevec = type { i8, i8, [15 x %struct.page*] }
%struct.anon.62 = type { i64, i8, i8, %struct.atomic_t, i32 }
%struct.nodemask_t = type { [1 x i64] }
%struct.shmem_falloc = type { %struct.wait_queue_head*, i64, i64, i64, i64 }
%struct.shmem_options = type { i64, i64, %struct.mempolicy*, %struct.kuid_t, %struct.kgid_t, i16, i8, i32, i32 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { i8*, i32, i64 }
%struct.simple_xattr = type { %struct.list_head, i8*, i64, [0 x i8] }

@shmem_vm_ops = internal constant %struct.vm_operations_struct { void (%struct.vm_area_struct*)* null, void (%struct.vm_area_struct*)* null, i32 (%struct.vm_area_struct*, i64)* null, i32 (%struct.vm_area_struct*)* null, i32 (%struct.vm_area_struct*, i64, i64, i64)* null, i32 (%struct.vm_fault*)* @shmem_fault, i32 (%struct.vm_fault*, i32)* null, i32 (%struct.vm_fault*, i64, i64)* @filemap_map_pages, i64 (%struct.vm_area_struct*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* null, i8* (%struct.vm_area_struct*)* null, %struct.page* (%struct.vm_area_struct*, i64)* null }, align 8
@shmem_swaplist = internal global %struct.list_head { %struct.list_head* @shmem_swaplist, %struct.list_head* @shmem_swaplist }, align 8
@shmem_swaplist_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @shmem_swaplist_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @shmem_swaplist_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@shmem_aops = dso_local constant { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* } { i32 (%struct.page*, %struct.writeback_control*)* @shmem_writepage, i32 (%struct.file*, %struct.page*)* null, i32 (%struct.address_space*, %struct.writeback_control*)* null, i32 (%struct.page*)* @__set_page_dirty_no_writeback, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* null, void (%struct.readahead_control*)* null, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)* null, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)* null, i64 (%struct.address_space*, i64)* null, void (%struct.page*, i32, i32)* null, i32 (%struct.page*, i32)* null, void (%struct.page*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* null, i1 (%struct.page*, i32)* null, void (%struct.page*)* null, i32 (%struct.page*)* null, i32 (%struct.page*, i64, i64)* null, void (%struct.page*, i8*, i8*)* null, i32 (%struct.address_space*, %struct.page*)* @generic_error_remove_page, i32 (%struct.swap_info_struct*, %struct.file*, i64*)* null, void (%struct.file*)* null }, align 8
@shmem_fs_type = internal global %struct.file_system_type { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 8200, i32 (%struct.fs_context*)* @shmem_init_fs_context, %struct.fs_parameter_spec* null, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* null, void (%struct.super_block*)* @kill_litter_super, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"\013Could not register tmpfs\0A\00", align 1
@shm_mnt = internal unnamed_addr global %struct.vfsmount* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"\013Could not kern_mount tmpfs\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dev/zero\00", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@vma_init.dummy_vm_ops = internal constant %struct.vm_operations_struct zeroinitializer, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@shmem_fs_context_ops = internal constant { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* } { void (%struct.fs_context*)* @shmem_free_fc, i32 (%struct.fs_context*, %struct.fs_context*)* null, i32 (%struct.fs_context*, %struct.fs_parameter*)* null, i32 (%struct.fs_context*, i8*)* null, i32 (%struct.fs_context*)* @shmem_get_tree, i32 (%struct.fs_context*)* null }, align 8
@shmem_fill_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@shmem_ops = internal constant %struct.super_operations { %struct.inode* (%struct.super_block*)* @shmem_alloc_inode, void (%struct.inode*)* @shmem_destroy_inode, void (%struct.inode*)* @shmem_free_in_core_inode, void (%struct.inode*, i32)* null, i32 (%struct.inode*, %struct.writeback_control*)* null, i32 (%struct.inode*)* @generic_delete_inode, void (%struct.inode*)* @shmem_evict_inode, void (%struct.super_block*)* @shmem_put_super, i32 (%struct.super_block*, i32)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.dentry*, %struct.kstatfs*)* null, i32 (%struct.super_block*, i32*, i8*)* null, void (%struct.super_block*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null }, align 8
@shmem_inode_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@shmem_special_inode_operations = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* null, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@shmem_inode_operations = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @shmem_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @shmem_getattr, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@shmem_file_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* @shmem_mmap, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* @shmem_get_unmapped_area, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@shmem_dir_inode_operations = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* null, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 8
@.str.6 = private unnamed_addr constant [79 x i8] c"\014%s: inode number overflow on device %d, consider using inode64 mount option\0A\00", align 1
@__func__.shmem_reserve_inode = private unnamed_addr constant [20 x i8] c"shmem_reserve_inode\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"shmem_inode_cache\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @shmem_getpage(%struct.inode* noundef %inode, i64 noundef %index, %struct.page** nocapture noundef writeonly %pagep, i32 noundef %sgp) local_unnamed_addr #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %0) #15
  %call1 = call fastcc i32 @shmem_getpage_gfp(%struct.inode* noundef %inode, i64 noundef %index, %struct.page** noundef %pagep, i32 noundef %sgp, i32 noundef %call, %struct.vm_area_struct* noundef null, i32* noundef null) #15
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_getpage_gfp(%struct.inode* noundef %inode, i64 noundef %index, %struct.page** nocapture noundef writeonly %pagep, i32 noundef %sgp, i32 noundef %gfp, %struct.vm_area_struct* noundef %vma, i32* noundef %fault_type) unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %1 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store %struct.page* null, %struct.page** %page, align 8, !annotation !8
  %cmp = icmp ugt i64 %index, 2251799813685247
  br i1 %cmp, label %cleanup192, label %repeat.preheader

repeat.preheader:                                 ; preds = %entry
  %cmp1 = icmp ult i32 %sgp, 3
  %shl = shl nuw nsw i64 %index, 12
  %cmp29 = icmp eq i32 %sgp, 3
  %cmp36.not = icmp eq i32 %sgp, 0
  %and100 = and i32 %gfp, 782048
  %rlock.i = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 0, i32 0, i32 0
  %alloced106 = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 3
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %cmp137 = icmp eq i32 %sgp, 4
  br label %repeat.outer

repeat.outer:                                     ; preds = %repeat.preheader, %if.then184
  %tobool183.not = phi i1 [ true, %repeat.preheader ], [ false, %if.then184 ]
  %alloced.0.ph = phi i32 [ 0, %repeat.preheader ], [ %alloced.2.ph5963, %if.then184 ]
  br label %repeat.outer40

repeat.outer40:                                   ; preds = %repeat.outer, %if.end187
  %alloced.0.ph41 = phi i32 [ %alloced.0.ph, %repeat.outer ], [ %alloced.22532, %if.end187 ]
  br label %repeat

repeat:                                           ; preds = %repeat.outer40, %if.then20
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %repeat
  %call2 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #15
  %cmp3.not = icmp slt i64 %shl, %call2
  br i1 %cmp3.not, label %if.end5, label %cleanup192

if.end5:                                          ; preds = %land.lhs.true, %repeat
  %call7 = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %0, i64 noundef %index, i32 noundef 386, i32 noundef 0) #17
  store %struct.page* %call7, %struct.page** %page, align 8
  %.cast = bitcast %struct.page* %call7 to i8*
  %call19 = call fastcc i1 @xa_is_value(i8* noundef %.cast) #15
  br i1 %call19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end5
  %call21 = call fastcc i32 @shmem_swapin_page(%struct.inode* noundef %inode, i64 noundef %index, %struct.page** noundef nonnull %page, %struct.vm_area_struct* noundef %vma, i32* noundef %fault_type) #15
  %cmp22 = icmp eq i32 %call21, -17
  br i1 %cmp22, label %repeat, label %if.end24

if.end24:                                         ; preds = %if.then20
  %2 = load %struct.page*, %struct.page** %page, align 8
  store %struct.page* %2, %struct.page** %pagep, align 8
  br label %cleanup192

if.end25:                                         ; preds = %if.end5
  %tobool26.not = icmp eq %struct.page* %call7, null
  br i1 %tobool26.not, label %if.end39, label %if.then27

if.then27:                                        ; preds = %if.end25
  %index28 = getelementptr inbounds %struct.page, %struct.page* %call7, i64 0, i32 1, i32 0, i32 2
  %3 = load i64, i64* %index28, align 8
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  call void @mark_page_accessed(%struct.page* noundef nonnull %call7) #17
  %.pre = load %struct.page*, %struct.page** %page, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then27
  %4 = phi %struct.page* [ %.pre, %if.then30 ], [ %call7, %if.then27 ]
  %call32 = call fastcc i32 @PageUptodate(%struct.page* noundef %4) #15
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %out

if.end35:                                         ; preds = %if.end31
  br i1 %cmp36.not, label %if.end39.thread, label %clear

if.end39.thread:                                  ; preds = %if.end35
  %5 = load %struct.page*, %struct.page** %page, align 8
  call void @unlock_page(%struct.page* noundef %5) #17
  %6 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %6) #15
  store %struct.page* null, %struct.page** %pagep, align 8
  br label %cleanup192

if.end39:                                         ; preds = %if.end25
  store %struct.page* null, %struct.page** %pagep, align 8
  switch i32 %sgp, label %alloc_nohuge [
    i32 0, label %cleanup192.loopexit70
    i32 1, label %cleanup192
  ]

alloc_nohuge:                                     ; preds = %if.end39
  %call64 = call fastcc %struct.page* @shmem_alloc_and_acct_page(i32 noundef %gfp, %struct.inode* noundef %inode, i64 noundef %index) #15
  store %struct.page* %call64, %struct.page** %page, align 8
  %.cast39 = bitcast %struct.page* %call64 to i8*
  %call66 = call fastcc i1 @IS_ERR(i8* noundef %.cast39) #15
  br i1 %call66, label %if.then67, label %if.end87

if.then67:                                        ; preds = %alloc_nohuge
  %call68 = call fastcc i64 @PTR_ERR(i8* noundef %.cast39) #15
  %conv69 = trunc i64 %call68 to i32
  store %struct.page* null, %struct.page** %page, align 8
  %cmp70.not = icmp eq i32 %conv69, -28
  br i1 %cmp70.not, label %land.lhs.true181, label %if.end187

if.end87:                                         ; preds = %alloc_nohuge
  br i1 %cmp29, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end87
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call64) #17
  %7 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %8, 2
  store i64 %or.i.i, i64* %flags.i, align 8
  %.pre53 = load %struct.page*, %struct.page** %page, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end87
  %9 = phi %struct.page* [ %.pre53, %if.then98 ], [ %call64, %if.end87 ]
  %call101 = call fastcc i32 @shmem_add_to_page_cache(%struct.page* noundef %9, %struct.address_space* noundef %0, i64 noundef %index, i32 noundef %and100) #15
  %tobool102.not = icmp eq i32 %call101, 0
  %10 = load %struct.page*, %struct.page** %page, align 8
  br i1 %tobool102.not, label %if.end104, label %unacct

if.end104:                                        ; preds = %if.end99
  call void @lru_cache_add(%struct.page* noundef %10) #17
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %11 = load %struct.page*, %struct.page** %page, align 8
  %call105 = call fastcc i64 @compound_nr(%struct.page* noundef %11) #15
  %12 = load i64, i64* %alloced106, align 8
  %add = add i64 %12, %call105
  store i64 %add, i64* %alloced106, align 8
  %13 = load %struct.page*, %struct.page** %page, align 8
  %call107 = call fastcc i32 @compound_order(%struct.page* noundef %13) #15
  %sh_prom = zext i32 %call107 to i64
  %shl108 = shl i64 8, %sh_prom
  %14 = load i64, i64* %i_blocks, align 8
  %add109 = add i64 %shl108, %14
  store i64 %add109, i64* %i_blocks, align 8
  call fastcc void @shmem_recalc_inode(%struct.inode* noundef %inode) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br i1 %cmp137, label %out, label %clear

clear:                                            ; preds = %if.end104, %if.end35
  %hindex.1 = phi i64 [ %3, %if.end35 ], [ %index, %if.end104 ]
  %alloced.1 = phi i32 [ %alloced.0.ph41, %if.end35 ], [ 1, %if.end104 ]
  br i1 %cmp29, label %out, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %clear
  %15 = load %struct.page*, %struct.page** %page, align 8
  %call144 = call fastcc i32 @PageUptodate(%struct.page* noundef %15) #15
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %for.cond.preheader, label %if.end154

for.cond.preheader:                               ; preds = %land.lhs.true143
  %16 = load %struct.page*, %struct.page** %page, align 8
  %call14845 = call fastcc i64 @compound_nr(%struct.page* noundef %16) #15
  %cmp14946.not = icmp eq i64 %call14845, 0
  br i1 %cmp14946.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %conv14748 = phi i64 [ %conv147, %for.body ], [ 0, %for.cond.preheader ]
  %17 = load %struct.page*, %struct.page** %page, align 8
  %add.ptr = getelementptr %struct.page, %struct.page* %17, i64 %conv14748
  call fastcc void @clear_highpage(%struct.page* noundef %add.ptr) #15
  %18 = load %struct.page*, %struct.page** %page, align 8
  %add.ptr152 = getelementptr %struct.page, %struct.page* %18, i64 %conv14748
  call void @flush_dcache_page(%struct.page* noundef %add.ptr152) #17
  %inc153 = shl nsw i64 %conv14748, 32
  %sext = add i64 %inc153, 4294967296
  %conv147 = ashr exact i64 %sext, 32
  %19 = load %struct.page*, %struct.page** %page, align 8
  %call148 = call fastcc i64 @compound_nr(%struct.page* noundef %19) #15
  %cmp149 = icmp ugt i64 %call148, %conv147
  br i1 %cmp149, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %20 = load %struct.page*, %struct.page** %page, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !9
  %flags.i2 = getelementptr inbounds %struct.page, %struct.page* %20, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags.i2) #17
  br label %if.end154

if.end154:                                        ; preds = %for.end, %land.lhs.true143
  br i1 %cmp1, label %land.lhs.true157, label %out

land.lhs.true157:                                 ; preds = %if.end154
  %call159 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #15
  %cmp160.not = icmp slt i64 %shl, %call159
  br i1 %cmp160.not, label %out, label %if.then162

if.then162:                                       ; preds = %land.lhs.true157
  %tobool163.not = icmp eq i32 %alloced.1, 0
  br i1 %tobool163.not, label %unlock, label %if.then164

if.then164:                                       ; preds = %if.then162
  %21 = load %struct.page*, %struct.page** %page, align 8
  %call.i3 = call fastcc i64 @_compound_head(%struct.page* noundef %21) #17
  %22 = inttoptr i64 %call.i3 to %struct.page*
  %flags.i4 = getelementptr inbounds %struct.page, %struct.page* %22, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags.i4) #17
  %23 = load %struct.page*, %struct.page** %page, align 8
  call void @delete_from_page_cache(%struct.page* noundef %23) #17
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @shmem_recalc_inode(%struct.inode* noundef %inode) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %unlock

out:                                              ; preds = %if.end104, %clear, %if.end154, %land.lhs.true157, %if.end31
  %hindex.2 = phi i64 [ %3, %if.end31 ], [ %hindex.1, %land.lhs.true157 ], [ %hindex.1, %if.end154 ], [ %hindex.1, %clear ], [ %index, %if.end104 ]
  %24 = load %struct.page*, %struct.page** %page, align 8
  %add.ptr169 = getelementptr %struct.page, %struct.page* %24, i64 %index
  %idx.neg = sub i64 0, %hindex.2
  %add.ptr170 = getelementptr %struct.page, %struct.page* %add.ptr169, i64 %idx.neg
  store %struct.page* %add.ptr170, %struct.page** %pagep, align 8
  br label %cleanup192

unacct:                                           ; preds = %if.end99
  %call171 = call fastcc i64 @compound_nr(%struct.page* noundef %10) #15, !range !10
  call fastcc void @shmem_inode_unacct_blocks(%struct.inode* noundef %inode, i64 noundef %call171) #15
  br label %unlock

unlock:                                           ; preds = %if.then162, %if.then164, %unacct
  %error.0.ph.ph = phi i32 [ %call101, %unacct ], [ -22, %if.then164 ], [ -22, %if.then162 ]
  %alloced.2.ph.ph = phi i32 [ %alloced.0.ph41, %unacct ], [ %alloced.1, %if.then164 ], [ 0, %if.then162 ]
  %.pr.pr = load %struct.page*, %struct.page** %page, align 8
  %tobool176.not = icmp eq %struct.page* %.pr.pr, null
  br i1 %tobool176.not, label %if.end178, label %if.then177

if.then177:                                       ; preds = %unlock
  call void @unlock_page(%struct.page* noundef nonnull %.pr.pr) #17
  %25 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %25) #15
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %unlock
  %cmp179 = icmp eq i32 %error.0.ph.ph, -28
  br i1 %cmp179, label %land.lhs.true181, label %if.end187

land.lhs.true181:                                 ; preds = %if.then67, %if.end178
  %alloced.2.ph5963 = phi i32 [ %alloced.2.ph.ph, %if.end178 ], [ %alloced.0.ph41, %if.then67 ]
  br i1 %tobool183.not, label %if.then184, label %cleanup192

if.then184:                                       ; preds = %land.lhs.true181
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @shmem_recalc_inode(%struct.inode* noundef %inode) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %repeat.outer

if.end187:                                        ; preds = %if.then67, %if.end178
  %error.02433 = phi i32 [ %error.0.ph.ph, %if.end178 ], [ %conv69, %if.then67 ]
  %alloced.22532 = phi i32 [ %alloced.2.ph.ph, %if.end178 ], [ %alloced.0.ph41, %if.then67 ]
  %cmp188 = icmp eq i32 %error.02433, -17
  br i1 %cmp188, label %repeat.outer40, label %cleanup192.loopexit70

cleanup192.loopexit70:                            ; preds = %if.end39, %if.end187
  %retval.0.ph = phi i32 [ %sgp, %if.end39 ], [ %error.02433, %if.end187 ]
  br label %cleanup192

cleanup192:                                       ; preds = %land.lhs.true181, %land.lhs.true, %if.end39, %cleanup192.loopexit70, %if.end39.thread, %entry, %out, %if.end24
  %retval.0 = phi i32 [ %call21, %if.end24 ], [ 0, %out ], [ -27, %entry ], [ 0, %if.end39.thread ], [ %retval.0.ph, %cleanup192.loopexit70 ], [ -2, %if.end39 ], [ -22, %land.lhs.true ], [ -28, %land.lhs.true181 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_mask(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #1 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 3
  %0 = load i32, i32* %gfp_mask, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @vma_is_shmem(%struct.vm_area_struct* nocapture noundef readonly %vma) local_unnamed_addr #1 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %cmp = icmp eq %struct.vm_operations_struct* %0, @shmem_vm_ops
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @shmem_charge(%struct.inode* noundef %inode, i64 noundef %pages) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %call1 = call fastcc i1 @shmem_inode_acct_block(%struct.inode* noundef %inode, i64 noundef %pages) #15
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 7
  %1 = load i64, i64* %nrpages, align 8
  %add = add i64 %1, %pages
  store i64 %add, i64* %nrpages, align 8
  %rlock.i = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 0, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #15
  %alloced = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 3
  %2 = load i64, i64* %alloced, align 8
  %add7 = add i64 %2, %pages
  store i64 %add7, i64* %alloced, align 8
  %mul = shl i64 %pages, 3
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %3 = load i64, i64* %i_blocks, align 8
  %add8 = add i64 %3, %mul
  store i64 %add8, i64* %i_blocks, align 8
  call fastcc void @shmem_recalc_inode(%struct.inode* noundef %inode) #15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef readnone %inode) unnamed_addr #3 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -1, i32 38, i32 7
  %0 = bitcast i64* %add.ptr to %struct.shmem_inode_info*
  ret %struct.shmem_inode_info* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @shmem_inode_acct_block(%struct.inode* noundef readonly %inode, i64 noundef %pages) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call1 = call fastcc %struct.shmem_sb_info* @SHMEM_SB(%struct.super_block* noundef %0) #15
  %flags = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 2
  %1 = load i64, i64* %flags, align 8
  %call2 = call fastcc i32 @shmem_acct_block(i64 noundef %1, i64 noundef %pages) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %max_blocks = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call1, i64 0, i32 0
  %2 = load i64, i64* %max_blocks, align 8
  %tobool3.not = icmp eq i64 %2, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %used_blocks = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call1, i64 0, i32 1
  %sub = sub i64 %2, %pages
  %call6 = call fastcc i32 @percpu_counter_compare(%struct.percpu_counter* noundef %used_blocks, i64 noundef %sub) #15
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %unacct, label %if.end8

if.end8:                                          ; preds = %if.then4
  call fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %used_blocks, i64 noundef %pages) #15
  br label %cleanup

unacct:                                           ; preds = %if.then4
  %3 = load i64, i64* %flags, align 8
  call fastcc void @shmem_unacct_blocks(i64 noundef %3, i64 noundef %pages) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end8, %entry, %unacct
  %retval.0 = phi i1 [ false, %unacct ], [ false, %entry ], [ true, %if.end8 ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !11
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_recalc_inode(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %alloced = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 3
  %0 = load i64, i64* %alloced, align 8
  %swapped = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 4
  %1 = load i64, i64* %swapped, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %2 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 7
  %3 = load i64, i64* %nrpages, align 8
  %4 = add i64 %3, %1
  %sub1 = sub i64 %0, %4
  %cmp = icmp sgt i64 %sub1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %4, i64* %alloced, align 8
  %mul.neg = mul i64 %sub1, -8
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %5 = load i64, i64* %i_blocks, align 8
  %sub4 = add i64 %5, %mul.neg
  store i64 %sub4, i64* %i_blocks, align 8
  call fastcc void @shmem_inode_unacct_blocks(%struct.inode* noundef %inode, i64 noundef %sub1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @shmem_uncharge(%struct.inode* noundef %inode, i64 noundef %pages) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %rlock.i = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 0, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #15
  %alloced = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 3
  %0 = load i64, i64* %alloced, align 8
  %sub = sub i64 %0, %pages
  store i64 %sub, i64* %alloced, align 8
  %mul.neg = mul i64 %pages, -8
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %1 = load i64, i64* %i_blocks, align 8
  %sub6 = add i64 %1, %mul.neg
  store i64 %sub6, i64* %i_blocks, align 8
  call fastcc void @shmem_recalc_inode(%struct.inode* noundef %inode) #15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #17
  call fastcc void @shmem_inode_unacct_blocks(%struct.inode* noundef %inode, i64 noundef %pages) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_inode_unacct_blocks(%struct.inode* noundef readonly %inode, i64 noundef %pages) unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call1 = call fastcc %struct.shmem_sb_info* @SHMEM_SB(%struct.super_block* noundef %0) #15
  %max_blocks = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call1, i64 0, i32 0
  %1 = load i64, i64* %max_blocks, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %used_blocks = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call1, i64 0, i32 1
  call fastcc void @percpu_counter_sub(%struct.percpu_counter* noundef %used_blocks, i64 noundef %pages) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %flags = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 2
  %2 = load i64, i64* %flags, align 8
  call fastcc void @shmem_unacct_blocks(i64 noundef %2, i64 noundef %pages) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i1 @shmem_is_huge(%struct.vm_area_struct* nocapture readnone %vma, %struct.inode* nocapture readnone %inode, i64 %index) local_unnamed_addr #3 {
entry:
  ret i1 false
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @shmem_partial_swap_usage(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %start, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #17
  %sub = add i64 %end, -1
  %call = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef %sub) #17
  %tobool.not16 = icmp eq i8* %call, null
  br i1 %tobool.not16, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %swapped.018 = phi i64 [ %swapped.2, %for.inc ], [ 0, %entry ]
  %page.0.in17 = phi i8* [ %call9, %for.inc ], [ %call, %entry ]
  %call1 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %page.0.in17) #15
  br i1 %call1, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call2 = call fastcc i1 @xa_is_value(i8* noundef nonnull %page.0.in17) #15
  %inc = zext i1 %call2 to i64
  %spec.select = add i64 %swapped.018, %inc
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %5 = getelementptr %struct.task_struct, %struct.task_struct* %4, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %5) #17
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @xas_pause(%struct.xa_state* noundef nonnull %xas) #17
  call fastcc void @cond_resched_rcu() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then6, %for.body
  %swapped.2 = phi i64 [ %swapped.018, %for.body ], [ %spec.select, %if.then6 ], [ %spec.select, %if.end ]
  %call9 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %sub) #15
  %tobool.not = icmp eq i8* %call9, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %swapped.0.lcssa = phi i64 [ 0, %entry ], [ %swapped.2, %for.inc ]
  call fastcc void @rcu_read_unlock() #15
  %shl = shl i64 %swapped.0.lcssa, 12
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i64 %shl
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find(%struct.xa_state* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i1 @xas_retry(%struct.xa_state* nocapture noundef writeonly %xas, i8* noundef %entry1) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @xa_is_zero(i8* noundef %entry1) #15
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @xa_is_retry(i8* noundef %entry1) #15
  br i1 %call2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  call fastcc void @xas_reset(%struct.xa_state* noundef %xas) #15
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i1 [ true, %if.end4 ], [ true, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(%struct.xa_state* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cond_resched_rcu() unnamed_addr #0 {
entry:
  call fastcc void @rcu_read_unlock() #15
  call fastcc void @_cond_resched() #15
  call fastcc void @__rcu_read_lock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next_entry(%struct.xa_state* noundef %xas, i64 noundef %max) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #15
  br i1 %call, label %cleanup.sink.split, label %lor.lhs.false, !prof !13

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %cleanup.sink.split, !prof !14

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv2 = zext i8 %2 to i64
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %and = and i64 %3, 63
  %cmp.not = icmp eq i64 %and, %conv2
  br i1 %cmp.not, label %do.body, label %cleanup.sink.split, !prof !14

do.body:                                          ; preds = %lor.rhs, %if.end48
  %4 = phi i8 [ %inc, %if.end48 ], [ %2, %lor.rhs ]
  %5 = phi i64 [ %inc51, %if.end48 ], [ %3, %lor.rhs ]
  %cmp9.not = icmp uge i64 %5, %max
  %cmp23 = icmp eq i8 %4, 63
  %or.cond = select i1 %cmp9.not, i1 true, i1 %cmp23
  br i1 %or.cond, label %cleanup.sink.split, label %if.end34, !prof !15

if.end34:                                         ; preds = %do.body
  %conv36 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv36, 1
  %call37 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %add) #15
  %call38 = call fastcc i1 @xa_is_internal(i8* noundef %call37) #15
  br i1 %call38, label %cleanup.sink.split, label %if.end48, !prof !13

if.end48:                                         ; preds = %if.end34
  %6 = load i8, i8* %xa_offset, align 2
  %inc = add i8 %6, 1
  store i8 %inc, i8* %xa_offset, align 2
  %7 = load i64, i64* %xa_index, align 8
  %inc51 = add i64 %7, 1
  store i64 %inc51, i64* %xa_index, align 8
  %tobool52.not = icmp eq i8* %call37, null
  br i1 %tobool52.not, label %do.body, label %cleanup

cleanup.sink.split:                               ; preds = %if.end34, %do.body, %lor.rhs, %lor.lhs.false, %entry
  %call47 = call i8* @xas_find(%struct.xa_state* noundef %xas, i64 noundef %max) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %cleanup.sink.split
  %retval.0 = phi i8* [ %call47, %cleanup.sink.split ], [ %call37, %if.end48 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @shmem_swap_usage(%struct.vm_area_struct* nocapture noundef readonly %vma) local_unnamed_addr #0 {
entry:
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #15
  %call1 = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %call) #15
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %swapped2 = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call1, i64 0, i32 4
  %2 = load volatile i64, i64* %swapped2, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %3 = load i64, i64* %vm_pgoff, align 8
  %tobool3.not = icmp eq i64 %3, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  %vm_start6.phi.trans.insert = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %.pre = load i64, i64* %vm_start6.phi.trans.insert, align 8
  %vm_end8.phi.trans.insert = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %.pre28 = load i64, i64* %vm_end8.phi.trans.insert, align 8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %5 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %4, %5
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  %6 = load i64, i64* %i_size, align 8
  %cmp.not = icmp ult i64 %sub, %6
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %shl = shl i64 %2, 12
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %land.lhs.true
  %7 = phi i64 [ %.pre28, %if.end.if.end5_crit_edge ], [ %4, %land.lhs.true ]
  %8 = phi i64 [ %.pre, %if.end.if.end5_crit_edge ], [ %5, %land.lhs.true ]
  %call7 = call fastcc i64 @linear_page_index(%struct.vm_area_struct* noundef %vma, i64 noundef %8) #15
  %call9 = call fastcc i64 @linear_page_index(%struct.vm_area_struct* noundef %vma, i64 noundef %7) #15
  %call10 = call i64 @shmem_partial_swap_usage(%struct.address_space* noundef %1, i64 noundef %call7, i64 noundef %call9) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi i64 [ %call10, %if.end5 ], [ %shl, %if.then4 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #1 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @linear_page_index(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address) unnamed_addr #1 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @shmem_unlock_mapping(%struct.address_space* noundef %mapping) local_unnamed_addr #0 {
entry:
  %pvec = alloca %struct.pagevec, align 8
  %index = alloca i64, align 8
  %0 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !8
  %1 = bitcast i64* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store i64 0, i64* %index, align 8
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #15
  %call4 = call fastcc i1 @mapping_unevictable(%struct.address_space* noundef %mapping) #15
  br i1 %call4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %call1 = call fastcc i32 @pagevec_lookup(%struct.pagevec* noundef nonnull %pvec, %struct.address_space* noundef %mapping, i64* noundef nonnull %index) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  call void @check_move_unevictable_pages(%struct.pagevec* noundef nonnull %pvec) #17
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #15
  call fastcc void @_cond_resched() #15
  %call = call fastcc i1 @mapping_unevictable(%struct.address_space* noundef %mapping) #15
  br i1 %call, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %while.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pagevec_init(%struct.pagevec* nocapture noundef writeonly %pvec) unnamed_addr #6 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 0, i8* %nr, align 8
  %percpu_pvec_drained = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 1
  store i8 0, i8* %percpu_pvec_drained, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @mapping_unevictable(%struct.address_space* noundef %mapping) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.address_space* %mapping, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 8
  %tobool1 = icmp ne i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pagevec_lookup(%struct.pagevec* noundef %pvec, %struct.address_space* noundef %mapping, i64* noundef %start) unnamed_addr #0 {
entry:
  %call = call i32 @pagevec_lookup_range(%struct.pagevec* noundef %pvec, %struct.address_space* noundef %mapping, i64* noundef %start, i64 noundef -1) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_move_unevictable_pages(%struct.pagevec* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagevec_release(%struct.pagevec* noundef %pvec) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__pagevec_release(%struct.pagevec* noundef %pvec) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @shmem_truncate_range(%struct.inode* noundef %inode, i64 noundef %lstart, i64 noundef %lend) local_unnamed_addr #0 {
entry:
  call fastcc void @shmem_undo_range(%struct.inode* noundef %inode, i64 noundef %lstart, i64 noundef %lend) #15
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13
  %call = call [2 x i64] @current_time(%struct.inode* noundef %inode) #17
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13, i32 0
  store i64 %call.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx2 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13, i32 1
  store i64 %call.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx2, align 8
  %0 = bitcast %struct.timespec64* %i_ctime to i8*
  %1 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_undo_range(%struct.inode* noundef %inode, i64 noundef %lstart, i64 noundef %lend) unnamed_addr #0 {
entry:
  %pvec = alloca %struct.pagevec, align 8
  %indices = alloca [15 x i64], align 8
  %page50 = alloca %struct.page*, align 8
  %page64 = alloca %struct.page*, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %sub = add i64 %lstart, 4095
  %shr = lshr i64 %sub, 12
  %add1 = add i64 %lend, 1
  %shr2 = ashr i64 %add1, 12
  %1 = trunc i64 %lstart to i32
  %conv = and i32 %1, 4095
  %2 = trunc i64 %add1 to i32
  %conv5 = and i32 %2, 4095
  %3 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !annotation !8
  %4 = bitcast [15 x i64]* %indices to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false), !annotation !8
  %cmp = icmp eq i64 %lend, -1
  %spec.select = select i1 %cmp, i64 -1, i64 %shr2
  %fallocend = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 5
  %5 = load i64, i64* %fallocend, align 8
  %cmp7 = icmp ule i64 %5, %shr
  %cmp10.not = icmp ugt i64 %5, %spec.select
  %or.cond1 = or i1 %cmp7, %cmp10.not
  br i1 %or.cond1, label %if.end15, label %if.then13

if.then13:                                        ; preds = %entry
  store i64 %shr, i64* %fallocend, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %entry
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #15
  %sub18 = add nsw i64 %spec.select, -1
  %arraydecay = getelementptr inbounds [15 x i64], [15 x i64]* %indices, i64 0, i64 0
  %cmp1624 = icmp ult i64 %shr, %spec.select
  br i1 %cmp1624, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %if.end15, %for.end
  %index.026 = phi i64 [ %inc47, %for.end ], [ %shr, %if.end15 ]
  %nr_swaps_freed.025 = phi i64 [ %nr_swaps_freed.1.lcssa, %for.end ], [ 0, %if.end15 ]
  %call19 = call i32 @find_lock_entries(%struct.address_space* noundef %0, i64 noundef %index.026, i64 noundef %sub18, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #17
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.rhs
  %call2119 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #15
  %cmp2220.not = icmp eq i32 %call2119, 0
  br i1 %cmp2220.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %i.022 = phi i32 [ %inc, %cleanup ], [ 0, %for.cond.preheader ]
  %nr_swaps_freed.121 = phi i64 [ %nr_swaps_freed.2, %cleanup ], [ %nr_swaps_freed.025, %for.cond.preheader ]
  %idxprom = sext i32 %i.022 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %6 = load %struct.page*, %struct.page** %arrayidx, align 8
  %arrayidx25 = getelementptr [15 x i64], [15 x i64]* %indices, i64 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx25, align 8
  %8 = bitcast %struct.page* %6 to i8*
  %call26 = call fastcc i1 @xa_is_value(i8* noundef %8) #15
  br i1 %call26, label %if.end30, label %if.end35

if.end30:                                         ; preds = %for.body
  %call31 = call fastcc i32 @shmem_free_swap(%struct.address_space* noundef %0, i64 noundef %7, i8* noundef %8) #15
  %tobool32.not = icmp eq i32 %call31, 0
  %9 = zext i1 %tobool32.not to i64
  %add34 = add i64 %nr_swaps_freed.121, %9
  br label %cleanup

if.end35:                                         ; preds = %for.body
  %call44 = call i32 @truncate_inode_page(%struct.address_space* noundef %0, %struct.page* noundef %6) #17
  call void @unlock_page(%struct.page* noundef %6) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30
  %nr_swaps_freed.2 = phi i64 [ %add34, %if.end30 ], [ %nr_swaps_freed.121, %if.end35 ]
  %inc = add nuw i32 %i.022, 1
  %call21 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #15
  %cmp22 = icmp ult i32 %inc, %call21
  br i1 %cmp22, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %nr_swaps_freed.1.lcssa = phi i64 [ %nr_swaps_freed.025, %for.cond.preheader ], [ %nr_swaps_freed.2, %cleanup ]
  %index.1.lcssa = phi i64 [ %index.026, %for.cond.preheader ], [ %7, %cleanup ]
  call void @pagevec_remove_exceptionals(%struct.pagevec* noundef nonnull %pvec) #17
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #15
  call fastcc void @_cond_resched() #15
  %inc47 = add i64 %index.1.lcssa, 1
  %cmp16 = icmp ult i64 %inc47, %spec.select
  br i1 %cmp16, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %for.end, %if.end15
  %nr_swaps_freed.0.lcssa = phi i64 [ 0, %if.end15 ], [ %nr_swaps_freed.1.lcssa, %for.end ], [ %nr_swaps_freed.025, %land.rhs ]
  %tobool48.not = icmp eq i32 %conv, 0
  br i1 %tobool48.not, label %if.end61, label %if.then49

if.then49:                                        ; preds = %while.end
  %10 = bitcast %struct.page** %page50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #16
  store %struct.page* null, %struct.page** %page50, align 8
  %sub51 = add nsw i64 %shr, -1
  %call52 = call i32 @shmem_getpage(%struct.inode* noundef %inode, i64 noundef %sub51, %struct.page** noundef nonnull %page50, i32 noundef 0) #15
  %11 = load %struct.page*, %struct.page** %page50, align 8
  %tobool53.not = icmp eq %struct.page* %11, null
  br i1 %tobool53.not, label %if.end60, label %if.then54

if.then54:                                        ; preds = %if.then49
  %cmp55 = icmp ugt i64 %shr, %spec.select
  %spec.select2 = select i1 %cmp55, i32 0, i32 %conv5
  %spec.select3 = select i1 %cmp55, i32 %conv5, i32 4096
  call fastcc void @zero_user_segment(%struct.page* noundef nonnull %11, i32 noundef %conv, i32 noundef %spec.select3) #15
  %call59 = call i32 @set_page_dirty(%struct.page* noundef nonnull %11) #17
  call void @unlock_page(%struct.page* noundef nonnull %11) #17
  call fastcc void @put_page(%struct.page* noundef nonnull %11) #15
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %if.then49
  %partial_end.1 = phi i32 [ %spec.select2, %if.then54 ], [ %conv5, %if.then49 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #16
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %while.end
  %partial_end.2 = phi i32 [ %partial_end.1, %if.end60 ], [ %conv5, %while.end ]
  %tobool62.not = icmp eq i32 %partial_end.2, 0
  br i1 %tobool62.not, label %if.end70, label %if.then63

if.then63:                                        ; preds = %if.end61
  %12 = bitcast %struct.page** %page64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #16
  store %struct.page* null, %struct.page** %page64, align 8
  %call65 = call i32 @shmem_getpage(%struct.inode* noundef %inode, i64 noundef %spec.select, %struct.page** noundef nonnull %page64, i32 noundef 0) #15
  %13 = load %struct.page*, %struct.page** %page64, align 8
  %tobool66.not = icmp eq %struct.page* %13, null
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.then63
  call fastcc void @zero_user_segment(%struct.page* noundef nonnull %13, i32 noundef 0, i32 noundef %partial_end.2) #15
  %call68 = call i32 @set_page_dirty(%struct.page* noundef nonnull %13) #17
  call void @unlock_page(%struct.page* noundef nonnull %13) #17
  call fastcc void @put_page(%struct.page* noundef nonnull %13) #15
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.then63
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #16
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end61
  br i1 %cmp1624, label %while.cond75.preheader, label %cleanup142

while.cond75.preheader:                           ; preds = %if.end70
  %cmp89 = icmp ne i64 %spec.select, -1
  br label %while.cond75.outer

while.cond75.outer:                               ; preds = %while.cond75.preheader, %for.end137
  %nr_swaps_freed.3.ph = phi i64 [ %nr_swaps_freed.0.lcssa, %while.cond75.preheader ], [ %nr_swaps_freed.415, %for.end137 ]
  %index.3.ph = phi i64 [ %shr, %while.cond75.preheader ], [ %inc138, %for.end137 ]
  br label %while.cond75

while.cond75:                                     ; preds = %while.cond75.outer, %if.then85
  %index.3 = phi i64 [ %shr, %if.then85 ], [ %index.3.ph, %while.cond75.outer ]
  %cmp76 = icmp ult i64 %index.3, %spec.select
  br i1 %cmp76, label %while.body78, label %while.end139

while.body78:                                     ; preds = %while.cond75
  call fastcc void @_cond_resched() #15
  %call83 = call i32 @find_get_entries(%struct.address_space* noundef %0, i64 noundef %index.3, i64 noundef %sub18, %struct.pagevec* noundef nonnull %pvec, i64* noundef nonnull %arraydecay) #17
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %while.body78
  %call9529 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #15
  %cmp9630.not = icmp eq i32 %call9529, 0
  br i1 %cmp9630.not, label %for.end137, label %for.body98

if.then85:                                        ; preds = %while.body78
  %cmp86 = icmp eq i64 %index.3, %shr
  %or.cond = or i1 %cmp89, %cmp86
  br i1 %or.cond, label %while.end139, label %while.cond75

for.body98:                                       ; preds = %for.cond94.preheader, %for.inc135
  %i.132 = phi i32 [ %inc136, %for.inc135 ], [ 0, %for.cond94.preheader ]
  %nr_swaps_freed.431 = phi i64 [ %nr_swaps_freed.5, %for.inc135 ], [ %nr_swaps_freed.3.ph, %for.cond94.preheader ]
  %idxprom101 = sext i32 %i.132 to i64
  %arrayidx102 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom101
  %14 = load %struct.page*, %struct.page** %arrayidx102, align 8
  %arrayidx104 = getelementptr [15 x i64], [15 x i64]* %indices, i64 0, i64 %idxprom101
  %15 = load i64, i64* %arrayidx104, align 8
  %16 = bitcast %struct.page* %14 to i8*
  %call105 = call fastcc i1 @xa_is_value(i8* noundef %16) #15
  br i1 %call105, label %if.end109, label %if.end115

if.end109:                                        ; preds = %for.body98
  %call110 = call fastcc i32 @shmem_free_swap(%struct.address_space* noundef %0, i64 noundef %15, i8* noundef %16) #15
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.end109
  %dec = add i64 %15, -1
  br label %for.end137

if.end113:                                        ; preds = %if.end109
  %inc114 = add i64 %nr_swaps_freed.431, 1
  br label %for.inc135

if.end115:                                        ; preds = %for.body98
  call fastcc void @lock_page(%struct.page* noundef %14) #15
  %call121 = call %struct.address_space* @page_mapping(%struct.page* noundef %14) #17
  %cmp122.not = icmp eq %struct.address_space* %call121, %0
  br i1 %cmp122.not, label %if.end126, label %if.then124

if.then124:                                       ; preds = %if.end115
  call void @unlock_page(%struct.page* noundef %14) #17
  %dec125 = add i64 %15, -1
  br label %for.end137

if.end126:                                        ; preds = %if.end115
  %call129 = call i32 @truncate_inode_page(%struct.address_space* noundef %0, %struct.page* noundef %14) #17
  call void @unlock_page(%struct.page* noundef %14) #17
  br label %for.inc135

for.inc135:                                       ; preds = %if.end113, %if.end126
  %nr_swaps_freed.5 = phi i64 [ %inc114, %if.end113 ], [ %nr_swaps_freed.431, %if.end126 ]
  %inc136 = add nuw i32 %i.132, 1
  %call95 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #15
  %cmp96 = icmp ult i32 %inc136, %call95
  br i1 %cmp96, label %for.body98, label %for.end137

for.end137:                                       ; preds = %for.inc135, %for.cond94.preheader, %if.then124, %if.then112
  %nr_swaps_freed.415 = phi i64 [ %nr_swaps_freed.431, %if.then124 ], [ %nr_swaps_freed.431, %if.then112 ], [ %nr_swaps_freed.3.ph, %for.cond94.preheader ], [ %nr_swaps_freed.5, %for.inc135 ]
  %index.6 = phi i64 [ %dec125, %if.then124 ], [ %dec, %if.then112 ], [ %index.3, %for.cond94.preheader ], [ %15, %for.inc135 ]
  call void @pagevec_remove_exceptionals(%struct.pagevec* noundef nonnull %pvec) #17
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #15
  %inc138 = add i64 %index.6, 1
  br label %while.cond75.outer

while.end139:                                     ; preds = %if.then85, %while.cond75
  %rlock.i = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %swapped = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 4
  %17 = load i64, i64* %swapped, align 8
  %sub140 = sub i64 %17, %nr_swaps_freed.3.ph
  store i64 %sub140, i64* %swapped, align 8
  call fastcc void @shmem_recalc_inode(%struct.inode* noundef %inode) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup142

cleanup142:                                       ; preds = %if.end70, %while.end139
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #16
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @shmem_unuse(i32 noundef %type, i1 noundef %frontswap, i64* nocapture noundef %fs_pages_to_unuse) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @shmem_swaplist) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @shmem_swaplist_mutex) #17
  %0 = load i8*, i8** bitcast (%struct.list_head* @shmem_swaplist to i8**), align 8
  %cmp.not71 = icmp eq i8* %0, bitcast (%struct.list_head* @shmem_swaplist to i8*)
  br i1 %cmp.not71, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn.in.in72 = phi i8* [ %.pn67, %for.inc ], [ %0, %if.end ]
  %.pn.in73 = bitcast i8* %.pn.in.in72 to i8**
  %1 = bitcast i8* %.pn.in.in72 to %struct.list_head*
  %swapped = getelementptr i8, i8* %.pn.in.in72, i64 -32
  %2 = bitcast i8* %swapped to i64*
  %3 = load i64, i64* %2, align 8
  %tobool9.not = icmp eq i64 %3, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body
  %.pn74 = load i8*, i8** %.pn.in73, align 8
  call fastcc void @list_del_init(%struct.list_head* noundef %1) #15
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %stop_eviction = getelementptr i8, i8* %.pn.in.in72, i64 40
  %4 = bitcast i8* %stop_eviction to %struct.atomic_t*
  call fastcc void @__ll_sc_atomic_add(i32 noundef 1, %struct.atomic_t* noundef %4) #17
  call void @mutex_unlock(%struct.mutex* noundef nonnull @shmem_swaplist_mutex) #17
  %vfs_inode = getelementptr i8, i8* %.pn.in.in72, i64 48
  %5 = bitcast i8* %vfs_inode to %struct.inode*
  %call14 = call fastcc i32 @shmem_unuse_inode(%struct.inode* noundef %5, i32 noundef %type, i1 noundef %frontswap, i64* noundef %fs_pages_to_unuse) #15
  call fastcc void @_cond_resched() #15
  call void @mutex_lock(%struct.mutex* noundef nonnull @shmem_swaplist_mutex) #17
  %6 = load i8*, i8** %.pn.in73, align 8
  %7 = load i64, i64* %2, align 8
  %tobool26.not = icmp eq i64 %7, 0
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end12
  call fastcc void @list_del_init(%struct.list_head* noundef %1) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end12
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %4) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @wake_up_var(i8* noundef %stop_eviction) #17
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  %tobool35.not = icmp eq i32 %call14, 0
  br i1 %tobool35.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %if.end34, %if.then10
  %.pn67 = phi i8* [ %6, %if.end34 ], [ %.pn74, %if.then10 ]
  %cmp.not = icmp eq i8* %.pn67, bitcast (%struct.list_head* @shmem_swaplist to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end34, %if.end
  %error.2 = phi i32 [ 0, %if.end ], [ %call14, %if.end34 ], [ 0, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @shmem_swaplist_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %error.2, %for.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #9 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #15
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_unuse_inode(%struct.inode* noundef %inode, i32 noundef %type, i1 noundef %frontswap, i64* nocapture noundef %fs_pages_to_unuse) unnamed_addr #0 {
entry:
  %pvec = alloca %struct.pagevec, align 8
  %indices = alloca [15 x i64], align 8
  %byval-temp = alloca %struct.pagevec, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %1 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !8
  %2 = bitcast [15 x i64]* %indices to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %2) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %2, i8 0, i64 120, i1 false), !annotation !8
  br i1 %frontswap, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i64, i64* %fs_pages_to_unuse, align 8
  %cmp = icmp ne i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #15
  %5 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %byval-temp, i64 0, i32 0
  %arraydecay = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 0
  %arraydecay4 = getelementptr inbounds [15 x i64], [15 x i64]* %indices, i64 0, i64 0
  br label %do.body

do.body:                                          ; preds = %cleanup, %land.end
  %start.0 = phi i64 [ 0, %land.end ], [ %10, %cleanup ]
  br i1 %4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %6 = load i64, i64* %fs_pages_to_unuse, align 8
  %7 = icmp ult i64 %6, 15
  %spec.select55 = select i1 %7, i64 %6, i64 15
  %8 = trunc i64 %spec.select55 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %do.body
  %nr_entries.0 = phi i32 [ 15, %do.body ], [ %8, %land.lhs.true ]
  %call = call fastcc i32 @shmem_find_swap_entries(%struct.address_space* noundef %0, i64 noundef %start.0, i32 noundef %nr_entries.0, %struct.page** noundef %arraydecay, i64* noundef nonnull %arraydecay4, i32 noundef %type, i1 noundef %frontswap) #15
  %conv6 = trunc i32 %call to i8
  store i8 %conv6, i8* %1, align 8
  %conv8 = and i32 %call, 255
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %do.end, label %if.end12

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %5, i8* noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %call14 = call fastcc i32 @shmem_unuse_swap_entries(%struct.inode* noundef %inode, %struct.pagevec* noundef nonnull %byval-temp, i64* noundef nonnull %arraydecay4) #15
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #16
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end, label %if.end18

if.end18:                                         ; preds = %if.end12
  br i1 %4, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end18
  %conv2154 = zext i32 %call14 to i64
  %9 = load i64, i64* %fs_pages_to_unuse, align 8
  %sub = sub i64 %9, %conv2154
  store i64 %sub, i64* %fs_pages_to_unuse, align 8
  %cmp22 = icmp eq i64 %sub, 0
  br i1 %cmp22, label %do.end, label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then20
  %conv28 = zext i32 %conv8 to i64
  %sub29 = add nsw i64 %conv28, -1
  %arrayidx = getelementptr [15 x i64], [15 x i64]* %indices, i64 0, i64 %sub29
  %10 = load i64, i64* %arrayidx, align 8
  br label %do.body

do.end:                                           ; preds = %if.end, %if.end12, %if.then20
  %ret.0.ph = phi i32 [ 2, %if.then20 ], [ %call14, %if.end12 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #16
  ret i32 %ret.0.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @shmem_get_unmapped_area(%struct.file* noundef %file, i64 noundef %uaddr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) #0 {
entry:
  %0 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %0
  %cmp = icmp ult i64 %shl, %len
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %get_unmapped_area = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 3
  %4 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %get_unmapped_area, align 8
  %call1 = call i64 %4(%struct.file* noundef %file, i64 noundef %uaddr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ -12, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @shmem_lock(%struct.file* nocapture noundef readonly %file, i32 noundef %lock, %struct.ucounts* noundef %ucounts) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #15
  %call1 = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %call) #15
  %tobool.not = icmp eq i32 %lock, 0
  %flags11 = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call1, i64 0, i32 2
  %0 = load i64, i64* %flags11, align 8
  %and12 = and i64 %0, 8192
  br i1 %tobool.not, label %land.lhs.true10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %tobool3.not = icmp eq i64 %and12, 0
  br i1 %tobool3.not, label %if.then, label %out_nomem

if.then:                                          ; preds = %land.lhs.true
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  %1 = load i64, i64* %i_size, align 8
  %call4 = call i32 @user_shm_lock(i64 noundef %1, %struct.ucounts* noundef %ucounts) #17
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %out_nomem, label %if.end

if.end:                                           ; preds = %if.then
  %2 = load i64, i64* %flags11, align 8
  %or = or i64 %2, 8192
  store i64 %or, i64* %flags11, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %3 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  call fastcc void @mapping_set_unevictable(%struct.address_space* noundef %3) #15
  br label %out_nomem

land.lhs.true10:                                  ; preds = %entry
  %tobool13 = icmp ne i64 %and12, 0
  %tobool15 = icmp ne %struct.ucounts* %ucounts, null
  %or.cond = and i1 %tobool15, %tobool13
  br i1 %or.cond, label %if.then16, label %out_nomem

if.then16:                                        ; preds = %land.lhs.true10
  %i_size17 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  %4 = load i64, i64* %i_size17, align 8
  call void @user_shm_unlock(i64 noundef %4, %struct.ucounts* noundef nonnull %ucounts) #17
  %5 = load i64, i64* %flags11, align 8
  %and19 = and i64 %5, -8193
  store i64 %and19, i64* %flags11, align 8
  %f_mapping20 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %6 = load %struct.address_space*, %struct.address_space** %f_mapping20, align 8
  call fastcc void @mapping_clear_unevictable(%struct.address_space* noundef %6) #15
  br label %out_nomem

out_nomem:                                        ; preds = %land.lhs.true, %if.end, %land.lhs.true10, %if.then16, %if.then
  %retval2.0 = phi i32 [ -12, %if.then ], [ 0, %if.then16 ], [ 0, %land.lhs.true10 ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval2.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_shm_lock(i64 noundef, %struct.ucounts* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_set_unevictable(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  call fastcc void @set_bit(i64 noundef 3, i64* noundef %flags) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_shm_unlock(i64 noundef, %struct.ucounts* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_clear_unevictable(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  call fastcc void @clear_bit(i64* noundef %flags) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @shmem_writepage(%struct.page* noundef %page, %struct.writeback_control* nocapture noundef readonly %wbc) #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i44 = and i64 %1, 1
  %tobool5.not = icmp eq i64 %conv.i.i44, 0
  br i1 %tobool5.not, label %do.body10, label %do.end16, !prof !13

do.body10:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/shmem.c\22; .popsection; .long 14472b - 14470b; .short 1360; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !16
  unreachable

do.end16:                                         ; preds = %entry
  %call23 = call i32 @set_page_dirty(%struct.page* noundef %page) #17
  %for_reclaim = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 5
  %bf.load = load i8, i8* %for_reclaim, align 4
  %2 = and i8 %bf.load, 8
  %tobool24.not = icmp eq i8 %2, 0
  br i1 %tobool24.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %do.end16
  call void @unlock_page(%struct.page* noundef %page) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 524288, %do.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(%struct.page* noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(%struct.address_space* noundef, %struct.page* noundef) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @shmem_init_fs_context(%struct.fs_context* nocapture noundef writeonly %fc) #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 48) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %mode to i16*
  store i16 1023, i16* %0, align 8
  %uid = getelementptr inbounds i8, i8* %call, i64 24
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %4 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 7, i32 0
  %5 = bitcast i8* %uid to i32*
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 8
  %gid = getelementptr inbounds i8, i8* %call, i64 28
  %7 = load %struct.cred*, %struct.cred** %cred, align 8
  %8 = getelementptr inbounds %struct.cred, %struct.cred* %7, i64 0, i32 8, i32 0
  %9 = bitcast i8* %gid to i32*
  %10 = load i32, i32* %8, align 8
  store i32 %10, i32* %9, align 4
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  store i8* %call, i8** %fs_private, align 8
  %ops = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 0
  store %struct.fs_context_operations* bitcast ({ void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)* }* @shmem_fs_context_ops to %struct.fs_context_operations*), %struct.fs_context_operations** %ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #17
  ret i8* %call10.i
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @shmem_init() local_unnamed_addr #10 section ".init.text" {
entry:
  call fastcc void @shmem_init_inodecache() #15
  %call = call i32 @register_filesystem(%struct.file_system_type* noundef nonnull @shmem_fs_type) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #19
  br label %out2

if.end:                                           ; preds = %entry
  %call2 = call %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef nonnull @shmem_fs_type) #17
  store %struct.vfsmount* %call2, %struct.vfsmount** @shm_mnt, align 8
  %0 = bitcast %struct.vfsmount* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %0) #15
  br i1 %call3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %0) #15
  %conv = trunc i64 %call5 to i32
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #19
  %call12 = call i32 @unregister_filesystem(%struct.file_system_type* noundef nonnull @shmem_fs_type) #17
  br label %out2

out2:                                             ; preds = %if.then4, %do.end
  %error.0 = phi i32 [ %call, %do.end ], [ %conv, %if.then4 ]
  call fastcc void @shmem_destroy_inodecache() #15
  %conv13 = sext i32 %error.0 to i64
  %call14 = call fastcc i8* @ERR_PTR(i64 noundef %conv13) #15
  store i8* %call14, i8** bitcast (%struct.vfsmount** @shm_mnt to i8**), align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %out2
  %retval.0 = phi i32 [ %error.0, %out2 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_init_inodecache() unnamed_addr #0 {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 672, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef nonnull @shmem_init_inode) #17
  store %struct.kmem_cache* %call, %struct.kmem_cache** @shmem_inode_cachep, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef) local_unnamed_addr #5

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
declare dso_local i32 @unregister_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_destroy_inodecache() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @shmem_inode_cachep, align 8
  call void @kmem_cache_destroy(%struct.kmem_cache* noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @shmem_kernel_file_setup(i8* noundef %name, i64 noundef %size, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = load %struct.vfsmount*, %struct.vfsmount** @shm_mnt, align 8
  %call = call fastcc %struct.file* @__shmem_file_setup(%struct.vfsmount* noundef %0, i8* noundef %name, i64 noundef %size, i64 noundef %flags, i32 noundef 512) #15
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @__shmem_file_setup(%struct.vfsmount* noundef %mnt, i8* noundef %name, i64 noundef %size, i64 noundef %flags, i32 noundef %i_flags) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.vfsmount* %mnt to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %0) #15
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.vfsmount* %mnt to %struct.file*
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp slt i64 %size, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -22) #15
  %2 = bitcast i8* %call4 to %struct.file*
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @shmem_acct_size(i64 noundef %flags, i64 noundef %size) #15
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef -12) #15
  %3 = bitcast i8* %call8 to %struct.file*
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %4 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call10 = call fastcc %struct.inode* @shmem_get_inode(%struct.super_block* noundef %4, i16 noundef -32257, i64 noundef %flags) #15
  %tobool11.not = icmp eq %struct.inode* %call10, null
  br i1 %tobool11.not, label %if.then15, label %if.end17, !prof !13

if.then15:                                        ; preds = %if.end9
  call fastcc void @shmem_unacct_size(i64 noundef %flags, i64 noundef %size) #15
  %call16 = call fastcc i8* @ERR_PTR(i64 noundef -28) #15
  %5 = bitcast i8* %call16 to %struct.file*
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %i_flags18 = getelementptr inbounds %struct.inode, %struct.inode* %call10, i64 0, i32 4
  %6 = load i32, i32* %i_flags18, align 4
  %or = or i32 %6, %i_flags
  store i32 %or, i32* %i_flags18, align 4
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call10, i64 0, i32 11
  store i64 %size, i64* %i_size, align 8
  call void @clear_nlink(%struct.inode* noundef nonnull %call10) #17
  %call21 = call fastcc i8* @ERR_PTR(i64 noundef 0) #15
  %7 = bitcast i8* %call21 to %struct.file*
  %call22 = call fastcc i1 @IS_ERR(i8* noundef %call21) #15
  br i1 %call22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end17
  %call24 = call %struct.file* @alloc_file_pseudo(%struct.inode* noundef nonnull %call10, %struct.vfsmount* noundef %mnt, i8* noundef %name, i32 noundef 2, %struct.file_operations* noundef nonnull @shmem_file_operations) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end17
  %res.0 = phi %struct.file* [ %7, %if.end17 ], [ %call24, %if.then23 ]
  %8 = bitcast %struct.file* %res.0 to i8*
  %call26 = call fastcc i1 @IS_ERR(i8* noundef %8) #15
  br i1 %call26, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @iput(%struct.inode* noundef nonnull %call10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then27, %if.then15, %if.then7, %if.then3, %if.then
  %retval.0 = phi %struct.file* [ %1, %if.then ], [ %2, %if.then3 ], [ %3, %if.then7 ], [ %5, %if.then15 ], [ %res.0, %if.then27 ], [ %res.0, %if.end25 ]
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @shmem_file_setup(i8* noundef %name, i64 noundef %size, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = load %struct.vfsmount*, %struct.vfsmount** @shm_mnt, align 8
  %call = call fastcc %struct.file* @__shmem_file_setup(%struct.vfsmount* noundef %0, i8* noundef %name, i64 noundef %size, i64 noundef %flags, i32 noundef 0) #15
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @shmem_file_setup_with_mnt(%struct.vfsmount* noundef %mnt, i8* noundef %name, i64 noundef %size, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.file* @__shmem_file_setup(%struct.vfsmount* noundef %mnt, i8* noundef %name, i64 noundef %size, i64 noundef %flags, i32 noundef 0) #15
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @shmem_zero_setup(%struct.vm_area_struct* nocapture noundef %vma) local_unnamed_addr #0 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %call = call %struct.file* @shmem_kernel_file_setup(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef %sub, i64 noundef %2) #15
  %3 = bitcast %struct.file* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %3) #15
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %3) #15
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %4 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool.not = icmp eq %struct.file* %4, null
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @fput(%struct.file* noundef nonnull %4) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  store %struct.file* %call, %struct.file** %vm_file, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  store %struct.vm_operations_struct* @shmem_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @shmem_read_mapping_page_gfp(%struct.address_space* nocapture noundef readonly %mapping, i64 noundef %index, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %1 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store %struct.page* null, %struct.page** %page, align 8, !annotation !8
  %call = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %mapping) #15
  br i1 %call, label %do.end8, label %do.body3, !prof !14

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/shmem.c\22; .popsection; .long 14472b - 14470b; .short 4189; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !17
  unreachable

do.end8:                                          ; preds = %entry
  %call9 = call fastcc i32 @shmem_getpage_gfp(%struct.inode* noundef %0, i64 noundef %index, %struct.page** noundef nonnull %page, i32 noundef 2, i32 noundef %gfp, %struct.vm_area_struct* noundef null, i32* noundef null) #15
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end8
  %conv12 = sext i32 %call9 to i64
  %call13 = call fastcc i8* @ERR_PTR(i64 noundef %conv12) #15
  %2 = bitcast i8* %call13 to %struct.page*
  br label %if.end14

if.else:                                          ; preds = %do.end8
  %3 = load %struct.page*, %struct.page** %page, align 8
  call void @unlock_page(%struct.page* noundef %3) #17
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %4 = phi %struct.page* [ %3, %if.else ], [ %2, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  ret %struct.page* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @shmem_mapping(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #1 {
entry:
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %cmp = icmp eq %struct.address_space_operations* %0, bitcast ({ i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }* @shmem_aops to %struct.address_space_operations*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.shmem_sb_info* @SHMEM_SB(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #1 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.shmem_sb_info**
  %1 = load %struct.shmem_sb_info*, %struct.shmem_sb_info** %0, align 8
  ret %struct.shmem_sb_info* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_acct_block(i64 noundef %flags, i64 noundef %pages) unnamed_addr #0 {
entry:
  %and = and i64 %flags, 2097152
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call1 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %2, i64 noundef %pages) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @percpu_counter_compare(%struct.percpu_counter* noundef %fbc, i64 noundef %rhs) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @percpu_counter_batch, align 4
  %call = call i32 @__percpu_counter_compare(%struct.percpu_counter* noundef %fbc, i64 noundef %rhs, i32 noundef %0) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %fbc, i64 noundef %amount) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef %fbc, i64 noundef %amount, i32 noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_unacct_blocks(i64 noundef %flags, i64 noundef %pages) unnamed_addr #0 {
entry:
  %and = and i64 %flags, 2097152
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @vm_unacct_memory(i64 noundef %pages) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %mm, i64 noundef %pages) unnamed_addr #0 {
entry:
  %call = call i32 @cap_vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages) #17
  %call1 = call i32 @__vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages, i32 noundef %call) #17
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(%struct.mm_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_compare(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_unacct_memory(i64 noundef %pages) unnamed_addr #0 {
entry:
  %sub = sub i64 0, %pages
  call fastcc void @vm_acct_memory(i64 noundef %sub) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_acct_memory(i64 noundef %pages) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef nonnull @vm_committed_as, i64 noundef %pages, i32 noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #15
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !18
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !19
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #15
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !21
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_sub(%struct.percpu_counter* noundef %fbc, i64 noundef %amount) unnamed_addr #0 {
entry:
  %sub = sub i64 0, %amount
  call fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %fbc, i64 noundef %sub) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_zero(i8* noundef readnone %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 257) #15
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_retry(i8* noundef readnone %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 256) #15
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_reset(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #6 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @xa_mk_internal(i64 noundef %v) unnamed_addr #3 {
entry:
  %shl = shl i64 %v, 2
  %or = or i64 %shl, 2
  %0 = inttoptr i64 %or to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xas_not_node(%struct.xa_node* noundef %node) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.xa_node* %node to i64
  %and = and i64 %0, 3
  %tobool = icmp ne i64 %and, 0
  %tobool1.not = icmp eq %struct.xa_node* %node, null
  %1 = or i1 %tobool1.not, %tobool
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xa_entry(%struct.xa_node* noundef %node, i32 noundef %offset) unnamed_addr #7 {
entry:
  %idxprom = zext i32 %offset to i64
  %arrayidx = getelementptr %struct.xa_node, %struct.xa_node* %node, i64 0, i32 7, i64 %idxprom
  %0 = load volatile i8*, i8** %arrayidx, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_internal(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range(%struct.pagevec* noundef, %struct.address_space* noundef, i64* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_count(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #1 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(%struct.pagevec* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_lock_entries(%struct.address_space* noundef, i64 noundef, i64 noundef, %struct.pagevec* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_free_swap(%struct.address_space* noundef %mapping, i64 noundef %index, i8* noundef %radswap) unnamed_addr #0 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %call = call fastcc i8* @xa_cmpxchg_irq(%struct.xarray* noundef %i_pages, i64 noundef %index, i8* noundef %radswap) #15
  %cmp.not = icmp eq i8* %call, %radswap
  %spec.select = select i1 %cmp.not, i32 0, i32 -2
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #16, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_inode_page(%struct.address_space* noundef, %struct.page* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagevec_remove_exceptionals(%struct.pagevec* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_user_segment(%struct.page* noundef %page, i32 noundef %start, i32 noundef %end) unnamed_addr #0 {
entry:
  call fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start, i32 noundef %end) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_entries(%struct.address_space* noundef, i64 noundef, i64 noundef, %struct.pagevec* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xa_cmpxchg_irq(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef %old) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %call = call i8* @__xa_cmpxchg(%struct.xarray* noundef %xa, i64 noundef %index, i8* noundef %old, i8* noundef null, i32 noundef 0) #17
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @radix_to_swp_entry(i8* noundef readnone %arg) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @xa_to_value(i8* noundef %arg) #15
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__xa_cmpxchg(%struct.xarray* noundef, i64 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @xa_to_value(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %shr = lshr i64 %0, 1
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.9* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !14

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
define internal fastcc void @zero_user_segments(%struct.page* noundef %page, i32 noundef %start1, i32 noundef %end1) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #15
  %conv = zext i32 %end1 to i64
  %call1 = call fastcc i64 @page_size(%struct.page* noundef %page) #15
  %cmp = icmp ult i64 %call1, %conv
  br i1 %cmp, label %do.body9, label %lor.rhs, !prof !13

lor.rhs:                                          ; preds = %entry
  %call4 = call fastcc i64 @page_size(%struct.page* noundef %page) #15
  %cmp15 = icmp ugt i32 %end1, %start1
  br i1 %cmp15, label %if.then17, label %do.end33

do.body9:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/highmem.h\22; .popsection; .long 14472b - 14470b; .short 208; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !28
  unreachable

if.then17:                                        ; preds = %lor.rhs
  %idx.ext = zext i32 %start1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  %sub = sub i32 %end1, %start1
  %conv18 = zext i32 %sub to i64
  %call19 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv18) #17
  br label %do.end33

do.end33:                                         ; preds = %lor.rhs, %if.then17
  call fastcc void @__kunmap_atomic() #15
  %call371 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #15
  %cmp382.not = icmp eq i64 %call371, 0
  br i1 %cmp382.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end33, %for.body
  %conv364 = phi i64 [ %conv36, %for.body ], [ 0, %do.end33 ]
  %add.ptr41 = getelementptr %struct.page, %struct.page* %page, i64 %conv364
  call void @flush_dcache_page(%struct.page* noundef %add.ptr41) #17
  %inc = add nuw nsw i64 %conv364, 1
  %conv36 = and i64 %inc, 4294967295
  %call37 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #15
  %cmp38 = icmp ugt i64 %call37, %conv36
  br i1 %cmp38, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  call fastcc void @pagefault_disable() #15
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @page_size(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #15
  %sh_prom = zext i32 %call to i64
  %shl = shl i64 4096, %sh_prom
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #0 {
entry:
  call fastcc void @pagefault_enable() #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #7 {
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
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.9* %2 to %struct.anon.62*
  %compound_order = getelementptr inbounds %struct.anon.62, %struct.anon.62* %3, i64 0, i32 2
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
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #15
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #17
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #16, !srcloc !33
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @arch_local_irq_enable() #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !36
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #16, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_find_swap_entries(%struct.address_space* noundef %mapping, i64 noundef %start, i32 noundef %nr_entries, %struct.page** nocapture noundef writeonly %entries, i64* nocapture noundef writeonly %indices, i32 noundef %type, i1 noundef %frontswap) unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %start, i64* %xa_index, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %tobool.not = icmp eq i32 %nr_entries, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #17
  %call = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #17
  %tobool2.not49 = icmp eq i8* %call, null
  br i1 %tobool2.not49, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %ret.051 = phi i32 [ %ret.1, %for.inc ], [ 0, %if.end ]
  %page.0.in50 = phi i8* [ %call31, %for.inc ], [ %call, %if.end ]
  %call3 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %page.0.in50) #15
  br i1 %call3, label %for.inc, label %if.end5

if.end5:                                          ; preds = %for.body
  %call6 = call fastcc i1 @xa_is_value(i8* noundef nonnull %page.0.in50) #15
  br i1 %call6, label %if.end8, label %for.inc

if.end8:                                          ; preds = %if.end5
  %call9 = call fastcc i64 @radix_to_swp_entry(i8* noundef nonnull %page.0.in50) #15
  %call11 = call fastcc i32 @swp_type(i64 %call9) #15
  %cmp.not = icmp ne i32 %call11, %type
  %brmerge = or i1 %cmp.not, %frontswap
  br i1 %brmerge, label %for.inc, label %if.end19

if.end19:                                         ; preds = %if.end8
  %3 = load i64, i64* %xa_index, align 8
  %idxprom21 = zext i32 %ret.051 to i64
  %arrayidx22 = getelementptr i64, i64* %indices, i64 %idxprom21
  store i64 %3, i64* %arrayidx22, align 8
  %arrayidx24 = getelementptr %struct.page*, %struct.page** %entries, i64 %idxprom21
  %4 = bitcast %struct.page** %arrayidx24 to i8**
  store i8* %page.0.in50, i8** %4, align 8
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = getelementptr %struct.task_struct, %struct.task_struct* %6, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %7) #17
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end19
  call void @xas_pause(%struct.xa_state* noundef nonnull %xas) #17
  call fastcc void @cond_resched_rcu() #15
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end19
  %inc = add i32 %ret.051, 1
  %cmp28 = icmp eq i32 %inc, %nr_entries
  br i1 %cmp28, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end8, %if.end27, %if.end5, %for.body
  %ret.1 = phi i32 [ %ret.051, %for.body ], [ %ret.051, %if.end8 ], [ %inc, %if.end27 ], [ %ret.051, %if.end5 ]
  %call31 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #15
  %tobool2.not = icmp eq i8* %call31, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end27, %if.end
  %ret.2 = phi i32 [ 0, %if.end ], [ %nr_entries, %if.end27 ], [ %ret.1, %for.inc ]
  call fastcc void @rcu_read_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_unuse_swap_entries(%struct.inode* noundef %inode, %struct.pagevec* nocapture noundef readonly %pvec, i64* nocapture noundef readonly %indices) unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %cmp38.not = icmp eq i8 %0, 0
  br i1 %cmp38.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = bitcast %struct.page** %page to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i8 [ %0, %for.body.lr.ph ], [ %6, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %indvars.iv
  %3 = load %struct.page*, %struct.page** %arrayidx, align 8
  store %struct.page* %3, %struct.page** %page, align 8
  %4 = bitcast %struct.page* %3 to i8*
  %call = call fastcc i1 @xa_is_value(i8* noundef %4) #15
  br i1 %call, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  br label %for.inc

cleanup:                                          ; preds = %for.body
  %arrayidx3 = getelementptr i64, i64* %indices, i64 %indvars.iv
  %5 = load i64, i64* %arrayidx3, align 8
  %call5 = call fastcc i32 @shmem_swapin_page(%struct.inode* noundef %inode, i64 noundef %5, %struct.page** noundef nonnull %page, %struct.vm_area_struct* noundef null, i32* noundef null) #15
  %cmp10 = icmp eq i32 %call5, -12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  br i1 %cmp10, label %for.end, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  %.pre = load i8, i8* %nr, align 8
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.thread
  %6 = phi i8 [ %2, %cleanup.thread ], [ %.pre, %cleanup.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = zext i8 %6 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %cleanup, %entry
  %error.2 = phi i32 [ 0, %entry ], [ -12, %cleanup ], [ 0, %for.inc ]
  ret i32 %error.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @swp_type(i64 %entry.coerce) unnamed_addr #3 {
entry:
  %shr = lshr i64 %entry.coerce, 58
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_swapin_page(%struct.inode* noundef readonly %inode, i64 noundef %index, %struct.page** nocapture noundef %pagep, %struct.vm_area_struct* noundef readnone %vma, i32* noundef %fault_type) unnamed_addr #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %1 = bitcast %struct.page** %pagep to i8**
  %2 = load i8*, i8** %1, align 8
  store %struct.page* null, %struct.page** %pagep, align 8
  %tobool5.not = icmp eq i32* %fault_type, null
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %entry
  %3 = load i32, i32* %fault_type, align 4
  %or = or i32 %3, 4
  store i32 %or, i32* %fault_type, align 4
  call fastcc void @count_vm_event() #15
  br label %if.end

if.end:                                           ; preds = %if.then6, %entry
  %call1 = call fastcc i64 @radix_to_swp_entry(i8* noundef %2) #15
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  call fastcc void @shmem_swapin(%struct.shmem_inode_info* noundef %call, i64 noundef %index) #15
  %call45 = call fastcc i1 @shmem_confirm_swap(%struct.address_space* noundef %0, i64 noundef %index, i64 %call1) #15
  %error.1 = select i1 %call45, i32 -12, i32 -17
  ret i32 %error.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_event() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i64* getelementptr inbounds (%struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 21) to i64)
  %0 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %0) #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_swapin(%struct.shmem_inode_info* nocapture noundef readonly %info, i64 noundef %index) unnamed_addr #0 {
entry:
  %pvma = alloca %struct.vm_area_struct, align 8
  %0 = bitcast %struct.vm_area_struct* %pvma to i8*
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(176) %0, i8 0, i64 176, i1 false), !annotation !8
  call fastcc void @shmem_pseudo_vma_init(%struct.vm_area_struct* noundef nonnull %pvma, %struct.shmem_inode_info* noundef %info, i64 noundef %index) #15
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @shmem_confirm_swap(%struct.address_space* noundef %mapping, i64 noundef %index, i64 %swap.coerce) unnamed_addr #0 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %call = call i8* @xa_load(%struct.xarray* noundef %i_pages, i64 noundef %index) #17
  %call2 = call fastcc i8* @swp_to_radix_entry(i64 %swap.coerce) #15
  %cmp = icmp eq i8* %call, %call2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_add_to_page_cache(%struct.page* noundef %page, %struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %call = call fastcc i32 @compound_order(%struct.page* noundef %page) #15
  %sh_prom = zext i32 %call to i64
  %shr = lshr i64 %index, %sh_prom
  %call1 = call fastcc i32 @compound_order(%struct.page* noundef %page) #15
  %sh_prom2 = zext i32 %call1 to i64
  %shl = shl i64 %shr, %sh_prom2
  store i64 %shl, i64* %xa_index, align 8
  %xa_shift = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %call3 = call fastcc i32 @compound_order(%struct.page* noundef %page) #15
  %call4 = call fastcc i32 @compound_order(%struct.page* noundef %page) #15
  %rem = urem i32 %call4, 6
  %sub = sub i32 %call3, %rem
  %conv = trunc i32 %sub to i8
  store i8 %conv, i8* %xa_shift, align 8
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  %call5 = call fastcc i32 @compound_order(%struct.page* noundef %page) #15
  %rem6 = urem i32 %call5, 6
  %notmask = shl nsw i32 -1, %rem6
  %3 = trunc i32 %notmask to i8
  %conv9 = xor i8 %3, -1
  store i8 %conv9, i8* %xa_sibs, align 1
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  store i8 0, i8* %xa_offset, align 2
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  %call10 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #15
  %conv11 = trunc i64 %call10 to i32
  call fastcc void @page_ref_add(%struct.page* noundef %page, i32 noundef %conv11) #15
  %mapping12 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  store %struct.address_space* %mapping, %struct.address_space** %mapping12, align 8
  %index13 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  store i64 %index, i64* %index13, align 8
  %4 = bitcast %struct.page* %page to i8*
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 7
  br label %do.body27

do.body27:                                        ; preds = %unlock.do.body27_crit_edge, %entry
  %5 = phi %struct.xarray* [ %i_pages, %entry ], [ %.pre, %unlock.do.body27_crit_edge ]
  %i.0 = phi i64 [ 0, %entry ], [ %i.2, %unlock.do.body27_crit_edge ]
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %call30 = call i8* @xas_find_conflict(%struct.xa_state* noundef nonnull %xas) #17
  %cmp.not = icmp eq i8* %call30, null
  br i1 %cmp.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %do.body27
  call fastcc void @xas_set_err(%struct.xa_state* noundef nonnull %xas) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.body27
  call void @xas_create_range(%struct.xa_state* noundef nonnull %xas) #17
  %call34 = call fastcc i32 @xas_error(%struct.xa_state* noundef nonnull %xas) #15
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %next.preheader, label %unlock

next.preheader:                                   ; preds = %if.end33
  %call382 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %4) #17
  %inc3 = add i64 %i.0, 1
  %cmp394 = icmp ult i64 %inc3, %call10
  br i1 %cmp394, label %if.then41, label %if.end43

if.then41:                                        ; preds = %next.preheader, %if.then41
  %inc5 = phi i64 [ %inc, %if.then41 ], [ %inc3, %next.preheader ]
  call fastcc void @xas_next(%struct.xa_state* noundef nonnull %xas) #15
  %call38 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %4) #17
  %inc = add i64 %inc5, 1
  %exitcond.not = icmp eq i64 %inc, %call10
  br i1 %exitcond.not, label %if.end43, label %if.then41

if.end43:                                         ; preds = %if.then41, %next.preheader
  %inc.lcssa = phi i64 [ %inc3, %next.preheader ], [ %call10, %if.then41 ]
  %6 = load i64, i64* %nrpages, align 8
  %add = add i64 %6, %call10
  store i64 %add, i64* %nrpages, align 8
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 19, i32 noundef %conv11) #15
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 23, i32 noundef %conv11) #15
  br label %unlock

unlock:                                           ; preds = %if.end33, %if.end43
  %i.2 = phi i64 [ %i.0, %if.end33 ], [ %inc.lcssa, %if.end43 ]
  %7 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i1 = getelementptr inbounds %struct.xarray, %struct.xarray* %7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i1) #17
  %call58 = call i1 @xas_nomem(%struct.xa_state* noundef nonnull %xas, i32 noundef %gfp) #17
  br i1 %call58, label %unlock.do.body27_crit_edge, label %do.end59

unlock.do.body27_crit_edge:                       ; preds = %unlock
  %.pre = load %struct.xarray*, %struct.xarray** %xa, align 8
  br label %do.body27

do.end59:                                         ; preds = %unlock
  %call60 = call fastcc i32 @xas_error(%struct.xa_state* noundef nonnull %xas) #15
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %if.then62

if.then62:                                        ; preds = %do.end59
  store %struct.address_space* null, %struct.address_space** %mapping12, align 8
  call fastcc void @page_ref_sub(%struct.page* noundef %page, i32 noundef %conv11) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then62
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret i32 %call60
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @swp_to_radix_entry(i64 %entry.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @xa_mk_value(i64 noundef %entry.coerce) #15
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 1, i64* elementtype(i64) %0) #16, !srcloc !40
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #20, !srcloc !41
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_pseudo_vma_init(%struct.vm_area_struct* noundef %vma, %struct.shmem_inode_info* nocapture noundef readonly %info, i64 noundef %index) unnamed_addr #0 {
entry:
  call fastcc void @vma_init(%struct.vm_area_struct* noundef %vma) #15
  %i_ino = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %info, i64 0, i32 11, i32 8
  %0 = load i64, i64* %i_ino, align 8
  %add = add i64 %0, %index
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  store i64 %add, i64* %vm_pgoff, align 8
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 15
  store i8* null, i8** %vm_private_data, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vma_init(%struct.vm_area_struct* noundef %vma) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.vm_area_struct* %vma to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 176) #17
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  store %struct.mm_struct* null, %struct.mm_struct** %vm_mm, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  store %struct.vm_operations_struct* @vma_init.dummy_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %anon_vma_chain) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_load(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @shmem_alloc_page(i32 noundef %gfp, %struct.shmem_inode_info* nocapture noundef readonly %info, i64 noundef %index) unnamed_addr #0 {
entry:
  %pvma = alloca %struct.vm_area_struct, align 8
  %0 = bitcast %struct.vm_area_struct* %pvma to i8*
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(176) %0, i8 0, i64 176, i1 false), !annotation !8
  call fastcc void @shmem_pseudo_vma_init(%struct.vm_area_struct* noundef nonnull %pvma, %struct.shmem_inode_info* noundef %info, i64 noundef %index) #15
  %call = call fastcc %struct.page* @alloc_pages(i32 noundef %gfp) #15
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %0) #16
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #15
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) #15
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask) #15
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #12 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #17
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_store(%struct.xa_state* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %idx, i32 noundef %val) unnamed_addr #0 {
entry:
  %conv = sext i32 %val to i64
  call void @__mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %idx, i64 noundef %conv) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_add(%struct.page* noundef %page, i32 noundef %nr) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(i32 noundef %nr, %struct.atomic_t* noundef %_refcount) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find_conflict(%struct.xa_state* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_set_err(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #6 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 -66 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_create_range(%struct.xa_state* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @xas_error(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #1 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = bitcast %struct.xa_node** %xa_node to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call fastcc i32 @xa_err(i8* noundef %1) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_next(%struct.xa_state* noundef %xas) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #15
  br i1 %call, label %if.then, label %lor.lhs.false, !prof !13

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %if.then, !prof !14

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %cmp = icmp eq i8 %2, 63
  br i1 %cmp, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry, %lor.lhs.false, %lor.rhs
  %call6 = call i8* @__xas_next(%struct.xa_state* noundef %xas) #17
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %xa_index, align 8
  %inc8 = add i8 %2, 1
  store i8 %inc8, i8* %xa_offset, align 2
  %conv10 = zext i8 %inc8 to i32
  %call11 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %conv10) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @xas_nomem(%struct.xa_state* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_sub(%struct.page* noundef %page, i32 noundef %nr) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_sub(i32 noundef %nr, %struct.atomic_t* noundef %_refcount) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @xa_err(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @xa_is_err(i8* noundef %entry1) #15
  %0 = ptrtoint i8* %entry1 to i64
  %1 = lshr i64 %0, 2
  %conv = trunc i64 %1 to i32
  %retval.0 = select i1 %call, i32 %conv, i32 0
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_err(i8* noundef %entry1) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @xa_is_internal(i8* noundef %entry1) #15
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call2 = call fastcc i8* @xa_mk_internal(i64 noundef -4095) #15
  %cmp = icmp ule i8* %call2, %entry1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__xas_next(%struct.xa_state* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #16, !srcloc !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @xa_mk_value(i64 noundef %v) unnamed_addr #3 {
entry:
  %shl = shl i64 %v, 1
  %or = or i64 %shl, 1
  %0 = inttoptr i64 %or to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !44
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #1 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @pagecache_get_page(%struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @shmem_alloc_and_acct_page(i32 noundef %gfp, %struct.inode* noundef %inode, i64 noundef %index) unnamed_addr #0 {
entry:
  %call1 = call fastcc i1 @shmem_inode_acct_block(%struct.inode* noundef %inode, i64 noundef 1) #15
  br i1 %call1, label %if.else, label %failed

if.else:                                          ; preds = %entry
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %call5 = call fastcc %struct.page* @shmem_alloc_page(i32 noundef %gfp, %struct.shmem_inode_info* noundef %call, i64 noundef %index) #15
  %tobool7.not = icmp eq %struct.page* %call5, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.else
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call5) #17
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %1, 1
  store i64 %or.i.i, i64* %flags.i, align 8
  %call.i1 = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call5) #17
  %2 = inttoptr i64 %call.i1 to %struct.page*
  %flags.i2 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load i64, i64* %flags.i2, align 8
  %or.i.i3 = or i64 %3, 524288
  store i64 %or.i.i3, i64* %flags.i2, align 8
  br label %cleanup

if.end9:                                          ; preds = %if.else
  call fastcc void @shmem_inode_unacct_blocks(%struct.inode* noundef %inode, i64 noundef 1) #15
  br label %failed

failed:                                           ; preds = %entry, %if.end9
  %err.0 = phi i64 [ -12, %if.end9 ], [ -28, %entry ]
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef %err.0) #15
  %4 = bitcast i8* %call12 to %struct.page*
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.then8
  %retval.0 = phi %struct.page* [ %call5, %if.then8 ], [ %4, %failed ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_highpage(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %page) #15
  call void @clear_page(i8* noundef %call) #17
  call fastcc void @__kunmap_atomic() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_page_cache(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !45
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_page(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #16, !srcloc !47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @shmem_fault(%struct.vm_fault* nocapture noundef %vmf) #0 {
entry:
  %ret = alloca i32, align 4
  %shmem_fault_wait = alloca %struct.wait_queue_entry, align 8
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %1) #15
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %2 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call2 = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %2) #15
  %3 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16
  store i32 512, i32* %ret, align 4
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 42
  %4 = load i8*, i8** %i_private, align 8
  %tobool.not = icmp eq i8* %4, null
  br i1 %tobool.not, label %if.end32, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %5 = bitcast i8** %i_private to %struct.shmem_falloc**
  %6 = load %struct.shmem_falloc*, %struct.shmem_falloc** %5, align 8
  %tobool6.not = icmp eq %struct.shmem_falloc* %6, null
  br i1 %tobool6.not, label %cleanup.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %waitq = getelementptr inbounds %struct.shmem_falloc, %struct.shmem_falloc* %6, i64 0, i32 0
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %waitq, align 8
  %tobool7.not = icmp eq %struct.wait_queue_head* %7, null
  br i1 %tobool7.not, label %cleanup.thread, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %pgoff = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 2
  %8 = load i64, i64* %pgoff, align 8
  %start = getelementptr inbounds %struct.shmem_falloc, %struct.shmem_falloc* %6, i64 0, i32 1
  %9 = load i64, i64* %start, align 8
  %cmp.not = icmp ult i64 %8, %9
  br i1 %cmp.not, label %cleanup.thread, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %next = getelementptr inbounds %struct.shmem_falloc, %struct.shmem_falloc* %6, i64 0, i32 2
  %10 = load i64, i64* %next, align 8
  %cmp12 = icmp ult i64 %8, %10
  br i1 %cmp12, label %if.then14, label %cleanup.thread

if.then14:                                        ; preds = %land.lhs.true10
  %11 = bitcast %struct.wait_queue_entry* %shmem_fault_wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #16
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %shmem_fault_wait, i64 0, i32 1
  %12 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %13 = inttoptr i64 %12 to %struct.task_struct*
  %14 = bitcast i8** %private to %struct.task_struct**
  %15 = bitcast %struct.wait_queue_entry* %shmem_fault_wait to i64*
  store i64 0, i64* %15, align 8
  store %struct.task_struct* %13, %struct.task_struct** %14, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %shmem_fault_wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @synchronous_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry16 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %shmem_fault_wait, i64 0, i32 3
  %next17 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry16, i64 0, i32 0
  store %struct.list_head* %entry16, %struct.list_head** %next17, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %shmem_fault_wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry16, %struct.list_head** %prev, align 8
  %call20 = call fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* noundef %vmf) #15
  %tobool21.not = icmp eq %struct.file* %call20, null
  br i1 %tobool21.not, label %if.end29.critedge, label %if.then22

if.then22:                                        ; preds = %if.then14
  store i32 1024, i32* %ret, align 4
  %16 = load %struct.wait_queue_head*, %struct.wait_queue_head** %waitq, align 8
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %16, %struct.wait_queue_entry* noundef nonnull %shmem_fault_wait, i32 noundef 2) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @schedule() #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @finish_wait(%struct.wait_queue_head* noundef %16, %struct.wait_queue_entry* noundef nonnull %shmem_fault_wait) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @fput(%struct.file* noundef nonnull %call20) #17
  br label %cleanup

if.end29.critedge:                                ; preds = %if.then14
  %17 = load %struct.wait_queue_head*, %struct.wait_queue_head** %waitq, align 8
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %17, %struct.wait_queue_entry* noundef nonnull %shmem_fault_wait, i32 noundef 2) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @schedule() #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @finish_wait(%struct.wait_queue_head* noundef %17, %struct.wait_queue_entry* noundef nonnull %shmem_fault_wait) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then, %land.lhs.true, %land.lhs.true8, %land.lhs.true10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %if.end32

cleanup:                                          ; preds = %if.then22, %if.end29.critedge
  %18 = phi i32 [ 1024, %if.then22 ], [ 256, %if.end29.critedge ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #16
  br label %cleanup39

if.end32:                                         ; preds = %cleanup.thread, %entry
  %pgoff33 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 2
  %19 = load i64, i64* %pgoff33, align 8
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %call34 = call fastcc i32 @shmem_getpage_gfp(%struct.inode* noundef %call, i64 noundef %19, %struct.page** noundef %page, i32 noundef 2, i32 noundef %call2, %struct.vm_area_struct* noundef %0, i32* noundef nonnull %ret) #15
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end32
  %call37 = call fastcc i32 @vmf_error(i32 noundef %call34) #15
  br label %cleanup39

if.end38:                                         ; preds = %if.end32
  %20 = load i32, i32* %ret, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup, %if.end38, %if.then36
  %retval.1 = phi i32 [ %call37, %if.then36 ], [ %20, %if.end38 ], [ %18, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(%struct.vm_fault* noundef, i64 noundef, i64 noundef) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @synchronous_wake_function(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #0 {
entry:
  %call = call i32 @default_wake_function(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #17
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  call fastcc void @list_del_init(%struct.list_head* noundef %entry1) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* nocapture noundef readonly %vmf) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %0 = load i32, i32* %flags1, align 8
  %call = call fastcc i1 @fault_flag_allow_retry_first(i32 noundef %0) #15
  %and = and i32 %0, 8
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = and i1 %call, %tobool2.not
  br i1 %or.cond, label %if.then3, label %cleanup

if.then3:                                         ; preds = %entry
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 14
  %2 = load %struct.file*, %struct.file** %vm_file, align 8
  %call4 = call fastcc %struct.file* @get_file(%struct.file* noundef %2) #15
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i64 0, i32 6
  %4 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %4) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then3
  %fpin.addr.0 = phi %struct.file* [ %2, %if.then3 ], [ null, %entry ]
  ret %struct.file* %fpin.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @vmf_error(i32 noundef %err) unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %err, -12
  %. = select i1 %cmp, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @fault_flag_allow_retry_first(i32 noundef %flags) unnamed_addr #3 {
entry:
  %0 = and i32 %flags, 36
  %1 = icmp eq i32 %0, 4
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @get_file(%struct.file* noundef returned %f) unnamed_addr #0 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #17
  ret %struct.file* %f
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #16, !srcloc !48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @shmem_free_fc(%struct.fs_context* nocapture noundef readonly %fc) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = load i8*, i8** %fs_private, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @kfree(i8* noundef nonnull %0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @shmem_get_tree(%struct.fs_context* noundef %fc) #0 {
entry:
  %call = call i32 @get_tree_nodev(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* noundef nonnull @shmem_fill_super) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(%struct.fs_context* noundef, i32 (%struct.super_block*, %struct.fs_context*)* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @shmem_fill_super(%struct.super_block* noundef %sb, %struct.fs_context* nocapture noundef readonly %fc) #0 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.shmem_options**
  %1 = load %struct.shmem_options*, %struct.shmem_options** %0, align 8
  %call = call fastcc i8* @kzalloc(i64 noundef 128) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  store i8* %call, i8** %s_fs_info, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %2 = load i64, i64* %s_flags, align 16
  %or = or i64 %2, -2147483648
  store i64 %or, i64* %s_flags, align 16
  %blocks = getelementptr inbounds %struct.shmem_options, %struct.shmem_options* %1, i64 0, i32 0
  %3 = load i64, i64* %blocks, align 8
  %max_blocks = bitcast i8* %call to i64*
  store i64 %3, i64* %max_blocks, align 8
  %inodes = getelementptr inbounds %struct.shmem_options, %struct.shmem_options* %1, i64 0, i32 1
  %4 = load i64, i64* %inodes, align 8
  %max_inodes = getelementptr inbounds i8, i8* %call, i64 32
  %5 = bitcast i8* %max_inodes to i64*
  store i64 %4, i64* %5, align 8
  %free_inodes = getelementptr inbounds i8, i8* %call, i64 40
  %6 = bitcast i8* %free_inodes to i64*
  store i64 %4, i64* %6, align 8
  %and = and i64 %2, 4194304
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @__alloc_percpu(i64 noundef 8, i64 noundef 8) #17
  %ino_batch = getelementptr inbounds i8, i8* %call, i64 80
  %7 = bitcast i8* %ino_batch to i8**
  store i8* %call4, i8** %7, align 8
  %tobool6.not = icmp eq i8* %call4, null
  br i1 %tobool6.not, label %failed, label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end
  %uid = getelementptr inbounds i8, i8* %call, i64 56
  %8 = getelementptr inbounds %struct.shmem_options, %struct.shmem_options* %1, i64 0, i32 3, i32 0
  %9 = bitcast i8* %uid to i32*
  %10 = load i32, i32* %8, align 8
  store i32 %10, i32* %9, align 8
  %gid = getelementptr inbounds i8, i8* %call, i64 60
  %11 = getelementptr inbounds %struct.shmem_options, %struct.shmem_options* %1, i64 0, i32 4, i32 0
  %12 = bitcast i8* %gid to i32*
  %13 = load i32, i32* %11, align 4
  store i32 %13, i32* %12, align 4
  %full_inums = getelementptr inbounds %struct.shmem_options, %struct.shmem_options* %1, i64 0, i32 6
  %14 = load i8, i8* %full_inums, align 2, !range !49
  %15 = getelementptr inbounds i8, i8* %call, i64 64
  store i8 %14, i8* %15, align 8
  %mode = getelementptr inbounds %struct.shmem_options, %struct.shmem_options* %1, i64 0, i32 5
  %16 = load i16, i16* %mode, align 8
  %mode14 = getelementptr inbounds i8, i8* %call, i64 52
  %17 = bitcast i8* %mode14 to i16*
  store i16 %16, i16* %17, align 4
  %huge = getelementptr inbounds %struct.shmem_options, %struct.shmem_options* %1, i64 0, i32 7
  %18 = load i32, i32* %huge, align 4
  %conv = trunc i32 %18 to i8
  %19 = getelementptr inbounds i8, i8* %call, i64 54
  store i8 %conv, i8* %19, align 2
  %mpol = getelementptr inbounds %struct.shmem_options, %struct.shmem_options* %1, i64 0, i32 2
  %20 = load %struct.mempolicy*, %struct.mempolicy** %mpol, align 8
  %mpol16 = getelementptr inbounds i8, i8* %call, i64 88
  %21 = bitcast i8* %mpol16 to %struct.mempolicy**
  store %struct.mempolicy* %20, %struct.mempolicy** %21, align 8
  store %struct.mempolicy* null, %struct.mempolicy** %mpol, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 48
  %22 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i32*
  store i32 0, i32* %22, align 8
  %used_blocks = getelementptr inbounds i8, i8* %call, i64 8
  %23 = bitcast i8* %used_blocks to %struct.percpu_counter*
  %call18 = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef %23, i64 noundef 0, i32 noundef 3264, %struct.lock_class_key* noundef nonnull @shmem_fill_super.__key) #17
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body22, label %failed

do.body22:                                        ; preds = %if.end9
  %shrinklist_lock = getelementptr inbounds i8, i8* %call, i64 96
  %24 = bitcast i8* %shrinklist_lock to i32*
  store i32 0, i32* %24, align 8
  %shrinklist = getelementptr inbounds i8, i8* %call, i64 104
  %25 = bitcast i8* %shrinklist to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %25) #15
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 4
  store i64 9223372036854775807, i64* %s_maxbytes, align 32
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 3
  store i64 4096, i64* %s_blocksize, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 2
  store i8 12, i8* %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 12
  store i64 16914836, i64* %s_magic, align 32
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  store %struct.super_operations* @shmem_ops, %struct.super_operations** %s_op, align 16
  %s_time_gran = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 28
  store i32 1, i32* %s_time_gran, align 16
  %s_uuid = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 32
  call void @uuid_gen(%struct.uuid_t* noundef %s_uuid) #17
  %26 = load i16, i16* %17, align 4
  %27 = or i16 %26, 16384
  %call35 = call fastcc %struct.inode* @shmem_get_inode(%struct.super_block* noundef %sb, i16 noundef %27, i64 noundef 2097152) #15
  %tobool36.not = icmp eq %struct.inode* %call35, null
  br i1 %tobool36.not, label %failed, label %if.end38

if.end38:                                         ; preds = %do.body22
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %call35, i64 0, i32 2, i32 0
  %29 = load i32, i32* %9, align 8
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %call35, i64 0, i32 3, i32 0
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %30, align 8
  %call41 = call %struct.dentry* @d_make_root(%struct.inode* noundef nonnull %call35) #17
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  store %struct.dentry* %call41, %struct.dentry** %s_root, align 8
  %tobool43.not = icmp eq %struct.dentry* %call41, null
  br i1 %tobool43.not, label %failed, label %cleanup

failed:                                           ; preds = %if.end38, %do.body22, %if.end9, %if.then3
  call void @shmem_put_super(%struct.super_block* noundef %sb) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry, %failed
  %retval.0 = phi i32 [ -12, %failed ], [ -12, %entry ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(%struct.percpu_counter* noundef, i64 noundef, i32 noundef, %struct.lock_class_key* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @uuid_gen(%struct.uuid_t* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.inode* @shmem_get_inode(%struct.super_block* noundef %sb, i16 noundef %mode, i64 noundef %flags) unnamed_addr #0 {
entry:
  %ino = alloca i64, align 8
  %0 = bitcast i64* %ino to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %ino, align 8, !annotation !8
  %call1 = call fastcc i32 @shmem_reserve_inode(%struct.super_block* noundef %sb, i64* noundef nonnull %ino) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.inode* @new_inode(%struct.super_block* noundef %sb) #17
  %tobool3.not = icmp eq %struct.inode* %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load i64, i64* %ino, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 8
  store i64 %1, i64* %i_ino, align 8
  call void @inode_init_owner(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef nonnull %call2, %struct.inode* noundef null, i16 noundef %mode) #17
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 19
  store i64 0, i64* %i_blocks, align 8
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 12
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 13
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 14
  %call5 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call2) #17
  %call5.fca.0.extract = extractvalue [2 x i64] %call5, 0
  %call5.fca.1.extract = extractvalue [2 x i64] %call5, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 14, i32 0
  store i64 %call5.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx25 = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 14, i32 1
  store i64 %call5.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx25, align 8
  %2 = bitcast %struct.timespec64* %i_mtime to i8*
  %3 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %3, i64 16, i1 false)
  %4 = bitcast %struct.timespec64* %i_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %3, i64 16, i1 false)
  %call6 = call i32 @prandom_u32() #17
  %i_generation = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 41
  store i32 %call6, i32* %i_generation, align 8
  %call7 = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef nonnull %call2) #15
  %5 = bitcast %struct.shmem_inode_info* %call7 to i8*
  %sub.ptr.lhs.cast = ptrtoint %struct.inode* %call2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.shmem_inode_info* %call7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call8 = call i8* @memset(i8* noundef %5, i32 noundef 0, i64 noundef %sub.ptr.sub) #17
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %counter.i = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call7, i64 0, i32 10, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %seals = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call7, i64 0, i32 1
  store i32 1, i32* %seals, align 4
  %and = and i64 %flags, 2097152
  %flags11 = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call7, i64 0, i32 2
  store i64 %and, i64* %flags11, align 8
  %shrinklist = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call7, i64 0, i32 6
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %shrinklist) #15
  %swaplist = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call7, i64 0, i32 7
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %swaplist) #15
  %xattrs = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call7, i64 0, i32 9
  call fastcc void @simple_xattrs_init(%struct.simple_xattrs* noundef %xattrs) #15
  %6 = and i16 %mode, -4096
  switch i16 %6, label %sw.default [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb15
    i16 -24576, label %cleanup
  ]

sw.default:                                       ; preds = %if.then4
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 5
  store %struct.inode_operations* @shmem_special_inode_operations, %struct.inode_operations** %i_op, align 8
  call void @init_special_inode(%struct.inode* noundef nonnull %call2, i16 noundef %mode, i32 noundef 0) #17
  br label %cleanup

sw.bb:                                            ; preds = %if.then4
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 7
  %7 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %7, i64 0, i32 9
  store %struct.address_space_operations* bitcast ({ i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }* @shmem_aops to %struct.address_space_operations*), %struct.address_space_operations** %a_ops, align 8
  %i_op13 = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 5
  store %struct.inode_operations* @shmem_inode_operations, %struct.inode_operations** %i_op13, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 36, i32 0
  store %struct.file_operations* @shmem_file_operations, %struct.file_operations** %i_fop, align 8
  br label %cleanup

sw.bb15:                                          ; preds = %if.then4
  call void @inc_nlink(%struct.inode* noundef nonnull %call2) #17
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 11
  store i64 40, i64* %i_size, align 8
  %i_op16 = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 5
  store %struct.inode_operations* @shmem_dir_inode_operations, %struct.inode_operations** %i_op16, align 8
  %i_fop17 = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 36, i32 0
  store %struct.file_operations* @simple_dir_operations, %struct.file_operations** %i_fop17, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call fastcc void @shmem_free_inode(%struct.super_block* noundef %sb) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %sw.bb15, %if.then4, %if.else, %entry
  %retval.0 = phi %struct.inode* [ null, %entry ], [ null, %if.else ], [ %call2, %if.then4 ], [ %call2, %sw.bb15 ], [ %call2, %sw.bb ], [ %call2, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret %struct.inode* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_make_root(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @shmem_put_super(%struct.super_block* nocapture noundef %sb) #0 {
entry:
  %call = call fastcc %struct.shmem_sb_info* @SHMEM_SB(%struct.super_block* noundef %sb) #15
  %ino_batch = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 11
  %0 = bitcast i64** %ino_batch to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #17
  %used_blocks = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 1
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %used_blocks) #17
  %2 = bitcast %struct.shmem_sb_info* %call to i8*
  call void @kfree(i8* noundef %2) #17
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  store i8* null, i8** %s_fs_info, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal noalias %struct.inode* @shmem_alloc_inode(%struct.super_block* nocapture noundef readnone %sb) #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @shmem_inode_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #17
  %tobool.not = icmp eq i8* %call, null
  %vfs_inode = getelementptr inbounds i8, i8* %call, i64 104
  %1 = bitcast i8* %vfs_inode to %struct.inode*
  %retval.0 = select i1 %tobool.not, %struct.inode* null, %struct.inode* %1
  ret %struct.inode* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal void @shmem_destroy_inode(%struct.inode* nocapture noundef %inode) #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @shmem_free_in_core_inode(%struct.inode* noundef %inode) #0 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -24576
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40
  %i_link = bitcast %union.anon.85* %2 to i8**
  %3 = load i8*, i8** %i_link, align 8
  call void @kfree(i8* noundef %3) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @shmem_inode_cachep, align 8
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %5 = bitcast %struct.shmem_inode_info* %call to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %4, i8* noundef %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(%struct.inode* noundef) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @shmem_evict_inode(%struct.inode* noundef %inode) #0 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 8
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %inode) #15
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call1 = call fastcc %struct.shmem_sb_info* @SHMEM_SB(%struct.super_block* noundef %0) #15
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %1 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call2 = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %1) #15
  br i1 %call2, label %if.then, label %if.end41

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 2
  %2 = load i64, i64* %flags, align 8
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %3 = load i64, i64* %i_size, align 8
  call fastcc void @shmem_unacct_size(i64 noundef %2, i64 noundef %3) #15
  store i64 0, i64* %i_size, align 8
  call void @shmem_truncate_range(%struct.inode* noundef %inode, i64 noundef 0, i64 noundef -1) #15
  %shrinklist = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 6
  %call4 = call fastcc i32 @list_empty(%struct.list_head* noundef %shrinklist) #15
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  %rlock.i = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call1, i64 0, i32 13, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %call7 = call fastcc i32 @list_empty(%struct.list_head* noundef %shrinklist) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then5
  call fastcc void @list_del_init(%struct.list_head* noundef %shrinklist) #15
  %shrinklist_len = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call1, i64 0, i32 15
  %4 = load i64, i64* %shrinklist_len, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %shrinklist_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then5
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %swaplist = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 7
  %call1398 = call fastcc i32 @list_empty(%struct.list_head* noundef %swaplist) #15
  %tobool14.not99 = icmp eq i32 %call1398, 0
  br i1 %tobool14.not99, label %do.end18.lr.ph, label %if.end41

do.end18.lr.ph:                                   ; preds = %if.end12
  %stop_eviction = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 10
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %stop_eviction, i64 0, i32 0
  %5 = bitcast %struct.atomic_t* %stop_eviction to i8*
  %6 = bitcast %struct.wait_bit_queue_entry* %__wbq_entry to i8*
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %__wbq_entry, i64 0, i32 1
  br label %do.end18

do.end18:                                         ; preds = %do.end18.lr.ph, %if.end40
  %7 = load volatile i32, i32* %counter.i, align 4
  %tobool20.not = icmp eq i32 %7, 0
  br i1 %tobool20.not, label %do.end34, label %if.end22

if.end22:                                         ; preds = %do.end18
  %call24 = call %struct.wait_queue_head* @__var_waitqueue(i8* noundef %5) #17
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !annotation !8
  call void @init_wait_var_entry(%struct.wait_bit_queue_entry* noundef nonnull %__wbq_entry, i8* noundef %5, i32 noundef 0) #17
  %call2696 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %call24, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #17
  %8 = load volatile i32, i32* %counter.i, align 4
  %tobool29.not97 = icmp eq i32 %8, 0
  br i1 %tobool29.not97, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end22, %cleanup
  call void @schedule() #17
  %call26 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %call24, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #17
  %9 = load volatile i32, i32* %counter.i, align 4
  %tobool29.not = icmp eq i32 %9, 0
  br i1 %tobool29.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end22
  call void @finish_wait(%struct.wait_queue_head* noundef %call24, %struct.wait_queue_entry* noundef %wq_entry) #17
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #16
  br label %do.end34

do.end34:                                         ; preds = %do.end18, %for.end
  call void @mutex_lock(%struct.mutex* noundef nonnull @shmem_swaplist_mutex) #17
  %10 = load volatile i32, i32* %counter.i, align 4
  %tobool37.not = icmp eq i32 %10, 0
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.end34
  call fastcc void @list_del_init(%struct.list_head* noundef %swaplist) #15
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %do.end34
  call void @mutex_unlock(%struct.mutex* noundef nonnull @shmem_swaplist_mutex) #17
  %call13 = call fastcc i32 @list_empty(%struct.list_head* noundef %swaplist) #15
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end18, label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end12, %entry
  %xattrs = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 9
  call fastcc void @simple_xattrs_free(%struct.simple_xattrs* noundef %xattrs) #15
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %11 = load i64, i64* %i_blocks, align 8
  %tobool42.not = icmp eq i64 %11, 0
  br i1 %tobool42.not, label %if.end52, label %if.then51, !prof !14

if.then51:                                        ; preds = %if.end41
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/shmem.c\22; .popsection; .long 14472b - 14470b; .short 1162; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !50
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end41
  %12 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @shmem_free_inode(%struct.super_block* noundef %12) #15
  call void @clear_inode(%struct.inode* noundef %inode) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_unacct_size(i64 noundef %flags, i64 noundef %size) unnamed_addr #0 {
entry:
  %and = and i64 %flags, 2097152
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add = add i64 %size, 4095
  %shr = ashr i64 %add, 12
  call fastcc void @vm_unacct_memory(i64 noundef %shr) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.wait_queue_head* @__var_waitqueue(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(%struct.wait_bit_queue_entry* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @simple_xattrs_free(%struct.simple_xattrs* noundef readonly %xattrs) unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 0
  %0 = bitcast %struct.simple_xattrs* %xattrs to %struct.simple_xattr**
  %1 = load %struct.simple_xattr*, %struct.simple_xattr** %0, align 8
  %list828 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %1, i64 0, i32 0
  %cmp.not29 = icmp eq %struct.list_head* %list828, %head
  br i1 %cmp.not29, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %xattr.030 = phi %struct.simple_xattr* [ %node.0, %for.body ], [ %1, %entry ]
  %node.0.in = bitcast %struct.simple_xattr* %xattr.030 to %struct.simple_xattr**
  %node.0 = load %struct.simple_xattr*, %struct.simple_xattr** %node.0.in, align 8
  %name = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.030, i64 0, i32 1
  %2 = load i8*, i8** %name, align 8
  call void @kfree(i8* noundef %2) #17
  %3 = bitcast %struct.simple_xattr* %xattr.030 to i8*
  call void @kvfree(i8* noundef %3) #17
  %list8 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %node.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list8, %head
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shmem_free_inode(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.shmem_sb_info* @SHMEM_SB(%struct.super_block* noundef %sb) #15
  %max_inodes = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 2
  %0 = load i64, i64* %max_inodes, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %stat_lock = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 4
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %stat_lock) #15
  %free_inodes = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 3
  %1 = load i64, i64* %free_inodes, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %free_inodes, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %stat_lock) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_reserve_inode(%struct.super_block* nocapture noundef readonly %sb, i64* noundef writeonly %inop) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.shmem_sb_info* @SHMEM_SB(%struct.super_block* noundef %sb) #15
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %0 = load i64, i64* %s_flags, align 16
  %and = and i64 %0, 4194304
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %stat_lock = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 4
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %stat_lock) #15
  %max_inodes = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 2
  %1 = load i64, i64* %max_inodes, align 8
  %tobool1.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.then
  %free_inodes = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 3
  %2 = load i64, i64* %free_inodes, align 8
  %tobool3.not = icmp eq i64 %2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %stat_lock) #15
  br label %cleanup

if.end:                                           ; preds = %if.then2
  %dec = add i64 %2, -1
  store i64 %dec, i64* %free_inodes, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %tobool8.not = icmp eq i64* %inop, null
  br i1 %tobool8.not, label %if.end33, label %if.then9

if.then9:                                         ; preds = %if.end7
  %next_ino = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 10
  %3 = load i64, i64* %next_ino, align 8
  %inc = add i64 %3, 1
  %call10 = call fastcc i1 @is_zero_ino(i64 noundef %3) #15
  br i1 %call10, label %if.then13, label %if.end16, !prof !13

if.then13:                                        ; preds = %if.then9
  %inc15 = add i64 %3, 2
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then9
  %storemerge = phi i64 [ %inc15, %if.then13 ], [ %inc, %if.then9 ]
  %ino.0 = phi i64 [ %inc, %if.then13 ], [ %3, %if.then9 ]
  store i64 %storemerge, i64* %next_ino, align 8
  %full_inums = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 9
  %4 = load i8, i8* %full_inums, align 8, !range !49
  %tobool17.not = icmp eq i8 %4, 0
  %cmp = icmp ugt i64 %ino.0, 4294967295
  %5 = and i1 %cmp, %tobool17.not
  br i1 %5, label %do.end, label %if.end32, !prof !13

do.end:                                           ; preds = %if.end16
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 1
  %6 = load i32, i32* %s_dev, align 16
  %and27 = and i32 %6, 1048575
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.shmem_reserve_inode, i64 0, i64 0), i32 noundef %and27) #19
  store i64 2, i64* %next_ino, align 8
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end16
  %ino.1 = phi i64 [ 1, %do.end ], [ %ino.0, %if.end16 ]
  store i64 %ino.1, i64* %inop, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end7
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %stat_lock) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool35.not = icmp eq i64* %inop, null
  br i1 %tobool35.not, label %cleanup, label %if.then36

if.then36:                                        ; preds = %if.else
  %ino_batch = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 11
  %7 = load i64*, i64** %ino_batch, align 8
  %8 = ptrtoint i64* %7 to i64
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !51
  %call51 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call51, ptrtoint (i32* @cpu_number to i64)
  %9 = inttoptr i64 %add to i32*
  %10 = load i32, i32* %9, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %11 = load i64, i64* %arrayidx, align 8
  %add52 = add i64 %11, %8
  %12 = inttoptr i64 %add52 to i64*
  %13 = load i64, i64* %12, align 8
  %rem = and i64 %13, 1023
  %cmp53 = icmp eq i64 %rem, 0
  br i1 %cmp53, label %if.then62, label %if.end79, !prof !13

if.then62:                                        ; preds = %if.then36
  %stat_lock63 = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 4
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %stat_lock63) #15
  %next_ino64 = getelementptr inbounds %struct.shmem_sb_info, %struct.shmem_sb_info* %call, i64 0, i32 10
  %14 = load i64, i64* %next_ino64, align 8
  %add66 = add i64 %14, 1024
  store i64 %add66, i64* %next_ino64, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %stat_lock63) #15
  %call68 = call fastcc i1 @is_zero_ino(i64 noundef %14) #15
  br i1 %call68, label %if.then76, label %if.end79, !prof !13

if.then76:                                        ; preds = %if.then62
  %inc77 = add i64 %14, 1
  br label %if.end79

if.end79:                                         ; preds = %if.then62, %if.then76, %if.then36
  %ino.2 = phi i64 [ %inc77, %if.then76 ], [ %14, %if.then62 ], [ %13, %if.then36 ]
  store i64 %ino.2, i64* %inop, align 8
  %inc80 = add i64 %ino.2, 1
  store i64 %inc80, i64* %12, align 8
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end79, %if.else, %if.then4
  %retval.0 = phi i32 [ -28, %if.then4 ], [ 0, %if.else ], [ 0, %if.end79 ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode(%struct.super_block* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.inode* noundef, i16 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @simple_xattrs_init(%struct.simple_xattrs* noundef %xattrs) unnamed_addr #9 {
entry:
  %head = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %head) #15
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(%struct.inode* noundef, i16 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_zero_ino(i64 noundef %ino) unnamed_addr #3 {
entry:
  %conv = trunc i64 %ino to i32
  %cmp = icmp eq i32 %conv, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @shmem_setattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #15
  %call1 = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %call) #15
  %call2 = call i32 @setattr_prepare(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup55

if.end:                                           ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.end
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 0
  %2 = load i32, i32* %ia_valid, align 8
  %and4 = and i32 %2, 8
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end47, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  %3 = load i64, i64* %i_size, align 8
  %ia_size = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 4
  %4 = load i64, i64* %ia_size, align 8
  %cmp7 = icmp slt i64 %4, %3
  br i1 %cmp7, label %land.lhs.true9, label %lor.lhs.false

land.lhs.true9:                                   ; preds = %if.then6
  %seals = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call1, i64 0, i32 1
  %5 = load i32, i32* %seals, align 4
  %and10 = and i32 %5, 2
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %cleanup55

lor.lhs.false:                                    ; preds = %land.lhs.true9, %if.then6
  %cmp12 = icmp sgt i64 %4, %3
  br i1 %cmp12, label %land.lhs.true14, label %if.end19

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %seals15 = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call1, i64 0, i32 1
  %6 = load i32, i32* %seals15, align 4
  %and16 = and i32 %6, 4
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup55

if.end19:                                         ; preds = %land.lhs.true14, %lor.lhs.false
  %cmp20.not = icmp eq i64 %4, %3
  br i1 %cmp20.not, label %if.end29, label %if.then22

if.then22:                                        ; preds = %if.end19
  %flags = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call1, i64 0, i32 2
  %7 = load i64, i64* %flags, align 8
  %call24 = call fastcc i32 @shmem_reacct_size(i64 noundef %7, i64 noundef %3, i64 noundef %4) #15
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup55

if.end27:                                         ; preds = %if.then22
  call fastcc void @i_size_write(%struct.inode* noundef %call, i64 noundef %4) #15
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %call28 = call [2 x i64] @current_time(%struct.inode* noundef %call) #17
  %call28.fca.0.extract = extractvalue [2 x i64] %call28, 0
  %call28.fca.1.extract = extractvalue [2 x i64] %call28, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13, i32 0
  store i64 %call28.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx63 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13, i32 1
  store i64 %call28.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx63, align 8
  %8 = bitcast %struct.timespec64* %i_ctime to i8*
  %9 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end19
  br i1 %cmp12, label %if.end47, label %if.then32

if.then32:                                        ; preds = %if.end29
  %sub = add i64 %4, -1
  %or = or i64 %sub, 4095
  %add = add i64 %or, 1
  %cmp33 = icmp sgt i64 %3, %add
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %10 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  call void @unmap_mapping_range(%struct.address_space* noundef %10, i64 noundef %add, i64 noundef 0, i32 noundef 1) #17
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then32
  %alloced = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call1, i64 0, i32 3
  %11 = load i64, i64* %alloced, align 8
  %tobool37.not = icmp eq i64 %11, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end36
  call void @shmem_truncate_range(%struct.inode* noundef %call, i64 noundef %4, i64 noundef -1) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36
  br i1 %cmp33, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.end39
  %i_mapping43 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 7
  %12 = load %struct.address_space*, %struct.address_space** %i_mapping43, align 8
  call void @unmap_mapping_range(%struct.address_space* noundef %12, i64 noundef %add, i64 noundef 0, i32 noundef 1) #17
  br label %if.end47

if.end47:                                         ; preds = %if.end29, %if.then42, %if.end39, %land.lhs.true, %if.end
  call void @setattr_copy(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.iattr* noundef %attr) #17
  br label %cleanup55

cleanup55:                                        ; preds = %if.end47, %land.lhs.true14, %land.lhs.true9, %if.then22, %entry
  %retval.1 = phi i32 [ %call2, %entry ], [ -1, %land.lhs.true14 ], [ -1, %land.lhs.true9 ], [ %call24, %if.then22 ], [ 0, %if.end47 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @shmem_getattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %1) #15
  %alloced = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 3
  %2 = load i64, i64* %alloced, align 8
  %swapped = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 4
  %3 = load i64, i64* %swapped, align 8
  %sub = sub i64 %2, %3
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 7
  %4 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %4, i64 0, i32 7
  %5 = load i64, i64* %nrpages, align 8
  %cmp.not = icmp eq i64 %sub, %5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @shmem_recalc_inode(%struct.inode* noundef %1) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %1, %struct.kstat* noundef %stat) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #1 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_reacct_size(i64 noundef %flags, i64 noundef %oldsize, i64 noundef %newsize) unnamed_addr #0 {
entry:
  %and = and i64 %flags, 2097152
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  %add = add i64 %newsize, 4095
  %shr = ashr i64 %add, 12
  %add2 = add i64 %oldsize, 4095
  %shr4 = ashr i64 %add2, 12
  %cmp = icmp sgt i64 %shr, %shr4
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %sub = sub nsw i64 %shr, %shr4
  %call12 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %2, i64 noundef %sub) #15
  br label %return

if.else:                                          ; preds = %if.then
  %cmp19 = icmp slt i64 %shr, %shr4
  br i1 %cmp19, label %if.then20, label %return

if.then20:                                        ; preds = %if.else
  %sub27 = sub nsw i64 %shr4, %shr
  call fastcc void @vm_unacct_memory(i64 noundef %sub27) #15
  br label %return

return:                                           ; preds = %entry, %if.else, %if.then20, %if.then5
  %retval.0 = phi i32 [ %call12, %if.then5 ], [ 0, %if.then20 ], [ 0, %if.else ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_size_write(%struct.inode* nocapture noundef writeonly %inode, i64 noundef %i_size) unnamed_addr #6 {
entry:
  %i_size1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 %i_size, i64* %i_size1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(%struct.address_space* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.iattr* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.kstat* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @shmem_mmap(%struct.file* noundef %file, %struct.vm_area_struct* nocapture noundef %vma) #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #15
  %call1 = call fastcc %struct.shmem_inode_info* @SHMEM_I(%struct.inode* noundef %call) #15
  %seals = getelementptr inbounds %struct.shmem_inode_info, %struct.shmem_inode_info* %call1, i64 0, i32 1
  %0 = load i32, i32* %seals, align 4
  %call2 = call fastcc i32 @seal_check_future_write(i32 noundef %0, %struct.vm_area_struct* noundef %vma) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @file_accessed(%struct.file* noundef %file) #15
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  store %struct.vm_operations_struct* @shmem_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @seal_check_future_write(i32 noundef %seals, %struct.vm_area_struct* nocapture noundef %vma) unnamed_addr #14 {
entry:
  %and = and i32 %seals, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and1 = and i64 %0, 8
  %tobool2.not = icmp eq i64 %and1, 0
  %1 = and i64 %0, 10
  %.not = icmp eq i64 %1, 10
  %brmerge = or i1 %.not, %tobool2.not
  %.mux = sext i1 %.not to i32
  br i1 %brmerge, label %return, label %if.then10

if.then10:                                        ; preds = %if.then
  %and12 = and i64 %0, -33
  store i64 %and12, i64* %vm_flags, align 8
  br label %return

return:                                           ; preds = %if.then, %entry, %if.then10
  %retval.0 = phi i32 [ %.mux, %if.then ], [ 0, %if.then10 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_accessed(%struct.file* noundef %file) unnamed_addr #0 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  call void @touch_atime(%struct.path* noundef %f_path) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(%struct.path* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(%struct.percpu_counter* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @shmem_init_inode(i8* noundef %foo) #0 {
entry:
  %vfs_inode = getelementptr inbounds i8, i8* %foo, i64 104
  %0 = bitcast i8* %vfs_inode to %struct.inode*
  call void @inode_init_once(%struct.inode* noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(%struct.super_block* noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(%struct.kmem_cache* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shmem_acct_size(i64 noundef %flags, i64 noundef %size) unnamed_addr #0 {
entry:
  %and = and i64 %flags, 2097152
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %add = add i64 %size, 4095
  %shr = ashr i64 %add, 12
  %call2 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %2, i64 noundef %shr) #15
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %call2, %cond.false ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(%struct.inode* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @alloc_file_pseudo(%struct.inode* noundef, %struct.vfsmount* noundef, i8* noundef, i32 noundef, %struct.file_operations* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind readonly }

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
!9 = !{i64 2150849244}
!10 = !{i64 0, i64 4294967296}
!11 = !{i64 2149627012}
!12 = !{i64 1453278}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 4001, i32 4000000}
!16 = !{i64 2155907774}
!17 = !{i64 2155946400}
!18 = !{i64 2149192839, i64 2149192886, i64 2149192892, i64 2149192929, i64 2149192947, i64 2149194258, i64 2149194306, i64 2149194354, i64 2149194417, i64 2149194466, i64 2149193025, i64 2149193050, i64 2149193076, i64 2149193082, i64 2149193924, i64 2149193964, i64 2149193982, i64 2149194014, i64 2149194042, i64 2149194096, i64 2149194116, i64 2149194213, i64 2149193105, i64 2149193119, i64 2149193125, i64 2149193175, i64 2149193221, i64 2149193254}
!19 = !{i64 2149195018, i64 2149195065, i64 2149195071, i64 2149195108, i64 2149195126, i64 2149196069, i64 2149196117, i64 2149196165, i64 2149196228, i64 2149196277, i64 2149195204, i64 2149195229, i64 2149195255, i64 2149195261, i64 2149195298, i64 2149195304, i64 2149195354, i64 2149195400, i64 2149195433}
!20 = !{i64 2149187136, i64 2149187183, i64 2149187189, i64 2149187226, i64 2149187244, i64 2149188585, i64 2149188633, i64 2149188681, i64 2149188744, i64 2149188793, i64 2149187322, i64 2149187347, i64 2149187373, i64 2149187379, i64 2149188251, i64 2149188291, i64 2149188309, i64 2149188341, i64 2149188369, i64 2149188423, i64 2149188443, i64 2149188540, i64 2149187402, i64 2149187416, i64 2149187422, i64 2149187472, i64 2149187518, i64 2149187551}
!21 = !{i64 2148134798, i64 2148134831, i64 2148134884, i64 2148134943, i64 2148134977, i64 2148135032, i64 2148135061, i64 2148135081}
!22 = !{i64 2149652855}
!23 = !{i64 2149441524}
!24 = !{i64 2149198852, i64 2149198899, i64 2149198905, i64 2149198942, i64 2149198960, i64 2149204332, i64 2149204380, i64 2149204428, i64 2149204491, i64 2149204540, i64 2149199038, i64 2149199063, i64 2149199089, i64 2149199095, i64 2149203998, i64 2149204038, i64 2149204056, i64 2149204088, i64 2149204116, i64 2149204170, i64 2149204190, i64 2149204287, i64 2149199118, i64 2149199132, i64 2149199138, i64 2149199188, i64 2149199234, i64 2149199267}
!25 = !{i64 2149875711}
!26 = !{i64 2149875928}
!27 = !{i64 2150848415}
!28 = !{i64 2153903643}
!29 = !{i64 2153890525}
!30 = !{i64 2153892783}
!31 = !{i64 2151584038}
!32 = !{i64 2151584245}
!33 = !{i64 2148110904, i64 2148111574, i64 2148111604, i64 2148111636, i64 2148111668, i64 2148111702, i64 2148111727}
!34 = !{i64 2149631305}
!35 = !{i64 2149656158}
!36 = !{i64 2149177680, i64 2149177727, i64 2149177733, i64 2149177770, i64 2149177788, i64 2149179128, i64 2149179176, i64 2149179224, i64 2149179287, i64 2149179336, i64 2149177866, i64 2149177891, i64 2149177917, i64 2149177923, i64 2149178794, i64 2149178834, i64 2149178852, i64 2149178884, i64 2149178912, i64 2149178966, i64 2149178986, i64 2149179083, i64 2149177946, i64 2149177960, i64 2149177966, i64 2149178016, i64 2149178062, i64 2149178095}
!37 = !{i64 2148038936, i64 2148039452, i64 2148039482, i64 2148039509, i64 2148039543, i64 2148039573}
!38 = !{i64 2152722702}
!39 = !{i64 2152723654}
!40 = !{i64 2149241104, i64 2149241145, i64 2149241201, i64 2149241253}
!41 = !{i64 2149215158, i64 2149215205, i64 2149215211, i64 2149215248, i64 2149215266, i64 2149216193, i64 2149216241, i64 2149216289, i64 2149216352, i64 2149216401, i64 2149215344, i64 2149215369, i64 2149215395, i64 2149215401, i64 2149215438, i64 2149215444, i64 2149215494, i64 2149215540, i64 2149215573}
!42 = !{i64 2148108016, i64 2148108527, i64 2148108557, i64 2148108583, i64 2148108615, i64 2148108644}
!43 = !{i64 2148048657, i64 2148049173, i64 2148049203, i64 2148049230, i64 2148049264, i64 2148049294}
!44 = !{i64 2148049509, i64 2148050157, i64 2148050187, i64 2148050219, i64 2148050253, i64 2148050289, i64 2148050314}
!45 = !{i64 2149642013}
!46 = !{i64 2149649294}
!47 = !{i64 2148118586, i64 2148119107, i64 2148119137, i64 2148119163, i64 2148119195, i64 2148119224}
!48 = !{i64 2148079622, i64 2148080136, i64 2148080166, i64 2148080192, i64 2148080224, i64 2148080253}
!49 = !{i8 0, i8 2}
!50 = !{i64 2155895591}
!51 = !{i64 2155876814}
!52 = !{i64 2155877572}
