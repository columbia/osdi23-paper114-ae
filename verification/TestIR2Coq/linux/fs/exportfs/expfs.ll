; ModuleID = 'fs/exportfs/expfs.c'
source_filename = "fs/exportfs/expfs.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fid = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i16, i16, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
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
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.10, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.10 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.11 }
%union.anon.11 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.54, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.12, [0 x i64] }
%struct.anon.12 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.37, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
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
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.22, %union.anon.23, i32 }
%struct.request_queue = type opaque
%union.anon.22 = type { %struct.list_head }
%union.anon.23 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.24 }
%struct.anon.24 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.28 }
%struct.anon.28 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.36, i32, [12 x i8] }
%union.anon.36 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.37 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.38, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.53, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.53 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.54 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.55, %struct.qspinlock }
%union.anon.55 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.21 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.21 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
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
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.iomap = type opaque
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
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
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.getdents_callback = type { %struct.dir_context, i8*, i64, i32, i32 }

@__UNIQUE_ID_file200 = internal constant [35 x i8] c"exportfs.file=fs/exportfs/exportfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license201 = internal constant [21 x i8] c"exportfs.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_file200, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license201, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @exportfs_encode_inode_fh(%struct.inode* noundef %inode, %struct.fid* noundef %fid, i32* noundef %max_len, %struct.inode* noundef %parent) local_unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_export_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 9
  %1 = load %struct.export_operations*, %struct.export_operations** %s_export_op, align 8
  %tobool.not = icmp eq %struct.export_operations* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %encode_fh = getelementptr inbounds %struct.export_operations, %struct.export_operations* %1, i64 0, i32 0
  %2 = load i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, i32 (%struct.inode*, i32*, i32*, %struct.inode*)** %encode_fh, align 8
  %tobool1.not = icmp eq i32 (%struct.inode*, i32*, i32*, %struct.inode*)* %2, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 0
  %call = call i32 %2(%struct.inode* noundef %inode, i32* noundef %arraydecay, i32* noundef %max_len, %struct.inode* noundef %parent) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call fastcc i32 @export_encode_fh(%struct.inode* noundef %inode, %struct.fid* noundef %fid, i32* noundef %max_len, %struct.inode* noundef %parent) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @export_encode_fh(%struct.inode* nocapture noundef readonly %inode, %struct.fid* nocapture noundef writeonly %fid, i32* nocapture noundef %max_len, %struct.inode* noundef readonly %parent) unnamed_addr #2 {
entry:
  %0 = load i32, i32* %max_len, align 4
  %tobool = icmp ne %struct.inode* %parent, null
  %cmp = icmp slt i32 %0, 4
  %or.cond = select i1 %tobool, i1 %cmp, i1 false
  br i1 %or.cond, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %0, 2
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.else
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 8
  %1 = load i64, i64* %i_ino, align 8
  %conv = trunc i64 %1 to i32
  %ino = getelementptr %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 0
  store i32 %conv, i32* %ino, align 4
  %i_generation = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 41
  %2 = load i32, i32* %i_generation, align 8
  %gen = getelementptr inbounds %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast i16* %gen to i32*
  store i32 %2, i32* %3, align 4
  br i1 %tobool, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end3
  %i_ino7 = getelementptr inbounds %struct.inode, %struct.inode* %parent, i64 0, i32 8
  %4 = load i64, i64* %i_ino7, align 8
  %conv8 = trunc i64 %4 to i32
  %5 = getelementptr inbounds %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 3
  store i32 %conv8, i32* %5, align 4
  %i_generation10 = getelementptr inbounds %struct.inode, %struct.inode* %parent, i64 0, i32 41
  %6 = load i32, i32* %i_generation10, align 8
  %7 = getelementptr inbounds %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 4
  store i32 %6, i32* %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then6, %if.else, %entry
  %len.0.sink = phi i32 [ 4, %entry ], [ 2, %if.else ], [ 4, %if.then6 ], [ 2, %if.end3 ]
  %retval.0 = phi i32 [ 255, %entry ], [ 255, %if.else ], [ 2, %if.then6 ], [ 1, %if.end3 ]
  store i32 %len.0.sink, i32* %max_len, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @exportfs_encode_fh(%struct.dentry* noundef %dentry, %struct.fid* noundef %fid, i32* noundef %max_len, i32 noundef %connectable) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool.not = icmp eq i32 %connectable, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 0
  %1 = load i16, i16* %i_mode, align 8
  %2 = and i16 %1, -4096
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct.dentry* @dget_parent(%struct.dentry* noundef %dentry) #7
  %d_inode2 = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %p.0 = phi %struct.dentry* [ null, %land.lhs.true ], [ %call, %if.then ], [ null, %entry ]
  %parent.0 = phi %struct.inode* [ null, %land.lhs.true ], [ %3, %if.then ], [ null, %entry ]
  %call3 = call i32 @exportfs_encode_inode_fh(%struct.inode* noundef %0, %struct.fid* noundef %fid, i32* noundef %max_len, %struct.inode* noundef %parent.0) #8
  call void @dput(%struct.dentry* noundef %p.0) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @dget_parent(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @exportfs_decode_fh_raw(%struct.vfsmount* noundef %mnt, %struct.fid* noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type, i32 (i8*, %struct.dentry*)* noundef readonly %acceptable, i8* noundef %context) local_unnamed_addr #0 {
entry:
  %nbuf = alloca [256 x i8], align 1
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_export_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 9
  %1 = load %struct.export_operations*, %struct.export_operations** %s_export_op, align 8
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %nbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %2, i8 0, i64 256, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.export_operations* %1, null
  br i1 %tobool.not, label %cleanup81.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %fh_to_dentry = getelementptr inbounds %struct.export_operations, %struct.export_operations* %1, i64 0, i32 1
  %3 = load %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)** %fh_to_dentry, align 8
  %tobool1.not = icmp eq %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* %3, null
  br i1 %tobool1.not, label %cleanup81.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call %struct.dentry* %3(%struct.super_block* noundef %0, %struct.fid* noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type) #7
  %4 = bitcast %struct.dentry* %call4 to i8*
  %call5 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %4) #8
  %tobool8.not = icmp eq i32 (i8*, %struct.dentry*)* %acceptable, null
  %or.cond = or i1 %tobool8.not, %call5
  br i1 %or.cond, label %cleanup81, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %call4) #8
  br i1 %call11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %call4, i64 0, i32 0
  %5 = load i32, i32* %d_flags, align 8
  %and = and i32 %5, 32
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.then12
  %call15 = call fastcc i32 @reconnect_path(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %call4, i8* noundef nonnull %2) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %err_result

if.end19:                                         ; preds = %if.then14, %if.then12
  %call20 = call i32 %acceptable(i8* noundef %context, %struct.dentry* noundef %call4) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err_result, label %cleanup81

if.else:                                          ; preds = %if.end10
  %call24 = call fastcc %struct.dentry* @find_acceptable_alias(%struct.dentry* noundef %call4, i32 (i8*, %struct.dentry*)* noundef nonnull %acceptable, i8* noundef %context) #8
  %tobool25.not = icmp eq %struct.dentry* %call24, null
  br i1 %tobool25.not, label %if.end27, label %cleanup81

if.end27:                                         ; preds = %if.else
  %fh_to_parent = getelementptr inbounds %struct.export_operations, %struct.export_operations* %1, i64 0, i32 2
  %6 = load %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)** %fh_to_parent, align 8
  %tobool28.not = icmp eq %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* %6, null
  br i1 %tobool28.not, label %err_result, label %if.end30

if.end30:                                         ; preds = %if.end27
  %7 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call33 = call %struct.dentry* %6(%struct.super_block* noundef %7, %struct.fid* noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type) #7
  %tobool34.not = icmp eq %struct.dentry* %call33, null
  br i1 %tobool34.not, label %err_result, label %if.end36

if.end36:                                         ; preds = %if.end30
  %8 = bitcast %struct.dentry* %call33 to i8*
  %call38 = call fastcc i1 @IS_ERR(i8* noundef nonnull %8) #8
  br i1 %call38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  %call37 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %8) #8
  %conv = trunc i64 %call37 to i32
  br label %err_result

if.end40:                                         ; preds = %if.end36
  %call42 = call fastcc i32 @reconnect_path(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef nonnull %call33, i8* noundef nonnull %2) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @dput(%struct.dentry* noundef nonnull %call33) #7
  br label %err_result

if.end45:                                         ; preds = %if.end40
  %call47 = call fastcc i32 @exportfs_get_name(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef nonnull %call33, i8* noundef nonnull %2, %struct.dentry* noundef %call4) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @dput(%struct.dentry* noundef nonnull %call33) #7
  br label %err_result

if.end50:                                         ; preds = %if.end45
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %call33, i64 0, i32 5
  %9 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %9) #8
  %call53 = call i64 @strlen(i8* noundef nonnull %2) #7
  %conv54 = trunc i64 %call53 to i32
  %call55 = call %struct.dentry* @lookup_one_len(i8* noundef nonnull %2, %struct.dentry* noundef nonnull %call33, i32 noundef %conv54) #7
  %10 = bitcast %struct.dentry* %call55 to i8*
  %call56 = call fastcc i1 @IS_ERR(i8* noundef %10) #8
  br i1 %call56, label %if.end67, label %if.then57

if.then57:                                        ; preds = %if.end50
  %d_inode58 = getelementptr inbounds %struct.dentry, %struct.dentry* %call55, i64 0, i32 5
  %11 = load %struct.inode*, %struct.inode** %d_inode58, align 8
  %d_inode59 = getelementptr inbounds %struct.dentry, %struct.dentry* %call4, i64 0, i32 5
  %12 = load %struct.inode*, %struct.inode** %d_inode59, align 8
  %cmp.not = icmp eq %struct.inode* %11, %12
  br i1 %cmp.not, label %if.end67, label %if.then64, !prof !8

if.then64:                                        ; preds = %if.then57
  call void @dput(%struct.dentry* noundef %call55) #7
  %call65 = call fastcc i8* @ERR_PTR(i64 noundef -116) #8
  %13 = bitcast i8* %call65 to %struct.dentry*
  br label %if.end67

if.end67:                                         ; preds = %if.then57, %if.then64, %if.end50
  %.pre-phi = phi i8* [ %10, %if.then57 ], [ %call65, %if.then64 ], [ %10, %if.end50 ]
  %nresult.0 = phi %struct.dentry* [ %call55, %if.then57 ], [ %13, %if.then64 ], [ %call55, %if.end50 ]
  %14 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %14) #8
  call void @dput(%struct.dentry* noundef nonnull %call33) #7
  %call69 = call fastcc i1 @IS_ERR(i8* noundef %.pre-phi) #8
  br i1 %call69, label %if.then70, label %cleanup

if.then70:                                        ; preds = %if.end67
  %call71 = call fastcc i64 @PTR_ERR(i8* noundef %.pre-phi) #8
  %conv72 = trunc i64 %call71 to i32
  br label %err_result

cleanup:                                          ; preds = %if.end67
  call void @dput(%struct.dentry* noundef %call4) #7
  %call74 = call fastcc %struct.dentry* @find_acceptable_alias(%struct.dentry* noundef %nresult.0, i32 (i8*, %struct.dentry*)* noundef nonnull %acceptable, i8* noundef %context) #8
  %tobool75.not = icmp eq %struct.dentry* %call74, null
  br i1 %tobool75.not, label %err_result, label %cleanup81

err_result:                                       ; preds = %if.end30, %if.end27, %if.then70, %if.then49, %if.then44, %if.then39, %if.end19, %if.then14, %cleanup
  %result.1 = phi %struct.dentry* [ %call4, %if.then14 ], [ %nresult.0, %cleanup ], [ %call4, %if.end19 ], [ %call4, %if.then39 ], [ %call4, %if.then44 ], [ %call4, %if.then49 ], [ %call4, %if.then70 ], [ %call4, %if.end27 ], [ %call4, %if.end30 ]
  %err.1 = phi i32 [ %call15, %if.then14 ], [ -13, %cleanup ], [ -13, %if.end19 ], [ %conv, %if.then39 ], [ %call42, %if.then44 ], [ %call47, %if.then49 ], [ %conv72, %if.then70 ], [ -116, %if.end27 ], [ -116, %if.end30 ]
  call void @dput(%struct.dentry* noundef %result.1) #7
  %conv79 = sext i32 %err.1 to i64
  br label %cleanup81.sink.split

cleanup81.sink.split:                             ; preds = %entry, %lor.lhs.false, %err_result
  %conv79.sink = phi i64 [ %conv79, %err_result ], [ -116, %lor.lhs.false ], [ -116, %entry ]
  %call80 = call fastcc i8* @ERR_PTR(i64 noundef %conv79.sink) #8
  %15 = bitcast i8* %call80 to %struct.dentry*
  br label %cleanup81

cleanup81:                                        ; preds = %cleanup81.sink.split, %if.else, %if.end19, %if.end, %cleanup
  %retval.1 = phi %struct.dentry* [ %call74, %cleanup ], [ %call4, %if.end ], [ %call4, %if.end19 ], [ %call24, %if.else ], [ %15, %cleanup81.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #9
  ret %struct.dentry* %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_dir(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %dentry) #8
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i1 @d_is_autodir(%struct.dentry* noundef %dentry) #8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @reconnect_path(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %target_dir, i8* noundef %nbuf) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %target_dir) #8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %dentry.0 = phi %struct.dentry* [ %target_dir, %entry ], [ %parent.0, %if.end17 ]
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.0, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %do.body

do.body:                                          ; preds = %while.cond
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 13
  %2 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %cmp = icmp eq %struct.dentry* %dentry.0, %2
  br i1 %cmp, label %do.body3, label %do.end8, !prof !9

do.body3:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exportfs/expfs.c\22; .popsection; .long 14472b - 14470b; .short 219; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !10
  unreachable

do.end8:                                          ; preds = %do.body
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.0, i64 0, i32 3
  %3 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp9 = icmp eq %struct.dentry* %dentry.0, %3
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end8
  %call12 = call fastcc %struct.dentry* @reconnect_one(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %dentry.0, i8* noundef %nbuf) #8
  br label %if.end14

if.else:                                          ; preds = %do.end8
  %call13 = call %struct.dentry* @dget_parent(%struct.dentry* noundef %dentry.0) #7
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %parent.0 = phi %struct.dentry* [ %call12, %if.then11 ], [ %call13, %if.else ]
  %tobool15.not = icmp eq %struct.dentry* %parent.0, null
  br i1 %tobool15.not, label %while.end, label %if.end17

if.end17:                                         ; preds = %if.end14
  call void @dput(%struct.dentry* noundef %dentry.0) #7
  %4 = bitcast %struct.dentry* %parent.0 to i8*
  %call18 = call fastcc i1 @IS_ERR(i8* noundef nonnull %4) #8
  br i1 %call18, label %if.then19, label %while.cond

if.then19:                                        ; preds = %if.end17
  %5 = bitcast %struct.dentry* %parent.0 to i8*
  %call20 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %5) #8
  %conv21 = trunc i64 %call20 to i32
  br label %cleanup

while.end:                                        ; preds = %if.end14, %while.cond
  call void @dput(%struct.dentry* noundef %dentry.0) #7
  call fastcc void @clear_disconnected(%struct.dentry* noundef %target_dir) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then19
  %retval.0 = phi i32 [ %conv21, %if.then19 ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @find_acceptable_alias(%struct.dentry* noundef %result, i32 (i8*, %struct.dentry*)* nocapture noundef readonly %acceptable, i8* noundef %context) unnamed_addr #0 {
entry:
  %call = call i32 %acceptable(i8* noundef %context, %struct.dentry* noundef %result) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %result, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #7
  %1 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 29
  %first = bitcast %union.anon.62* %1 to %struct.hlist_node**
  %2 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool1.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr63 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -11
  %tobool3.not7175 = icmp eq %struct.hlist_node* %add.ptr63, null
  %tobool3.not71 = or i1 %tobool1.not, %tobool3.not7175
  br i1 %tobool3.not71, label %for.end.thread, label %for.body.preheader

for.end.thread:                                   ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %3 = bitcast %struct.hlist_node* %add.ptr63 to %struct.dentry*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end12
  %dentry.073 = phi %struct.dentry* [ %spec.select68, %if.end12 ], [ %3, %for.body.preheader ]
  %toput.072 = phi %struct.dentry* [ %dentry.073, %if.end12 ], [ null, %for.body.preheader ]
  %call4 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef nonnull %dentry.073) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #7
  %tobool6.not = icmp eq %struct.dentry* %toput.072, null
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.body
  call void @dput(%struct.dentry* noundef nonnull %toput.072) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body
  %cmp.not = icmp eq %struct.dentry* %dentry.073, %result
  br i1 %cmp.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %call9 = call i32 %acceptable(i8* noundef %context, %struct.dentry* noundef nonnull %dentry.073) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  call void @dput(%struct.dentry* noundef %result) #7
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true, %if.end8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #7
  %next = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.073, i64 0, i32 15, i32 0, i32 0
  %4 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool16.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr2362 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -11
  %5 = bitcast %struct.hlist_node* %add.ptr2362 to %struct.dentry*
  %spec.select68 = select i1 %tobool16.not, %struct.dentry* null, %struct.dentry* %5
  %tobool3.not = icmp eq %struct.dentry* %spec.select68, null
  br i1 %tobool3.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #7
  %tobool28.not = icmp eq %struct.dentry* %dentry.073, null
  br i1 %tobool28.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %for.end
  call void @dput(%struct.dentry* noundef nonnull %dentry.073) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end, %if.then29, %entry, %if.then11
  %retval.0 = phi %struct.dentry* [ %dentry.073, %if.then11 ], [ %result, %entry ], [ null, %if.then29 ], [ null, %for.end ], [ null, %for.end.thread ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @exportfs_get_name(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %dir, i8* noundef %name, %struct.dentry* noundef %child) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dir, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_export_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 9
  %1 = load %struct.export_operations*, %struct.export_operations** %s_export_op, align 8
  %2 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  store %struct.vfsmount* %mnt, %struct.vfsmount** %mnt1, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  store %struct.dentry* %dir, %struct.dentry** %dentry, align 8
  %get_name = getelementptr inbounds %struct.export_operations, %struct.export_operations* %1, i64 0, i32 3
  %3 = load i32 (%struct.dentry*, i8*, %struct.dentry*)*, i32 (%struct.dentry*, i8*, %struct.dentry*)** %get_name, align 8
  %tobool.not = icmp eq i32 (%struct.dentry*, i8*, %struct.dentry*)* %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %3(%struct.dentry* noundef %dir, i8* noundef %name, %struct.dentry* noundef %child) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = call fastcc i32 @get_name(%struct.path* noundef nonnull %path, i8* noundef %name, %struct.dentry* noundef %child) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @lookup_one_len(i8* noundef, %struct.dentry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @exportfs_decode_fh(%struct.vfsmount* noundef %mnt, %struct.fid* noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type, i32 (i8*, %struct.dentry*)* noundef %acceptable, i8* noundef %context) local_unnamed_addr #0 {
entry:
  %call = call %struct.dentry* @exportfs_decode_fh_raw(%struct.vfsmount* noundef %mnt, %struct.fid* noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type, i32 (i8*, %struct.dentry*)* noundef %acceptable, i8* noundef %context) #8
  %0 = bitcast %struct.dentry* %call to i8*
  %call1 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #8
  br i1 %call1, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -12) #8
  %1 = bitcast i8* %call2 to %struct.dentry*
  %cmp = icmp eq %struct.dentry* %call, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -116) #8
  %2 = bitcast i8* %call4 to %struct.dentry*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.end
  %retval.0 = phi %struct.dentry* [ %2, %if.end ], [ %call, %if.then ], [ %call, %entry ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_can_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #8
  %cmp = icmp eq i32 %call, 2097152
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_autodir(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #8
  %cmp = icmp eq i32 %call, 3145728
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__d_entry_type(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 7340032
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dget(%struct.dentry* noundef returned %dentry) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @reconnect_one(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %dentry, i8* noundef %nbuf) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @ERR_PTR(i64 noundef -13) #8
  %0 = bitcast i8* %call to %struct.dentry*
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %1) #8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %2 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_export_op = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 9
  %3 = load %struct.export_operations*, %struct.export_operations** %s_export_op, align 8
  %get_parent = getelementptr inbounds %struct.export_operations, %struct.export_operations* %3, i64 0, i32 4
  %4 = load %struct.dentry* (%struct.dentry*)*, %struct.dentry* (%struct.dentry*)** %get_parent, align 8
  %tobool.not = icmp eq %struct.dentry* (%struct.dentry*)* %4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call %struct.dentry* %4(%struct.dentry* noundef %dentry) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %parent.0 = phi %struct.dentry* [ %call4, %if.then ], [ %0, %entry ]
  %5 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %5) #8
  %6 = bitcast %struct.dentry* %parent.0 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %6) #8
  br i1 %call6, label %cleanup, label %do.end11

do.end11:                                         ; preds = %if.end
  %call12 = call fastcc i32 @exportfs_get_name(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %parent.0, i8* noundef %nbuf, %struct.dentry* noundef %dentry) #8
  switch i32 %call12, label %out_err [
    i32 -2, label %out_reconnected
    i32 0, label %do.end20
  ]

do.end20:                                         ; preds = %do.end11
  %call21 = call i64 @strlen(i8* noundef %nbuf) #7
  %conv = trunc i64 %call21 to i32
  %call22 = call %struct.dentry* @lookup_one_len_unlocked(i8* noundef %nbuf, %struct.dentry* noundef %parent.0, i32 noundef %conv) #7
  %7 = bitcast %struct.dentry* %call22 to i8*
  %call23 = call fastcc i1 @IS_ERR(i8* noundef %7) #8
  br i1 %call23, label %do.end27, label %if.end30

do.end27:                                         ; preds = %do.end20
  %call28 = call fastcc i64 @PTR_ERR(i8* noundef %7) #8
  %conv29 = trunc i64 %call28 to i32
  br label %out_err

if.end30:                                         ; preds = %do.end20
  %cmp31.not = icmp eq %struct.dentry* %call22, %dentry
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @dput(%struct.dentry* noundef %call22) #7
  br label %out_reconnected

if.end34:                                         ; preds = %if.end30
  call void @dput(%struct.dentry* noundef %dentry) #7
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %8 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp35 = icmp eq %struct.dentry* %8, %dentry
  br i1 %cmp35, label %out_err, label %cleanup

out_err:                                          ; preds = %if.end34, %do.end11, %do.end27
  %err.0 = phi i32 [ %conv29, %do.end27 ], [ %call12, %do.end11 ], [ -116, %if.end34 ]
  call void @dput(%struct.dentry* noundef %parent.0) #7
  %conv39 = sext i32 %err.0 to i64
  br label %cleanup.sink.split

out_reconnected:                                  ; preds = %do.end11, %if.then33
  call void @dput(%struct.dentry* noundef %parent.0) #7
  %call41 = call fastcc i1 @dentry_connected(%struct.dentry* noundef %dentry) #8
  br i1 %call41, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_reconnected, %out_err
  %.sink = phi i64 [ %conv39, %out_err ], [ -116, %out_reconnected ]
  %call43 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #8
  %9 = bitcast i8* %call43 to %struct.dentry*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out_reconnected, %if.end34, %if.end
  %retval.0 = phi %struct.dentry* [ %parent.0, %if.end ], [ %parent.0, %if.end34 ], [ null, %out_reconnected ], [ %9, %cleanup.sink.split ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_disconnected(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %dentry) #8
  %d_flags33 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags33, align 8
  %and34 = and i32 %0, 32
  %tobool.not35 = icmp eq i32 %and34, 0
  br i1 %tobool.not35, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %d_flags37 = phi i32* [ %d_flags, %if.end ], [ %d_flags33, %entry ]
  %dentry.addr.036 = phi %struct.dentry* [ %call1, %if.end ], [ %dentry, %entry ]
  %call1 = call %struct.dentry* @dget_parent(%struct.dentry* noundef %dentry.addr.036) #7
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.addr.036, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp eq %struct.dentry* %dentry.addr.036, %1
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %while.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/exportfs/expfs.c\22; .popsection; .long 14472b - 14470b; .short 97; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.addr.036, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.0* %2 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #7
  %3 = load i32, i32* %d_flags37, align 8
  %and17 = and i32 %3, -33
  store i32 %and17, i32* %d_flags37, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #7
  call void @dput(%struct.dentry* noundef %dentry.addr.036) #7
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %call1, i64 0, i32 0
  %4 = load i32, i32* %d_flags, align 8
  %and = and i32 %4, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %dentry.addr.0.lcssa = phi %struct.dentry* [ %dentry, %entry ], [ %call1, %if.end ]
  call void @dput(%struct.dentry* noundef %dentry.addr.0.lcssa) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(%struct.lockref* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @lookup_one_len_unlocked(i8* noundef, %struct.dentry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dentry_connected(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %dentry) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %dentry.addr.0 = phi %struct.dentry* [ %dentry, %entry ], [ %call1, %while.body ]
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.addr.0, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call %struct.dentry* @dget_parent(%struct.dentry* noundef %dentry.addr.0) #7
  call void @dput(%struct.dentry* noundef %dentry.addr.0) #7
  %cmp = icmp eq %struct.dentry* %dentry.addr.0, %call1
  br i1 %cmp, label %return, label %while.cond

return:                                           ; preds = %while.cond, %while.body
  call void @dput(%struct.dentry* noundef %dentry.addr.0) #7
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #7
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #9, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #9, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_name(%struct.path* noundef %path, i8* noundef %name, %struct.dentry* noundef %child) unnamed_addr #0 {
entry:
  %stat = alloca %struct.kstat, align 8
  %child_path = alloca %struct.path, align 8
  %buffer = alloca %struct.getdents_callback, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !16
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 5
  %4 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %5 = bitcast %struct.kstat* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %5) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %5, i8 0, i64 144, i1 false), !annotation !7
  %6 = bitcast %struct.path* %child_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  %mnt = getelementptr inbounds %struct.path, %struct.path* %child_path, i64 0, i32 0
  %mnt2 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %7 = load %struct.vfsmount*, %struct.vfsmount** %mnt2, align 8
  store %struct.vfsmount* %7, %struct.vfsmount** %mnt, align 8
  %dentry3 = getelementptr inbounds %struct.path, %struct.path* %child_path, i64 0, i32 1
  store %struct.dentry* %child, %struct.dentry** %dentry3, align 8
  %8 = bitcast %struct.getdents_callback* %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #9
  %ctx = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buffer, i64 0, i32 0
  %actor = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buffer, i64 0, i32 0, i32 0
  store i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)* @filldir_one, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buffer, i64 0, i32 0, i32 1
  store i64 0, i64* %pos, align 8
  %name4 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buffer, i64 0, i32 1
  store i8* %name, i8** %name4, align 8
  %ino = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buffer, i64 0, i32 2
  %found = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buffer, i64 0, i32 3
  store i32 0, i32* %found, align 8
  %sequence = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %buffer, i64 0, i32 4
  store i32 0, i32* %sequence, align 4
  %tobool.not = icmp eq %struct.inode* %4, null
  br i1 %tobool.not, label %cleanup43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %4, i64 0, i32 0
  %9 = load i16, i16* %i_mode, align 8
  %10 = and i16 %9, -4096
  %cmp = icmp eq i16 %10, 16384
  br i1 %cmp, label %if.end, label %cleanup43

if.end:                                           ; preds = %lor.lhs.false
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %4, i64 0, i32 36, i32 0
  %11 = load %struct.file_operations*, %struct.file_operations** %i_fop, align 8
  %tobool6.not = icmp eq %struct.file_operations* %11, null
  br i1 %tobool6.not, label %cleanup43, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @vfs_getattr_nosec(%struct.path* noundef nonnull %child_path, %struct.kstat* noundef nonnull %stat, i32 noundef 256, i32 noundef 0) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup43

if.end12:                                         ; preds = %if.end8
  %ino13 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 6
  %12 = load i64, i64* %ino13, align 8
  store i64 %12, i64* %ino, align 8
  %call15 = call %struct.file* @dentry_open(%struct.path* noundef %path, i32 noundef 0, %struct.cred* noundef %2) #7
  %13 = bitcast %struct.file* %call15 to i8*
  %call16 = call fastcc i64 @PTR_ERR(i8* noundef %13) #8
  %conv17 = trunc i64 %call16 to i32
  %call18 = call fastcc i1 @IS_ERR(i8* noundef %13) #8
  br i1 %call18, label %cleanup43, label %if.end20

if.end20:                                         ; preds = %if.end12
  %f_op = getelementptr inbounds %struct.file, %struct.file* %call15, i64 0, i32 3
  %14 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %iterate = getelementptr inbounds %struct.file_operations, %struct.file_operations* %14, i64 0, i32 7
  %15 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %iterate, align 8
  %tobool21.not = icmp eq i32 (%struct.file*, %struct.dir_context*)* %15, null
  br i1 %tobool21.not, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end20
  %iterate_shared = getelementptr inbounds %struct.file_operations, %struct.file_operations* %14, i64 0, i32 8
  %16 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %iterate_shared, align 8
  %tobool23.not = icmp eq i32 (%struct.file*, %struct.dir_context*)* %16, null
  br i1 %tobool23.not, label %out_close, label %if.end25

if.end25:                                         ; preds = %land.lhs.true, %if.end20
  store i32 0, i32* %sequence, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end25
  %17 = phi i32 [ %19, %if.end37 ], [ 0, %if.end25 ]
  %call29 = call i32 @iterate_dir(%struct.file* noundef %call15, %struct.dir_context* noundef nonnull %ctx) #7
  %18 = load i32, i32* %found, align 8
  %tobool31.not = icmp eq i32 %18, 0
  br i1 %tobool31.not, label %if.end33, label %out_close

if.end33:                                         ; preds = %while.cond
  %cmp34 = icmp slt i32 %call29, 0
  br i1 %cmp34, label %out_close, label %if.end37

if.end37:                                         ; preds = %if.end33
  %19 = load i32, i32* %sequence, align 4
  %cmp39 = icmp eq i32 %17, %19
  br i1 %cmp39, label %out_close, label %while.cond

out_close:                                        ; preds = %if.end37, %if.end33, %while.cond, %land.lhs.true
  %error.1 = phi i32 [ -22, %land.lhs.true ], [ -2, %if.end37 ], [ 0, %while.cond ], [ %call29, %if.end33 ]
  call void @fput(%struct.file* noundef %call15) #7
  br label %cleanup43

cleanup43:                                        ; preds = %out_close, %lor.lhs.false, %entry, %if.end, %if.end12, %if.end8
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %conv17, %if.end12 ], [ %error.1, %out_close ], [ -22, %if.end ], [ -20, %lor.lhs.false ], [ -20, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %5) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @filldir_one(%struct.dir_context* nocapture noundef %ctx, i8* noundef %name, i32 noundef %len, i64 noundef %pos, i64 noundef %ino, i32 noundef %d_type) #0 {
entry:
  %0 = bitcast %struct.dir_context* %ctx to %struct.getdents_callback*
  %sequence = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %0, i64 0, i32 4
  %1 = load i32, i32* %sequence, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %sequence, align 4
  %2 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 1, i32 1
  %3 = load i64, i64* %2, align 8
  %cmp = icmp eq i64 %3, %ino
  %cmp2 = icmp slt i32 %len, 256
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %name3 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 1
  %4 = bitcast %struct.dir_context* %name3 to i8**
  %5 = load i8*, i8** %4, align 8
  %conv = sext i32 %len to i64
  %call = call i8* @memcpy(i8* noundef %5, i8* noundef %name, i64 noundef %conv) #7
  %6 = load i8*, i8** %4, align 8
  %arrayidx = getelementptr i8, i8* %6, i64 %conv
  store i8 0, i8* %arrayidx, align 1
  %found = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 2
  %7 = bitcast %struct.dir_context* %found to i32*
  store i32 1, i32* %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %result.0 = phi i32 [ -1, %if.then ], [ 0, %entry ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr_nosec(%struct.path* noundef, %struct.kstat* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @dentry_open(%struct.path* noundef, i32 noundef, %struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_dir(%struct.file* noundef, %struct.dir_context* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152048443}
!11 = !{i64 2152046883}
!12 = !{i64 2149555181}
!13 = !{i64 2148047966, i64 2148047999, i64 2148048052, i64 2148048111, i64 2148048145, i64 2148048200, i64 2148048229, i64 2148048249}
!14 = !{i64 2149562462}
!15 = !{i64 2149354692}
!16 = !{i64 1366446}
