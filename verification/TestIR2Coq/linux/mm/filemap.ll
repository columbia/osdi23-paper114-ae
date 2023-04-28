; ModuleID = 'mm/filemap.c'
source_filename = "mm/filemap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.47, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.20, [0 x i64] }
%struct.anon.20 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.14 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.14 = type { %struct.callback_head }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.29, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.84, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.57, %struct.list_head, %struct.list_head, %union.anon.58 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.57 = type { %struct.list_head }
%union.anon.58 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.82 = type { %struct.callback_head }
%union.anon.83 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.59 }
%union.anon.59 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon, %union.anon.80, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.80 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.60, %union.anon.61 }
%union.anon.60 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.61 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%union.anon.84 = type { %struct.pipe_inode_info* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.50, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.50 = type { %struct.kernfs_elem_dir }
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.51, %union.anon.52, %union.anon.53, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.56, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.51 = type { %struct.hlist_node }
%union.anon.52 = type { %struct.rb_node }
%union.anon.53 = type { %struct.anon.55 }
%struct.anon.55 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.56 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.30, %union.anon.31, i32 }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
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
%struct.fs_parameter = type { i8*, i8, %union.anon.9, i64, i32 }
%union.anon.9 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.16, i32 }
%union.anon.16 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.fid = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i16, i16, i32, i32, i32 }
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
%union.anon.29 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.32 }
%struct.anon.32 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.45 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.46, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.46 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11, [48 x i8] }
%struct.anon.11 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.47 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.vm_fault = type { %struct.anon.48, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.49, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.48 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.49 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
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
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.vm_event_state = type { [53 x i64] }
%struct.xa_state = type { %struct.xarray*, i64, i8, i8, i8, i8, %struct.xa_node*, %struct.xa_node*, void (%struct.xa_node*)* }
%struct.xa_node = type { i8, i8, i8, i8, %struct.xa_node*, %struct.xarray*, %union.anon.85, [64 x i8*], %union.anon.86 }
%union.anon.85 = type { %struct.list_head }
%union.anon.86 = type { [3 x [1 x i64]] }
%struct.pagevec = type { i8, i8, [15 x %struct.page*] }
%struct.wait_page_key = type { %struct.page*, i32, i32 }
%struct.anon.74 = type { i64, i8, i8, %struct.atomic_t, i32 }
%struct.nodemask_t = type { [1 x i64] }

@pagecache_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@page_wait_table = internal global [256 x %struct.wait_queue_head] zeroinitializer, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [20 x i8] c"&page_wait_table[i]\00", align 1
@sysctl_page_lock_unfairness = dso_local local_unnamed_addr global i32 5, align 4
@generic_file_vm_ops = dso_local constant %struct.vm_operations_struct { void (%struct.vm_area_struct*)* null, void (%struct.vm_area_struct*)* null, i32 (%struct.vm_area_struct*, i64)* null, i32 (%struct.vm_area_struct*)* null, i32 (%struct.vm_area_struct*, i64, i64, i64)* null, i32 (%struct.vm_fault*)* @filemap_fault, i32 (%struct.vm_fault*, i32)* null, i32 (%struct.vm_fault*, i64, i64)* @filemap_map_pages, i64 (%struct.vm_area_struct*)* null, i32 (%struct.vm_fault*)* @filemap_page_mkwrite, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* null, i8* (%struct.vm_area_struct*)* null, %struct.page* (%struct.vm_area_struct*, i64)* null }, align 8
@dio_warn_stale_pagecache._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 21600000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.dio_warn_stale_pagecache = private unnamed_addr constant [25 x i8] c"dio_warn_stale_pagecache\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"\012Page cache invalidation failure on direct I/O.  Possible data corruption due to collision with buffered I/O!\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\012File: %s PID: %d Comm: %.20s\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\011BUG: Bad page cache in process %s  pfn:%05lx\0A\00", align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"still mapped when deleted\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 8
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@blockdev_superblock = external dso_local local_unnamed_addr global %struct.super_block*, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__delete_from_page_cache(%struct.page* noundef %page, i8* noundef %shadow) local_unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  call fastcc void @unaccount_page_cache_page(%struct.address_space* noundef %0, %struct.page* noundef %page) #14
  call fastcc void @page_cache_delete(%struct.address_space* noundef %0, %struct.page* noundef %page, i8* noundef %shadow) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unaccount_page_cache_page(%struct.address_space* noundef %mapping, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call i1 @page_mapped(%struct.page* noundef %page) #15
  br i1 %call3, label %if.then6, label %if.end17, !prof !8

if.then6:                                         ; preds = %if.end
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %4 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %4, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* noundef %arraydecay, i64 noundef %sub.ptr.div) #17
  call void @dump_page(%struct.page* noundef %page, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #15
  call void @dump_stack() #17
  call void @add_taint(i32 noundef 5, i32 noundef 1) #15
  %call9 = call fastcc i32 @page_mapcount(%struct.page* noundef %page) #14
  %call10 = call fastcc i32 @mapping_exiting(%struct.address_space* noundef %mapping) #14
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.then6
  %call13 = call fastcc i32 @page_count(%struct.page* noundef %page) #14
  %add = add i32 %call9, 2
  %cmp.not = icmp slt i32 %call13, %add
  br i1 %cmp.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %land.lhs.true12
  call fastcc void @page_mapcount_reset(%struct.page* noundef %page) #14
  call fastcc void @page_ref_sub(%struct.page* noundef %page, i32 noundef %call9) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %land.lhs.true12, %if.then15, %if.end
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 19, i32 noundef -1) #14
  %call.i100 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %5 = inttoptr i64 %call.i100 to %struct.page*
  %flags.i101 = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i101, align 8
  %7 = and i64 %6, 524288
  %tobool24.not = icmp eq i64 %7, 0
  br i1 %tobool24.not, label %if.end38, label %if.then25

if.then25:                                        ; preds = %if.end17
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 23, i32 noundef -1) #14
  br label %if.end38

if.end38:                                         ; preds = %if.end17, %if.then25
  %call.i103 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %8 = inttoptr i64 %call.i103 to %struct.page*
  %flags.i104 = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  %9 = load volatile i64, i64* %flags.i104, align 8
  %10 = and i64 %9, 8
  %tobool40.not = icmp eq i64 %10, 0
  br i1 %tobool40.not, label %cleanup, label %if.then53, !prof !10

if.then53:                                        ; preds = %if.end38
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/filemap.c\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !11
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %host, align 8
  %call65 = call fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %11) #14
  call void @account_page_cleaned(%struct.page* noundef %page, %struct.address_space* noundef %mapping, %struct.bdi_writeback* noundef %call65) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_cache_delete(%struct.address_space* noundef %mapping, %struct.page* noundef %page, i8* noundef %shadow) unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %3 = load i64, i64* %index, align 8
  store i64 %3, i64* %xa_index, align 8
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
  %call1 = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %mapping) #14
  br i1 %call1, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @xas_set_update(%struct.xa_state* noundef nonnull %xas) #14
  %.pre = load i64, i64* %index, align 8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = phi i64 [ %.pre, %if.then ], [ %3, %entry ]
  %call5 = call fastcc i32 @compound_order(%struct.page* noundef %page) #14, !range !13
  call fastcc void @xas_set_order(%struct.xa_state* noundef nonnull %xas, i64 noundef %4, i32 noundef %call5) #14
  %call6 = call fastcc i64 @compound_nr(%struct.page* noundef %page) #14
  %call8 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %shadow) #15
  call void @xas_init_marks(%struct.xa_state* noundef nonnull %xas) #15
  %mapping9 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  store %struct.address_space* null, %struct.address_space** %mapping9, align 8
  %conv10 = and i64 %call6, 4294967295
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 7
  %5 = load i64, i64* %nrpages, align 8
  %sub = sub i64 %5, %conv10
  store i64 %sub, i64* %nrpages, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @delete_from_page_cache(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #15
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i20 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i20, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !8

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/filemap.c\22; .popsection; .long 14472b - 14470b; .short 264; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !14
  unreachable

do.end10:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %call, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  call void @__delete_from_page_cache(%struct.page* noundef %page, i8* noundef null) #14
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  call fastcc void @page_cache_free_page(%struct.address_space* noundef %call, %struct.page* noundef %page) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_cache_free_page(%struct.address_space* nocapture noundef readonly %mapping, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %freepage1 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %0, i64 0, i32 11
  %1 = load void (%struct.page*)*, void (%struct.page*)** %freepage1, align 8
  %tobool.not = icmp eq void (%struct.page*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.page* noundef %page) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @put_page(%struct.page* noundef %page) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @delete_from_page_cache_batch(%struct.address_space* noundef %mapping, %struct.pagevec* nocapture noundef readonly %pvec) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  %call135 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %cmp36.not = icmp eq i32 %call135, 0
  br i1 %cmp36.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.037 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %idxprom = sext i32 %i.037 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %0 = load %struct.page*, %struct.page** %arrayidx, align 8
  call fastcc void @unaccount_page_cache_page(%struct.address_space* noundef %mapping, %struct.page* noundef %0) #14
  %inc = add nuw i32 %i.037, 1
  %call1 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %cmp = icmp ult i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  call fastcc void @page_cache_delete_batch(%struct.address_space* noundef %mapping, %struct.pagevec* noundef %pvec) #14
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  %call838 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %cmp939.not = icmp eq i32 %call838, 0
  br i1 %cmp939.not, label %cleanup, label %for.body10

for.body10:                                       ; preds = %for.end, %for.body10
  %i.140 = phi i32 [ %inc15, %for.body10 ], [ 0, %for.end ]
  %idxprom12 = sext i32 %i.140 to i64
  %arrayidx13 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom12
  %1 = load %struct.page*, %struct.page** %arrayidx13, align 8
  call fastcc void @page_cache_free_page(%struct.address_space* noundef %mapping, %struct.page* noundef %1) #14
  %inc15 = add nuw i32 %i.140, 1
  %call8 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %cmp9 = icmp ult i32 %inc15, %call8
  br i1 %cmp9, label %for.body10, label %cleanup

cleanup:                                          ; preds = %for.body10, %for.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_count(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #3 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_cache_delete_batch(%struct.address_space* noundef %mapping, %struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %arrayidx = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 0
  %3 = load %struct.page*, %struct.page** %arrayidx, align 8
  %index = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 1, i32 0, i32 2
  %4 = load i64, i64* %index, align 8
  store i64 %4, i64* %xa_index, align 8
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
  %call1 = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %mapping) #14
  br i1 %call1, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @xas_set_update(%struct.xa_state* noundef nonnull %xas) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call2 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #15
  %tobool.not74 = icmp eq i8* %call2, null
  br i1 %tobool.not74, label %for.end, label %for.body

for.body:                                         ; preds = %do.end, %for.inc
  %total_pages.077 = phi i32 [ %total_pages.1, %for.inc ], [ 0, %do.end ]
  %page.0.in76 = phi i8* [ %call49, %for.inc ], [ %call2, %do.end ]
  %i.075 = phi i32 [ %i.2, %for.inc ], [ 0, %do.end ]
  %page.078 = bitcast i8* %page.0.in76 to %struct.page*
  %call3 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %cmp.not = icmp ult i32 %i.075, %call3
  br i1 %cmp.not, label %if.end5, label %for.end

if.end5:                                          ; preds = %for.body
  %call6 = call fastcc i1 @xa_is_value(i8* noundef nonnull %page.0.in76) #14
  br i1 %call6, label %for.inc, label %if.end8

if.end8:                                          ; preds = %if.end5
  %idxprom = sext i32 %i.075 to i64
  %arrayidx10 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %5 = load %struct.page*, %struct.page** %arrayidx10, align 8
  %cmp11.not = icmp eq %struct.page* %5, %page.078
  br i1 %cmp11.not, label %if.end13, label %for.inc

if.end13:                                         ; preds = %if.end8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %page.078) #15
  %6 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i72 = and i64 %7, 1
  %tobool15.not = icmp eq i64 %conv.i.i72, 0
  br i1 %tobool15.not, label %if.then24, label %if.end25, !prof !8

if.then24:                                        ; preds = %if.end13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/filemap.c\22; .popsection; .long 14472b - 14470b; .short 316; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !15
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end13
  %index33 = getelementptr inbounds i8, i8* %page.0.in76, i64 32
  %8 = bitcast i8* %index33 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %xa_index, align 8
  %cmp35 = icmp eq i64 %9, %10
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end25
  %mapping38 = getelementptr inbounds i8, i8* %page.0.in76, i64 24
  %11 = bitcast i8* %mapping38 to %struct.address_space**
  store %struct.address_space* null, %struct.address_space** %11, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end25
  %call41 = call fastcc i64 @compound_nr(%struct.page* noundef nonnull %page.078) #14
  %add = add i64 %9, -1
  %sub = add i64 %add, %call41
  %12 = load i64, i64* %xa_index, align 8
  %cmp43 = icmp eq i64 %sub, %12
  %inc = zext i1 %cmp43 to i32
  %spec.select = add nuw i32 %i.075, %inc
  %call47 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef null) #15
  %inc48 = add i32 %total_pages.077, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.end5, %if.end39
  %i.2 = phi i32 [ %i.075, %if.end5 ], [ %i.075, %if.end8 ], [ %spec.select, %if.end39 ]
  %total_pages.1 = phi i32 [ %total_pages.077, %if.end5 ], [ %total_pages.077, %if.end8 ], [ %inc48, %if.end39 ]
  %call49 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef -1) #14
  %tobool.not = icmp eq i8* %call49, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %do.end
  %total_pages.0.lcssa = phi i32 [ 0, %do.end ], [ %total_pages.077, %for.body ], [ %total_pages.1, %for.inc ]
  %conv50 = sext i32 %total_pages.0.lcssa to i64
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 7
  %13 = load i64, i64* %nrpages, align 8
  %sub51 = sub i64 %13, %conv50
  store i64 %sub51, i64* %nrpages, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_check_errors(%struct.address_space* noundef %mapping) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 2
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call fastcc i1 @test_and_clear_bit(i64 noundef 1, i64* noundef %flags) #14
  %spec.select = select i1 %call2, i32 -28, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %land.lhs.true ]
  %2 = load volatile i64, i64* %flags, align 8
  %conv.i1617 = and i64 %2, 1
  %tobool5.not = icmp eq i64 %conv.i1617, 0
  br i1 %tobool5.not, label %if.end10, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end
  %call8 = call fastcc i1 @test_and_clear_bit(i64 noundef 0, i64* noundef %flags) #14
  %spec.select15 = select i1 %call8, i32 -5, i32 %ret.0
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true6, %if.end
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ %spec.select15, %land.lhs.true6 ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #15
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_fdatawrite_wbc(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef %mapping) #14
  br i1 %call, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef %mapping, i32 noundef 0) #14
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 @do_writepages(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef %wbc) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mapping_can_writeback(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %0) #14
  %capabilities = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 6
  %1 = load i32, i32* %capabilities, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mapping_tagged(%struct.address_space* nocapture noundef readonly %mapping, i32 noundef %tag) unnamed_addr #3 {
entry:
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  %call = call fastcc i1 @xa_marked(%struct.xarray* noundef %i_pages, i32 noundef %tag) #14
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_writepages(%struct.address_space* noundef, %struct.writeback_control* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__filemap_fdatawrite_range(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, i32 noundef %sync_mode) local_unnamed_addr #0 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  %0 = bitcast %struct.writeback_control* %wbc to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %nr_to_write = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 0
  store i64 9223372036854775807, i64* %nr_to_write, align 8
  %pages_skipped = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 1
  store i64 0, i64* %pages_skipped, align 8
  %range_start = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 2
  store i64 %start, i64* %range_start, align 8
  %range_end = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 3
  store i64 %end, i64* %range_end, align 8
  %sync_mode1 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %wbc, i64 0, i32 4
  store i32 %sync_mode, i32* %sync_mode1, align 8
  %call = call i32 @filemap_fdatawrite_wbc(%struct.address_space* noundef %mapping, %struct.writeback_control* noundef nonnull %wbc) #14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_fdatawrite(%struct.address_space* noundef %mapping) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__filemap_fdatawrite(%struct.address_space* noundef %mapping, i32 noundef 1) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__filemap_fdatawrite(%struct.address_space* noundef %mapping, i32 noundef %sync_mode) unnamed_addr #0 {
entry:
  %call = call i32 @__filemap_fdatawrite_range(%struct.address_space* noundef %mapping, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef %sync_mode) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_fdatawrite_range(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 {
entry:
  %call = call i32 @__filemap_fdatawrite_range(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, i32 noundef 1) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_flush(%struct.address_space* noundef %mapping) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__filemap_fdatawrite(%struct.address_space* noundef %mapping, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @filemap_range_has_page(%struct.address_space* noundef %mapping, i64 noundef %start_byte, i64 noundef %end_byte) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %shr = ashr i64 %start_byte, 12
  store i64 %shr, i64* %xa_index, align 8
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
  %shr1 = ashr i64 %end_byte, 12
  %cmp = icmp slt i64 %end_byte, %start_byte
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end
  %call = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef %shr1) #15
  %call2 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef %call) #14
  br i1 %call2, label %for.cond.backedge, label %if.end4

for.cond.backedge:                                ; preds = %for.cond, %if.end4
  br label %for.cond

if.end4:                                          ; preds = %for.cond
  %call5 = call fastcc i1 @xa_is_value(i8* noundef %call) #14
  br i1 %call5, label %for.cond.backedge, label %for.end

for.end:                                          ; preds = %if.end4
  call fastcc void @rcu_read_unlock() #14
  %cmp8 = icmp ne i8* %call, null
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i1 [ %cmp8, %for.end ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find(%struct.xa_state* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i1 @xas_retry(%struct.xa_state* nocapture noundef writeonly %xas, i8* noundef %entry1) unnamed_addr #5 {
entry:
  %call = call fastcc i1 @xa_is_zero(i8* noundef %entry1) #14
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @xa_is_retry(i8* noundef %entry1) #14
  br i1 %call2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  call fastcc void @xas_reset(%struct.xa_state* noundef %xas) #14
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i1 [ true, %if.end4 ], [ true, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_value(i8* noundef %entry1) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_fdatawait_range(%struct.address_space* noundef %mapping, i64 noundef %start_byte, i64 noundef %end_byte) local_unnamed_addr #0 {
entry:
  call fastcc void @__filemap_fdatawait_range(%struct.address_space* noundef %mapping, i64 noundef %start_byte, i64 noundef %end_byte) #14
  %call = call i32 @filemap_check_errors(%struct.address_space* noundef %mapping) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__filemap_fdatawait_range(%struct.address_space* noundef %mapping, i64 noundef %start_byte, i64 noundef %end_byte) unnamed_addr #0 {
entry:
  %index = alloca i64, align 8
  %pvec = alloca %struct.pagevec, align 8
  %0 = bitcast i64* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  %shr = ashr i64 %start_byte, 12
  store i64 %shr, i64* %index, align 8
  %shr1 = ashr i64 %end_byte, 12
  %1 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !12
  %cmp = icmp slt i64 %end_byte, %start_byte
  br i1 %cmp, label %cleanup7, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #14
  %.old = load i64, i64* %index, align 8
  %cmp2.not.old = icmp ugt i64 %.old, %shr1
  br i1 %cmp2.not.old, label %cleanup7, label %while.body

while.body:                                       ; preds = %if.end, %for.cond.cleanup_crit_edge
  %call = call i32 @pagevec_lookup_range_tag(%struct.pagevec* noundef nonnull %pvec, %struct.address_space* noundef %mapping, i64* noundef nonnull %index, i64 noundef %shr1, i32 noundef 1) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup7, label %for.body.preheader

for.body.preheader:                               ; preds = %while.body
  %wide.trip.count = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %indvars.iv
  %2 = load %struct.page*, %struct.page** %arrayidx, align 8
  call void @wait_on_page_writeback(%struct.page* noundef %2) #15
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #15
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 8, i64* noundef %flags.i) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.body
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec) #14
  call fastcc void @_cond_resched() #14
  %4 = load i64, i64* %index, align 8
  %cmp2.not = icmp ugt i64 %4, %shr1
  br i1 %cmp2.not, label %cleanup7, label %while.body

cleanup7:                                         ; preds = %while.body, %for.cond.cleanup_crit_edge, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_fdatawait_range_keep_errors(%struct.address_space* noundef %mapping, i64 noundef %start_byte, i64 noundef %end_byte) local_unnamed_addr #0 {
entry:
  call fastcc void @__filemap_fdatawait_range(%struct.address_space* noundef %mapping, i64 noundef %start_byte, i64 noundef %end_byte) #14
  %call = call fastcc i32 @filemap_check_and_keep_errors(%struct.address_space* noundef %mapping) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @filemap_check_and_keep_errors(%struct.address_space* noundef %mapping) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %conv.i8 = and i64 %0, 1
  %tobool.not = icmp eq i64 %conv.i8, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load volatile i64, i64* %flags, align 8
  %2 = and i64 %1, 2
  %tobool3.not = icmp eq i64 %2, 0
  %. = select i1 %tobool3.not, i32 0, i32 -28
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -5, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @file_fdatawait_range(%struct.file* noundef %file, i64 noundef %start_byte, i64 noundef %end_byte) local_unnamed_addr #0 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  call fastcc void @__filemap_fdatawait_range(%struct.address_space* noundef %0, i64 noundef %start_byte, i64 noundef %end_byte) #14
  %call = call i32 @file_check_and_advance_wb_err(%struct.file* noundef %file) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @file_check_and_advance_wb_err(%struct.file* noundef %file) local_unnamed_addr #0 {
entry:
  %f_wb_err = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 18
  %0 = load volatile i32, i32* %f_wb_err, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %wb_err = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 11
  %call = call i32 @errseq_check(i32* noundef %wb_err, i32 noundef %0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %call4 = call i32 @errseq_check_and_advance(i32* noundef %wb_err, i32* noundef %f_wb_err) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ %call4, %if.then ], [ 0, %entry ]
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 10
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %flags) #14
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags) #14
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_fdatawait_keep_errors(%struct.address_space* noundef %mapping) local_unnamed_addr #0 {
entry:
  call fastcc void @__filemap_fdatawait_range(%struct.address_space* noundef %mapping, i64 noundef 0, i64 noundef 9223372036854775807) #14
  %call = call fastcc i32 @filemap_check_and_keep_errors(%struct.address_space* noundef %mapping) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @filemap_range_needs_writeback(%struct.address_space* noundef %mapping, i64 noundef %start_byte, i64 noundef %end_byte) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %shr = ashr i64 %start_byte, 12
  store i64 %shr, i64* %xa_index, align 8
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
  %shr1 = ashr i64 %end_byte, 12
  %call = call fastcc i1 @mapping_needs_writeback(%struct.address_space* noundef %mapping) #14
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef %mapping, i32 noundef 0) #14
  br i1 %call2, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call fastcc i1 @mapping_tagged(%struct.address_space* noundef %mapping, i32 noundef 1) #14
  %cmp = icmp sge i64 %end_byte, %start_byte
  %3 = and i1 %cmp, %call3
  br i1 %3, label %if.end7, label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp.old = icmp slt i64 %end_byte, %start_byte
  br i1 %cmp.old, label %cleanup, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end5
  call fastcc void @__rcu_read_lock() #15
  %call8 = call i8* @xas_find(%struct.xa_state* noundef nonnull %xas, i64 noundef %shr1) #15
  %tobool50.not = icmp eq i8* %call8, null
  br i1 %tobool50.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end7, %for.inc
  %page.0.in51 = phi i8* [ %call24, %for.inc ], [ %call8, %if.end7 ]
  %page.052 = bitcast i8* %page.0.in51 to %struct.page*
  %call9 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %page.0.in51) #14
  br i1 %call9, label %for.inc, label %if.end11

if.end11:                                         ; preds = %for.body
  %call12 = call fastcc i1 @xa_is_value(i8* noundef nonnull %page.0.in51) #14
  br i1 %call12, label %for.inc, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %page.052) #15
  %4 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 8
  %tobool16.not = icmp eq i64 %6, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %for.end

lor.lhs.false:                                    ; preds = %if.end14
  %call.i42 = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %page.052) #15
  %7 = inttoptr i64 %call.i42 to %struct.page*
  %flags.i43 = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 0
  %8 = load volatile i64, i64* %flags.i43, align 8
  %conv.i.i4448 = and i64 %8, 1
  %tobool18.not = icmp eq i64 %conv.i.i4448, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %for.end

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %call.i45 = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %page.052) #15
  %9 = inttoptr i64 %call.i45 to %struct.page*
  %flags.i46 = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i46, align 8
  %11 = and i64 %10, 32768
  %tobool21.not = icmp eq i64 %11, 0
  br i1 %tobool21.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %lor.lhs.false19, %if.end11, %for.body
  %call24 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %shr1) #14
  %tobool.not = icmp eq i8* %call24, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %lor.lhs.false19, %lor.lhs.false, %if.end14, %if.end7
  %tobool.lcssa = phi i1 [ false, %if.end7 ], [ true, %if.end14 ], [ true, %lor.lhs.false ], [ true, %lor.lhs.false19 ], [ false, %for.inc ]
  call fastcc void @rcu_read_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true, %entry, %for.end
  %retval.0 = phi i1 [ %tobool.lcssa, %for.end ], [ false, %entry ], [ false, %land.lhs.true ], [ false, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mapping_needs_writeback(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #3 {
entry:
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 7
  %0 = load i64, i64* %nrpages, align 8
  %tobool = icmp ne i64 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next_entry(%struct.xa_state* noundef %xas, i64 noundef %max) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #14
  br i1 %call, label %cleanup.sink.split, label %lor.lhs.false, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %cleanup.sink.split, !prof !10

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv2 = zext i8 %2 to i64
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %and = and i64 %3, 63
  %cmp.not = icmp eq i64 %and, %conv2
  br i1 %cmp.not, label %do.body, label %cleanup.sink.split, !prof !10

do.body:                                          ; preds = %lor.rhs, %if.end48
  %4 = phi i8 [ %inc, %if.end48 ], [ %2, %lor.rhs ]
  %5 = phi i64 [ %inc51, %if.end48 ], [ %3, %lor.rhs ]
  %cmp9.not = icmp uge i64 %5, %max
  %cmp23 = icmp eq i8 %4, 63
  %or.cond = select i1 %cmp9.not, i1 true, i1 %cmp23
  br i1 %or.cond, label %cleanup.sink.split, label %if.end34, !prof !16

if.end34:                                         ; preds = %do.body
  %conv36 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv36, 1
  %call37 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %add) #14
  %call38 = call fastcc i1 @xa_is_internal(i8* noundef %call37) #14
  br i1 %call38, label %cleanup.sink.split, label %if.end48, !prof !8

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
  %call47 = call i8* @xas_find(%struct.xa_state* noundef %xas, i64 noundef %max) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %cleanup.sink.split
  %retval.0 = phi i8* [ %call47, %cleanup.sink.split ], [ %call37, %if.end48 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_write_and_wait_range(%struct.address_space* noundef %mapping, i64 noundef %lstart, i64 noundef %lend) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @mapping_needs_writeback(%struct.address_space* noundef %mapping) #14
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %call1 = call i32 @__filemap_fdatawrite_range(%struct.address_space* noundef %mapping, i64 noundef %lstart, i64 noundef %lend, i32 noundef 1) #14
  %cmp.not = icmp eq i32 %call1, -5
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = call i32 @filemap_fdatawait_range(%struct.address_space* noundef %mapping, i64 noundef %lstart, i64 noundef %lend) #14
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool.not, i32 %call3, i32 %call1
  br label %if.end9

if.else:                                          ; preds = %if.then
  %call5 = call i32 @filemap_check_errors(%struct.address_space* noundef %mapping) #14
  br label %if.end9

if.else7:                                         ; preds = %entry
  %call8 = call i32 @filemap_check_errors(%struct.address_space* noundef %mapping) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.else, %if.else7
  %err.1 = phi i32 [ %spec.select, %if.then2 ], [ -5, %if.else ], [ %call8, %if.else7 ]
  ret i32 %err.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__filemap_set_wb_err(%struct.address_space* noundef %mapping, i32 noundef %err) local_unnamed_addr #0 {
entry:
  %wb_err = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 11
  %call = call i32 @errseq_set(i32* noundef %wb_err, i32 noundef %err) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(i32* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(i32* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check_and_advance(i32* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @file_write_and_wait_range(%struct.file* noundef %file, i64 noundef %lstart, i64 noundef %lend) local_unnamed_addr #0 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %call = call fastcc i1 @mapping_needs_writeback(%struct.address_space* noundef %0) #14
  br i1 %call, label %if.then, label %if.end3.thread

if.end3.thread:                                   ; preds = %entry
  %call418 = call i32 @file_check_and_advance_wb_err(%struct.file* noundef %file) #14
  br label %1

if.then:                                          ; preds = %entry
  %call1 = call i32 @__filemap_fdatawrite_range(%struct.address_space* noundef %0, i64 noundef %lstart, i64 noundef %lend, i32 noundef 1) #14
  %cmp.not = icmp eq i32 %call1, -5
  br i1 %cmp.not, label %if.end3.thread21, label %if.end3

if.end3.thread21:                                 ; preds = %if.then
  %call423 = call i32 @file_check_and_advance_wb_err(%struct.file* noundef %file) #14
  br label %2

if.end3:                                          ; preds = %if.then
  call fastcc void @__filemap_fdatawait_range(%struct.address_space* noundef %0, i64 noundef %lstart, i64 noundef %lend) #14
  %call4 = call i32 @file_check_and_advance_wb_err(%struct.file* noundef %file) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %1, label %2

1:                                                ; preds = %if.end3.thread, %if.end3
  %call420 = phi i32 [ %call418, %if.end3.thread ], [ %call4, %if.end3 ]
  br label %2

2:                                                ; preds = %if.end3.thread21, %if.end3, %1
  %3 = phi i32 [ %call420, %1 ], [ %call1, %if.end3 ], [ -5, %if.end3.thread21 ]
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @replace_page_cache_page(%struct.page* noundef %old, %struct.page* noundef %new) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %old, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %freepage2 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 11
  %2 = load void (%struct.page*)*, void (%struct.page*)** %freepage2, align 8
  %index = getelementptr inbounds %struct.page, %struct.page* %old, i64 0, i32 1, i32 0, i32 2
  %3 = load i64, i64* %index, align 8
  %4 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #18
  %5 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %6 = bitcast i8* %5 to i64*, !annotation !12
  store i64 0, i64* %6, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %3, i64* %xa_index, align 8
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
  call fastcc void @get_page(%struct.page* noundef %new) #14
  %mapping3 = getelementptr inbounds %struct.page, %struct.page* %new, i64 0, i32 1, i32 0, i32 1
  store %struct.address_space* %0, %struct.address_space** %mapping3, align 8
  %index4 = getelementptr inbounds %struct.page, %struct.page* %new, i64 0, i32 1, i32 0, i32 2
  store i64 %3, i64* %index4, align 8
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %i_pages, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  %7 = bitcast %struct.page* %new to i8*
  %call = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %7) #15
  store %struct.address_space* null, %struct.address_space** %mapping1, align 8
  call fastcc void @__dec_lruvec_page_state(%struct.page* noundef %old, i32 noundef 19) #14
  call fastcc void @__inc_lruvec_page_state(%struct.page* noundef %new, i32 noundef 19) #14
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %old) #15
  %8 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  %9 = load volatile i64, i64* %flags.i, align 8
  %10 = and i64 %9, 524288
  %tobool13.not = icmp eq i64 %10, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %entry
  call fastcc void @__dec_lruvec_page_state(%struct.page* noundef %old, i32 noundef 23) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %entry
  %call.i49 = call fastcc i64 @_compound_head(%struct.page* noundef %new) #15
  %11 = inttoptr i64 %call.i49 to %struct.page*
  %flags.i50 = getelementptr inbounds %struct.page, %struct.page* %11, i64 0, i32 0
  %12 = load volatile i64, i64* %flags.i50, align 8
  %13 = and i64 %12, 524288
  %tobool17.not = icmp eq i64 %13, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call fastcc void @__inc_lruvec_page_state(%struct.page* noundef %new, i32 noundef 23) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %14 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i52 = getelementptr inbounds %struct.xarray, %struct.xarray* %14, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i52) #15
  %tobool22.not = icmp eq void (%struct.page*)* %2, null
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void %2(%struct.page* noundef %old) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  call fastcc void @put_page(%struct.page* noundef %old) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_store(%struct.xa_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dec_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %idx) unnamed_addr #0 {
entry:
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef %idx, i32 noundef -1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__inc_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %idx) unnamed_addr #0 {
entry:
  call fastcc void @__mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef %idx, i32 noundef 1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #14
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__add_to_page_cache_locked(%struct.page* noundef %page, %struct.address_space* noundef %mapping, i64 noundef %offset, i32 noundef %gfp, i8** noundef writeonly %shadowp) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %offset, i64* %xa_index, align 8
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
  %call2 = call fastcc i1 @shmem_mapping(%struct.address_space* noundef %mapping) #14
  br i1 %call2, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @xas_set_update(%struct.xa_state* noundef nonnull %xas) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call fastcc void @get_page(%struct.page* noundef %page) #14
  %mapping3 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  store %struct.address_space* %mapping, %struct.address_space** %mapping3, align 8
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  store i64 %offset, i64* %index, align 8
  %and = and i32 %gfp, 782048
  %tobool29.not = icmp eq i8** %shadowp, null
  %3 = bitcast %struct.page* %page to i8*
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 7
  br label %do.body10

do.body10:                                        ; preds = %unlock, %do.end
  %4 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i = getelementptr inbounds %struct.xarray, %struct.xarray* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  %call22102 = call i8* @xas_find_conflict(%struct.xa_state* noundef nonnull %xas) #15
  %tobool23.not103 = icmp eq i8* %call22102, null
  br i1 %tobool23.not103, label %if.end39, label %while.body

while.cond:                                       ; preds = %while.body
  %call22 = call i8* @xas_find_conflict(%struct.xa_state* noundef nonnull %xas) #15
  %tobool23.not = icmp eq i8* %call22, null
  br i1 %tobool23.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.body10, %while.cond
  %call22104 = phi i8* [ %call22, %while.cond ], [ %call22102, %do.body10 ]
  %call24 = call fastcc i1 @xa_is_value(i8* noundef nonnull %call22104) #14
  br i1 %call24, label %while.cond, label %if.then25

if.then25:                                        ; preds = %while.body
  call fastcc void @xas_set_err(%struct.xa_state* noundef nonnull %xas) #14
  br label %unlock

while.end:                                        ; preds = %while.cond
  br i1 %tobool29.not, label %if.end39, label %if.then30

if.then30:                                        ; preds = %while.end
  store i8* %call22104, i8** %shadowp, align 8
  br label %if.end39

if.end39:                                         ; preds = %do.body10, %if.then30, %while.end
  %call40 = call i8* @xas_store(%struct.xa_state* noundef nonnull %xas, i8* noundef %3) #15
  %call41 = call fastcc i32 @xas_error(%struct.xa_state* noundef nonnull %xas) #14
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %unlock

if.end44:                                         ; preds = %if.end39
  %5 = load i64, i64* %nrpages, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %nrpages, align 8
  call fastcc void @__inc_lruvec_page_state(%struct.page* noundef %page, i32 noundef 19) #14
  br label %unlock

unlock:                                           ; preds = %if.end44, %if.end39, %if.then25
  %6 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %rlock.i100 = getelementptr inbounds %struct.xarray, %struct.xarray* %6, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i100) #15
  %call51 = call i1 @xas_nomem(%struct.xa_state* noundef nonnull %xas, i32 noundef %and) #15
  br i1 %call51, label %do.body10, label %do.end52

do.end52:                                         ; preds = %unlock
  %call53 = call fastcc i32 @xas_error(%struct.xa_state* noundef nonnull %xas) #14
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %if.then55

if.then55:                                        ; preds = %do.end52
  store %struct.address_space* null, %struct.address_space** %mapping3, align 8
  call fastcc void @put_page(%struct.page* noundef %page) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.then55
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i32 %call53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @shmem_mapping(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #3 {
entry:
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %cmp = icmp eq %struct.address_space_operations* %0, @shmem_aops
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_set_update(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #5 {
entry:
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* @workingset_update_node, void (%struct.xa_node*)** %xa_update, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_update_node(%struct.xa_node* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find_conflict(%struct.xa_state* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_set_err(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #5 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 -66 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_reset(%struct.xa_state* nocapture noundef writeonly %xas) unnamed_addr #5 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @xas_error(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #3 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = bitcast %struct.xa_node** %xa_node to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call fastcc i32 @xa_err(i8* noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @xas_nomem(%struct.xa_state* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @add_to_page_cache_locked(%struct.page* noundef %page, %struct.address_space* noundef %mapping, i64 noundef %offset, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %call = call i32 @__add_to_page_cache_locked(%struct.page* noundef %page, %struct.address_space* noundef %mapping, i64 noundef %offset, i32 noundef %gfp_mask, i8** noundef null) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @add_to_page_cache_lru(%struct.page* noundef %page, %struct.address_space* noundef %mapping, i64 noundef %offset, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %shadow = alloca i8*, align 8
  %0 = bitcast i8** %shadow to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %shadow, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %2, 1
  store i64 %or.i.i, i64* %flags.i, align 8
  %call = call i32 @__add_to_page_cache_locked(%struct.page* noundef %page, %struct.address_space* noundef %mapping, i64 noundef %offset, i32 noundef %gfp_mask, i8** noundef nonnull %shadow) #14
  %tobool.not = icmp eq i32 %call, 0
  %call.i42 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %3 = inttoptr i64 %call.i42 to %struct.page*
  %flags.i43 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %flags.i43, align 8
  %and.i.i = and i64 %4, -2
  store i64 %and.i.i, i64* %flags.i43, align 8
  br label %if.end29

if.else:                                          ; preds = %entry
  %5 = load volatile i64, i64* %flags.i43, align 8
  %6 = and i64 %5, 32
  %tobool4.not = icmp eq i64 %6, 0
  br i1 %tobool4.not, label %if.end, label %if.then17, !prof !10

if.then17:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/filemap.c\22; .popsection; .long 14472b - 14470b; .short 997; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.else
  %and = and i32 %gfp_mask, 4096
  %tobool25 = icmp eq i32 %and, 0
  %7 = load i8*, i8** %shadow, align 8
  %tobool26 = icmp ne i8* %7, null
  %or.cond = select i1 %tobool25, i1 %tobool26, i1 false
  br i1 %or.cond, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  call void @workingset_refault(%struct.page* noundef %page, i8* noundef nonnull %7) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end
  call void @lru_cache_add(%struct.page* noundef %page) #15
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_refault(%struct.page* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @filemap_invalidate_lock_two(%struct.address_space* noundef %mapping1, %struct.address_space* noundef %mapping2) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt %struct.address_space* %mapping1, %mapping2
  %spec.select = select i1 %cmp, %struct.address_space* %mapping1, %struct.address_space* %mapping2
  %spec.select17 = select i1 %cmp, %struct.address_space* %mapping2, %struct.address_space* %mapping1
  %tobool.not = icmp eq %struct.address_space* %spec.select17, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %entry
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %spec.select17, i64 0, i32 2
  call void @down_write(%struct.rw_semaphore* noundef %invalidate_lock) #15
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %entry
  %tobool3.not = icmp eq %struct.address_space* %spec.select, null
  %cmp4.not = icmp eq %struct.address_space* %spec.select17, %spec.select
  %or.cond = or i1 %tobool3.not, %cmp4.not
  br i1 %or.cond, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end2
  %invalidate_lock6 = getelementptr inbounds %struct.address_space, %struct.address_space* %spec.select, i64 0, i32 2
  call void @down_write(%struct.rw_semaphore* noundef %invalidate_lock6) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @filemap_invalidate_unlock_two(%struct.address_space* noundef %mapping1, %struct.address_space* noundef %mapping2) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.address_space* %mapping1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping1, i64 0, i32 2
  call void @up_write(%struct.rw_semaphore* noundef %invalidate_lock) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq %struct.address_space* %mapping2, null
  %cmp.not = icmp eq %struct.address_space* %mapping1, %mapping2
  %or.cond = or i1 %tobool1.not, %cmp.not
  br i1 %or.cond, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %invalidate_lock3 = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping2, i64 0, i32 2
  call void @up_write(%struct.rw_semaphore* noundef %invalidate_lock3) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @pagecache_init() local_unnamed_addr #8 section ".init.text" {
entry:
  br label %do.body

do.body:                                          ; preds = %entry, %do.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %do.body ]
  %arrayidx = getelementptr [256 x %struct.wait_queue_head], [256 x %struct.wait_queue_head]* @page_wait_table, i64 0, i64 %indvars.iv
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %arrayidx, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @pagecache_init.__key) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.end, label %do.body

for.end:                                          ; preds = %do.body
  call void @page_writeback_init() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_writeback_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wait_on_page_bit(%struct.page* noundef %page, i32 noundef %bit_nr) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %page) #14
  %call1 = call fastcc i32 @wait_on_page_bit_common(%struct.wait_queue_head* noundef nonnull %call, %struct.page* noundef %page, i32 noundef %bit_nr, i32 noundef 2, i32 noundef 1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %page) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.page* %page to i8*
  %call = call fastcc i32 @hash_ptr(i8* noundef %0) #14
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x %struct.wait_queue_head], [256 x %struct.wait_queue_head]* @page_wait_table, i64 0, i64 %idxprom
  ret %struct.wait_queue_head* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_on_page_bit_common(%struct.wait_queue_head* noundef %q, %struct.page* noundef %page, i32 noundef %bit_nr, i32 noundef %state, i32 noundef %behavior) unnamed_addr #0 {
entry:
  %wait_page = alloca %struct.wait_page_queue, align 8
  %0 = load i32, i32* @sysctl_page_lock_unfairness, align 4
  %1 = bitcast %struct.wait_page_queue* %wait_page to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !12
  %wait1 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait_page, i64 0, i32 2
  %cmp = icmp eq i32 %bit_nr, 0
  br i1 %cmp, label %land.lhs.true, label %do.body

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true2, label %do.body

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 64
  %tobool4.not = icmp eq i64 %4, 0
  br i1 %tobool4.not, label %do.body, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call.i140 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %5 = inttoptr i64 %call.i140 to %struct.page*
  %flags.i141 = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i141, align 8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry, %land.lhs.true, %land.lhs.true2
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %private = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait_page, i64 0, i32 2, i32 1
  %9 = bitcast i8** %private to %struct.task_struct**
  store %struct.task_struct* %8, %struct.task_struct** %9, align 8
  %func = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait_page, i64 0, i32 2, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry10 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait_page, i64 0, i32 2, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry10) #14
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait1, i64 0, i32 0
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @wake_page_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %page12 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait_page, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page12, align 8
  %bit_nr13 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait_page, i64 0, i32 1
  store i32 %bit_nr, i32* %bit_nr13, align 8
  %cmp15 = icmp eq i32 %behavior, 0
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %q, i64 0, i32 0, i32 0, i32 0
  %flags.i143 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %cmp27 = icmp eq i32 %behavior, 2
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i64 0, i32 1
  %conv = sext i32 %bit_nr to i64
  br label %repeat

repeat:                                           ; preds = %if.end69, %do.body
  %unfairness.0 = phi i32 [ %0, %do.body ], [ %unfairness.1, %if.end69 ]
  %dec = add i32 %unfairness.0, -1
  %cmp18 = icmp slt i32 %dec, 0
  %spec.store.select = select i1 %cmp18, i32 9, i32 1
  %storemerge = select i1 %cmp15, i32 %spec.store.select, i32 0
  %unfairness.1 = select i1 %cmp15, i32 %dec, i32 %unfairness.0
  store i32 %storemerge, i32* %flags, align 8
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  call fastcc void @set_bit(i64 noundef 7, i64* noundef %flags.i143) #15
  %call23 = call fastcc i1 @trylock_page_bit_common(%struct.page* noundef %page, i32 noundef %bit_nr, %struct.wait_queue_entry* noundef %wait1) #14
  br i1 %call23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %repeat
  call fastcc void @__add_wait_queue_entry_tail(%struct.wait_queue_head* noundef %q, %struct.wait_queue_entry* noundef %wait1) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %repeat
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  call fastcc void @put_page(%struct.page* noundef %page) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  store volatile i32 %state, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  %10 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %flags) #18, !srcloc !19
  %and152 = and i32 %10, 2
  %tobool55.not153 = icmp eq i32 %and152, 0
  br i1 %tobool55.not153, label %if.then56, label %if.end62

if.then56:                                        ; preds = %if.end29, %cleanup
  %call58 = call fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %8) #14
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup, label %for.end

if.end62:                                         ; preds = %cleanup, %if.end29
  %.lcssa = phi i32 [ %10, %if.end29 ], [ %12, %cleanup ]
  %and66 = and i32 %.lcssa, 16
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond = select i1 %cmp15, i1 %tobool67.not, i1 false
  br i1 %or.cond, label %if.end69, label %for.end

if.end69:                                         ; preds = %if.end62
  %call71 = call fastcc i1 @test_and_set_bit(i64 noundef %conv, i64* noundef %flags.i143) #14
  br i1 %call71, label %repeat, label %if.end76, !prof !8

if.end76:                                         ; preds = %if.end69
  %11 = load i32, i32* %flags, align 8
  %or78 = or i32 %11, 16
  store i32 %or78, i32* %flags, align 8
  br label %for.end

cleanup:                                          ; preds = %if.then56
  call void @io_schedule() #15
  store volatile i32 %state, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  %12 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %flags) #18, !srcloc !19
  %and = and i32 %12, 2
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.then56, label %if.end62

for.end:                                          ; preds = %if.end62, %if.then56, %if.end76
  call void @finish_wait(%struct.wait_queue_head* noundef %q, %struct.wait_queue_entry* noundef %wait1) #15
  %13 = load i32, i32* %flags, align 8
  %. = select i1 %cmp15, i32 16, i32 2
  %and93 = and i32 %13, %.
  %tobool94.not = icmp eq i32 %and93, 0
  %cond95 = select i1 %tobool94.not, i32 -4, i32 0
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #18
  ret i32 %cond95
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @wait_on_page_bit_killable(%struct.page* noundef %page, i32 noundef %bit_nr) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %page) #14
  %call1 = call fastcc i32 @wait_on_page_bit_common(%struct.wait_queue_head* noundef nonnull %call, %struct.page* noundef %page, i32 noundef %bit_nr, i32 noundef 258, i32 noundef 1) #14
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @put_and_wait_on_page_locked(%struct.page* noundef %page, i32 noundef %state) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %call1 = call fastcc %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %0) #14
  %call2 = call fastcc i32 @wait_on_page_bit_common(%struct.wait_queue_head* noundef nonnull %call1, %struct.page* noundef %0, i32 noundef 0, i32 noundef %state, i32 noundef 2) #14
  ret i32 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
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
define dso_local void @add_page_wait_queue(%struct.page* noundef %page, %struct.wait_queue_entry* noundef %waiter) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %page) #14
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %call, i64 0, i32 0, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull %rlock.i) #14
  call fastcc void @__add_wait_queue_entry_tail(%struct.wait_queue_head* noundef nonnull %call, %struct.wait_queue_entry* noundef %waiter) #14
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 7, i64* noundef %flags.i) #15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull %rlock.i, i64 noundef %call3) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #14
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__add_wait_queue_entry_tail(%struct.wait_queue_head* noundef %wq_head, %struct.wait_queue_entry* noundef %wq_entry) unnamed_addr #9 {
entry:
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 3
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  call fastcc void @list_add_tail(%struct.list_head* noundef %entry1, %struct.list_head* noundef %head) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unlock_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @clear_bit_unlock_is_negative_byte(i64* noundef %flags) #14
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @wake_up_page_bit(%struct.page* noundef %0, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @clear_bit_unlock_is_negative_byte(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @arch_clear_bit_unlock_is_negative_byte(i64* noundef %addr) #14
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wake_up_page_bit(%struct.page* noundef %page, i32 noundef %bit_nr) unnamed_addr #0 {
entry:
  %key = alloca %struct.wait_page_key, align 8
  %bookmark = alloca %struct.wait_queue_entry, align 8
  %call = call fastcc %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %page) #14
  %0 = bitcast %struct.wait_page_key* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  %1 = bitcast %struct.wait_queue_entry* %bookmark to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !12
  %page1 = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %key, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page1, align 8
  %bit_nr2 = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %key, i64 0, i32 1
  store i32 %bit_nr, i32* %bit_nr2, align 8
  %page_match = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %key, i64 0, i32 2
  store i32 0, i32* %page_match, align 4
  %flags3 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %bookmark, i64 0, i32 0
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %bookmark, i64 0, i32 1
  store i8* null, i8** %private, align 8
  %entry4 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %bookmark, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry4) #14
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %call, i64 0, i32 0, i32 0, i32 0
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull %rlock.i) #14
  call void @__wake_up_locked_key_bookmark(%struct.wait_queue_head* noundef nonnull %call, i32 noundef 3, i8* noundef nonnull %0, %struct.wait_queue_entry* noundef nonnull %bookmark) #15
  %2 = load i32, i32* %flags3, align 8
  %and45 = and i32 %2, 4
  %tobool.not46 = icmp eq i32 %and45, 0
  br i1 %tobool.not46, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %flags.047 = phi i64 [ %call21, %while.body ], [ %call7, %entry ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull %rlock.i, i64 noundef %flags.047) #15
  call fastcc void @cpu_relax() #14
  %call21 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull %rlock.i) #14
  call void @__wake_up_locked_key_bookmark(%struct.wait_queue_head* noundef nonnull %call, i32 noundef 3, i8* noundef nonnull %0, %struct.wait_queue_entry* noundef nonnull %bookmark) #15
  %3 = load i32, i32* %flags3, align 8
  %and = and i32 %3, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %flags.0.lcssa = phi i64 [ %call7, %entry ], [ %call21, %while.body ]
  %call26 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef nonnull %call) #14
  %tobool27 = icmp ne i32 %call26, 0
  %4 = load i32, i32* %page_match, align 4
  %tobool29 = icmp ne i32 %4, 0
  %or.cond = select i1 %tobool27, i1 %tobool29, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 7, i64* noundef %flags.i) #15
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull %rlock.i, i64 noundef %flags.0.lcssa) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @end_page_private_2(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  call fastcc void @clear_bit_unlock(i64* noundef %flags) #14
  call fastcc void @wake_up_page_bit(%struct.page* noundef %0, i32 noundef 14) #14
  call fastcc void @put_page(%struct.page* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit_unlock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot_release(i64 noundef 16384, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wait_on_page_private_2(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 16384
  %tobool.not4 = icmp eq i64 %2, 0
  br i1 %tobool.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call void @wait_on_page_bit(%struct.page* noundef %0, i32 noundef 14) #14
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 16384
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @wait_on_page_private_2_killable(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 16384
  %tobool.not7 = icmp eq i64 %2, 0
  br i1 %tobool.not7, label %while.end, label %while.body

while.cond:                                       ; preds = %while.body
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 16384
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond
  %call2 = call i32 @wait_on_page_bit_killable(%struct.page* noundef %0, i32 noundef 14) #14
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %while.body, %entry
  %ret.1 = phi i32 [ 0, %entry ], [ %call2, %while.body ], [ %call2, %while.cond ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @end_page_writeback(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 262144
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i13 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %3 = inttoptr i64 %call.i13 to %struct.page*
  %flags.i14 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 18, i64* noundef %flags.i14) #15
  call void @rotate_reclaimable_page(%struct.page* noundef %page) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @get_page(%struct.page* noundef %page) #14
  %call1 = call i32 @test_clear_page_writeback(%struct.page* noundef %page) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %if.end6

do.body:                                          ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/filemap.c\22; .popsection; .long 14472b - 14470b; .short 1604; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !21
  unreachable

if.end6:                                          ; preds = %if.end
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  call fastcc void @wake_up_page(%struct.page* noundef %page) #14
  call fastcc void @put_page(%struct.page* noundef %page) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rotate_reclaimable_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @test_clear_page_writeback(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wake_up_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 128
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @wake_up_page_bit(%struct.page* noundef %page, i32 noundef 15) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_endio(%struct.page* noundef %page, i1 noundef %is_write, i32 noundef %err) local_unnamed_addr #0 {
entry:
  %tobool4.not = icmp eq i32 %err, 0
  br i1 %is_write, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !23
  br label %if.end

if.else:                                          ; preds = %if.then
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i21 = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 2, i64* noundef %flags.i21) #15
  %call.i22 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %1 = inttoptr i64 %call.i22 to %struct.page*
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %.sink26 = phi %struct.page* [ %1, %if.else ], [ %page, %if.then2 ]
  %.sink = phi i64 [ 8, %if.else ], [ 2, %if.then2 ]
  %flags.i23 = getelementptr inbounds %struct.page, %struct.page* %.sink26, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef %.sink, i64* noundef %flags.i23) #15
  call void @unlock_page(%struct.page* noundef %page) #14
  br label %if.end10

if.else3:                                         ; preds = %entry
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.else3
  %call.i24 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %2 = inttoptr i64 %call.i24 to %struct.page*
  %flags.i25 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 8, i64* noundef %flags.i25) #15
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #15
  %tobool6.not = icmp eq %struct.address_space* %call, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then5
  call fastcc void @mapping_set_error(%struct.address_space* noundef nonnull %call, i32 noundef %err) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then7, %if.else3
  call void @end_page_writeback(%struct.page* noundef %page) #14
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_set_error(%struct.address_space* noundef %mapping, i32 noundef %error) unnamed_addr #0 {
entry:
  call void @__filemap_set_wb_err(%struct.address_space* noundef %mapping, i32 noundef %error) #14
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %0 = load %struct.inode*, %struct.inode** %host, align 8
  %tobool4.not = icmp eq %struct.inode* %0, null
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_wb_err = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 43
  %call = call i32 @errseq_set(i32* noundef %s_wb_err, i32 noundef %error) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry
  %cmp = icmp eq i32 %error, -28
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %. = zext i1 %cmp to i64
  call fastcc void @set_bit(i64 noundef %., i64* noundef %flags) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__lock_page(%struct.page* noundef %__page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %__page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %call1 = call fastcc %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %0) #14
  %call2 = call fastcc i32 @wait_on_page_bit_common(%struct.wait_queue_head* noundef nonnull %call1, %struct.page* noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__lock_page_killable(%struct.page* noundef %__page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %__page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %call1 = call fastcc %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %0) #14
  %call2 = call fastcc i32 @wait_on_page_bit_common(%struct.wait_queue_head* noundef nonnull %call1, %struct.page* noundef %0, i32 noundef 0, i32 noundef 258, i32 noundef 0) #14
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__lock_page_async(%struct.page* noundef %page, %struct.wait_page_queue* noundef %wait) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.wait_queue_head* @page_waitqueue(%struct.page* noundef %page) #14
  %page1 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait, i64 0, i32 0
  store %struct.page* %page, %struct.page** %page1, align 8
  %bit_nr = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait, i64 0, i32 1
  store i32 0, i32* %bit_nr, align 8
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef nonnull %rlock.i) #15
  %wait2 = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait, i64 0, i32 2
  call fastcc void @__add_wait_queue_entry_tail(%struct.wait_queue_head* noundef nonnull %call, %struct.wait_queue_entry* noundef %wait2) #14
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 7, i64* noundef %flags.i) #15
  %call3 = call fastcc i32 @trylock_page(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__remove_wait_queue(%struct.wait_queue_entry* noundef %wait2) #14
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ -529, %entry ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef nonnull %rlock.i) #15
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #14
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__remove_wait_queue(%struct.wait_queue_entry* nocapture noundef %wq_entry) unnamed_addr #9 {
entry:
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %entry1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__lock_page_or_retry(%struct.page* noundef %page, %struct.mm_struct* noundef %mm, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @fault_flag_allow_retry_first(i32 noundef %flags) #14
  br i1 %call, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %if.then
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) #14
  %and2 = and i32 %flags, 16
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i32 @wait_on_page_locked_killable(%struct.page* noundef %page) #14
  br label %return

if.else:                                          ; preds = %if.end
  call fastcc void @wait_on_page_locked(%struct.page* noundef %page) #14
  br label %return

if.end7:                                          ; preds = %entry
  %and8 = and i32 %flags, 16
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else15, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 @__lock_page_killable(%struct.page* noundef %page) #14
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %return, label %cleanup

cleanup:                                          ; preds = %if.then10
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) #14
  br label %return

if.else15:                                        ; preds = %if.end7
  call void @__lock_page(%struct.page* noundef %page) #14
  br label %return

return:                                           ; preds = %if.then10, %if.else15, %cleanup, %if.then4, %if.else, %if.then
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %if.then4 ], [ 1, %if.else15 ], [ 1, %if.then10 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @fault_flag_allow_retry_first(i32 noundef %flags) unnamed_addr #6 {
entry:
  %0 = and i32 %flags, 36
  %1 = icmp eq i32 %0, 4
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_on_page_locked_killable(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i4 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i4, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %2 = inttoptr i64 %call1 to %struct.page*
  %call2 = call i32 @wait_on_page_bit_killable(%struct.page* noundef %2, i32 noundef 0) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_on_page_locked(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i3 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %2 = inttoptr i64 %call1 to %struct.page*
  call void @wait_on_page_bit(%struct.page* noundef %2, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @page_cache_next_miss(%struct.address_space* noundef %mapping, i64 noundef %index, i64 noundef %max_scan) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
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
  %tobool.not14 = icmp eq i64 %max_scan, 0
  br i1 %tobool.not14, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %lor.lhs.false
  %dec15.in = phi i64 [ %dec15, %lor.lhs.false ], [ %max_scan, %entry ]
  %call = call fastcc i8* @xas_next(%struct.xa_state* noundef nonnull %xas) #14
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %lor.lhs.false

while.body.while.end_crit_edge:                   ; preds = %while.body
  %.pre = load i64, i64* %xa_index, align 8
  br label %while.end

lor.lhs.false:                                    ; preds = %while.body
  %dec15 = add i64 %dec15.in, -1
  %call3 = call fastcc i1 @xa_is_value(i8* noundef nonnull %call) #14
  %3 = load i64, i64* %xa_index, align 8
  %cmp = icmp eq i64 %3, 0
  %or.cond = select i1 %call3, i1 true, i1 %cmp
  %tobool.not = icmp eq i64 %dec15, 0
  %or.cond17 = select i1 %or.cond, i1 true, i1 %tobool.not
  br i1 %or.cond17, label %while.end, label %while.body

while.end:                                        ; preds = %lor.lhs.false, %entry, %while.body.while.end_crit_edge
  %4 = phi i64 [ %.pre, %while.body.while.end_crit_edge ], [ %index, %entry ], [ %3, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i64 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_next(%struct.xa_state* noundef %xas) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #14
  br i1 %call, label %if.then, label %lor.lhs.false, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %if.then, !prof !10

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %cmp = icmp eq i8 %2, 63
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry, %lor.lhs.false, %lor.rhs
  %call6 = call i8* @__xas_next(%struct.xa_state* noundef %xas) #15
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %xa_index, align 8
  %inc8 = add i8 %2, 1
  store i8 %inc8, i8* %xa_offset, align 2
  %conv10 = zext i8 %inc8 to i32
  %call11 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %conv10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call6, %if.then ], [ %call11, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @page_cache_prev_miss(%struct.address_space* noundef %mapping, i64 noundef %index, i64 noundef %max_scan) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
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
  %tobool.not14 = icmp eq i64 %max_scan, 0
  br i1 %tobool.not14, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %lor.lhs.false
  %dec15.in = phi i64 [ %dec15, %lor.lhs.false ], [ %max_scan, %entry ]
  %call = call fastcc i8* @xas_prev(%struct.xa_state* noundef nonnull %xas) #14
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %lor.lhs.false

while.body.while.end_crit_edge:                   ; preds = %while.body
  %.pre = load i64, i64* %xa_index, align 8
  br label %while.end

lor.lhs.false:                                    ; preds = %while.body
  %dec15 = add i64 %dec15.in, -1
  %call3 = call fastcc i1 @xa_is_value(i8* noundef nonnull %call) #14
  %3 = load i64, i64* %xa_index, align 8
  %cmp = icmp eq i64 %3, -1
  %or.cond = select i1 %call3, i1 true, i1 %cmp
  %tobool.not = icmp eq i64 %dec15, 0
  %or.cond17 = select i1 %or.cond, i1 true, i1 %tobool.not
  br i1 %or.cond17, label %while.end, label %while.body

while.end:                                        ; preds = %lor.lhs.false, %entry, %while.body.while.end_crit_edge
  %4 = phi i64 [ %.pre, %while.body.while.end_crit_edge ], [ %index, %entry ], [ %3, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i64 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @xas_prev(%struct.xa_state* noundef %xas) unnamed_addr #0 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %call = call fastcc i1 @xas_not_node(%struct.xa_node* noundef %0) #14
  br i1 %call, label %if.then, label %lor.lhs.false, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.xa_node, %struct.xa_node* %0, i64 0, i32 0
  %1 = load i8, i8* %shift, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %if.then, !prof !10

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry, %lor.lhs.false, %lor.rhs
  %call6 = call i8* @__xas_prev(%struct.xa_state* noundef %xas) #15
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %xa_index, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %xa_index, align 8
  %dec8 = add i8 %2, -1
  store i8 %dec8, i8* %xa_offset, align 2
  %conv10 = zext i8 %dec8 to i32
  %call11 = call fastcc i8* @xa_entry(%struct.xa_node* noundef %0, i32 noundef %conv10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call6, %if.then ], [ %call11, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @pagecache_get_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %fgp_flags, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  br label %repeat.outer

repeat.outer:                                     ; preds = %if.then103, %entry
  %fgp_flags.addr.0.ph = phi i32 [ %spec.select163, %if.then103 ], [ %fgp_flags, %entry ]
  %gfp_mask.addr.0.ph = phi i32 [ %spec.select162, %if.then103 ], [ %gfp_mask, %entry ]
  %call190 = call fastcc %struct.page* @mapping_get_entry(%struct.address_space* noundef %mapping, i64 noundef %index) #14
  %0 = bitcast %struct.page* %call190 to i8*
  %call1191 = call fastcc i1 @xa_is_value(i8* noundef %0) #14
  br i1 %call1191, label %if.then, label %if.end3.lr.ph

if.end3.lr.ph:                                    ; preds = %repeat.outer
  %and7 = and i32 %fgp_flags.addr.0.ph, 2
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = and i32 %fgp_flags.addr.0.ph, 32
  %tobool11.not = icmp eq i32 %and10, 0
  br label %if.end3

if.then:                                          ; preds = %if.then21, %repeat.outer
  %call.lcssa = phi %struct.page* [ %call190, %repeat.outer ], [ %call, %if.then21 ]
  %and = and i32 %fgp_flags.addr.0.ph, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %cleanup116

if.end3:                                          ; preds = %if.end3.lr.ph, %if.then21
  %call192 = phi %struct.page* [ %call190, %if.end3.lr.ph ], [ %call, %if.then21 ]
  %tobool4.not = icmp eq %struct.page* %call192, null
  br i1 %tobool4.not, label %land.lhs.true, label %if.end6

if.end6:                                          ; preds = %if.end3
  br i1 %tobool8.not, label %if.end23, label %if.then9

if.then9:                                         ; preds = %if.end6
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then9
  %call13 = call fastcc i32 @trylock_page(%struct.page* noundef nonnull %call192) #14
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then12
  call fastcc void @put_page(%struct.page* noundef nonnull %call192) #14
  br label %cleanup116

if.else:                                          ; preds = %if.then9
  call fastcc void @lock_page(%struct.page* noundef nonnull %call192) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.else
  %mapping18 = getelementptr inbounds %struct.page, %struct.page* %call192, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping18, align 8
  %cmp.not = icmp eq %struct.address_space* %1, %mapping
  br i1 %cmp.not, label %if.end23, label %if.then21, !prof !10

if.then21:                                        ; preds = %if.end17
  call void @unlock_page(%struct.page* noundef nonnull %call192) #14
  call fastcc void @put_page(%struct.page* noundef nonnull %call192) #14
  %call = call fastcc %struct.page* @mapping_get_entry(%struct.address_space* noundef %mapping, i64 noundef %index) #14
  %2 = bitcast %struct.page* %call to i8*
  %call1 = call fastcc i1 @xa_is_value(i8* noundef %2) #14
  br i1 %call1, label %if.then, label %if.end3

if.end23:                                         ; preds = %if.end17, %if.end6
  %call192.lcssa194 = phi %struct.page* [ %call192, %if.end17 ], [ %call190, %if.end6 ]
  %and24 = and i32 %fgp_flags.addr.0.ph, 1
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cleanup116, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @mark_page_accessed(%struct.page* noundef nonnull %call192.lcssa194) #15
  br label %cleanup116

land.lhs.true:                                    ; preds = %if.end3, %if.then
  %and42 = and i32 %fgp_flags.addr.0.ph, 4
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %cleanup116, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  %and45 = and i32 %fgp_flags.addr.0.ph, 8
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end51, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.then44
  %call48 = call fastcc i1 @mapping_can_writeback(%struct.address_space* noundef %mapping) #14
  %or = or i32 %gfp_mask.addr.0.ph, 4096
  %spec.select = select i1 %call48, i32 %or, i32 %gfp_mask.addr.0.ph
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true47, %if.then44
  %gfp_mask.addr.1 = phi i32 [ %gfp_mask.addr.0.ph, %if.then44 ], [ %spec.select, %land.lhs.true47 ]
  %and52 = and i32 %fgp_flags.addr.0.ph, 16
  %tobool53.not = icmp eq i32 %and52, 0
  %and55 = and i32 %gfp_mask.addr.1, -129
  %spec.select162 = select i1 %tobool53.not, i32 %gfp_mask.addr.1, i32 %and55
  %call57 = call fastcc %struct.page* @__page_cache_alloc(i32 noundef %spec.select162) #14
  %tobool58.not = icmp eq %struct.page* %call57, null
  br i1 %tobool58.not, label %cleanup116, label %if.end60

if.end60:                                         ; preds = %if.end51
  %and61 = and i32 %fgp_flags.addr.0.ph, 66
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then77, label %if.end78, !prof !8

if.then77:                                        ; preds = %if.end60
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/filemap.c\22; .popsection; .long 14472b - 14470b; .short 1944; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !24
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end60
  %or88 = or i32 %fgp_flags.addr.0.ph, 2
  %spec.select163 = select i1 %tobool62.not, i32 %or88, i32 %fgp_flags.addr.0.ph
  %and90 = and i32 %spec.select163, 1
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.end78
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call57) #15
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %4, 2
  store i64 %or.i.i, i64* %flags.i, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end78
  %call94 = call i32 @add_to_page_cache_lru(%struct.page* noundef nonnull %call57, %struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %spec.select162) #14
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end108, label %if.then103, !prof !10

if.then103:                                       ; preds = %if.end93
  call fastcc void @put_page(%struct.page* noundef nonnull %call57) #14
  %cmp104 = icmp eq i32 %call94, -17
  br i1 %cmp104, label %repeat.outer, label %cleanup116

if.end108:                                        ; preds = %if.end93
  %and111 = and i32 %spec.select163, 64
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %cleanup116, label %if.then113

if.then113:                                       ; preds = %if.end108
  call void @unlock_page(%struct.page* noundef nonnull %call57) #14
  br label %cleanup116

cleanup116:                                       ; preds = %if.then103, %if.end51, %land.lhs.true, %if.then, %if.then26, %if.end23, %if.end108, %if.then113, %if.then15
  %retval.2 = phi %struct.page* [ null, %if.then15 ], [ %call57, %if.end108 ], [ %call57, %if.then113 ], [ %call192.lcssa194, %if.end23 ], [ %call192.lcssa194, %if.then26 ], [ null, %if.then103 ], [ null, %if.end51 ], [ null, %land.lhs.true ], [ %call.lcssa, %if.then ]
  ret %struct.page* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @mapping_get_entry(%struct.address_space* noundef %mapping, i64 noundef %index) unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
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
  call fastcc void @__rcu_read_lock() #15
  br label %repeat

repeat:                                           ; preds = %repeat.backedge, %entry
  call fastcc void @xas_reset(%struct.xa_state* noundef nonnull %xas) #14
  %call = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #15
  %3 = bitcast i8* %call to %struct.page*
  %call1 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef %call) #14
  br i1 %call1, label %repeat.backedge, label %if.end

if.end:                                           ; preds = %repeat
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = call fastcc i1 @xa_is_value(i8* noundef nonnull %call) #14
  br i1 %call2, label %outsplit, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = call fastcc i32 @page_cache_get_speculative(%struct.page* noundef nonnull %3) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %repeat.backedge, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i8* @xas_reload(%struct.xa_state* noundef nonnull %xas) #14
  %cmp.not = icmp eq i8* %call, %call9
  br i1 %cmp.not, label %outsplit, label %if.then12, !prof !10

if.then12:                                        ; preds = %if.end8
  call fastcc void @put_page(%struct.page* noundef nonnull %3) #14
  br label %repeat.backedge

repeat.backedge:                                  ; preds = %if.then12, %repeat, %if.end4
  br label %repeat

outsplit:                                         ; preds = %lor.lhs.false, %if.end8
  %phi.cast = bitcast i8* %call to %struct.page*
  br label %out

out:                                              ; preds = %if.end, %outsplit
  %call.lcssa = phi %struct.page* [ %phi.cast, %outsplit ], [ null, %if.end ]
  call fastcc void @rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret %struct.page* %call.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__page_cache_alloc(i32 noundef %gfp) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.page* @alloc_pages(i32 noundef %gfp) #14
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @find_get_entries(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, %struct.pagevec* nocapture noundef writeonly %pvec, i64* nocapture noundef writeonly %indices) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
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
  call fastcc void @__rcu_read_lock() #15
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %call = call fastcc %struct.page* @find_get_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %end, i32 noundef 8) #14
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %while.end.split.loop.exit28, label %if.end

if.end:                                           ; preds = %while.cond
  %3 = load i64, i64* %xa_index, align 8
  %arrayidx = getelementptr i64, i64* %indices, i64 %indvars.iv
  store i64 %3, i64* %arrayidx, align 8
  %arrayidx11 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %indvars.iv
  store %struct.page* %call, %struct.page** %arrayidx11, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, 15
  br i1 %cmp, label %while.end, label %while.cond

while.end.split.loop.exit28:                      ; preds = %while.cond
  %4 = trunc i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %if.end, %while.end.split.loop.exit28
  %ret.1 = phi i32 [ %4, %while.end.split.loop.exit28 ], [ 15, %if.end ]
  call fastcc void @rcu_read_unlock() #14
  %conv = trunc i32 %ret.1 to i8
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 %conv, i8* %nr, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @find_get_entry(%struct.xa_state* noundef %xas, i64 noundef %max, i32 noundef %mark) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %mark, 8
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %retry
  %call = call i8* @xas_find(%struct.xa_state* noundef %xas, i64 noundef %max) #15
  br label %if.end

if.else:                                          ; preds = %retry
  %call1 = call i8* @xas_find_marked(%struct.xa_state* noundef %xas, i64 noundef %max, i32 noundef %mark) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %page.0.in = phi i8* [ %call, %if.then ], [ %call1, %if.else ]
  %page.0 = bitcast i8* %page.0.in to %struct.page*
  %call2 = call fastcc i1 @xas_retry(%struct.xa_state* noundef %xas, i8* noundef %page.0.in) #14
  br i1 %call2, label %retry.backedge, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp eq i8* %page.0.in, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %call5 = call fastcc i1 @xa_is_value(i8* noundef nonnull %page.0.in) #14
  br i1 %call5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = call fastcc i32 @page_cache_get_speculative(%struct.page* noundef nonnull %page.0) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %reset, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call fastcc i8* @xas_reload(%struct.xa_state* noundef %xas) #14
  %cmp13.not = icmp eq i8* %page.0.in, %call12
  br i1 %cmp13.not, label %cleanup, label %if.then16, !prof !10

if.then16:                                        ; preds = %if.end11
  call fastcc void @put_page(%struct.page* noundef nonnull %page.0) #14
  br label %reset

reset:                                            ; preds = %if.end7, %if.then16
  call fastcc void @xas_reset(%struct.xa_state* noundef %xas) #14
  br label %retry.backedge

retry.backedge:                                   ; preds = %reset, %if.end
  br label %retry

cleanup:                                          ; preds = %if.end11, %lor.lhs.false, %if.end4
  %page.0.le = bitcast i8* %page.0.in to %struct.page*
  ret %struct.page* %page.0.le
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @find_lock_entries(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, %struct.pagevec* nocapture noundef %pvec, i64* nocapture noundef writeonly %indices) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
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
  call fastcc void @__rcu_read_lock() #15
  %call65 = call fastcc %struct.page* @find_get_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %end, i32 noundef 8) #14
  %tobool.not66 = icmp eq %struct.page* %call65, null
  br i1 %tobool.not66, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end40
  %call67 = phi %struct.page* [ %call65, %while.body.lr.ph ], [ %call, %if.end40 ]
  %3 = bitcast %struct.page* %call67 to i8*
  %call1 = call fastcc i1 @xa_is_value(i8* noundef nonnull %3) #14
  br i1 %call1, label %if.end20, label %if.then

if.then:                                          ; preds = %while.body
  %index = getelementptr inbounds %struct.page, %struct.page* %call67, i64 0, i32 1, i32 0, i32 2
  %4 = load i64, i64* %index, align 8
  %cmp = icmp ult i64 %4, %start
  %cmp5 = icmp ugt i64 %4, %end
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %next.thread, label %if.end8

if.end8:                                          ; preds = %if.then
  %call9 = call fastcc i32 @trylock_page(%struct.page* noundef nonnull %call67) #14
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %next.thread, label %if.end12

if.end12:                                         ; preds = %if.end8
  %mapping13 = getelementptr inbounds %struct.page, %struct.page* %call67, i64 0, i32 1, i32 0, i32 1
  %5 = load %struct.address_space*, %struct.address_space** %mapping13, align 8
  %cmp14.not = icmp eq %struct.address_space* %5, %mapping
  br i1 %cmp14.not, label %lor.lhs.false, label %unlock

lor.lhs.false:                                    ; preds = %if.end12
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call67) #15
  %6 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %6, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i, align 8
  %8 = and i64 %7, 32768
  %tobool17.not = icmp eq i64 %8, 0
  br i1 %tobool17.not, label %if.end20, label %unlock

if.end20:                                         ; preds = %lor.lhs.false, %while.body
  %9 = load i64, i64* %xa_index, align 8
  %10 = load i8, i8* %nr, align 8
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr i64, i64* %indices, i64 %idxprom
  store i64 %9, i64* %arrayidx, align 8
  %call22 = call fastcc i32 @pagevec_add(%struct.pagevec* noundef %pvec, %struct.page* noundef nonnull %call67) #14
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.end, label %if.end40

unlock:                                           ; preds = %if.end12, %lor.lhs.false
  call void @unlock_page(%struct.page* noundef nonnull %call67) #14
  br label %next.thread

next.thread:                                      ; preds = %unlock, %if.then, %if.end8
  call fastcc void @put_page(%struct.page* noundef nonnull %call67) #14
  br label %if.end40

if.end40:                                         ; preds = %if.end20, %next.thread
  %call = call fastcc %struct.page* @find_get_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %end, i32 noundef 8) #14
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end40, %if.end20, %entry
  call fastcc void @rcu_read_unlock() #14
  %call41 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i32 %call41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @pagevec_add(%struct.pagevec* nocapture noundef %pvec, %struct.page* noundef %page) unnamed_addr #10 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %inc = add i8 %0, 1
  store i8 %inc, i8* %nr, align 8
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  store %struct.page* %page, %struct.page** %arrayidx, align 8
  %call = call fastcc i32 @pagevec_space(%struct.pagevec* noundef %pvec) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xas_set(%struct.xa_state* nocapture noundef writeonly %xas, i64 noundef %index) unnamed_addr #5 {
entry:
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @find_get_pages_range(%struct.address_space* noundef %mapping, i64* nocapture noundef %start, i64 noundef %end, i32 noundef %nr_pages, %struct.page** nocapture noundef writeonly %pages) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %start, align 8
  store i64 %3, i64* %xa_index, align 8
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
  %tobool.not = icmp eq i32 %nr_pages, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %4 = zext i32 %nr_pages to i64
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end7, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end7 ], [ 0, %if.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call = call fastcc %struct.page* @find_get_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %end, i32 noundef 8) #14
  %tobool4.not = icmp eq %struct.page* %call, null
  br i1 %tobool4.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = bitcast %struct.page* %call to i8*
  %call5 = call fastcc i1 @xa_is_value(i8* noundef nonnull %5) #14
  br i1 %call5, label %while.cond, label %if.end7

if.end7:                                          ; preds = %while.body
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %indvars.iv
  store %struct.page* %call, %struct.page** %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, %4
  br i1 %cmp, label %if.then11, label %while.cond.outer

if.then11:                                        ; preds = %if.end7
  %6 = load i64, i64* %xa_index, align 8
  %add = add i64 %6, 1
  br label %out

while.end:                                        ; preds = %while.cond
  %7 = trunc i64 %indvars.iv to i32
  %cmp14 = icmp eq i64 %end, -1
  %add17 = add nuw i64 %end, 1
  %spec.select = select i1 %cmp14, i64 -1, i64 %add17
  br label %out

out:                                              ; preds = %while.end, %if.then11
  %.sink = phi i64 [ %add, %if.then11 ], [ %spec.select, %while.end ]
  %ret.1 = phi i32 [ %nr_pages, %if.then11 ], [ %7, %while.end ]
  store i64 %.sink, i64* %start, align 8
  call fastcc void @rcu_read_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @find_get_pages_contig(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %nr_pages, %struct.page** nocapture noundef writeonly %pages) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
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
  %tobool.not = icmp eq i32 %nr_pages, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %call = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #15
  %tobool4.not47 = icmp eq i8* %call, null
  br i1 %tobool4.not47, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %ret.049 = phi i32 [ %ret.1, %for.inc ], [ 0, %if.end ]
  %page.0.in48 = phi i8* [ %call32, %for.inc ], [ %call, %if.end ]
  %page.051 = bitcast i8* %page.0.in48 to %struct.page*
  %call5 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %page.0.in48) #14
  br i1 %call5, label %for.inc, label %if.end7

if.end7:                                          ; preds = %for.body
  %call8 = call fastcc i1 @xa_is_value(i8* noundef nonnull %page.0.in48) #14
  br i1 %call8, label %for.end, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call11 = call fastcc i32 @page_cache_get_speculative(%struct.page* noundef nonnull %page.051) #14
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %retry, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i8* @xas_reload(%struct.xa_state* noundef nonnull %xas) #14
  %cmp.not = icmp eq i8* %page.0.in48, %call15
  br i1 %cmp.not, label %if.end25, label %put_page, !prof !10

if.end25:                                         ; preds = %if.end14
  %idxprom = zext i32 %ret.049 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  %3 = bitcast %struct.page** %arrayidx to i8**
  store i8* %page.0.in48, i8** %3, align 8
  %inc = add i32 %ret.049, 1
  %cmp28 = icmp eq i32 %inc, %nr_pages
  br i1 %cmp28, label %for.end, label %for.inc

put_page:                                         ; preds = %if.end14
  call fastcc void @put_page(%struct.page* noundef nonnull %page.051) #14
  br label %retry

retry:                                            ; preds = %if.end10, %put_page
  call fastcc void @xas_reset(%struct.xa_state* noundef nonnull %xas) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %for.body, %retry
  %ret.1 = phi i32 [ %ret.049, %for.body ], [ %ret.049, %retry ], [ %inc, %if.end25 ]
  %call32 = call fastcc i8* @xas_next(%struct.xa_state* noundef nonnull %xas) #14
  %tobool4.not = icmp eq i8* %call32, null
  br i1 %tobool4.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end7, %if.end25, %if.end
  %ret.2 = phi i32 [ 0, %if.end ], [ %nr_pages, %if.end25 ], [ %ret.049, %if.end7 ], [ %ret.1, %for.inc ]
  call fastcc void @rcu_read_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_load(%struct.xa_state* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_cache_get_speculative(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__page_cache_add_speculative(%struct.page* noundef %page) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xas_reload(%struct.xa_state* nocapture noundef readonly %xas) unnamed_addr #7 {
entry:
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  %0 = load %struct.xa_node*, %struct.xa_node** %xa_node, align 8
  %tobool.not = icmp eq %struct.xa_node* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %1 = load %struct.xarray*, %struct.xarray** %xa, align 8
  %call = call fastcc i8* @xa_head(%struct.xarray* noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %2 = load i8, i8* %xa_offset, align 2
  %conv = zext i8 %2 to i32
  %call3 = call fastcc i8* @xa_entry(%struct.xa_node* noundef nonnull %0, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call3, %if.end ], [ %call, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @find_get_pages_range_tag(%struct.address_space* noundef %mapping, i64* nocapture noundef %index, i64 noundef %end, i32 noundef %tag, i32 noundef %nr_pages, %struct.page** nocapture noundef writeonly %pages) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %3 = load i64, i64* %index, align 8
  store i64 %3, i64* %xa_index, align 8
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
  %tobool.not = icmp eq i32 %nr_pages, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %4 = zext i32 %nr_pages to i64
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end7, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end7 ], [ 0, %if.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call = call fastcc %struct.page* @find_get_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %end, i32 noundef %tag) #14
  %tobool4.not = icmp eq %struct.page* %call, null
  br i1 %tobool4.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = bitcast %struct.page* %call to i8*
  %call5 = call fastcc i1 @xa_is_value(i8* noundef nonnull %5) #14
  br i1 %call5, label %while.cond, label %if.end7

if.end7:                                          ; preds = %while.body
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %indvars.iv
  store %struct.page* %call, %struct.page** %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, %4
  br i1 %cmp, label %if.then9, label %while.cond.outer

if.then9:                                         ; preds = %if.end7
  %index10 = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 2
  %6 = load i64, i64* %index10, align 8
  %add = add i64 %6, 1
  br label %out

while.end:                                        ; preds = %while.cond
  %7 = trunc i64 %indvars.iv to i32
  %cmp14 = icmp eq i64 %end, -1
  %add17 = add nuw i64 %end, 1
  %spec.select = select i1 %cmp14, i64 -1, i64 %add17
  br label %out

out:                                              ; preds = %while.end, %if.then9
  %.sink = phi i64 [ %add, %if.then9 ], [ %spec.select, %while.end ]
  %ret.1 = phi i32 [ %nr_pages, %if.then9 ], [ %7, %while.end ]
  store i64 %.sink, i64* %index, align 8
  call fastcc void @rcu_read_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @filemap_read(%struct.kiocb* nocapture noundef %iocb, %struct.iov_iter* noundef %iter, i64 noundef %already_read) local_unnamed_addr #0 {
entry:
  %pvec = alloca %struct.pagevec, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %3 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !annotation !12
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %4 = load i64, i64* %ki_pos, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 6
  %5 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i64 0, i32 4
  %6 = load i64, i64* %s_maxbytes, align 32
  %cmp.not = icmp slt i64 %4, %6
  br i1 %cmp.not, label %if.end, label %cleanup130, !prof !10

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #14
  %tobool2.not = icmp eq i64 %call, 0
  br i1 %tobool2.not, label %cleanup130, label %if.end13, !prof !8

if.end13:                                         ; preds = %if.end
  call fastcc void @iov_iter_truncate(%struct.iov_iter* noundef %iter, i64 noundef %6) #14
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #14
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 3
  %prev_pos = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 13, i32 5
  %arrayidx = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 0
  br label %do.body

do.body:                                          ; preds = %land.lhs.true117, %if.end13
  %already_read.addr.0 = phi i64 [ %already_read, %if.end13 ], [ %already_read.addr.3, %land.lhs.true117 ]
  call fastcc void @_cond_resched() #14
  %7 = load i32, i32* %ki_flags, align 8
  %and = and i32 %7, 524288
  %tobool17 = icmp ne i32 %and, 0
  %tobool18 = icmp ne i64 %already_read.addr.0, 0
  %or.cond = select i1 %tobool17, i1 %tobool18, i1 false
  br i1 %or.cond, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body
  %or = or i32 %7, 8
  store i32 %or, i32* %ki_flags, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body
  %call22 = call fastcc i32 @filemap_get_pages(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter, %struct.pagevec* noundef nonnull %pvec) #14
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = call fastcc i64 @i_size_read(%struct.inode* noundef %2) #14
  %8 = load i64, i64* %ki_pos, align 8
  %cmp29.not = icmp slt i64 %8, %call27
  br i1 %cmp29.not, label %if.end39, label %put_pages, !prof !10

if.end39:                                         ; preds = %if.end26
  %9 = load i64, i64* %count, align 8
  %add = add i64 %9, %8
  %cmp42 = icmp slt i64 %call27, %add
  %cond = select i1 %cmp42, i64 %call27, i64 %add
  %call44 = call fastcc i32 @mapping_writably_mapped(%struct.address_space* noundef %1) #14
  %tobool45.not = icmp eq i32 %call44, 0
  %10 = load i64, i64* %ki_pos, align 8
  %11 = load i64, i64* %prev_pos, align 8
  %cmp48.not.unshifted = xor i64 %11, %10
  %cmp48.not = icmp ult i64 %cmp48.not.unshifted, 4096
  br i1 %cmp48.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end39
  %12 = load %struct.page*, %struct.page** %arrayidx, align 8
  call void @mark_page_accessed(%struct.page* noundef %12) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end39
  %call52217 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #14
  %cmp53218.not = icmp eq i32 %call52217, 0
  br i1 %cmp53218.not, label %put_pages, label %for.body

for.cond:                                         ; preds = %if.end86
  %call52 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #14
  %cmp53 = icmp ult i32 %inc102, %call52
  br i1 %cmp53, label %for.body, label %put_pages

for.body:                                         ; preds = %if.end51, %for.cond
  %already_read.addr.1220 = phi i64 [ %add88, %for.cond ], [ %already_read.addr.0, %if.end51 ]
  %i.0219 = phi i32 [ %inc102, %for.cond ], [ 0, %if.end51 ]
  %idxprom = sext i32 %i.0219 to i64
  %arrayidx56 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %13 = load %struct.page*, %struct.page** %arrayidx56, align 8
  %14 = load i64, i64* %ki_pos, align 8
  %and59 = and i64 %14, 4095
  %sub61 = sub i64 %cond, %14
  %sub62 = sub nuw nsw i64 4096, %and59
  %cmp64 = icmp slt i64 %sub61, %sub62
  %cond69 = select i1 %cmp64, i64 %sub61, i64 %sub62
  %call70 = call fastcc i64 @page_offset(%struct.page* noundef %13) #14
  %cmp71 = icmp slt i64 %cond, %call70
  br i1 %cmp71, label %put_pages, label %if.end74

if.end74:                                         ; preds = %for.body
  %cmp75 = icmp sgt i32 %i.0219, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end74
  call void @mark_page_accessed(%struct.page* noundef %13) #15
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end74
  br i1 %tobool45.not, label %if.end86, label %for.cond81

for.cond81:                                       ; preds = %if.end78
  call void @flush_dcache_page(%struct.page* noundef %13) #15
  br label %if.end86

if.end86:                                         ; preds = %for.cond81, %if.end78
  %call87 = call i64 @copy_page_to_iter(%struct.page* noundef %13, i64 noundef %and59, i64 noundef %cond69, %struct.iov_iter* noundef %iter) #15
  %add88 = add i64 %call87, %already_read.addr.1220
  %15 = load i64, i64* %ki_pos, align 8
  %add90 = add i64 %15, %call87
  store i64 %add90, i64* %ki_pos, align 8
  store i64 %add90, i64* %prev_pos, align 8
  %cmp93 = icmp ult i64 %call87, %cond69
  %inc102 = add nuw i32 %i.0219, 1
  br i1 %cmp93, label %put_pages, label %for.cond

put_pages:                                        ; preds = %for.cond, %for.body, %if.end86, %if.end51, %if.end26
  %error.2 = phi i32 [ %call22, %if.end26 ], [ %call22, %if.end51 ], [ %call22, %for.cond ], [ %call22, %for.body ], [ -14, %if.end86 ]
  %already_read.addr.3 = phi i64 [ %already_read.addr.0, %if.end26 ], [ %already_read.addr.0, %if.end51 ], [ %add88, %for.cond ], [ %already_read.addr.1220, %for.body ], [ %add88, %if.end86 ]
  %call105226 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #14
  %cmp106227.not = icmp eq i32 %call105226, 0
  br i1 %cmp106227.not, label %for.end114, label %for.body108

for.body108:                                      ; preds = %put_pages, %for.body108
  %i.1228 = phi i32 [ %inc113, %for.body108 ], [ 0, %put_pages ]
  %idxprom110 = sext i32 %i.1228 to i64
  %arrayidx111 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom110
  %16 = load %struct.page*, %struct.page** %arrayidx111, align 8
  call fastcc void @put_page(%struct.page* noundef %16) #14
  %inc113 = add nuw i32 %i.1228, 1
  %call105 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec) #14
  %cmp106 = icmp ult i32 %inc113, %call105
  br i1 %cmp106, label %for.body108, label %for.end114

for.end114:                                       ; preds = %for.body108, %put_pages
  call fastcc void @pagevec_reinit(%struct.pagevec* noundef nonnull %pvec) #14
  %call115 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #14
  %tobool116.not = icmp eq i64 %call115, 0
  br i1 %tobool116.not, label %do.end, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %for.end114
  %17 = load i64, i64* %ki_pos, align 8
  %cmp119 = icmp slt i64 %17, %call27
  %tobool121.not = icmp eq i32 %error.2, 0
  %or.cond212 = select i1 %cmp119, i1 %tobool121.not, i1 false
  br i1 %or.cond212, label %do.body, label %do.end

do.end:                                           ; preds = %for.end114, %land.lhs.true117, %if.end21
  %error.3 = phi i32 [ %call22, %if.end21 ], [ %error.2, %land.lhs.true117 ], [ %error.2, %for.end114 ]
  %already_read.addr.4 = phi i64 [ %already_read.addr.0, %if.end21 ], [ %already_read.addr.3, %land.lhs.true117 ], [ %already_read.addr.3, %for.end114 ]
  call fastcc void @file_accessed(%struct.file* noundef %0) #14
  %tobool124.not = icmp eq i64 %already_read.addr.4, 0
  %conv127 = sext i32 %error.3 to i64
  %cond129 = select i1 %tobool124.not, i64 %conv127, i64 %already_read.addr.4
  br label %cleanup130

cleanup130:                                       ; preds = %if.end, %entry, %do.end
  %retval.0 = phi i64 [ %cond129, %do.end ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #18
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #3 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @iov_iter_truncate(%struct.iov_iter* nocapture noundef %i, i64 noundef %count) unnamed_addr #10 {
entry:
  %count1 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count1, align 8
  %cmp = icmp ugt i64 %0, %count
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %count, i64* %count1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pagevec_init(%struct.pagevec* nocapture noundef writeonly %pvec) unnamed_addr #5 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 0, i8* %nr, align 8
  %percpu_pvec_drained = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 1
  store i8 0, i8* %percpu_pvec_drained, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_get_pages(%struct.kiocb* nocapture noundef %iocb, %struct.iov_iter* nocapture noundef readonly %iter, %struct.pagevec* nocapture noundef %pvec) unnamed_addr #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %f_ra = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 13
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %2 = load i64, i64* %ki_pos, align 8
  %shr = ashr i64 %2, 12
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 3
  %3 = load i64, i64* %count, align 8
  %add = add i64 %2, 4095
  %sub = add i64 %add, %3
  %div = lshr i64 %sub, 12
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call3121 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %5) #14
  %tobool.not122 = icmp eq i32 %call3121, 0
  br i1 %tobool.not122, label %if.end.lr.ph, label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %sub10 = sub nsw i64 %div, %shr
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %retry.backedge
  call fastcc void @filemap_get_read_batch(%struct.address_space* noundef %1, i64 noundef %shr, i64 noundef %div, %struct.pagevec* noundef %pvec) #14
  %call4 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  %6 = load i32, i32* %ki_flags, align 8
  %and = and i32 %6, 1048576
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.then6
  call fastcc void @page_cache_sync_readahead(%struct.address_space* noundef %1, %struct.file_ra_state* noundef %f_ra, %struct.file* noundef %0, i64 noundef %shr, i64 noundef %sub10) #14
  call fastcc void @filemap_get_read_batch(%struct.address_space* noundef %1, i64 noundef %shr, i64 noundef %div, %struct.pagevec* noundef %pvec) #14
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end
  %call12 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end25

if.then14:                                        ; preds = %if.end11
  %7 = load i32, i32* %ki_flags, align 8
  %and16 = and i32 %7, 524296
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.then14
  %8 = load i64, i64* %ki_pos, align 8
  %shr21 = ashr i64 %8, 12
  %call22 = call fastcc i32 @filemap_create_page(%struct.file* noundef %0, %struct.address_space* noundef %1, i64 noundef %shr21, %struct.pagevec* noundef %pvec) #14
  %cmp = icmp eq i32 %call22, 524289
  br i1 %cmp, label %retry.backedge, label %cleanup

retry.backedge:                                   ; preds = %if.end19, %if.end60
  %call3 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %5) #14
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end25:                                         ; preds = %if.end11
  %sub27 = add i32 %call12, -1
  %idxprom = zext i32 %sub27 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  %9 = load %struct.page*, %struct.page** %arrayidx, align 8
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 0
  %10 = load volatile i64, i64* %flags.i, align 8
  %11 = and i64 %10, 262144
  %tobool29.not = icmp eq i64 %11, 0
  br i1 %tobool29.not, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end25
  %call31 = call fastcc i32 @filemap_readahead(%struct.kiocb* noundef %iocb, %struct.file* noundef %0, %struct.address_space* noundef %1, %struct.page* noundef %9, i64 noundef %div) #14
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %err52

if.end35:                                         ; preds = %if.then30, %if.end25
  %call36 = call fastcc i32 @PageUptodate(%struct.page* noundef %9) #14
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %cleanup

if.then38:                                        ; preds = %if.end35
  %12 = load i32, i32* %ki_flags, align 8
  %and40 = and i32 %12, 524288
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then38
  %call42 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %cmp43 = icmp ugt i32 %call42, 1
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  %or = or i32 %12, 8
  store i32 %or, i32* %ki_flags, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true, %if.then38
  %call47 = call fastcc i32 @filemap_update_page(%struct.kiocb* noundef %iocb, %struct.address_space* noundef %1, %struct.iov_iter* noundef %iter, %struct.page* noundef %9) #14
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup, label %err52

err52:                                            ; preds = %if.end46, %if.then30
  %err.0 = phi i32 [ %call31, %if.then30 ], [ %call47, %if.end46 ]
  %cmp53 = icmp slt i32 %err.0, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %err52
  call fastcc void @put_page(%struct.page* noundef %9) #14
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %err52
  %13 = load i8, i8* %nr, align 8
  %dec = add i8 %13, -1
  store i8 %dec, i8* %nr, align 8
  %tobool56.not = icmp eq i8 %dec, 0
  br i1 %tobool56.not, label %if.end60, label %cleanup, !prof !8

if.end60:                                         ; preds = %if.end55
  %cmp61 = icmp eq i32 %err.0, 524289
  br i1 %cmp61, label %retry.backedge, label %cleanup

cleanup:                                          ; preds = %retry.backedge, %if.then6, %if.then14, %if.end19, %if.end46, %if.end35, %if.end55, %if.end60, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ %err.0, %if.end60 ], [ 0, %if.end55 ], [ 0, %if.end35 ], [ 0, %if.end46 ], [ %call22, %if.end19 ], [ -11, %if.then14 ], [ -11, %if.then6 ], [ -4, %retry.backedge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @mapping_writably_mapped(%struct.address_space* noundef %mapping) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 4, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_offset(%struct.page* nocapture noundef readonly %page) unnamed_addr #3 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  %shl = shl i64 %0, 12
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_page_to_iter(%struct.page* noundef, i64 noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pagevec_reinit(%struct.pagevec* nocapture noundef writeonly %pvec) unnamed_addr #5 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 0, i8* %nr, align 8
  ret void
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
  call void @touch_atime(%struct.path* noundef %f_path) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_file_read_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup53, label %if.end

if.end:                                           ; preds = %entry
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %0 = load i32, i32* %ki_flags, align 8
  %and = and i32 %0, 131072
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end51, label %if.then3

if.then3:                                         ; preds = %if.end
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 0
  %3 = load %struct.inode*, %struct.inode** %host, align 8
  %call4 = call fastcc i64 @i_size_read(%struct.inode* noundef %3) #14
  %and6 = and i32 %0, 8
  %tobool7.not = icmp eq i32 %and6, 0
  %ki_pos13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %4 = load i64, i64* %ki_pos13, align 8
  %add15 = add i64 %call, -1
  %sub16 = add i64 %add15, %4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then3
  %call10 = call i1 @filemap_range_needs_writeback(%struct.address_space* noundef %2, i64 noundef %4, i64 noundef %sub16) #14
  br i1 %call10, label %cleanup53, label %if.end21

if.else:                                          ; preds = %if.then3
  %call17 = call i32 @filemap_write_and_wait_range(%struct.address_space* noundef %2, i64 noundef %4, i64 noundef %sub16) #14
  %conv = sext i32 %call17 to i64
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %cleanup53, label %if.end21

if.end21:                                         ; preds = %if.else, %if.then8
  call fastcc void @file_accessed(%struct.file* noundef %1) #14
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 9
  %5 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %direct_IO = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %5, i64 0, i32 12
  %6 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %direct_IO, align 8
  %call22 = call i64 %6(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #15
  %cmp23 = icmp sgt i64 %call22, -1
  br i1 %cmp23, label %if.end29.thread, label %if.end29

if.end29.thread:                                  ; preds = %if.end21
  %ki_pos26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %7 = load i64, i64* %ki_pos26, align 8
  %add27 = add i64 %7, %call22
  store i64 %add27, i64* %ki_pos26, align 8
  %sub28 = sub i64 %call, %call22
  br label %if.end35

if.end29:                                         ; preds = %if.end21
  %cmp30.not = icmp eq i64 %call22, -529
  br i1 %cmp30.not, label %cleanup53, label %if.end35

if.end35:                                         ; preds = %if.end29, %if.end29.thread
  %count.096 = phi i64 [ %sub28, %if.end29.thread ], [ %call, %if.end29 ]
  %call33 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #14
  %sub34 = sub i64 %count.096, %call33
  call void @iov_iter_revert(%struct.iov_iter* noundef %iter, i64 noundef %sub34) #15
  %tobool38 = icmp ne i64 %count.096, 0
  %or.cond = select i1 %cmp23, i1 %tobool38, i1 false
  br i1 %or.cond, label %cleanup, label %cleanup53

cleanup:                                          ; preds = %if.end35
  %ki_pos40 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %8 = load i64, i64* %ki_pos40, align 8
  %cmp41.not = icmp slt i64 %8, %call4
  br i1 %cmp41.not, label %if.end51, label %cleanup53

if.end51:                                         ; preds = %cleanup, %if.end
  %retval1.1 = phi i64 [ %call22, %cleanup ], [ 0, %if.end ]
  %call52 = call i64 @filemap_read(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter, i64 noundef %retval1.1) #14
  br label %cleanup53

cleanup53:                                        ; preds = %if.end29, %if.end35, %if.else, %if.then8, %entry, %cleanup, %if.end51
  %retval.1 = phi i64 [ %call52, %if.end51 ], [ %call22, %cleanup ], [ 0, %entry ], [ %call22, %if.end35 ], [ %conv, %if.else ], [ -11, %if.then8 ], [ -529, %if.end29 ]
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @mapping_seek_hole_data(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %end, i32 noundef %whence) local_unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  %shr = ashr i64 %start, 12
  store i64 %shr, i64* %xa_index, align 8
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
  %sub = add i64 %end, -1
  %shr1 = ashr i64 %sub, 12
  %cmp = icmp eq i32 %whence, 3
  %cmp2.not = icmp sgt i64 %end, %start
  br i1 %cmp2.not, label %if.end, label %cleanup45

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %call95 = call fastcc %struct.page* @find_get_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %shr1, i32 noundef 8) #14
  %tobool.not96 = icmp eq %struct.page* %call95, null
  br i1 %tobool.not96, label %unlock.thread87, label %while.body

unlock.thread87:                                  ; preds = %cleanup, %if.end
  %start.addr.0.lcssa = phi i64 [ %start, %if.end ], [ %call15, %cleanup ]
  %spec.select89 = select i1 %cmp, i64 -6, i64 %start.addr.0.lcssa
  call fastcc void @rcu_read_unlock() #14
  br label %if.end40

while.body:                                       ; preds = %if.end, %cleanup
  %call98 = phi %struct.page* [ %call, %cleanup ], [ %call95, %if.end ]
  %start.addr.097 = phi i64 [ %call15, %cleanup ], [ %start, %if.end ]
  %3 = load i64, i64* %xa_index, align 8
  %shl = shl i64 %3, 12
  %cmp4 = icmp sge i64 %start.addr.097, %shl
  %brmerge = or i1 %cmp, %cmp4
  br i1 %brmerge, label %if.end9, label %land.lhs.true

if.end9:                                          ; preds = %while.body
  %start.addr.0.mux = select i1 %cmp4, i64 %start.addr.097, i64 %shl
  %add13 = add i64 %shl, 4096
  %call15 = call fastcc i64 @page_seek_hole_data(%struct.xa_state* noundef nonnull %xas, %struct.address_space* noundef %mapping, %struct.page* noundef nonnull %call98, i64 noundef %start.addr.0.mux, i64 noundef %add13, i1 noundef %cmp) #14
  %cmp16 = icmp slt i64 %call15, %add13
  br i1 %cmp16, label %land.lhs.true, label %if.end19

if.end19:                                         ; preds = %if.end9
  %cmp20.not = icmp slt i64 %call15, %end
  br i1 %cmp20.not, label %if.end29, label %unlock

if.end29:                                         ; preds = %if.end19
  %4 = bitcast %struct.page* %call98 to i8*
  %call30 = call fastcc i1 @xa_is_value(i8* noundef nonnull %4) #14
  br i1 %call30, label %cleanup, label %if.then31

if.then31:                                        ; preds = %if.end29
  call fastcc void @put_page(%struct.page* noundef nonnull %call98) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then31
  %call = call fastcc %struct.page* @find_get_entry(%struct.xa_state* noundef nonnull %xas, i64 noundef %shr1, i32 noundef 8) #14
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %unlock.thread87, label %while.body

unlock:                                           ; preds = %if.end19
  %spec.select = select i1 %cmp, i64 -6, i64 %call15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9, %while.body, %unlock
  %start.addr.485 = phi i64 [ %spec.select, %unlock ], [ %start.addr.097, %while.body ], [ %call15, %if.end9 ]
  call fastcc void @rcu_read_unlock() #14
  %5 = bitcast %struct.page* %call98 to i8*
  %call38 = call fastcc i1 @xa_is_value(i8* noundef nonnull %5) #14
  br i1 %call38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %land.lhs.true
  call fastcc void @put_page(%struct.page* noundef nonnull %call98) #14
  br label %if.end40

if.end40:                                         ; preds = %unlock.thread87, %if.then39, %land.lhs.true
  %start.addr.486 = phi i64 [ %start.addr.485, %if.then39 ], [ %start.addr.485, %land.lhs.true ], [ %spec.select89, %unlock.thread87 ]
  %cmp41 = icmp sgt i64 %start.addr.486, %end
  %end.start.addr.4 = select i1 %cmp41, i64 %end, i64 %start.addr.486
  br label %cleanup45

cleanup45:                                        ; preds = %if.end40, %entry
  %retval.0 = phi i64 [ -6, %entry ], [ %end.start.addr.4, %if.end40 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @page_seek_hole_data(%struct.xa_state* noundef %xas, %struct.address_space* noundef readonly %mapping, %struct.page* noundef %page, i64 noundef %start, i64 noundef %end, i1 noundef %seek_data) unnamed_addr #0 {
entry:
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %1 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc i32 @i_blocksize(%struct.inode* noundef %1) #14
  %conv = zext i32 %call to i64
  %2 = bitcast %struct.page* %page to i8*
  %call1 = call fastcc i1 @xa_is_value(i8* noundef %2) #14
  br i1 %call1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cond = select i1 %seek_data, i64 %start, i64 %end
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %is_partially_uptodate = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %0, i64 0, i32 17
  %3 = load i32 (%struct.page*, i64, i64)*, i32 (%struct.page*, i64, i64)** %is_partially_uptodate, align 8
  %tobool6.not = icmp eq i32 (%struct.page*, i64, i64)* %3, null
  br i1 %tobool6.not, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %cond13 = select i1 %seek_data, i64 %end, i64 %start
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @xas_pause(%struct.xa_state* noundef %xas) #15
  call fastcc void @rcu_read_unlock() #14
  call fastcc void @lock_page(%struct.page* noundef %page) #14
  %mapping15 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %4 = load %struct.address_space*, %struct.address_space** %mapping15, align 8
  %cmp.not = icmp eq %struct.address_space* %4, %mapping
  br i1 %cmp.not, label %if.end21, label %unlock, !prof !10

if.end21:                                         ; preds = %if.end14
  %and = and i64 %start, 4095
  %neg = sub nsw i64 0, %conv
  %and24 = and i64 %and, %neg
  %conv28 = zext i1 %seek_data to i32
  br label %do.body

do.body:                                          ; preds = %if.end32, %if.end21
  %start.addr.0 = phi i64 [ %start, %if.end21 ], [ %and35, %if.end32 ]
  %offset.0 = phi i64 [ %and24, %if.end21 ], [ %add36, %if.end32 ]
  %5 = load i32 (%struct.page*, i64, i64)*, i32 (%struct.page*, i64, i64)** %is_partially_uptodate, align 8
  %call26 = call i32 %5(%struct.page* noundef %page, i64 noundef %offset.0, i64 noundef %conv) #15
  %cmp29 = icmp eq i32 %call26, %conv28
  br i1 %cmp29, label %unlock, label %if.end32

if.end32:                                         ; preds = %do.body
  %add = add i64 %start.addr.0, %conv
  %and35 = and i64 %add, %neg
  %add36 = add i64 %offset.0, %conv
  %cmp38 = icmp ult i64 %add36, 4096
  br i1 %cmp38, label %do.body, label %unlock

unlock:                                           ; preds = %if.end32, %do.body, %if.end14
  %start.addr.1 = phi i64 [ %start, %if.end14 ], [ %and35, %if.end32 ], [ %start.addr.0, %do.body ]
  call void @unlock_page(%struct.page* noundef %page) #14
  call fastcc void @__rcu_read_lock() #15
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then7, %if.then
  %retval.0 = phi i64 [ %cond, %if.then ], [ %start.addr.1, %unlock ], [ %cond13, %if.then7 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_fault(%struct.vm_fault* nocapture noundef %vmf) #0 {
entry:
  %fpin = alloca %struct.file*, align 8
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %2 = bitcast %struct.file** %fpin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  store %struct.file* null, %struct.file** %fpin, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 17
  %3 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %3, i64 0, i32 0
  %4 = load %struct.inode*, %struct.inode** %host, align 8
  %pgoff = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 2
  %5 = load i64, i64* %pgoff, align 8
  %call = call fastcc i64 @i_size_read(%struct.inode* noundef %4) #14
  %sub = add i64 %call, 4095
  %div = lshr i64 %sub, 12
  %cmp.not = icmp ult i64 %5, %div
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !10

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.page* @find_get_page(%struct.address_space* noundef %3, i64 noundef %5) #14
  %tobool3.not = icmp eq %struct.page* %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then11, !prof !8

if.then11:                                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %6 = load i32, i32* %flags, align 8
  %and = and i32 %6, 32
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then11
  %call14 = call fastcc %struct.file* @do_async_mmap_readahead(%struct.vm_fault* noundef %vmf, %struct.page* noundef nonnull %call2) #14
  store %struct.file* %call14, %struct.file** %fpin, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then11
  %call16 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call2) #14
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then27, label %if.end41, !prof !8

if.then27:                                        ; preds = %if.end15
  call fastcc void @filemap_invalidate_lock_shared(%struct.address_space* noundef %3) #14
  br label %if.end41

if.else:                                          ; preds = %if.end
  call fastcc void @count_vm_event() #14
  %call30 = call fastcc %struct.file* @do_sync_mmap_readahead(%struct.vm_fault* noundef %vmf) #14
  store %struct.file* %call30, %struct.file** %fpin, align 8
  br label %retry_find

retry_find:                                       ; preds = %if.end101, %if.end101, %if.then72, %if.then57, %if.else
  %ret.0 = phi i32 [ %ret.1, %if.then57 ], [ %ret.1, %if.end101 ], [ %ret.1, %if.then72 ], [ 4, %if.else ], [ %ret.1, %if.end101 ]
  %mapping_locked.1.off0 = phi i1 [ %mapping_locked.3.off0, %if.then57 ], [ true, %if.end101 ], [ false, %if.then72 ], [ false, %if.else ], [ true, %if.end101 ]
  br i1 %mapping_locked.1.off0, label %if.end33, label %if.then32

if.then32:                                        ; preds = %retry_find
  call fastcc void @filemap_invalidate_lock_shared(%struct.address_space* noundef %3) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %retry_find
  %gfp_mask = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 1
  %7 = load i32, i32* %gfp_mask, align 8
  %call34 = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %3, i64 noundef %5, i32 noundef 68, i32 noundef %7) #14
  %tobool35.not = icmp eq %struct.page* %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end33
  %8 = load %struct.file*, %struct.file** %fpin, align 8
  %tobool37.not = icmp eq %struct.file* %8, null
  br i1 %tobool37.not, label %if.end39, label %if.then111

if.end39:                                         ; preds = %if.then36
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %3) #14
  br label %cleanup

if.end41:                                         ; preds = %if.end15, %if.then27, %if.end33
  %page.0 = phi %struct.page* [ %call34, %if.end33 ], [ %call2, %if.then27 ], [ %call2, %if.end15 ]
  %ret.1 = phi i32 [ %ret.0, %if.end33 ], [ 0, %if.then27 ], [ 0, %if.end15 ]
  %mapping_locked.3.off0 = phi i1 [ true, %if.end33 ], [ true, %if.then27 ], [ false, %if.end15 ]
  %call42 = call fastcc i32 @lock_page_maybe_drop_mmap(%struct.vm_fault* noundef %vmf, %struct.page* noundef nonnull %page.0, %struct.file** noundef nonnull %fpin) #14
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end109, label %if.end45

if.end45:                                         ; preds = %if.end41
  %call46 = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %page.0) #14
  %9 = inttoptr i64 %call46 to %struct.page*
  %mapping47 = getelementptr inbounds %struct.page, %struct.page* %9, i64 0, i32 1, i32 0, i32 1
  %10 = load %struct.address_space*, %struct.address_space** %mapping47, align 8
  %cmp48.not = icmp eq %struct.address_space* %10, %3
  br i1 %cmp48.not, label %if.end58, label %if.then57, !prof !10

if.then57:                                        ; preds = %if.end45
  call void @unlock_page(%struct.page* noundef nonnull %page.0) #14
  call fastcc void @put_page(%struct.page* noundef nonnull %page.0) #14
  br label %retry_find

if.end58:                                         ; preds = %if.end45
  %call59 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %page.0) #14
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then70, label %if.end74, !prof !8

if.then70:                                        ; preds = %if.end58
  br i1 %mapping_locked.3.off0, label %page_not_uptodate, label %if.then72

if.then72:                                        ; preds = %if.then70
  call void @unlock_page(%struct.page* noundef nonnull %page.0) #14
  call fastcc void @put_page(%struct.page* noundef nonnull %page.0) #14
  br label %retry_find

if.end74:                                         ; preds = %if.end58
  %11 = load %struct.file*, %struct.file** %fpin, align 8
  %tobool75.not = icmp eq %struct.file* %11, null
  br i1 %tobool75.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end74
  call void @unlock_page(%struct.page* noundef nonnull %page.0) #14
  br label %if.end109

if.end77:                                         ; preds = %if.end74
  br i1 %mapping_locked.3.off0, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end77
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %3) #14
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end77
  %call81 = call fastcc i64 @i_size_read(%struct.inode* noundef %4) #14
  %sub83 = add i64 %call81, 4095
  %div84 = lshr i64 %sub83, 12
  %cmp85.not = icmp ult i64 %5, %div84
  br i1 %cmp85.not, label %if.end95, label %if.then94, !prof !10

if.then94:                                        ; preds = %if.end80
  call void @unlock_page(%struct.page* noundef nonnull %page.0) #14
  call fastcc void @put_page(%struct.page* noundef nonnull %page.0) #14
  br label %cleanup

if.end95:                                         ; preds = %if.end80
  %page96 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  store %struct.page* %page.0, %struct.page** %page96, align 8
  %or = or i32 %ret.1, 512
  br label %cleanup

page_not_uptodate:                                ; preds = %if.then70
  %12 = load %struct.file*, %struct.file** %fpin, align 8
  %call97 = call fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* noundef %vmf, %struct.file* noundef %12) #14
  store %struct.file* %call97, %struct.file** %fpin, align 8
  %call98 = call fastcc i32 @filemap_read_page(%struct.file* noundef %1, %struct.address_space* noundef %3, %struct.page* noundef nonnull %page.0) #14
  %tobool99.not = icmp eq %struct.file* %call97, null
  call fastcc void @put_page(%struct.page* noundef nonnull %page.0) #14
  br i1 %tobool99.not, label %if.end101, label %if.then111

if.end101:                                        ; preds = %page_not_uptodate
  switch i32 %call98, label %if.end106 [
    i32 524289, label %retry_find
    i32 0, label %retry_find
  ]

if.end106:                                        ; preds = %if.end101
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %3) #14
  br label %cleanup

if.end109:                                        ; preds = %if.end41, %if.then76
  call fastcc void @put_page(%struct.page* noundef nonnull %page.0) #14
  br i1 %mapping_locked.3.off0, label %if.then111, label %if.end112

if.then111:                                       ; preds = %page_not_uptodate, %if.then36, %if.end109
  %ret.2199205 = phi i32 [ %ret.1, %if.end109 ], [ %ret.0, %if.then36 ], [ %ret.1, %page_not_uptodate ]
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %3) #14
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end109
  %ret.2199204 = phi i32 [ %ret.2199205, %if.then111 ], [ %ret.1, %if.end109 ]
  %13 = load %struct.file*, %struct.file** %fpin, align 8
  %tobool113.not = icmp eq %struct.file* %13, null
  br i1 %tobool113.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.end112
  call void @fput(%struct.file* noundef nonnull %13) #15
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end112
  %or116 = or i32 %ret.2199204, 1024
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end115, %if.end106, %if.end95, %if.then94, %if.end39
  %retval.0 = phi i32 [ %or116, %if.end115 ], [ 1, %if.end39 ], [ 2, %if.end106 ], [ 2, %if.then94 ], [ %or, %if.end95 ], [ 2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @find_get_page(%struct.address_space* noundef %mapping, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %mapping, i64 noundef %offset, i32 noundef 0, i32 noundef 0) #14
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @do_async_mmap_readahead(%struct.vm_fault* nocapture noundef readonly %vmf, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %f_ra = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %pgoff = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 2
  %3 = load i64, i64* %pgoff, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %4 = load i64, i64* %vm_flags, align 8
  %and = and i64 %4, 65536
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ra_pages = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13, i32 3
  %5 = load i32, i32* %ra_pages, align 8
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %cleanup, label %do.end

do.end:                                           ; preds = %lor.lhs.false
  %mmap_miss3 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13, i32 4
  %6 = load volatile i32, i32* %mmap_miss3, align 4
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end16, label %do.body10

do.body10:                                        ; preds = %do.end
  %dec = add i32 %6, -1
  store volatile i32 %dec, i32* %mmap_miss3, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.body10, %do.end
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %7 = load volatile i64, i64* %flags.i, align 8
  %8 = and i64 %7, 262144
  %tobool17.not = icmp eq i64 %8, 0
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = call fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* noundef %vmf, %struct.file* noundef null) #14
  %9 = load i32, i32* %ra_pages, align 8
  %conv = zext i32 %9 to i64
  call fastcc void @page_cache_async_readahead(%struct.address_space* noundef %2, %struct.file_ra_state* noundef %f_ra, %struct.file* noundef %1, %struct.page* noundef %page, i64 noundef %3, i64 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then18, %entry, %lor.lhs.false
  %retval.0 = phi %struct.file* [ null, %lor.lhs.false ], [ null, %entry ], [ %call19, %if.then18 ], [ null, %if.end16 ]
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @filemap_invalidate_lock_shared(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 2
  call void @down_read(%struct.rw_semaphore* noundef %invalidate_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_event() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (i64* getelementptr inbounds (%struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 21) to i64)
  %0 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %0) #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @do_sync_mmap_readahead(%struct.vm_fault* nocapture noundef readonly %vmf) unnamed_addr #0 {
entry:
  %ractl = alloca %struct.readahead_control, align 8
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %f_ra = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %3 = bitcast %struct.readahead_control* %ractl to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #18
  %file1 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 0
  store %struct.file* %1, %struct.file** %file1, align 8
  %mapping2 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  store %struct.address_space* %2, %struct.address_space** %mapping2, align 8
  %ra3 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  store %struct.file_ra_state* %f_ra, %struct.file_ra_state** %ra3, align 8
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 3
  %pgoff = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 2
  %4 = load i64, i64* %pgoff, align 8
  store i64 %4, i64* %_index, align 8
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 4
  store i32 0, i32* %_nr_pages, align 8
  %_batch_count = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 5
  store i32 0, i32* %_batch_count, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %5 = load i64, i64* %vm_flags, align 8
  %and = and i64 %5, 65536
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ra_pages = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13, i32 3
  %6 = load i32, i32* %ra_pages, align 8
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %and10 = and i64 %5, 32768
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %do.end, label %if.then12

if.then12:                                        ; preds = %if.end7
  %call = call fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* noundef %vmf, %struct.file* noundef null) #14
  %7 = load i32, i32* %ra_pages, align 8
  %conv = zext i32 %7 to i64
  call void @page_cache_sync_ra(%struct.readahead_control* noundef nonnull %ractl, i64 noundef %conv) #15
  br label %cleanup

do.end:                                           ; preds = %if.end7
  %mmap_miss15 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13, i32 4
  %8 = load volatile i32, i32* %mmap_miss15, align 4
  %cmp = icmp ult i32 %8, 1000
  br i1 %cmp, label %if.end28, label %cleanup

if.end28:                                         ; preds = %do.end
  %inc = add nuw nsw i32 %8, 1
  store volatile i32 %inc, i32* %mmap_miss15, align 4
  %cmp29 = icmp ugt i32 %8, 99
  br i1 %cmp29, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end28
  %call33 = call fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* noundef %vmf, %struct.file* noundef null) #14
  %9 = load i64, i64* %pgoff, align 8
  %10 = load i32, i32* %ra_pages, align 8
  %div = lshr i32 %10, 1
  %conv36 = zext i32 %div to i64
  %sub = sub i64 %9, %conv36
  %11 = icmp sgt i64 %sub, 0
  %cond = select i1 %11, i64 %sub, i64 0
  %start = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %f_ra, i64 0, i32 0
  store i64 %cond, i64* %start, align 8
  %size = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13, i32 1
  store i32 %10, i32* %size, align 8
  %div42 = lshr i32 %10, 2
  %async_size = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13, i32 2
  store i32 %div42, i32* %async_size, align 4
  store i64 %cond, i64* %_index, align 8
  %conv46 = zext i32 %10 to i64
  %conv48 = zext i32 %div42 to i64
  call void @do_page_cache_ra(%struct.readahead_control* noundef nonnull %ractl, i64 noundef %conv46, i64 noundef %conv48) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end28, %if.end, %entry, %if.end32, %if.then12
  %retval.0 = phi %struct.file* [ %call, %if.then12 ], [ %call33, %if.end32 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end28 ], [ null, %do.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #18
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 2
  call void @up_read(%struct.rw_semaphore* noundef %invalidate_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @lock_page_maybe_drop_mmap(%struct.vm_fault* nocapture noundef readonly %vmf, %struct.page* noundef %page, %struct.file** nocapture noundef %fpin) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %1 = load %struct.file*, %struct.file** %fpin, align 8
  %call4 = call fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* noundef %vmf, %struct.file* noundef %1) #14
  store %struct.file* %call4, %struct.file** %fpin, align 8
  %2 = load i32, i32* %flags, align 8
  %and6 = and i32 %2, 16
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end3
  %call9 = call i32 @__lock_page_killable(%struct.page* noundef %page) #14
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %return, label %if.then11

if.then11:                                        ; preds = %if.then8
  %3 = load %struct.file*, %struct.file** %fpin, align 8
  %cmp = icmp eq %struct.file* %3, null
  br i1 %cmp, label %if.then12, label %return

if.then12:                                        ; preds = %if.then11
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i64 0, i32 6
  %5 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %5) #14
  br label %return

if.else:                                          ; preds = %if.end3
  call void @__lock_page(%struct.page* noundef %page) #14
  br label %return

return:                                           ; preds = %if.else, %if.then8, %if.then11, %if.then12, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 0, %if.then12 ], [ 0, %if.then11 ], [ 1, %if.then8 ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* nocapture noundef readonly %vmf, %struct.file* noundef readnone %fpin) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %0 = load i32, i32* %flags1, align 8
  %tobool.not = icmp eq %struct.file* %fpin, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @fault_flag_allow_retry_first(i32 noundef %0) #14
  %and = and i32 %0, 8
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = select i1 %call, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 14
  %2 = load %struct.file*, %struct.file** %vm_file, align 8
  %call4 = call fastcc %struct.file* @get_file(%struct.file* noundef %2) #14
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i64 0, i32 6
  %4 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi %struct.file* [ %fpin, %entry ], [ %2, %if.then3 ], [ null, %if.end ]
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_read_page(%struct.file* noundef %file, %struct.address_space* nocapture noundef readonly %mapping, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 8, i64* noundef %flags.i) #15
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %readpage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 1
  %2 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %readpage, align 8
  %call = call i32 %2(%struct.file* noundef %file, %struct.page* noundef %page) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @wait_on_page_locked_killable(%struct.page* noundef %page) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %f_ra = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 13
  call fastcc void @shrink_readahead_size_eio(%struct.file_ra_state* noundef %f_ra) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ -5, %if.end8 ], [ %call, %entry ], [ %call1, %if.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_map_pages(%struct.vm_fault* noundef %vmf, i64 noundef %start_pgoff, i64 noundef %end_pgoff) #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %3 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #18
  %4 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %5 = bitcast i8* %4 to i64*, !annotation !12
  store i64 0, i64* %5, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %start_pgoff, i64* %xa_index, align 8
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
  %mmap_miss2 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 13, i32 4
  %6 = load volatile i32, i32* %mmap_miss2, align 4
  call fastcc void @__rcu_read_lock() #15
  %call = call fastcc %struct.page* @first_map_page(%struct.address_space* noundef %2, %struct.xa_state* noundef nonnull %xas, i64 noundef %end_pgoff) #14
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @filemap_map_pmd(%struct.vm_fault* noundef %vmf) #14
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 0
  %7 = load i64, i64* %vm_start, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 13
  %8 = load i64, i64* %vm_pgoff, align 8
  %sub = sub i64 %start_pgoff, %8
  %shl = shl i64 %sub, 12
  %add = add i64 %shl, %7
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %9 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %call6 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %9) #14
  %call8 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %9, i64 noundef %add) #14
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call6, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call6, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  br label %do.body10

do.body10:                                        ; preds = %do.cond36.do.body10_crit_edge, %if.end
  %10 = phi %struct.pte_t* [ %call8, %if.end ], [ %.pre, %do.cond36.do.body10_crit_edge ]
  %addr.0 = phi i64 [ %add, %if.end ], [ %add22, %do.cond36.do.body10_crit_edge ]
  %head.0 = phi %struct.page* [ %call, %if.end ], [ %call37, %do.cond36.do.body10_crit_edge ]
  %mmap_miss.0 = phi i32 [ %6, %if.end ], [ %mmap_miss.1, %do.cond36.do.body10_crit_edge ]
  %last_pgoff.0 = phi i64 [ %start_pgoff, %if.end ], [ %11, %do.cond36.do.body10_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.end ], [ %ret.2, %do.cond36.do.body10_crit_edge ]
  %cmp.not = icmp eq i32 %mmap_miss.0, 0
  %dec = add i32 %mmap_miss.0, -1
  %mmap_miss.1 = select i1 %cmp.not, i32 0, i32 %dec
  %11 = load i64, i64* %xa_index, align 8
  %sub20 = sub i64 %11, %last_pgoff.0
  %shl21 = shl i64 %sub20, 12
  %add22 = add i64 %shl21, %addr.0
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %10, i64 %sub20
  store %struct.pte_t* %add.ptr, %struct.pte_t** %pte, align 8
  %pte28 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %add.ptr, i64 0, i32 0
  %12 = load i64, i64* %pte28, align 8
  %tobool29.not = icmp eq i64 %12, 0
  br i1 %tobool29.not, label %if.end31, label %unlock

if.end31:                                         ; preds = %do.body10
  %13 = load i64, i64* %address, align 8
  %cmp32 = icmp eq i64 %13, %add22
  %spec.select = select i1 %cmp32, i32 256, i32 %ret.0
  call void @do_set_pte(%struct.vm_fault* noundef %vmf, %struct.page* noundef nonnull %head.0, i64 noundef %add22) #15
  call void @unlock_page(%struct.page* noundef nonnull %head.0) #14
  br label %do.cond36

unlock:                                           ; preds = %do.body10
  call void @unlock_page(%struct.page* noundef nonnull %head.0) #14
  call fastcc void @put_page(%struct.page* noundef nonnull %head.0) #14
  br label %do.cond36

do.cond36:                                        ; preds = %unlock, %if.end31
  %ret.2 = phi i32 [ %ret.0, %unlock ], [ %spec.select, %if.end31 ]
  %call37 = call fastcc %struct.page* @next_map_page(%struct.address_space* noundef %2, %struct.xa_state* noundef nonnull %xas, i64 noundef %end_pgoff) #14
  %cmp38.not = icmp eq %struct.page* %call37, null
  br i1 %cmp38.not, label %do.body40, label %do.cond36.do.body10_crit_edge

do.cond36.do.body10_crit_edge:                    ; preds = %do.cond36
  %.pre = load %struct.pte_t*, %struct.pte_t** %pte, align 8
  br label %do.body10

do.body40:                                        ; preds = %do.cond36
  %14 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i104 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i104) #15
  br label %out

out:                                              ; preds = %entry, %do.body40
  %mmap_miss.4 = phi i32 [ %mmap_miss.1, %do.body40 ], [ %6, %entry ]
  %ret.3 = phi i32 [ %ret.2, %do.body40 ], [ 0, %entry ]
  call fastcc void @rcu_read_unlock() #14
  store volatile i32 %mmap_miss.4, i32* %mmap_miss2, align 4
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #18
  ret i32 %ret.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @first_map_page(%struct.address_space* noundef %mapping, %struct.xa_state* noundef %xas, i64 noundef %end_pgoff) unnamed_addr #0 {
entry:
  %call = call i8* @xas_find(%struct.xa_state* noundef %xas, i64 noundef %end_pgoff) #15
  %0 = bitcast i8* %call to %struct.page*
  %call1 = call fastcc %struct.page* @next_uptodate_page(%struct.page* noundef %0, %struct.address_space* noundef %mapping, %struct.xa_state* noundef %xas, i64 noundef %end_pgoff) #14
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @filemap_map_pmd(%struct.vm_fault* nocapture noundef %vmf) unnamed_addr #0 {
entry:
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %2 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %pmd2 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %2, i64 0, i32 0
  %3 = load i64, i64* %pmd2, align 8
  %tobool3.not = icmp eq i64 %3, 0
  br i1 %tobool3.not, label %if.then15, label %if.end29

if.then15:                                        ; preds = %entry
  %call17 = call fastcc %struct.spinlock* @pmd_lock(%struct.pmd_t* noundef %2) #14
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call17, %struct.spinlock** %ptl, align 8
  %4 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %pmd19 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %4, i64 0, i32 0
  %5 = load i64, i64* %pmd19, align 8
  %tobool20.not = icmp eq i64 %5, 0
  br i1 %tobool20.not, label %if.then24, label %if.end27, !prof !10

if.then24:                                        ; preds = %if.then15
  call fastcc void @mm_inc_nr_ptes(%struct.mm_struct* noundef %1) #14
  %6 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %prealloc_pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 9
  %7 = load %struct.page*, %struct.page** %prealloc_pte, align 8
  call fastcc void @pmd_populate(%struct.pmd_t* noundef %6, %struct.page* noundef %7) #14
  store %struct.page* null, %struct.page** %prealloc_pte, align 8
  %.pre = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then15
  %8 = phi %struct.spinlock* [ %.pre, %if.then24 ], [ %call17, %if.then15 ]
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* nocapture noundef readonly %pmd) unnamed_addr #3 {
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
  %call4 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %add.ptr3) #14
  ret %struct.spinlock* %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #14
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #14
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_set_pte(%struct.vm_fault* noundef, %struct.page* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @next_map_page(%struct.address_space* noundef %mapping, %struct.xa_state* noundef %xas, i64 noundef %end_pgoff) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef %xas, i64 noundef %end_pgoff) #14
  %0 = bitcast i8* %call to %struct.page*
  %call1 = call fastcc %struct.page* @next_uptodate_page(%struct.page* noundef %0, %struct.address_space* noundef %mapping, %struct.xa_state* noundef %xas, i64 noundef %end_pgoff) #14
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filemap_page_mkwrite(%struct.vm_fault* nocapture noundef readonly %vmf) #0 {
entry:
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %page1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %3 = load %struct.page*, %struct.page** %page1, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %2, i64 0, i32 0
  %4 = load %struct.inode*, %struct.inode** %host, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %4, i64 0, i32 6
  %5 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_pagefault(%struct.super_block* noundef %5) #14
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file3 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i64 0, i32 14
  %7 = load %struct.file*, %struct.file** %vm_file3, align 8
  %call = call i32 @file_update_time(%struct.file* noundef %7) #15
  call fastcc void @lock_page(%struct.page* noundef %3) #14
  %mapping4 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 1, i32 0, i32 1
  %8 = load %struct.address_space*, %struct.address_space** %mapping4, align 8
  %cmp.not = icmp eq %struct.address_space* %8, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @unlock_page(%struct.page* noundef %3) #14
  br label %out

if.end:                                           ; preds = %entry
  %call5 = call i32 @set_page_dirty(%struct.page* noundef %3) #15
  call void @wait_for_stable_page(%struct.page* noundef %3) #15
  br label %out

out:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ 256, %if.then ], [ 512, %if.end ]
  %9 = load %struct.inode*, %struct.inode** %host, align 8
  %i_sb7 = getelementptr inbounds %struct.inode, %struct.inode* %9, i64 0, i32 6
  %10 = load %struct.super_block*, %struct.super_block** %i_sb7, align 8
  call fastcc void @sb_end_pagefault(%struct.super_block* noundef %10) #14
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_start_pagefault(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_start_write(%struct.super_block* noundef %sb) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_end_pagefault(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_end_write(%struct.super_block* noundef %sb) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_file_mmap(%struct.file* noundef %file, %struct.vm_area_struct* nocapture noundef writeonly %vma) local_unnamed_addr #0 {
entry:
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %readpage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 1
  %2 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %readpage, align 8
  %tobool.not = icmp eq i32 (%struct.file*, %struct.page*)* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @file_accessed(%struct.file* noundef %file) #14
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  store %struct.vm_operations_struct* @generic_file_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -8, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_file_readonly_mmap(%struct.file* noundef %file, %struct.vm_area_struct* nocapture noundef %vma) local_unnamed_addr #0 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %1 = and i64 %0, 40
  %.not = icmp eq i64 %1, 40
  br i1 %.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @generic_file_mmap(%struct.file* noundef %file, %struct.vm_area_struct* noundef %vma) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @read_cache_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 (i8*, %struct.page*)* noundef %filler, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %mapping) #14
  %call1 = call fastcc %struct.page* @do_read_cache_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 (i8*, %struct.page*)* noundef %filler, i8* noundef %data, i32 noundef %call) #14
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @do_read_cache_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 (i8*, %struct.page*)* noundef readonly %filler, i8* noundef %data, i32 noundef %gfp) unnamed_addr #0 {
entry:
  br label %repeat

repeat:                                           ; preds = %repeat.backedge, %entry
  %call = call fastcc %struct.page* @find_get_page(%struct.address_space* noundef %mapping, i64 noundef %index) #14
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %if.then, label %if.end32

if.then:                                          ; preds = %repeat
  %call1 = call fastcc %struct.page* @__page_cache_alloc(i32 noundef %gfp) #14
  %tobool2.not = icmp eq %struct.page* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -12) #14
  %0 = bitcast i8* %call4 to %struct.page*
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = call i32 @add_to_page_cache_lru(%struct.page* noundef nonnull %call1, %struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %gfp) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %filler16, label %if.then9, !prof !10

if.then9:                                         ; preds = %if.end
  call fastcc void @put_page(%struct.page* noundef nonnull %call1) #14
  %cmp = icmp eq i32 %call5, -17
  br i1 %cmp, label %repeat.backedge, label %if.end12

if.end12:                                         ; preds = %if.then9
  %conv13 = sext i32 %call5 to i64
  %call14 = call fastcc i8* @ERR_PTR(i64 noundef %conv13) #14
  %1 = bitcast i8* %call14 to %struct.page*
  br label %cleanup

filler16:                                         ; preds = %if.end, %if.end48
  %page.0 = phi %struct.page* [ %call, %if.end48 ], [ %call1, %if.end ]
  %tobool17.not = icmp eq i32 (i8*, %struct.page*)* %filler, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %filler16
  %call19 = call i32 %filler(i8* noundef %data, %struct.page* noundef nonnull %page.0) #15
  br label %if.end21

if.else:                                          ; preds = %filler16
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %2 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %readpage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %2, i64 0, i32 1
  %3 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %readpage, align 8
  %4 = bitcast i8* %data to %struct.file*
  %call20 = call i32 %3(%struct.file* noundef %4, %struct.page* noundef nonnull %page.0) #15
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %err.0 = phi i32 [ %call19, %if.then18 ], [ %call20, %if.else ]
  %cmp22 = icmp slt i32 %err.0, 0
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end21
  call fastcc void @put_page(%struct.page* noundef nonnull %page.0) #14
  %conv25 = sext i32 %err.0 to i64
  %call26 = call fastcc i8* @ERR_PTR(i64 noundef %conv25) #14
  %5 = bitcast i8* %call26 to %struct.page*
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call28 = call fastcc %struct.page* @wait_on_page_read(%struct.page* noundef nonnull %page.0) #14
  %6 = bitcast %struct.page* %call28 to i8*
  %call29 = call fastcc i1 @IS_ERR(i8* noundef %6) #14
  br i1 %call29, label %cleanup, label %out

if.end32:                                         ; preds = %repeat
  %call33 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call) #14
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %out

if.end36:                                         ; preds = %if.end32
  call fastcc void @wait_on_page_locked(%struct.page* noundef nonnull %call) #14
  %call37 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call) #14
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %out

if.end40:                                         ; preds = %if.end36
  call fastcc void @lock_page(%struct.page* noundef nonnull %call) #14
  %mapping41 = getelementptr inbounds %struct.page, %struct.page* %call, i64 0, i32 1, i32 0, i32 1
  %7 = load %struct.address_space*, %struct.address_space** %mapping41, align 8
  %tobool42.not = icmp eq %struct.address_space* %7, null
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @unlock_page(%struct.page* noundef nonnull %call) #14
  call fastcc void @put_page(%struct.page* noundef nonnull %call) #14
  br label %repeat.backedge

repeat.backedge:                                  ; preds = %if.then43, %if.then9
  br label %repeat

if.end44:                                         ; preds = %if.end40
  %call45 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call) #14
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  call void @unlock_page(%struct.page* noundef nonnull %call) #14
  br label %out

if.end48:                                         ; preds = %if.end44
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call) #15
  %8 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 8, i64* noundef %flags.i) #15
  br label %filler16

out:                                              ; preds = %if.end36, %if.end32, %if.end27, %if.then47
  %page.1 = phi %struct.page* [ %call, %if.then47 ], [ %call28, %if.end27 ], [ %call, %if.end32 ], [ %call, %if.end36 ]
  call void @mark_page_accessed(%struct.page* noundef %page.1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %out, %if.then24, %if.end12, %if.then3
  %retval.0 = phi %struct.page* [ %page.1, %out ], [ %5, %if.then24 ], [ %1, %if.end12 ], [ %0, %if.then3 ], [ %call28, %if.end27 ]
  ret %struct.page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_mask(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #3 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 3
  %0 = load i32, i32* %gfp_mask, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @read_cache_page_gfp(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.page* @do_read_cache_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 (i8*, %struct.page*)* noundef null, i8* noundef null, i32 noundef %gfp) #14
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pagecache_write_begin(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** noundef %pagep, i8** noundef %fsdata) local_unnamed_addr #0 {
entry:
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %write_begin = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %0, i64 0, i32 6
  %1 = load i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)** %write_begin, align 8
  %call = call i32 %1(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, %struct.page** noundef %pagep, i8** noundef %fsdata) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pagecache_write_end(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* noundef %fsdata) local_unnamed_addr #0 {
entry:
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %write_end = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %0, i64 0, i32 7
  %1 = load i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)** %write_end, align 8
  %call = call i32 %1(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, %struct.page* noundef %page, i8* noundef %fsdata) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dio_warn_stale_pagecache(%struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  %pathname = alloca [128 x i8], align 1
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %pathname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !12
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %wb_err = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 11
  %call = call i32 @errseq_set(i32* noundef %wb_err, i32 noundef -5) #15
  %call1 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @dio_warn_stale_pagecache._rs, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.dio_warn_stale_pagecache, i64 0, i64 0)) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i8* @file_path(%struct.file* noundef %filp, i8* noundef nonnull %0, i32 noundef 128) #15
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call2) #14
  %spec.select = select i1 %call3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %call2
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0)) #17
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 50
  %4 = load i32, i32* %pid, align 32
  %arraydecay12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* noundef %spec.select, i32 noundef %4, i8* noundef %arraydecay12) #17
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @file_path(%struct.file* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_file_direct_write(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) local_unnamed_addr #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %3 = load i64, i64* %ki_pos, align 8
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #14
  %add = add i64 %3, -1
  %sub = add i64 %add, %call
  %shr = lshr i64 %sub, 12
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %4 = load i32, i32* %ki_flags, align 8
  %and = and i32 %4, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i1 @filemap_range_has_page(%struct.address_space* noundef %1, i64 noundef %3, i64 noundef %sub) #14
  br i1 %call4, label %cleanup, label %if.end12

if.else:                                          ; preds = %entry
  %call8 = call i32 @filemap_write_and_wait_range(%struct.address_space* noundef %1, i64 noundef %3, i64 noundef %sub) #14
  %conv = sext i32 %call8 to i64
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %out

if.end12:                                         ; preds = %if.else, %if.then
  %shr13 = ashr i64 %3, 12
  %call14 = call i32 @invalidate_inode_pages2_range(%struct.address_space* noundef %1, i64 noundef %shr13, i64 noundef %shr) #15
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end12
  %conv15 = sext i32 %call14 to i64
  %cmp = icmp eq i32 %call14, -16
  br i1 %cmp, label %cleanup, label %out

if.end21:                                         ; preds = %if.end12
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 9
  %5 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %direct_IO = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %5, i64 0, i32 12
  %6 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %direct_IO, align 8
  %call22 = call i64 %6(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) #15
  %cmp23 = icmp sgt i64 %call22, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %if.end21
  %nrpages = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 7
  %7 = load i64, i64* %nrpages, align 8
  %tobool25.not = icmp eq i64 %7, 0
  br i1 %tobool25.not, label %if.then34, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true
  %call28 = call i32 @invalidate_inode_pages2_range(%struct.address_space* noundef %1, i64 noundef %shr13, i64 noundef %shr) #15
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then34, label %if.then30

if.then30:                                        ; preds = %land.lhs.true26
  call void @dio_warn_stale_pagecache(%struct.file* noundef %0) #14
  br label %if.then34

if.then34:                                        ; preds = %land.lhs.true, %land.lhs.true26, %if.then30
  %add35 = add i64 %call22, %3
  %sub36 = sub i64 %call, %call22
  %call37 = call fastcc i64 @i_size_read(%struct.inode* noundef %2) #14
  %cmp38 = icmp sgt i64 %add35, %call37
  br i1 %cmp38, label %land.lhs.true40, label %if.end48.thread

land.lhs.true40:                                  ; preds = %if.then34
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 0
  %8 = load i16, i16* %i_mode, align 8
  %9 = and i16 %8, -4096
  %cmp43 = icmp eq i16 %9, 24576
  br i1 %cmp43, label %if.end48.thread, label %if.then45

if.then45:                                        ; preds = %land.lhs.true40
  call fastcc void @i_size_write(%struct.inode* noundef %2, i64 noundef %add35) #14
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %2) #14
  br label %if.end48.thread

if.end48.thread:                                  ; preds = %if.then34, %land.lhs.true40, %if.then45
  store i64 %add35, i64* %ki_pos, align 8
  br label %if.then51

if.end48:                                         ; preds = %if.end21
  %cmp49.not = icmp eq i64 %call22, -529
  br i1 %cmp49.not, label %out, label %if.then51

if.then51:                                        ; preds = %if.end48.thread, %if.end48
  %write_len.0110 = phi i64 [ %sub36, %if.end48.thread ], [ %call, %if.end48 ]
  %call52 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #14
  %sub53 = sub i64 %write_len.0110, %call52
  call void @iov_iter_revert(%struct.iov_iter* noundef %from, i64 noundef %sub53) #15
  br label %out

out:                                              ; preds = %if.end48, %if.then51, %if.then17, %if.else
  %written.0 = phi i64 [ %conv15, %if.then17 ], [ %call22, %if.then51 ], [ -529, %if.end48 ], [ %conv, %if.else ]
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then, %out
  %retval.0 = phi i64 [ %written.0, %out ], [ -11, %if.then ], [ 0, %if.then17 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @i_size_write(%struct.inode* nocapture noundef writeonly %inode, i64 noundef %i_size) unnamed_addr #5 {
entry:
  %i_size1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  store i64 %i_size, i64* %i_size1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 7) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 2
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 14, i32 30
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %mapping) #14
  %call1 = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %spec.select, i32 noundef %call) #14
  %tobool2.not = icmp eq %struct.page* %call1, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @wait_for_stable_page(%struct.page* noundef nonnull %call1) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_perform_write(%struct.file* noundef %file, %struct.iov_iter* noundef %i, i64 noundef %pos) local_unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %fsdata = alloca i8*, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 17
  %0 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %a_ops1 = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %1 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops1, align 8
  %2 = bitcast %struct.page** %page to i8*
  %3 = bitcast i8** %fsdata to i8*
  %write_begin = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 6
  %write_end = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %1, i64 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %written.0 = phi i64 [ 0, %entry ], [ %add80, %do.cond ]
  %pos.addr.0 = phi i64 [ %pos, %entry ], [ %add, %do.cond ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  store %struct.page* null, %struct.page** %page, align 8, !annotation !12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #18
  store i8* null, i8** %fsdata, align 8, !annotation !12
  %and = and i64 %pos.addr.0, 4095
  %sub = sub nuw nsw i64 4096, %and
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %i) #14
  %cmp = icmp ult i64 %sub, %call
  %cond = select i1 %cmp, i64 %sub, i64 %call
  %call2160 = call i32 @iov_iter_fault_in_readable(%struct.iov_iter* noundef %i, i64 noundef %cond) #15
  %tobool.not161 = icmp eq i32 %call2160, 0
  br i1 %tobool.not161, label %if.end.lr.ph, label %cleanup.thread, !prof !10

if.end.lr.ph:                                     ; preds = %do.body
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %conv28 = trunc i64 %and to i32
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.then75
  %bytes.0162 = phi i64 [ %cond, %if.end.lr.ph ], [ %spec.select, %if.then75 ]
  %call6 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %5) #14
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup.thread

if.end9:                                          ; preds = %if.end
  %6 = load i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)** %write_begin, align 8
  %conv10 = trunc i64 %bytes.0162 to i32
  %call11 = call i32 %6(%struct.file* noundef %file, %struct.address_space* noundef %0, i64 noundef %pos.addr.0, i32 noundef %conv10, i32 noundef 0, %struct.page** noundef nonnull %page, i8** noundef nonnull %fsdata) #15
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %if.then22, label %if.end23, !prof !8

if.then22:                                        ; preds = %if.end9
  %conv12 = sext i32 %call11 to i64
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end9
  %call24 = call fastcc i32 @mapping_writably_mapped(%struct.address_space* noundef %0) #14
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  %7 = load %struct.page*, %struct.page** %page, align 8
  call void @flush_dcache_page(%struct.page* noundef %7) #15
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %8 = load %struct.page*, %struct.page** %page, align 8
  %call29 = call i64 @copy_page_from_iter_atomic(%struct.page* noundef %8, i32 noundef %conv28, i64 noundef %bytes.0162, %struct.iov_iter* noundef %i) #15
  %9 = load %struct.page*, %struct.page** %page, align 8
  call void @flush_dcache_page(%struct.page* noundef %9) #15
  %10 = load i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)** %write_end, align 8
  %conv31 = trunc i64 %call29 to i32
  %11 = load %struct.page*, %struct.page** %page, align 8
  %12 = load i8*, i8** %fsdata, align 8
  %call32 = call i32 %10(%struct.file* noundef %file, %struct.address_space* noundef %0, i64 noundef %pos.addr.0, i32 noundef %conv10, i32 noundef %conv31, %struct.page* noundef %11, i8* noundef %12) #15
  %conv33 = sext i32 %call32 to i64
  %cmp34.not = icmp eq i64 %call29, %conv33
  br i1 %cmp34.not, label %if.end63, label %if.then43, !prof !10

if.then43:                                        ; preds = %if.end27
  %cmp45 = icmp sgt i64 %conv33, 0
  %cond50 = select i1 %cmp45, i64 %conv33, i64 0
  %sub51 = sub i64 %call29, %cond50
  call void @iov_iter_revert(%struct.iov_iter* noundef %i, i64 noundef %sub51) #15
  %cmp52 = icmp slt i32 %call32, 0
  br i1 %cmp52, label %cleanup.thread, label %if.end63, !prof !8

if.end63:                                         ; preds = %if.then43, %if.end27
  call fastcc void @_cond_resched() #14
  %cmp66 = icmp eq i32 %call32, 0
  br i1 %cmp66, label %if.then75, label %do.cond, !prof !8

if.then75:                                        ; preds = %if.end63
  %tobool76.not = icmp eq i64 %call29, 0
  %spec.select = select i1 %tobool76.not, i64 %bytes.0162, i64 %call29
  %call2 = call i32 @iov_iter_fault_in_readable(%struct.iov_iter* noundef %i, i64 noundef %spec.select) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup.thread, !prof !10

cleanup.thread:                                   ; preds = %do.body, %if.then75, %if.end, %if.then43, %if.then22
  %status.0.ph = phi i64 [ %conv12, %if.then22 ], [ %conv33, %if.then43 ], [ -4, %if.end ], [ -14, %if.then75 ], [ -14, %do.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  br label %do.end

do.cond:                                          ; preds = %if.end63
  %add = add i64 %pos.addr.0, %conv33
  %add80 = add i64 %written.0, %conv33
  call void @balance_dirty_pages_ratelimited(%struct.address_space* noundef %0) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  %call85 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %i) #14
  %tobool86.not = icmp eq i64 %call85, 0
  br i1 %tobool86.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond, %cleanup.thread
  %status.0150 = phi i64 [ %status.0.ph, %cleanup.thread ], [ %conv33, %do.cond ]
  %written.1149 = phi i64 [ %written.0, %cleanup.thread ], [ %add80, %do.cond ]
  %tobool87.not = icmp eq i64 %written.1149, 0
  %cond91 = select i1 %tobool87.not, i64 %status.0150, i64 %written.1149
  ret i64 %cond91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_fault_in_readable(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #14
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_page_from_iter_atomic(%struct.page* noundef, i32 noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(%struct.address_space* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__generic_file_write_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) local_unnamed_addr #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %2) #14
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %backing_dev_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 111
  store %struct.backing_dev_info* %call, %struct.backing_dev_info** %backing_dev_info, align 8
  %call2 = call i32 @file_remove_privs(%struct.file* noundef %0) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %out.thread

if.end:                                           ; preds = %entry
  %call3 = call i32 @file_update_time(%struct.file* noundef %0) #15
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end7, label %out.thread

if.end7:                                          ; preds = %if.end
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %5 = load i32, i32* %ki_flags, align 8
  %and = and i32 %5, 131072
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else39, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = call i64 @generic_file_direct_write(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) #14
  %cmp = icmp slt i64 %call10, 0
  br i1 %cmp, label %out.thread109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %call12 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #14
  %tobool13.not = icmp eq i64 %call12, 0
  br i1 %tobool13.not, label %out, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %6 = load i64, i64* %ki_pos, align 8
  %call19 = call i64 @generic_perform_write(%struct.file* noundef %0, %struct.iov_iter* noundef %from, i64 noundef %6) #14
  %cmp20 = icmp slt i64 %call19, 0
  br i1 %cmp20, label %out, label %if.end26, !prof !8

if.end26:                                         ; preds = %if.end18
  %add = add i64 %call19, %6
  %sub = add i64 %add, -1
  %call27 = call i32 @filemap_write_and_wait_range(%struct.address_space* noundef %1, i64 noundef %6, i64 noundef %sub) #14
  %conv28 = sext i32 %call27 to i64
  %cmp29 = icmp eq i32 %call27, 0
  br i1 %cmp29, label %if.then31, label %out

if.then31:                                        ; preds = %if.end26
  store i64 %add, i64* %ki_pos, align 8
  %add34 = add nuw i64 %call19, %call10
  %shr = ashr i64 %6, 12
  %shr35 = ashr i64 %sub, 12
  %call36 = call i64 @invalidate_mapping_pages(%struct.address_space* noundef %1, i64 noundef %shr, i64 noundef %shr35) #15
  br label %out

if.else39:                                        ; preds = %if.end7
  %ki_pos40 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %7 = load i64, i64* %ki_pos40, align 8
  %call41 = call i64 @generic_perform_write(%struct.file* noundef %0, %struct.iov_iter* noundef %from, i64 noundef %7) #14
  %cmp42 = icmp sgt i64 %call41, 0
  br i1 %cmp42, label %if.then51, label %out, !prof !10

if.then51:                                        ; preds = %if.else39
  %8 = load i64, i64* %ki_pos40, align 8
  %add53 = add i64 %8, %call41
  store i64 %add53, i64* %ki_pos40, align 8
  br label %out.thread109

out.thread:                                       ; preds = %entry, %if.end
  %err.1.ph.in = phi i32 [ %call3, %if.end ], [ %call2, %entry ]
  %err.1.ph = sext i32 %err.1.ph.in to i64
  store %struct.backing_dev_info* null, %struct.backing_dev_info** %backing_dev_info, align 8
  br label %9

out.thread109:                                    ; preds = %if.then51, %if.then9
  %written.2.ph = phi i64 [ %call10, %if.then9 ], [ %call41, %if.then51 ]
  store %struct.backing_dev_info* null, %struct.backing_dev_info** %backing_dev_info, align 8
  br label %10

out:                                              ; preds = %lor.lhs.false, %if.end18, %if.end26, %if.then31, %if.else39
  %written.2 = phi i64 [ %call41, %if.else39 ], [ %call10, %lor.lhs.false ], [ %call10, %if.end18 ], [ %add34, %if.then31 ], [ %call10, %if.end26 ]
  %err.1 = phi i64 [ 0, %if.else39 ], [ 0, %lor.lhs.false ], [ %call19, %if.end18 ], [ 0, %if.then31 ], [ %conv28, %if.end26 ]
  store %struct.backing_dev_info* null, %struct.backing_dev_info** %backing_dev_info, align 8
  %tobool58.not = icmp eq i64 %written.2, 0
  br i1 %tobool58.not, label %9, label %10

9:                                                ; preds = %out.thread, %out
  %err.1107 = phi i64 [ %err.1.ph, %out.thread ], [ %err.1, %out ]
  br label %10

10:                                               ; preds = %out.thread109, %out, %9
  %11 = phi i64 [ %err.1107, %9 ], [ %written.2, %out ], [ %written.2.ph, %out.thread109 ]
  ret i64 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i1 @sb_is_blkdev_sb(%struct.super_block* noundef %0) #14
  br i1 %call, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call %struct.block_device* @I_BDEV(%struct.inode* noundef nonnull %inode) #15
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %call2, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 15
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %s_bdi = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 21
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then1, %if.end3
  %s_bdi.sink = phi %struct.backing_dev_info** [ %s_bdi, %if.end3 ], [ %bdi, %if.then1 ]
  %2 = load %struct.backing_dev_info*, %struct.backing_dev_info** %s_bdi.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi %struct.backing_dev_info* [ @noop_backing_dev_info, %entry ], [ %2, %cleanup.sink.split ]
  ret %struct.backing_dev_info* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @invalidate_mapping_pages(%struct.address_space* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_file_write_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) local_unnamed_addr #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %1, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %2) #14
  %call = call i64 @generic_write_checks(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) #15
  %cmp = icmp sgt i64 %call, 0
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call fastcc void @inode_unlock(%struct.inode* noundef %2) #14
  br label %if.end5

if.end:                                           ; preds = %entry
  %call1 = call i64 @__generic_file_write_iter(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) #14
  call fastcc void @inode_unlock(%struct.inode* noundef %2) #14
  %cmp2 = icmp sgt i64 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i64 @generic_write_sync(%struct.kiocb* noundef %iocb, i64 noundef %call1) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end.thread, %if.then3, %if.end
  %ret.1 = phi i64 [ %call4, %if.then3 ], [ %call1, %if.end ], [ %call, %if.end.thread ]
  ret i64 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_write_checks(%struct.kiocb* noundef, %struct.iov_iter* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #15
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
  %call = call i32 @vfs_fsync_range(%struct.file* noundef %1, i64 noundef %sub, i64 noundef %sub2, i32 noundef %3) #15
  %tobool6.not = icmp eq i32 %call, 0
  %conv = sext i32 %call to i64
  br i1 %tobool6.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end8
  %retval.1 = phi i64 [ %conv, %if.then ], [ %count, %if.end8 ]
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @try_to_release_page(%struct.page* noundef %page, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i34 = and i64 %2, 1
  %tobool.not = icmp eq i64 %conv.i.i34, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !8

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/filemap.c\22; .popsection; .long 14472b - 14470b; .short 3959; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !28
  unreachable

do.end10:                                         ; preds = %entry
  %call.i31 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %3 = inttoptr i64 %call.i31 to %struct.page*
  %flags.i32 = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i32, align 8
  %5 = and i64 %4, 32768
  %tobool12.not = icmp eq i64 %5, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %do.end10
  %tobool15.not = icmp eq %struct.address_space* %0, null
  br i1 %tobool15.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 9
  %6 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %releasepage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %6, i64 0, i32 10
  %7 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %releasepage, align 8
  %tobool16.not = icmp eq i32 (%struct.page*, i32)* %7, null
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  %call20 = call i32 %7(%struct.page* noundef %page, i32 noundef %gfp_mask) #15
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true, %if.end14
  %call22 = call i32 @try_to_free_buffers(%struct.page* noundef %page) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end21, %if.then17
  %retval.0 = phi i32 [ %call20, %if.then17 ], [ %call22, %if.end21 ], [ 0, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @page_mapped(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(%struct.page* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

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
  %compound_head.i.i = bitcast %union.anon* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry, %PageCompound.exit
  %call3 = call i32 @__page_mapcount(%struct.page* noundef %page) #15
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
define internal fastcc i32 @mapping_exiting(%struct.address_space* noundef %mapping) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 4
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_count(%struct.page* noundef %page) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 3, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  ret i32 %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @page_mapcount_reset(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  store volatile i32 -1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_sub(%struct.page* noundef %page, i32 noundef %nr) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_sub(i32 noundef %nr, %struct.atomic_t* noundef %_refcount) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %idx, i32 noundef %val) unnamed_addr #0 {
entry:
  %conv = sext i32 %val to i64
  call void @__mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef %idx, i64 noundef %conv) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @account_page_cleaned(%struct.page* noundef, %struct.address_space* noundef, %struct.bdi_writeback* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bdi_writeback* @inode_to_wb(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.backing_dev_info* @inode_to_bdi(%struct.inode* noundef %inode) #14
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %call, i64 0, i32 11
  ret %struct.bdi_writeback* %wb
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #18, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @xas_set_order(%struct.xa_state* nocapture noundef writeonly %xas, i64 noundef %index, i32 noundef %order) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %order, 0
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !10

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/xarray.h\22; .popsection; .long 14472b - 14470b; .short 1598; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !30
  unreachable

do.end5:                                          ; preds = %entry
  call fastcc void @xas_set(%struct.xa_state* noundef %xas, i64 noundef %index) #14
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
  %3 = bitcast %union.anon* %2 to %struct.anon.74*
  %compound_order = getelementptr inbounds %struct.anon.74, %struct.anon.74* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
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
declare dso_local void @xas_init_marks(%struct.xa_state* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !31
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #18, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #18, !srcloc !33
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_enable() #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #18, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !37
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @xa_marked(%struct.xarray* nocapture noundef readonly %xa, i32 noundef %mark) unnamed_addr #3 {
entry:
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  %0 = load i32, i32* %xa_flags, align 4
  %shl = shl i32 33554432, %mark
  %and = and i32 %0, %shl
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_zero(i8* noundef readnone %entry1) unnamed_addr #6 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 257) #14
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_retry(i8* noundef readnone %entry1) unnamed_addr #6 {
entry:
  %call = call fastcc i8* @xa_mk_internal(i64 noundef 256) #14
  %cmp = icmp eq i8* %call, %entry1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull i8* @xa_mk_internal(i64 noundef %v) unnamed_addr #6 {
entry:
  %shl = shl i64 %v, 2
  %or = or i64 %shl, 2
  %0 = inttoptr i64 %or to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(%struct.pagevec* noundef, %struct.address_space* noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagevec_release(%struct.pagevec* noundef %pvec) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__pagevec_release(%struct.pagevec* noundef %pvec) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(%struct.pagevec* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xas_not_node(%struct.xa_node* noundef %node) unnamed_addr #6 {
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
define internal fastcc i1 @xa_is_internal(i8* noundef %entry1) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %entry1 to i64
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !40
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !44
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @xa_err(i8* noundef %entry1) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @xa_is_err(i8* noundef %entry1) #14
  %0 = ptrtoint i8* %entry1 to i64
  %1 = lshr i64 %0, 2
  %conv = trunc i64 %1 to i32
  %retval.0 = select i1 %call, i32 %conv, i32 0
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @xa_is_err(i8* noundef %entry1) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @xa_is_internal(i8* noundef %entry1) #14
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call2 = call fastcc i8* @xa_mk_internal(i64 noundef -4095) #14
  %cmp = icmp ule i8* %call2, %entry1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @hash_ptr(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %mul.i = mul i64 %0, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 56
  %conv.i = trunc i64 %shr.i to i32
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @wake_page_function(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* nocapture noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.wait_page_key*
  %add.ptr = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 -1, i32 3
  %1 = bitcast %struct.list_head* %add.ptr to %struct.wait_page_queue*
  %call = call fastcc i1 @wake_page_match(%struct.wait_page_queue* noundef %1, %struct.wait_page_key* noundef %0) #14
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 0
  %2 = load i32, i32* %flags1, align 8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body19, label %if.then2

if.then2:                                         ; preds = %if.end
  %bit_nr = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %bit_nr to i32*
  %4 = load i32, i32* %3, align 8
  %page = bitcast i8* %arg to %struct.page**
  %5 = load %struct.page*, %struct.page** %page, align 8
  %flags3 = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %div.i = lshr i32 %4, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %flags3, i64 %idxprom.i
  %6 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %4, 63
  %sh_prom.i = zext i32 %and.i to i64
  %7 = shl nuw i64 1, %sh_prom.i
  %8 = and i64 %7, %6
  %tobool5.not = icmp eq i64 %8, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.then2
  %and8 = and i32 %2, 8
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body19, label %if.then10

if.then10:                                        ; preds = %if.end7
  %conv = sext i32 %4 to i64
  %call14 = call fastcc i1 @test_and_set_bit(i64 noundef %conv, i64* noundef %flags3) #14
  br i1 %call14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.then10
  %or = or i32 %2, 16
  %.pre = and i32 %2, 1
  br label %do.body19

do.body19:                                        ; preds = %if.end, %if.end16, %if.end7
  %and30.pre-phi = phi i32 [ 0, %if.end ], [ %.pre, %if.end16 ], [ 1, %if.end7 ]
  %flags.0 = phi i32 [ %2, %if.end ], [ %or, %if.end16 ], [ %2, %if.end7 ]
  %or21 = or i32 %flags.0, 2
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %flags1, i32 %or21) #18, !srcloc !45
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %9 = bitcast i8** %private to %struct.task_struct**
  %10 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %call28 = call i32 @wake_up_state(%struct.task_struct* noundef %10, i32 noundef %mode) #15
  %entry29 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  call fastcc void @list_del_init_careful(%struct.list_head* noundef %entry29) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then2, %entry, %do.body19
  %retval.0 = phi i32 [ %and30.pre-phi, %do.body19 ], [ 0, %entry ], [ -1, %if.then2 ], [ -1, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @trylock_page_bit_common(%struct.page* noundef %page, i32 noundef %bit_nr, %struct.wait_queue_entry* nocapture noundef %wait) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %bit_nr to i64
  %flags1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %call = call fastcc i1 @test_and_set_bit(i64 noundef %conv, i64* noundef %flags1) #14
  br i1 %call, label %return, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  %.pre = load i32, i32* %flags, align 8
  br label %if.end8

if.else:                                          ; preds = %entry
  %flags3 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %div.i = lshr i32 %bit_nr, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %flags3, i64 %idxprom.i
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %bit_nr, 63
  %sh_prom.i = zext i32 %and.i to i64
  %2 = shl nuw i64 1, %sh_prom.i
  %3 = and i64 %1, %2
  %tobool5.not = icmp eq i64 %3, 0
  br i1 %tobool5.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %if.else
  %4 = phi i32 [ %.pre, %if.then.if.end8_crit_edge ], [ %0, %if.else ]
  %or = or i32 %4, 18
  store i32 %or, i32* %flags, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then, %if.end8
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %if.then ], [ false, %if.else ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %and = and i32 %state, 257
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @signal_pending(%struct.task_struct* noundef %p) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %state, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.end3
  %call6 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #14
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %return

return:                                           ; preds = %if.end3, %lor.rhs, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end3 ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #15
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @wake_page_match(%struct.wait_page_queue* nocapture noundef readonly %wait_page, %struct.wait_page_key* nocapture noundef %key) unnamed_addr #10 {
entry:
  %page = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait_page, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page, align 8
  %page1 = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %key, i64 0, i32 0
  %1 = load %struct.page*, %struct.page** %page1, align 8
  %cmp.not = icmp eq %struct.page* %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %page_match = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %key, i64 0, i32 2
  store i32 1, i32* %page_match, align 4
  %bit_nr = getelementptr inbounds %struct.wait_page_queue, %struct.wait_page_queue* %wait_page, i64 0, i32 1
  %2 = load i32, i32* %bit_nr, align 8
  %bit_nr2 = getelementptr inbounds %struct.wait_page_key, %struct.wait_page_key* %key, i64 0, i32 1
  %3 = load i32, i32* %bit_nr2, align 8
  %cmp3.not = icmp eq i32 %2, %3
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp3.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_del_init_careful(%struct.list_head* noundef %entry1) unnamed_addr #0 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %0 = ptrtoint %struct.list_head* %entry1 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next, i64 %0) #18, !srcloc !46
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !10

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #14
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #14
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #14
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #14
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #7 {
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
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !47
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #18, !srcloc !48
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #18, !srcloc !49
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
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
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #18, !srcloc !52
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @arch_clear_bit_unlock_is_negative_byte(i64* noundef %p) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %p to %struct.atomic64_t*
  %call.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot_release(i64 noundef 1, %struct.atomic64_t* noundef %0) #15
  %and = and i64 %call.i.i, 128
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot_release(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !53
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key_bookmark(%struct.wait_queue_head* noundef, i32 noundef, i8* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #18, !srcloc !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #7 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #14
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #15
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #18, !srcloc !55
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #9 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__xas_next(%struct.xa_state* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__xas_prev(%struct.xa_state* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #14
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) #14
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask) #14
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #12 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #15
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #19, !srcloc !56
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xas_find_marked(%struct.xa_state* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_space(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #3 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  %sub = sub nsw i32 15, %conv
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__page_cache_add_speculative(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_add_unless(%struct.page* noundef %page) #14
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_add_unless(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %_refcount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i, align 4
  %1 = bitcast %struct.atomic_t* %_refcount to i8*
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i, %entry
  %c.0.i.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i.i, %do.cond.i.i.i ]
  %cmp.i.i.i = icmp eq i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %atomic_add_unless.exit, label %do.cond.i.i.i, !prof !8

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %c.0.i.i.i, 1
  %call11.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i, i32 noundef %add.i.i.i) #15
  %cmp.not.i.i.i.i = icmp eq i32 %c.0.i.i.i, %call11.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %atomic_add_unless.exit, label %do.body.i.i.i, !prof !10

atomic_add_unless.exit:                           ; preds = %do.body.i.i.i, %do.cond.i.i.i
  %2 = xor i1 %cmp.i.i.i, true
  %conv = zext i1 %2 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #18, !srcloc !57
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @xa_head(%struct.xarray* noundef %xa) unnamed_addr #7 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  %0 = load volatile i8*, i8** %xa_head, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @filemap_get_read_batch(%struct.address_space* noundef %mapping, i64 noundef %index, i64 noundef %max, %struct.pagevec* nocapture noundef %pvec) unnamed_addr #0 {
entry:
  %xas = alloca %struct.xa_state, align 8
  %0 = bitcast %struct.xa_state* %xas to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %2 = bitcast i8* %1 to i64*, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %xa = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 0
  %i_pages = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 1
  store %struct.xarray* %i_pages, %struct.xarray** %xa, align 8
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  store i64 %index, i64* %xa_index, align 8
  %xa_shift = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 2
  %xa_sibs = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 3
  store i8 0, i8* %xa_sibs, align 1
  %xa_offset = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 4
  %xa_pad = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 5
  store i8 0, i8* %xa_pad, align 1
  %xa_node = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 6
  store %struct.xa_node* inttoptr (i64 3 to %struct.xa_node*), %struct.xa_node** %xa_node, align 8
  %xa_alloc = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 7
  store %struct.xa_node* null, %struct.xa_node** %xa_alloc, align 8
  %xa_update = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 8
  store void (%struct.xa_node*)* null, void (%struct.xa_node*)** %xa_update, align 8
  call fastcc void @__rcu_read_lock() #15
  %call = call i8* @xas_load(%struct.xa_state* noundef nonnull %xas) #15
  %tobool.not50 = icmp eq i8* %call, null
  br i1 %tobool.not50, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %head.0.in51 = phi i8* [ %call37, %for.inc ], [ %call, %entry ]
  %head.052 = bitcast i8* %head.0.in51 to %struct.page*
  %call1 = call fastcc i1 @xas_retry(%struct.xa_state* noundef nonnull %xas, i8* noundef nonnull %head.0.in51) #14
  br i1 %call1, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %3 = load i64, i64* %xa_index, align 8
  %cmp = icmp ugt i64 %3, %max
  br i1 %cmp, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call fastcc i1 @xa_is_value(i8* noundef nonnull %head.0.in51) #14
  br i1 %call3, label %for.end, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = call fastcc i32 @page_cache_get_speculative(%struct.page* noundef nonnull %head.052) #14
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %retry, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i8* @xas_reload(%struct.xa_state* noundef nonnull %xas) #14
  %cmp11.not = icmp eq i8* %head.0.in51, %call10
  br i1 %cmp11.not, label %if.end15, label %put_page, !prof !10

if.end15:                                         ; preds = %if.end9
  %call16 = call fastcc i32 @pagevec_add(%struct.pagevec* noundef %pvec, %struct.page* noundef nonnull %head.052) #14
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.end, label %if.end19

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %head.052) #14
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.end, label %if.end23

if.end23:                                         ; preds = %if.end19
  %flags.i = bitcast i8* %head.0.in51 to i64*
  %4 = load volatile i64, i64* %flags.i, align 8
  %5 = and i64 %4, 262144
  %tobool25.not = icmp eq i64 %5, 0
  br i1 %tobool25.not, label %if.end27, label %for.end

if.end27:                                         ; preds = %if.end23
  %index28 = getelementptr inbounds i8, i8* %head.0.in51, i64 32
  %6 = bitcast i8* %index28 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %xa_index, align 8
  %8 = load i8, i8* %xa_shift, align 8
  %sh_prom = zext i8 %8 to i64
  %shr = lshr i64 %7, %sh_prom
  %9 = trunc i64 %shr to i8
  %conv35 = and i8 %9, 63
  store i8 %conv35, i8* %xa_offset, align 2
  br label %for.inc

put_page:                                         ; preds = %if.end9
  call fastcc void @put_page(%struct.page* noundef nonnull %head.052) #14
  br label %retry

retry:                                            ; preds = %if.end5, %put_page
  call fastcc void @xas_reset(%struct.xa_state* noundef nonnull %xas) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body, %retry, %if.end27
  %call37 = call fastcc i8* @xas_next(%struct.xa_state* noundef nonnull %xas) #14
  %tobool.not = icmp eq i8* %call37, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %lor.lhs.false, %if.end, %if.end15, %if.end19, %if.end23, %entry
  call fastcc void @rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_cache_sync_readahead(%struct.address_space* noundef %mapping, %struct.file_ra_state* noundef %ra, %struct.file* noundef %file, i64 noundef %index, i64 noundef %req_count) unnamed_addr #0 {
entry:
  %ractl = alloca %struct.readahead_control, align 8
  %0 = bitcast %struct.readahead_control* %ractl to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #18
  %file1 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 0
  store %struct.file* %file, %struct.file** %file1, align 8
  %mapping2 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  store %struct.address_space* %mapping, %struct.address_space** %mapping2, align 8
  %ra3 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  store %struct.file_ra_state* %ra, %struct.file_ra_state** %ra3, align 8
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 3
  store i64 %index, i64* %_index, align 8
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 4
  store i32 0, i32* %_nr_pages, align 8
  %_batch_count = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 5
  store i32 0, i32* %_batch_count, align 4
  call void @page_cache_sync_ra(%struct.readahead_control* noundef nonnull %ractl, i64 noundef %req_count) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_create_page(%struct.file* noundef %file, %struct.address_space* noundef %mapping, i64 noundef %index, %struct.pagevec* nocapture noundef %pvec) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.page* @page_cache_alloc(%struct.address_space* noundef %mapping) #14
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @filemap_invalidate_lock_shared(%struct.address_space* noundef %mapping) #14
  %call1 = call fastcc i32 @mapping_gfp_constraint(%struct.address_space* noundef %mapping) #14
  %call2 = call i32 @add_to_page_cache_lru(%struct.page* noundef nonnull %call, %struct.address_space* noundef %mapping, i64 noundef %index, i32 noundef %call1) #14
  %cmp = icmp eq i32 %call2, -17
  %spec.store.select = select i1 %cmp, i32 524289, i32 %call2
  %tobool5.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool5.not, label %if.end7, label %error13

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @filemap_read_page(%struct.file* noundef %file, %struct.address_space* noundef %mapping, %struct.page* noundef nonnull %call) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %error13

if.end11:                                         ; preds = %if.end7
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %mapping) #14
  %call12 = call fastcc i32 @pagevec_add(%struct.pagevec* noundef %pvec, %struct.page* noundef nonnull %call) #14
  br label %cleanup

error13:                                          ; preds = %if.end7, %if.end
  %error.0 = phi i32 [ %spec.store.select, %if.end ], [ %call8, %if.end7 ]
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %mapping) #14
  call fastcc void @put_page(%struct.page* noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %error13, %if.end11
  %retval.0 = phi i32 [ %error.0, %error13 ], [ 0, %if.end11 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_readahead(%struct.kiocb* nocapture noundef readonly %iocb, %struct.file* noundef %file, %struct.address_space* noundef %mapping, %struct.page* noundef %page, i64 noundef %last_index) unnamed_addr #0 {
entry:
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %0 = load i32, i32* %ki_flags, align 8
  %and = and i32 %0, 1048576
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %f_ra = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 13
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %1 = load i64, i64* %index, align 8
  %sub = sub i64 %last_index, %1
  call fastcc void @page_cache_async_readahead(%struct.address_space* noundef %mapping, %struct.file_ra_state* noundef %f_ra, %struct.file* noundef %file, %struct.page* noundef %page, i64 noundef %1, i64 noundef %sub) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_update_page(%struct.kiocb* nocapture noundef readonly %iocb, %struct.address_space* noundef %mapping, %struct.iov_iter* nocapture noundef readonly %iter, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %ki_flags = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 4
  %0 = load i32, i32* %ki_flags, align 8
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @filemap_invalidate_trylock_shared(%struct.address_space* noundef %mapping) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.else:                                          ; preds = %entry
  call fastcc void @filemap_invalidate_lock_shared(%struct.address_space* noundef %mapping) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.else
  %call4 = call fastcc i32 @trylock_page(%struct.page* noundef %page) #14
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end22

if.then6:                                         ; preds = %if.end3
  %1 = load i32, i32* %ki_flags, align 8
  %and8 = and i32 %1, 1048584
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %unlock_mapping.thread

unlock_mapping.thread:                            ; preds = %if.then6
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %mapping) #14
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %and13 = and i32 %1, 524288
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %mapping) #14
  %call16 = call i32 @put_and_wait_on_page_locked(%struct.page* noundef %page, i32 noundef 258) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %ki_waitq = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 7, i32 0
  %2 = load %struct.wait_page_queue*, %struct.wait_page_queue** %ki_waitq, align 8
  %call18 = call i32 @__lock_page_async(%struct.page* noundef %page, %struct.wait_page_queue* noundef %2) #14
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %unlock_mapping

if.end22:                                         ; preds = %if.end17, %if.end3
  %mapping23 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %3 = load %struct.address_space*, %struct.address_space** %mapping23, align 8
  %tobool24.not = icmp eq %struct.address_space* %3, null
  br i1 %tobool24.not, label %unlock, label %if.end26

if.end26:                                         ; preds = %if.end22
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %4 = load i64, i64* %ki_pos, align 8
  %call27 = call fastcc i1 @filemap_range_uptodate(%struct.address_space* noundef %mapping, i64 noundef %4, %struct.iov_iter* noundef %iter, %struct.page* noundef %page) #14
  br i1 %call27, label %unlock, label %if.end29

if.end29:                                         ; preds = %if.end26
  %5 = load i32, i32* %ki_flags, align 8
  %and31 = and i32 %5, 1572872
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %unlock

if.end34:                                         ; preds = %if.end29
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %6 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call35 = call fastcc i32 @filemap_read_page(%struct.file* noundef %6, %struct.address_space* noundef %mapping, %struct.page* noundef %page) #14
  br label %unlock_mapping

unlock:                                           ; preds = %if.end29, %if.end26, %if.end22
  %error.0 = phi i32 [ 0, %if.end26 ], [ -11, %if.end29 ], [ 524289, %if.end22 ]
  call void @unlock_page(%struct.page* noundef %page) #14
  br label %unlock_mapping

unlock_mapping:                                   ; preds = %if.end17, %unlock, %if.end34
  %error.1 = phi i32 [ %error.0, %unlock ], [ %call35, %if.end34 ], [ %call18, %if.end17 ]
  call fastcc void @filemap_invalidate_unlock_shared(%struct.address_space* noundef %mapping) #14
  %cmp = icmp eq i32 %error.1, 524289
  br i1 %cmp, label %if.then36, label %cleanup

if.then36:                                        ; preds = %unlock_mapping
  call fastcc void @put_page(%struct.page* noundef %page) #14
  br label %cleanup

cleanup:                                          ; preds = %unlock_mapping.thread, %unlock_mapping, %if.then36, %if.then, %if.then15
  %retval.0 = phi i32 [ 524289, %if.then15 ], [ -11, %if.then ], [ 524289, %if.then36 ], [ %error.1, %unlock_mapping ], [ -11, %unlock_mapping.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_sync_ra(%struct.readahead_control* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @page_cache_alloc(%struct.address_space* nocapture noundef readonly %x) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %x) #14
  %call1 = call fastcc %struct.page* @__page_cache_alloc(i32 noundef %call) #14
  ret %struct.page* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_constraint(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %mapping) #14
  %and = and i32 %call, 3264
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_cache_async_readahead(%struct.address_space* noundef %mapping, %struct.file_ra_state* noundef %ra, %struct.file* noundef %file, %struct.page* noundef %page, i64 noundef %index, i64 noundef %req_count) unnamed_addr #0 {
entry:
  %ractl = alloca %struct.readahead_control, align 8
  %0 = bitcast %struct.readahead_control* %ractl to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #18
  %file1 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 0
  store %struct.file* %file, %struct.file** %file1, align 8
  %mapping2 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 1
  store %struct.address_space* %mapping, %struct.address_space** %mapping2, align 8
  %ra3 = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 2
  store %struct.file_ra_state* %ra, %struct.file_ra_state** %ra3, align 8
  %_index = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 3
  store i64 %index, i64* %_index, align 8
  %_nr_pages = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 4
  store i32 0, i32* %_nr_pages, align 8
  %_batch_count = getelementptr inbounds %struct.readahead_control, %struct.readahead_control* %ractl, i64 0, i32 5
  store i32 0, i32* %_batch_count, align 4
  call void @page_cache_async_ra(%struct.readahead_control* noundef nonnull %ractl, %struct.page* noundef %page, i64 noundef %req_count) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_async_ra(%struct.readahead_control* noundef, %struct.page* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filemap_invalidate_trylock_shared(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %invalidate_lock = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 2
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %invalidate_lock) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @filemap_range_uptodate(%struct.address_space* nocapture noundef readonly %mapping, i64 noundef %pos, %struct.iov_iter* nocapture noundef readonly %iter, %struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* noundef %iter) #14
  br i1 %call1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 9
  %0 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %is_partially_uptodate = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %0, i64 0, i32 17
  %1 = load i32 (%struct.page*, i64, i64)*, i32 (%struct.page*, i64, i64)** %is_partially_uptodate, align 8
  %tobool4.not = icmp eq i32 (%struct.page*, i64, i64)* %1, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %2 = load %struct.inode*, %struct.inode** %host, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 17
  %3 = load i8, i8* %i_blkbits, align 2
  %cmp = icmp ugt i8 %3, 11
  br i1 %cmp, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %count11 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %iter, i64 0, i32 3
  %4 = load i64, i64* %count11, align 8
  %call13 = call fastcc i64 @page_offset(%struct.page* noundef %page) #14
  %cmp14 = icmp sgt i64 %call13, %pos
  %sub.neg = sub i64 %pos, %call13
  %pos.addr.0 = select i1 %cmp14, i64 0, i64 %sub.neg
  %sub19 = select i1 %cmp14, i64 %sub.neg, i64 0
  %count.0 = add i64 %4, %sub19
  %sext = shl i64 %count.0, 32
  %conv26 = ashr exact i64 %sext, 32
  %call27 = call i32 %1(%struct.page* noundef %page, i64 noundef %pos.addr.0, i64 noundef %conv26) #15
  %tobool28 = icmp ne i32 %call27, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3, %if.end, %entry, %if.end10
  %retval.0 = phi i1 [ %tobool28, %if.end10 ], [ true, %entry ], [ false, %if.end ], [ false, %if.end3 ], [ false, %if.end6 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @iov_iter_is_pipe(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @iov_iter_type(%struct.iov_iter* noundef %i) #14
  %cmp = icmp eq i32 %call, 3
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iov_iter_type(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #3 {
entry:
  %iter_type = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 0
  %0 = load i8, i8* %iter_type, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(%struct.path* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_blocksize(%struct.inode* nocapture noundef readonly %node) unnamed_addr #3 {
entry:
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %node, i64 0, i32 17
  %0 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 1, %conv
  ret i32 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(%struct.xa_state* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 1, i64* elementtype(i64) %0) #18, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_page_cache_ra(%struct.readahead_control* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @get_file(%struct.file* noundef returned %f) unnamed_addr #0 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(i64 noundef 1, %struct.atomic64_t* noundef %f_count) #15
  ret %struct.file* %f
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @shrink_readahead_size_eio(%struct.file_ra_state* nocapture noundef %ra) unnamed_addr #10 {
entry:
  %ra_pages = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %ra, i64 0, i32 3
  %0 = load i32, i32* %ra_pages, align 8
  %div = lshr i32 %0, 2
  store i32 %div, i32* %ra_pages, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @next_uptodate_page(%struct.page* noundef %page, %struct.address_space* noundef readonly %mapping, %struct.xa_state* noundef %xas, i64 noundef %end_pgoff) unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 0
  %xa_index = getelementptr inbounds %struct.xa_state, %struct.xa_state* %xas, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %page.addr.0 = phi %struct.page* [ %page, %entry ], [ %9, %do.cond ]
  %tobool.not = icmp eq %struct.page* %page.addr.0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %do.body
  %0 = bitcast %struct.page* %page.addr.0 to i8*
  %call = call fastcc i1 @xas_retry(%struct.xa_state* noundef %xas, i8* noundef nonnull %0) #14
  br i1 %call, label %do.cond, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i1 @xa_is_value(i8* noundef nonnull %0) #14
  br i1 %call3, label %do.cond, label %if.end5

if.end5:                                          ; preds = %if.end2
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %page.addr.0) #15
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i71 = and i64 %2, 1
  %tobool7.not = icmp eq i64 %conv.i.i71, 0
  br i1 %tobool7.not, label %if.end9, label %do.cond

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i32 @page_cache_get_speculative(%struct.page* noundef nonnull %page.addr.0) #14
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.cond, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = call fastcc i8* @xas_reload(%struct.xa_state* noundef %xas) #14
  %3 = bitcast i8* %call14 to %struct.page*
  %cmp.not = icmp eq %struct.page* %page.addr.0, %3
  br i1 %cmp.not, label %if.end18, label %skip, !prof !10

if.end18:                                         ; preds = %if.end13
  %call19 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %page.addr.0) #14
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %skip, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %flags.i69 = getelementptr inbounds %struct.page, %struct.page* %page.addr.0, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i69, align 8
  %5 = and i64 %4, 262144
  %tobool22.not = icmp eq i64 %5, 0
  br i1 %tobool22.not, label %if.end24, label %skip

if.end24:                                         ; preds = %lor.lhs.false
  %call29 = call fastcc i32 @trylock_page(%struct.page* noundef nonnull %page.addr.0) #14
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %skip, label %if.end32

if.end32:                                         ; preds = %if.end24
  %mapping33 = getelementptr inbounds %struct.page, %struct.page* %page.addr.0, i64 0, i32 1, i32 0, i32 1
  %6 = load %struct.address_space*, %struct.address_space** %mapping33, align 8
  %cmp34.not = icmp eq %struct.address_space* %6, %mapping
  br i1 %cmp34.not, label %if.end37, label %unlock

if.end37:                                         ; preds = %if.end32
  %call38 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %page.addr.0) #14
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %unlock, label %if.end41

if.end41:                                         ; preds = %if.end37
  %7 = load %struct.inode*, %struct.inode** %host, align 8
  %call42 = call fastcc i64 @i_size_read(%struct.inode* noundef %7) #14
  %sub = add i64 %call42, 4095
  %div = lshr i64 %sub, 12
  %8 = load i64, i64* %xa_index, align 8
  %cmp43.not = icmp ult i64 %8, %div
  br i1 %cmp43.not, label %cleanup, label %unlock

unlock:                                           ; preds = %if.end41, %if.end37, %if.end32
  call void @unlock_page(%struct.page* noundef nonnull %page.addr.0) #14
  br label %skip

skip:                                             ; preds = %if.end24, %if.end18, %lor.lhs.false, %if.end13, %unlock
  call fastcc void @put_page(%struct.page* noundef nonnull %page.addr.0) #14
  br label %do.cond

do.cond:                                          ; preds = %if.end9, %if.end5, %if.end2, %if.end, %skip
  %call47 = call fastcc i8* @xas_next_entry(%struct.xa_state* noundef %xas, i64 noundef %end_pgoff) #14
  %9 = bitcast i8* %call47 to %struct.page*
  %cmp48.not = icmp eq i8* %call47, null
  br i1 %cmp48.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.cond, %if.end41, %do.body
  %retval.0 = phi %struct.page* [ null, %do.body ], [ %page.addr.0, %if.end41 ], [ null, %do.cond ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.spinlock* @pmd_lock(%struct.pmd_t* noundef %pmd) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.spinlock* @pmd_lockptr(%struct.pmd_t* noundef %pmd) #14
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret %struct.spinlock* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_inc_nr_ptes(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %pgtables_bytes = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12
  call fastcc void @__ll_sc_atomic64_add(i64 noundef 4096, %struct.atomic64_t* noundef %pgtables_bytes) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_populate(%struct.pmd_t* noundef %pmdp, %struct.page* noundef %ptep) unnamed_addr #0 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %ptep to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  call fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %shl) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @pmd_lockptr(%struct.pmd_t* noundef readnone %pmd) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.page* @pmd_to_page(%struct.pmd_t* noundef %pmd) #14
  %call1 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %call) #14
  ret %struct.spinlock* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #6 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.page* @pmd_to_page(%struct.pmd_t* noundef %pmd) unnamed_addr #6 {
entry:
  %0 = ptrtoint %struct.pmd_t* %pmd to i64
  %1 = add i64 %0, 549755813888
  %2 = lshr i64 %1, 6
  %mul = and i64 %2, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %3 = inttoptr i64 %add to %struct.page*
  ret %struct.page* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %ptep) unnamed_addr #0 {
entry:
  %or = or i64 %ptep, 576460752303423491
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %or) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %pmd.coerce) unnamed_addr #0 {
entry:
  %pmd.sroa.0 = alloca i64, align 8
  store i64 %pmd.coerce, i64* %pmd.sroa.0, align 8
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0, align 8
  store volatile i64 %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload, i64* %pmd.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !60
  call void asm sideeffect "isb", "~{memory}"() #18, !srcloc !61
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #14
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #6 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #6 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 1
  call fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !62
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #14
  br i1 %call, label %do.body7, label %if.else, !prof !10

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !63
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !64
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef false) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #7 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #18, !srcloc !66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 1
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !67
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #14
  br i1 %call, label %do.body3, label %if.else, !prof !10

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !68
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !69
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !70
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #6 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @wait_on_page_read(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.page* %page to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %0) #14
  br i1 %call, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @wait_on_page_locked(%struct.page* noundef %page) #14
  %call1 = call fastcc i32 @PageUptodate(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.then
  call fastcc void @put_page(%struct.page* noundef %page) #14
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -5) #14
  %1 = bitcast i8* %call3 to %struct.page*
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then2, %entry
  %page.addr.0 = phi %struct.page* [ %page, %entry ], [ %page, %if.then ], [ %1, %if.then2 ]
  ret %struct.page* %page.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_is_blkdev_sb(%struct.super_block* nocapture noundef readnone %sb) unnamed_addr #3 {
entry:
  %0 = load %struct.super_block*, %struct.super_block** @blockdev_superblock, align 8
  %cmp = icmp eq %struct.super_block* %0, %sb
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.block_device* @I_BDEV(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(%struct.file* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nounwind readonly }

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
!9 = !{i64 1463702}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2155685850}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 256}
!14 = !{i64 2155687331}
!15 = !{i64 2155690070}
!16 = !{!"branch_weights", i32 4001, i32 4000000}
!17 = !{i64 2155700726}
!18 = !{i64 2155712315}
!19 = !{i64 2155712917}
!20 = !{i64 2149637436}
!21 = !{i64 2155719138}
!22 = !{i64 2155719515}
!23 = !{i64 2150859668}
!24 = !{i64 2155727422}
!25 = !{i64 2150858839}
!26 = !{i64 2152609293}
!27 = !{i64 2152610245}
!28 = !{i64 2155766466}
!29 = !{i64 2148059081, i64 2148059597, i64 2148059627, i64 2148059654, i64 2148059688, i64 2148059718}
!30 = !{i64 2151070509}
!31 = !{i64 2149641729}
!32 = !{i64 2149197560, i64 2149197607, i64 2149197613, i64 2149197650, i64 2149197668, i64 2149199009, i64 2149199057, i64 2149199105, i64 2149199168, i64 2149199217, i64 2149197746, i64 2149197771, i64 2149197797, i64 2149197803, i64 2149198675, i64 2149198715, i64 2149198733, i64 2149198765, i64 2149198793, i64 2149198847, i64 2149198867, i64 2149198964, i64 2149197826, i64 2149197840, i64 2149197846, i64 2149197896, i64 2149197942, i64 2149197975}
!33 = !{i64 2148145222, i64 2148145255, i64 2148145308, i64 2148145367, i64 2148145401, i64 2148145456, i64 2148145485, i64 2148145505}
!34 = !{i64 2149666582}
!35 = !{i64 2149451948}
!36 = !{i64 2149188104, i64 2149188151, i64 2149188157, i64 2149188194, i64 2149188212, i64 2149189552, i64 2149189600, i64 2149189648, i64 2149189711, i64 2149189760, i64 2149188290, i64 2149188315, i64 2149188341, i64 2149188347, i64 2149189218, i64 2149189258, i64 2149189276, i64 2149189308, i64 2149189336, i64 2149189390, i64 2149189410, i64 2149189507, i64 2149188370, i64 2149188384, i64 2149188390, i64 2149188440, i64 2149188486, i64 2149188519}
!37 = !{i64 2148129863, i64 2148130525, i64 2148130555, i64 2148130586, i64 2148130618, i64 2148130653, i64 2148130678}
!38 = !{i64 2149886135}
!39 = !{i64 2149886352}
!40 = !{i64 2149652437}
!41 = !{i64 2149659718}
!42 = !{i64 2148129010, i64 2148129531, i64 2148129561, i64 2148129587, i64 2148129619, i64 2148129648}
!43 = !{i64 2148049360, i64 2148049876, i64 2148049906, i64 2148049933, i64 2148049967, i64 2148049997}
!44 = !{i64 2148059933, i64 2148060581, i64 2148060611, i64 2148060643, i64 2148060677, i64 2148060713, i64 2148060738}
!45 = !{i64 2155704868}
!46 = !{i64 2148817053}
!47 = !{i64 2148119286, i64 2148119938, i64 2148119968, i64 2148119999, i64 2148120031, i64 2148120066, i64 2148120091}
!48 = !{i64 2149203263, i64 2149203310, i64 2149203316, i64 2149203353, i64 2149203371, i64 2149204682, i64 2149204730, i64 2149204778, i64 2149204841, i64 2149204890, i64 2149203449, i64 2149203474, i64 2149203500, i64 2149203506, i64 2149204348, i64 2149204388, i64 2149204406, i64 2149204438, i64 2149204466, i64 2149204520, i64 2149204540, i64 2149204637, i64 2149203529, i64 2149203543, i64 2149203549, i64 2149203599, i64 2149203645, i64 2149203678}
!49 = !{i64 2149205442, i64 2149205489, i64 2149205495, i64 2149205532, i64 2149205550, i64 2149206493, i64 2149206541, i64 2149206589, i64 2149206652, i64 2149206701, i64 2149205628, i64 2149205653, i64 2149205679, i64 2149205685, i64 2149205722, i64 2149205728, i64 2149205778, i64 2149205824, i64 2149205857}
!50 = !{i64 2148118440, i64 2148118951, i64 2148118981, i64 2148119007, i64 2148119039, i64 2148119068}
!51 = !{i64 2149663279}
!52 = !{i64 2149209276, i64 2149209323, i64 2149209329, i64 2149209366, i64 2149209384, i64 2149214756, i64 2149214804, i64 2149214852, i64 2149214915, i64 2149214964, i64 2149209462, i64 2149209487, i64 2149209513, i64 2149209519, i64 2149214422, i64 2149214462, i64 2149214480, i64 2149214512, i64 2149214540, i64 2149214594, i64 2149214614, i64 2149214711, i64 2149209542, i64 2149209556, i64 2149209562, i64 2149209612, i64 2149209658, i64 2149209691}
!53 = !{i64 2148132958, i64 2148133638, i64 2148133668, i64 2148133699, i64 2148133731, i64 2148133766, i64 2148133791}
!54 = !{i64 1986433}
!55 = !{i64 2148121328, i64 2148121998, i64 2148122028, i64 2148122060, i64 2148122092, i64 2148122126, i64 2148122151}
!56 = !{i64 2149225582, i64 2149225629, i64 2149225635, i64 2149225672, i64 2149225690, i64 2149226617, i64 2149226665, i64 2149226713, i64 2149226776, i64 2149226825, i64 2149225768, i64 2149225793, i64 2149225819, i64 2149225825, i64 2149225862, i64 2149225868, i64 2149225918, i64 2149225964, i64 2149225997}
!57 = !{i64 2148162430, i64 2148162463, i64 2148162515, i64 2148162574, i64 2148162608, i64 2148162664, i64 2148162693, i64 2148162720}
!58 = !{i64 2149251528, i64 2149251569, i64 2149251625, i64 2149251677}
!59 = !{i64 2148090046, i64 2148090560, i64 2148090590, i64 2148090616, i64 2148090648, i64 2148090677}
!60 = !{i64 2152447612}
!61 = !{i64 2152447661}
!62 = !{i64 2151749288}
!63 = !{i64 2151752711}
!64 = !{i64 2151753553}
!65 = !{i64 2151754739}
!66 = !{i64 2149250472, i64 2149250514, i64 2149250573, i64 2149250626}
!67 = !{i64 2151767648}
!68 = !{i64 2151771509}
!69 = !{i64 2151772351}
!70 = !{i64 2151773605}
!71 = !{i64 2151781489}
!72 = !{i64 2151782331}
!73 = !{i64 2151783583}
