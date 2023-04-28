; ModuleID = 'fs/pnode.c'
source_filename = "fs/pnode.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.62, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.63, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.57, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type opaque
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.35 }
%union.anon.35 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.32, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
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
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.17, %union.anon.18, i32 }
%struct.request_queue = type opaque
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.19 }
%struct.anon.19 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.23 }
%struct.anon.23 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.31, i32, [12 x i8] }
%union.anon.31 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.33, %union.anon.48, %struct.atomic_t, [8 x i8] }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.48 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.49, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.49 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.52 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.50, %struct.qspinlock }
%union.anon.50 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.52 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.16 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.16 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.55 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.57 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.58 }
%union.anon.58 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.5, i32 }
%union.anon.5 = type { %struct.kuid_t }
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
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%union.anon.62 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mnt_namespace = type { %struct.ns_common, %struct.mount*, %struct.list_head, %struct.spinlock, %struct.user_namespace*, %struct.ucounts*, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.63 = type { %struct.hlist_node }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.hlist_head = type { %struct.hlist_node* }

@last_dest = internal unnamed_addr global %struct.mount* null, align 8
@first_source = internal unnamed_addr global %struct.mount* null, align 8
@last_source = internal unnamed_addr global %struct.mount* null, align 8
@mp = internal unnamed_addr global %struct.mountpoint* null, align 8
@list = internal unnamed_addr global %struct.hlist_head* null, align 8
@dest_master = internal unnamed_addr global %struct.mount* null, align 8
@mount_lock = external dso_local global %struct.seqlock_t, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_dominating_id(%struct.mount* nocapture noundef readonly %mnt, %struct.path* noundef %root) local_unnamed_addr #0 {
entry:
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %mnt.pn = phi %struct.mount* [ %mnt, %entry ], [ %m.0, %for.body ]
  %m.0.in = getelementptr inbounds %struct.mount, %struct.mount* %mnt.pn, i64 0, i32 15
  %m.0 = load %struct.mount*, %struct.mount** %m.0.in, align 8
  %cmp.not = icmp eq %struct.mount* %m.0, null
  br i1 %cmp.not, label %cleanup2, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %call = call fastcc %struct.mount* @get_peer_under_root(%struct.mount* noundef nonnull %m.0, %struct.mnt_namespace* noundef %0, %struct.path* noundef %root) #8
  %tobool.not = icmp eq %struct.mount* %call, null
  br i1 %tobool.not, label %for.cond, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 21
  %1 = load i32, i32* %mnt_group_id, align 4
  br label %cleanup2

cleanup2:                                         ; preds = %for.cond, %cleanup.thread
  %retval.2 = phi i32 [ %1, %cleanup.thread ], [ 0, %for.cond ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mount* @get_peer_under_root(%struct.mount* noundef %mnt, %struct.mnt_namespace* noundef readnone %ns, %struct.path* noundef %root) unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %m.0 = phi %struct.mount* [ %mnt, %entry ], [ %call2, %if.end ]
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %m.0, i64 0, i32 16
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %cmp = icmp eq %struct.mnt_namespace* %0, %ns
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %m.0, i64 0, i32 3, i32 0
  %1 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call = call i1 @is_path_reachable(%struct.mount* noundef %m.0, %struct.dentry* noundef %1, %struct.path* noundef %root) #9
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %do.body
  %call2 = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %m.0) #8
  %cmp3.not = icmp eq %struct.mount* %call2, %mnt
  br i1 %cmp3.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %if.end, %land.lhs.true
  %retval.0 = phi %struct.mount* [ %m.0, %land.lhs.true ], [ null, %if.end ]
  ret %struct.mount* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @change_mnt_propagation(%struct.mount* noundef %mnt, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %type, 1048576
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @set_mnt_shared(%struct.mount* noundef %mnt) #8
  br label %if.end9

if.end:                                           ; preds = %entry
  call fastcc void @do_make_slave(%struct.mount* noundef %mnt) #8
  %cmp1.not = icmp eq i32 %type, 524288
  br i1 %cmp1.not, label %if.end9, label %if.then2

if.then2:                                         ; preds = %if.end
  %mnt_slave = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 14
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_slave) #8
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 15
  store %struct.mount* null, %struct.mount** %mnt_master, align 8
  %cmp3 = icmp eq i32 %type, 131072
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %or = or i32 %0, 8192
  store i32 %or, i32* %mnt_flags, align 8
  br label %if.end9

if.else:                                          ; preds = %if.then2
  %and = and i32 %0, -8193
  store i32 %and, i32* %mnt_flags, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.else, %if.then, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_mnt_shared(%struct.mount* nocapture noundef %mnt) unnamed_addr #2 {
entry:
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, -12289
  %or = or i32 %and, 4096
  store i32 %or, i32* %mnt_flags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_make_slave(%struct.mount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_share = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 12
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_share) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 4096
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @mnt_release_group_id(%struct.mount* noundef %mnt) #9
  %1 = load i32, i32* %mnt_flags, align 8
  %and6 = and i32 %1, -4097
  store i32 %and6, i32* %mnt_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 15
  %2 = load %struct.mount*, %struct.mount** %mnt_master, align 8
  %tobool7.not = icmp eq %struct.mount* %2, null
  br i1 %tobool7.not, label %if.then8, label %if.end25

if.then8:                                         ; preds = %if.end
  %mnt_slave_list = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 13
  %call91 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_slave_list) #8
  %tobool10.not2 = icmp eq i32 %call91, 0
  br i1 %tobool10.not2, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %if.then8
  %3 = bitcast %struct.list_head* %mnt_slave_list to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %5) #8
  %mnt_master11 = getelementptr i8, i8* %4, i64 16
  %6 = bitcast i8* %mnt_master11 to %struct.mount**
  store %struct.mount* null, %struct.mount** %6, align 8
  %call9 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_slave_list) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %while.body, label %cleanup

if.else:                                          ; preds = %entry
  %call13 = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %mnt) #8
  %cmp.not3 = icmp eq %struct.mount* %call13, %mnt
  br i1 %cmp.not3, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %mnt_root16 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %mnt_root16, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %m.04 = phi %struct.mount* [ %call13, %for.body.lr.ph ], [ %call20, %for.inc ]
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %m.04, i64 0, i32 3, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp17 = icmp eq %struct.dentry* %8, %7
  br i1 %cmp17, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %call20 = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %m.04) #8
  %cmp.not = icmp eq %struct.mount* %call20, %mnt
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %if.else
  %master.0 = phi %struct.mount* [ %mnt, %if.else ], [ %m.04, %for.body ], [ %call13, %for.inc ]
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_share) #8
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 21
  store i32 0, i32* %mnt_group_id, align 4
  %mnt_flags23 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %9 = load i32, i32* %mnt_flags23, align 8
  %and24 = and i32 %9, -4097
  store i32 %and24, i32* %mnt_flags23, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end, %for.end
  %master.1 = phi %struct.mount* [ %2, %if.end ], [ %master.0, %for.end ]
  %mnt_slave_list27 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 13
  %10 = bitcast %struct.list_head* %mnt_slave_list27 to i8**
  %.pn6 = load i8*, i8** %10, align 8
  %11 = bitcast i8* %.pn6 to %struct.list_head*
  %cmp37.not7 = icmp eq %struct.list_head* %mnt_slave_list27, %11
  br i1 %cmp37.not7, label %for.end50, label %for.body39

for.body39:                                       ; preds = %if.end25, %for.body39
  %.pn8 = phi i8* [ %.pn, %for.body39 ], [ %.pn6, %if.end25 ]
  %mnt_master40 = getelementptr i8, i8* %.pn8, i64 16
  %12 = bitcast i8* %mnt_master40 to %struct.mount**
  store %struct.mount* %master.1, %struct.mount** %12, align 8
  %13 = bitcast i8* %.pn8 to i8**
  %.pn = load i8*, i8** %13, align 8
  %14 = bitcast i8* %.pn to %struct.list_head*
  %cmp37.not = icmp eq %struct.list_head* %mnt_slave_list27, %14
  br i1 %cmp37.not, label %for.end50, label %for.body39

for.end50:                                        ; preds = %for.body39, %if.end25
  %mnt_slave51 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 14
  %mnt_slave_list52 = getelementptr inbounds %struct.mount, %struct.mount* %master.1, i64 0, i32 13
  call fastcc void @list_move(%struct.list_head* noundef %mnt_slave51, %struct.list_head* noundef %mnt_slave_list52) #8
  %prev = getelementptr inbounds %struct.mount, %struct.mount* %master.1, i64 0, i32 13, i32 1
  %15 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @list_splice(%struct.list_head* noundef %mnt_slave_list27, %struct.list_head* noundef %15) #8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %mnt_slave_list27) #8
  %mnt_master56 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 15
  store %struct.mount* %master.1, %struct.mount** %mnt_master56, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.then8, %for.end50
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @propagate_mnt(%struct.mount* noundef %dest_mnt, %struct.mountpoint* noundef %dest_mp, %struct.mount* noundef %source_mnt, %struct.hlist_head* noundef %tree_list) local_unnamed_addr #0 {
entry:
  store %struct.mount* %dest_mnt, %struct.mount** @last_dest, align 8
  store %struct.mount* %source_mnt, %struct.mount** @first_source, align 8
  store %struct.mount* %source_mnt, %struct.mount** @last_source, align 8
  store %struct.mountpoint* %dest_mp, %struct.mountpoint** @mp, align 8
  store %struct.hlist_head* %tree_list, %struct.hlist_head** @list, align 8
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %dest_mnt, i64 0, i32 15
  %0 = load %struct.mount*, %struct.mount** %mnt_master, align 8
  store %struct.mount* %0, %struct.mount** @dest_master, align 8
  %call = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %dest_mnt) #8
  %cmp.not84 = icmp eq %struct.mount* %call, %dest_mnt
  br i1 %cmp.not84, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %n.085 = phi %struct.mount* [ %call2, %for.inc ], [ %call, %entry ]
  %call1 = call fastcc i32 @propagate_one(%struct.mount* noundef %n.085) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.inc, label %out

for.inc:                                          ; preds = %for.body
  %call2 = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %n.085) #8
  %cmp.not = icmp eq %struct.mount* %call2, %dest_mnt
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %call3 = call fastcc %struct.mount* @next_group(%struct.mount* noundef %dest_mnt, %struct.mount* noundef %dest_mnt) #8
  %tobool5.not86 = icmp eq %struct.mount* %call3, null
  br i1 %tobool5.not86, label %out, label %do.body.preheader

do.body.preheader:                                ; preds = %for.end, %for.inc13
  %m.087 = phi %struct.mount* [ %call14, %for.inc13 ], [ %call3, %for.end ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %if.end10
  %n.1 = phi %struct.mount* [ %call11, %if.end10 ], [ %m.087, %do.body.preheader ]
  %call7 = call fastcc i32 @propagate_one(%struct.mount* noundef %n.1) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %out

if.end10:                                         ; preds = %do.body
  %call11 = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %n.1) #8
  %cmp12.not = icmp eq %struct.mount* %call11, %m.087
  br i1 %cmp12.not, label %for.inc13, label %do.body

for.inc13:                                        ; preds = %if.end10
  %call14 = call fastcc %struct.mount* @next_group(%struct.mount* noundef nonnull %m.087, %struct.mount* noundef %dest_mnt) #8
  %tobool5.not = icmp eq %struct.mount* %call14, null
  br i1 %tobool5.not, label %out, label %do.body.preheader

out:                                              ; preds = %for.body, %for.inc13, %do.body, %for.end
  %ret.2 = phi i32 [ 0, %for.end ], [ %call7, %do.body ], [ 0, %for.inc13 ], [ %call1, %for.body ]
  call fastcc void @read_seqlock_excl() #8
  %1 = bitcast %struct.hlist_head* %tree_list to %struct.mount**
  %n.288 = load %struct.mount*, %struct.mount** %1, align 8
  %tobool22.not89 = icmp eq %struct.mount* %n.288, null
  br i1 %tobool22.not89, label %for.end44, label %for.body23

for.body23:                                       ; preds = %out, %for.inc30
  %n.290 = phi %struct.mount* [ %n.2, %for.inc30 ], [ %n.288, %out ]
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %n.290, i64 0, i32 1
  %2 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt_master24 = getelementptr inbounds %struct.mount, %struct.mount* %2, i64 0, i32 15
  %3 = load %struct.mount*, %struct.mount** %mnt_master24, align 8
  %4 = load %struct.mount*, %struct.mount** %mnt_master, align 8
  %cmp26.not = icmp eq %struct.mount* %3, %4
  br i1 %cmp26.not, label %for.inc30, label %if.then27

if.then27:                                        ; preds = %for.body23
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %3, i64 0, i32 3, i32 2
  %5 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %5, -67108865
  store i32 %and, i32* %mnt_flags, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %for.body23, %if.then27
  %6 = bitcast %struct.mount* %n.290 to %struct.mount**
  %n.2 = load %struct.mount*, %struct.mount** %6, align 8
  %tobool22.not = icmp eq %struct.mount* %n.2, null
  br i1 %tobool22.not, label %for.end44, label %for.body23

for.end44:                                        ; preds = %for.inc30, %out
  call fastcc void @read_sequnlock_excl() #8
  ret i32 %ret.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mount* @next_peer(%struct.mount* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.mount, %struct.mount* %p, i64 0, i32 12, i32 0
  %0 = bitcast %struct.list_head** %next to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -176
  %2 = bitcast i8* %add.ptr to %struct.mount*
  ret %struct.mount* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @propagate_one(%struct.mount* noundef %m) unnamed_addr #0 {
entry:
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %m, i64 0, i32 16
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool.not = icmp eq %struct.mnt_namespace* %0, null
  br i1 %tobool.not, label %cleanup48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef nonnull %0) #8
  br i1 %call, label %cleanup48, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.mountpoint*, %struct.mountpoint** @mp, align 8
  %m_dentry = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %1, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %m_dentry, align 8
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %m, i64 0, i32 3, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call2 = call i1 @is_subdir(%struct.dentry* noundef %2, %struct.dentry* noundef %3) #9
  br i1 %call2, label %if.end4, label %cleanup48

if.end4:                                          ; preds = %if.end
  %4 = load %struct.mount*, %struct.mount** @last_dest, align 8
  %call5 = call fastcc i1 @peers(%struct.mount* noundef %m, %struct.mount* noundef %4) #8
  br i1 %call5, label %if.end4.if.end29_crit_edge, label %for.cond.preheader

if.end4.if.end29_crit_edge:                       ; preds = %if.end4
  %.pre = load %struct.mount*, %struct.mount** @last_source, align 8
  br label %if.end29

for.cond.preheader:                               ; preds = %if.end4
  %5 = load %struct.mount*, %struct.mount** @dest_master, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %lor.lhs.false7
  %n.0 = phi %struct.mount* [ %6, %lor.lhs.false7 ], [ %m, %for.cond.preheader ]
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %n.0, i64 0, i32 15
  %6 = load %struct.mount*, %struct.mount** %mnt_master, align 8
  %cmp = icmp eq %struct.mount* %6, %5
  br i1 %cmp, label %for.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %for.cond
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %6, i64 0, i32 3, i32 2
  %7 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %7, 67108864
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %lor.lhs.false7
  %.lcssa100 = phi %struct.mount* [ %5, %for.cond ], [ %6, %lor.lhs.false7 ]
  %8 = load %struct.mount*, %struct.mount** @first_source, align 8
  %last_source.promoted = load %struct.mount*, %struct.mount** @last_source, align 8
  %cmp1296 = icmp eq %struct.mount* %last_source.promoted, %8
  br i1 %cmp1296, label %do.end, label %if.end14

if.end14:                                         ; preds = %for.end, %cleanup
  %9 = phi %struct.mount* [ %13, %cleanup ], [ %last_source.promoted, %for.end ]
  %.in = getelementptr inbounds %struct.mount, %struct.mount* %9, i64 0, i32 1
  %10 = load %struct.mount*, %struct.mount** %.in, align 8
  %mnt_master15 = getelementptr inbounds %struct.mount, %struct.mount* %10, i64 0, i32 15
  %11 = load %struct.mount*, %struct.mount** %mnt_master15, align 8
  %cmp16 = icmp eq %struct.mount* %11, %.lcssa100
  br i1 %cmp16, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end14
  %call18 = call fastcc i1 @peers(%struct.mount* noundef %n.0, %struct.mount* noundef %10) #8
  br i1 %call18, label %do.end, label %cleanup.thread87

cleanup.thread87:                                 ; preds = %land.lhs.true
  %mnt_master2188 = getelementptr inbounds %struct.mount, %struct.mount* %9, i64 0, i32 15
  %12 = load %struct.mount*, %struct.mount** %mnt_master2188, align 8
  store %struct.mount* %12, %struct.mount** @last_source, align 8
  br label %do.end

cleanup:                                          ; preds = %if.end14
  %mnt_master21 = getelementptr inbounds %struct.mount, %struct.mount* %9, i64 0, i32 15
  %13 = load %struct.mount*, %struct.mount** %mnt_master21, align 8
  store %struct.mount* %13, %struct.mount** @last_source, align 8
  %cmp12 = icmp eq %struct.mount* %13, %8
  br i1 %cmp12, label %do.end, label %if.end14

do.end:                                           ; preds = %cleanup, %for.end, %land.lhs.true, %cleanup.thread87
  %14 = phi %struct.mount* [ %8, %for.end ], [ %9, %land.lhs.true ], [ %12, %cleanup.thread87 ], [ %8, %cleanup ]
  %mnt_flags24 = getelementptr inbounds %struct.mount, %struct.mount* %m, i64 0, i32 3, i32 2
  %15 = load i32, i32* %mnt_flags24, align 8
  %and25 = and i32 %15, 4096
  %tobool26.not = icmp eq i32 %and25, 0
  %spec.select = select i1 %tobool26.not, i32 2, i32 10
  br label %if.end29

if.end29:                                         ; preds = %if.end4.if.end29_crit_edge, %do.end
  %16 = phi %struct.mount* [ %14, %do.end ], [ %.pre, %if.end4.if.end29_crit_edge ]
  %type.1 = phi i32 [ %spec.select, %do.end ], [ 8, %if.end4.if.end29_crit_edge ]
  %mnt_root31 = getelementptr inbounds %struct.mount, %struct.mount* %16, i64 0, i32 3, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %mnt_root31, align 8
  %call32 = call %struct.mount* @copy_tree(%struct.mount* noundef %16, %struct.dentry* noundef %17, i32 noundef %type.1) #9
  %18 = bitcast %struct.mount* %call32 to i8*
  %call33 = call fastcc i1 @IS_ERR(i8* noundef %18) #8
  br i1 %call33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end29
  %call35 = call fastcc i64 @PTR_ERR(i8* noundef %18) #8
  %conv = trunc i64 %call35 to i32
  br label %cleanup48

if.end36:                                         ; preds = %if.end29
  call fastcc void @read_seqlock_excl() #8
  %19 = load %struct.mountpoint*, %struct.mountpoint** @mp, align 8
  call void @mnt_set_mountpoint(%struct.mount* noundef %m, %struct.mountpoint* noundef %19, %struct.mount* noundef %call32) #9
  %mnt_master37 = getelementptr inbounds %struct.mount, %struct.mount* %m, i64 0, i32 15
  %20 = load %struct.mount*, %struct.mount** %mnt_master37, align 8
  %21 = load %struct.mount*, %struct.mount** @dest_master, align 8
  %cmp38.not = icmp eq %struct.mount* %20, %21
  br i1 %cmp38.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %if.end36
  %mnt_flags43 = getelementptr inbounds %struct.mount, %struct.mount* %20, i64 0, i32 3, i32 2
  %22 = load i32, i32* %mnt_flags43, align 8
  %or44 = or i32 %22, 67108864
  store i32 %or44, i32* %mnt_flags43, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end36
  call fastcc void @read_sequnlock_excl() #8
  store %struct.mount* %m, %struct.mount** @last_dest, align 8
  store %struct.mount* %call32, %struct.mount** @last_source, align 8
  %mnt_hash = getelementptr inbounds %struct.mount, %struct.mount* %call32, i64 0, i32 0
  %23 = load %struct.hlist_head*, %struct.hlist_head** @list, align 8
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %mnt_hash, %struct.hlist_head* noundef %23) #8
  %24 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %call47 = call i32 @count_mounts(%struct.mnt_namespace* noundef %24, %struct.mount* noundef %call32) #9
  br label %cleanup48

cleanup48:                                        ; preds = %if.end, %entry, %lor.lhs.false, %if.end45, %if.then34
  %retval.0 = phi i32 [ %conv, %if.then34 ], [ %call47, %if.end45 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.mount* @next_group(%struct.mount* noundef %m, %struct.mount* noundef readonly %origin) unnamed_addr #3 {
entry:
  %mnt_group_id8 = getelementptr inbounds %struct.mount, %struct.mount* %origin, i64 0, i32 21
  br label %while.body2

while.body2:                                      ; preds = %while.body2.backedge, %entry
  %m.addr.1 = phi %struct.mount* [ %m, %entry ], [ %m.addr.1.be, %while.body2.backedge ]
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.1, i64 0, i32 16
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool.not = icmp eq %struct.mnt_namespace* %0, null
  br i1 %tobool.not, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body2
  %call = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef nonnull %0) #8
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mnt_slave_list = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.1, i64 0, i32 13
  %call4 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_slave_list) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call6 = call fastcc %struct.mount* @first_slave(%struct.mount* noundef %m.addr.1) #8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false, %while.body2
  %call7 = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %m.addr.1) #8
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.1, i64 0, i32 21
  %1 = load i32, i32* %mnt_group_id, align 4
  %2 = load i32, i32* %mnt_group_id8, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %cmp10 = icmp eq %struct.mount* %call7, %origin
  br i1 %cmp10, label %return, label %while.body2.backedge

if.else:                                          ; preds = %if.end
  %next13 = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.1, i64 0, i32 14, i32 0
  %3 = load %struct.list_head*, %struct.list_head** %next13, align 8
  %mnt_slave14 = getelementptr inbounds %struct.mount, %struct.mount* %call7, i64 0, i32 14
  %cmp15.not = icmp eq %struct.list_head* %3, %mnt_slave14
  br i1 %cmp15.not, label %while.body2.backedge, label %while.body20.preheader

while.body20.preheader:                           ; preds = %if.else
  %next22.phi.trans.insert = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.1, i64 0, i32 14, i32 0
  %.pre = load %struct.list_head*, %struct.list_head** %next22.phi.trans.insert, align 8
  br label %while.body20

while.body20:                                     ; preds = %while.body20.preheader, %if.end33
  %4 = phi %struct.list_head* [ %7, %if.end33 ], [ %.pre, %while.body20.preheader ]
  %m.addr.3 = phi %struct.mount* [ %5, %if.end33 ], [ %m.addr.1, %while.body20.preheader ]
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.3, i64 0, i32 15
  %5 = load %struct.mount*, %struct.mount** %mnt_master, align 8
  %mnt_slave_list23 = getelementptr inbounds %struct.mount, %struct.mount* %5, i64 0, i32 13
  %cmp24.not = icmp eq %struct.list_head* %4, %mnt_slave_list23
  br i1 %cmp24.not, label %if.end27, label %cleanup40.thread78

cleanup40.thread78:                               ; preds = %while.body20
  %call26 = call fastcc %struct.mount* @next_slave(%struct.mount* noundef %m.addr.3) #8
  br label %return

if.end27:                                         ; preds = %while.body20
  %call28 = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %5) #8
  %mnt_group_id29 = getelementptr inbounds %struct.mount, %struct.mount* %5, i64 0, i32 21
  %6 = load i32, i32* %mnt_group_id29, align 4
  %cmp31 = icmp eq i32 %6, %2
  br i1 %cmp31, label %while.end43, label %if.end33

if.end33:                                         ; preds = %if.end27
  %next35 = getelementptr inbounds %struct.mount, %struct.mount* %5, i64 0, i32 14, i32 0
  %7 = load %struct.list_head*, %struct.list_head** %next35, align 8
  %mnt_slave36 = getelementptr inbounds %struct.mount, %struct.mount* %call28, i64 0, i32 14
  %cmp37 = icmp eq %struct.list_head* %7, %mnt_slave36
  br i1 %cmp37, label %while.end43, label %while.body20

while.end43:                                      ; preds = %if.end33, %if.end27
  %cmp44 = icmp eq %struct.mount* %call28, %origin
  br i1 %cmp44, label %return, label %while.body2.backedge

while.body2.backedge:                             ; preds = %while.end43, %if.then9, %if.else
  %m.addr.1.be = phi %struct.mount* [ %call28, %while.end43 ], [ %call7, %if.then9 ], [ %call7, %if.else ]
  br label %while.body2

return:                                           ; preds = %while.end43, %if.then9, %if.then, %cleanup40.thread78
  %retval.5 = phi %struct.mount* [ %call26, %cleanup40.thread78 ], [ %call6, %if.then ], [ null, %if.then9 ], [ null, %while.end43 ]
  ret %struct.mount* %retval.5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_seqlock_excl() unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_sequnlock_excl() unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_unlock() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @propagate_mount_busy(%struct.mount* noundef %mnt, i32 noundef %refcnt) local_unnamed_addr #0 {
entry:
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 1
  %0 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %cmp = icmp eq %struct.mount* %0, %mnt
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @do_refcount_check(%struct.mount* noundef %mnt, i32 noundef %refcnt) #8
  br label %cleanup27

if.end:                                           ; preds = %entry
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 6
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_mounts) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = call fastcc i32 @do_refcount_check(%struct.mount* noundef %mnt, i32 noundef %refcnt) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup27

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = call fastcc %struct.mount* @propagation_next(%struct.mount* noundef %0, %struct.mount* noundef %0) #8
  %tobool7.not52 = icmp eq %struct.mount* %call6, null
  br i1 %tobool7.not52, label %cleanup27, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %m.053 = phi %struct.mount* [ %call6, %for.body.lr.ph ], [ %call26, %for.inc ]
  %mnt8 = getelementptr inbounds %struct.mount, %struct.mount* %m.053, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %mnt_mountpoint, align 8
  %call9 = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %mnt8, %struct.dentry* noundef %1) #9
  %tobool10.not = icmp eq %struct.mount* %call9, null
  br i1 %tobool10.not, label %for.inc, label %if.end12

if.end12:                                         ; preds = %for.body
  %call13 = call fastcc %struct.mount* @find_topper(%struct.mount* noundef nonnull %call9) #8
  %tobool14.not = icmp eq %struct.mount* %call13, null
  br i1 %tobool14.not, label %if.else, label %if.end21

if.else:                                          ; preds = %if.end12
  %mnt_mounts16 = getelementptr inbounds %struct.mount, %struct.mount* %call9, i64 0, i32 6
  %call17 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_mounts16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc, label %if.end21

if.end21:                                         ; preds = %if.end12, %if.else
  %count.0 = phi i32 [ 1, %if.else ], [ 2, %if.end12 ]
  %call22 = call fastcc i32 @do_refcount_check(%struct.mount* noundef nonnull %call9, i32 noundef %count.0) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.inc, label %cleanup27

for.inc:                                          ; preds = %if.end21, %for.body, %if.else
  %call26 = call fastcc %struct.mount* @propagation_next(%struct.mount* noundef nonnull %m.053, %struct.mount* noundef %0) #8
  %tobool7.not = icmp eq %struct.mount* %call26, null
  br i1 %tobool7.not, label %cleanup27, label %for.body

cleanup27:                                        ; preds = %for.inc, %if.end21, %if.end5, %if.end, %lor.lhs.false, %if.then
  %retval.2 = phi i32 [ %call, %if.then ], [ 1, %lor.lhs.false ], [ 1, %if.end ], [ 0, %if.end5 ], [ 0, %for.inc ], [ 1, %if.end21 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_refcount_check(%struct.mount* noundef %mnt, i32 noundef %count) unnamed_addr #0 {
entry:
  %call = call i32 @mnt_get_count(%struct.mount* noundef %mnt) #9
  %cmp = icmp sgt i32 %call, %count
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.mount* @propagation_next(%struct.mount* noundef %m, %struct.mount* noundef readonly %origin) unnamed_addr #3 {
entry:
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %m, i64 0, i32 16
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool.not = icmp eq %struct.mnt_namespace* %0, null
  br i1 %tobool.not, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef nonnull %0) #8
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mnt_slave_list = getelementptr inbounds %struct.mount, %struct.mount* %m, i64 0, i32 13
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_slave_list) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call4 = call fastcc %struct.mount* @first_slave(%struct.mount* noundef %m) #8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false, %entry
  %mnt_master5 = getelementptr inbounds %struct.mount, %struct.mount* %origin, i64 0, i32 15
  %1 = load %struct.mount*, %struct.mount** %mnt_master5, align 8
  br label %while.body

while.body:                                       ; preds = %if.else, %if.end
  %m.addr.0 = phi %struct.mount* [ %m, %if.end ], [ %2, %if.else ]
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.0, i64 0, i32 15
  %2 = load %struct.mount*, %struct.mount** %mnt_master, align 8
  %cmp = icmp eq %struct.mount* %2, %1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %call7 = call fastcc %struct.mount* @next_peer(%struct.mount* noundef %m.addr.0) #8
  %cmp8 = icmp eq %struct.mount* %call7, %origin
  %cond = select i1 %cmp8, %struct.mount* null, %struct.mount* %call7
  br label %return

if.else:                                          ; preds = %while.body
  %next9 = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.0, i64 0, i32 14, i32 0
  %3 = load %struct.list_head*, %struct.list_head** %next9, align 8
  %mnt_slave_list10 = getelementptr inbounds %struct.mount, %struct.mount* %2, i64 0, i32 13
  %cmp11.not = icmp eq %struct.list_head* %3, %mnt_slave_list10
  br i1 %cmp11.not, label %while.body, label %if.then12

if.then12:                                        ; preds = %if.else
  %call13 = call fastcc %struct.mount* @next_slave(%struct.mount* noundef %m.addr.0) #8
  br label %return

return:                                           ; preds = %if.then12, %if.then6, %if.then
  %retval.2 = phi %struct.mount* [ %call4, %if.then ], [ %call13, %if.then12 ], [ %cond, %if.then6 ]
  ret %struct.mount* %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef, %struct.dentry* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.mount* @find_topper(%struct.mount* noundef %mnt) unnamed_addr #5 {
entry:
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 6
  %call = call fastcc i32 @list_is_singular(%struct.list_head* noundef %mnt_mounts) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.list_head* %mnt_mounts to i8**
  %1 = load i8*, i8** %0, align 8
  %mnt_mountpoint = getelementptr i8, i8* %1, i64 -80
  %2 = bitcast i8* %mnt_mountpoint to %struct.dentry**
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 0
  %4 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp.not = icmp eq %struct.dentry* %3, %4
  br i1 %cmp.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, i8* %1, i64 -104
  %5 = bitcast i8* %add.ptr to %struct.mount*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi %struct.mount* [ %5, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.mount* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @propagate_mount_unlock(%struct.mount* noundef readonly %mnt) local_unnamed_addr #0 {
entry:
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 1
  %0 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %cmp = icmp eq %struct.mount* %0, %mnt
  br i1 %cmp, label %do.body2, label %do.end7, !prof !7

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/pnode.c\22; .popsection; .long 14472b - 14470b; .short 417; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  unreachable

do.end7:                                          ; preds = %entry
  %call = call fastcc %struct.mount* @propagation_next(%struct.mount* noundef %0, %struct.mount* noundef %0) #8
  %tobool8.not27 = icmp eq %struct.mount* %call, null
  br i1 %tobool8.not27, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end7
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %m.028 = phi %struct.mount* [ %call, %for.body.lr.ph ], [ %call15, %for.inc ]
  %mnt9 = getelementptr inbounds %struct.mount, %struct.mount* %m.028, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %mnt_mountpoint, align 8
  %call10 = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %mnt9, %struct.dentry* noundef %1) #9
  %tobool11.not = icmp eq %struct.mount* %call10, null
  br i1 %tobool11.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call10, i64 0, i32 3, i32 2
  %2 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %2, -8388609
  store i32 %and, i32* %mnt_flags, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then12
  %call15 = call fastcc %struct.mount* @propagation_next(%struct.mount* noundef nonnull %m.028, %struct.mount* noundef %0) #8
  %tobool8.not = icmp eq %struct.mount* %call15, null
  br i1 %tobool8.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %do.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @propagate_umount(%struct.list_head* noundef %list) local_unnamed_addr #0 {
entry:
  %to_restore = alloca %struct.list_head, align 8
  %to_umount = alloca %struct.list_head, align 8
  %visited = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %to_restore to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %to_restore, i64 0, i32 0
  store %struct.list_head* %to_restore, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %to_restore, i64 0, i32 1
  store %struct.list_head* %to_restore, %struct.list_head** %prev, align 8
  %1 = bitcast %struct.list_head* %to_umount to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %to_umount, i64 0, i32 0
  store %struct.list_head* %to_umount, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %to_umount, i64 0, i32 1
  store %struct.list_head* %to_umount, %struct.list_head** %prev2, align 8
  %2 = bitcast %struct.list_head* %visited to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %visited, i64 0, i32 0
  store %struct.list_head* %visited, %struct.list_head** %next3, align 8
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %visited, i64 0, i32 1
  store %struct.list_head* %visited, %struct.list_head** %prev4, align 8
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %3 = bitcast %struct.list_head** %prev5 to i8**
  %.pn80 = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn80 to %struct.list_head*
  %cmp.not81 = icmp eq %struct.list_head* %4, %list
  br i1 %cmp.not81, label %for.end48, label %for.body

for.body:                                         ; preds = %entry, %cleanup35
  %.pn82 = phi i8* [ %.pn, %cleanup35 ], [ %.pn80, %entry ]
  %mnt_parent = getelementptr i8, i8* %.pn82, i64 -128
  %5 = bitcast i8* %mnt_parent to %struct.mount**
  %6 = load %struct.mount*, %struct.mount** %5, align 8
  %mnt_umounting = getelementptr i8, i8* %.pn82, i64 120
  %7 = bitcast i8* %mnt_umounting to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %7) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup35, label %if.end

if.end:                                           ; preds = %for.body
  call fastcc void @list_add_tail(%struct.list_head* noundef %7, %struct.list_head* noundef nonnull %visited) #8
  %call7 = call fastcc %struct.mount* @propagation_next(%struct.mount* noundef %6, %struct.mount* noundef %6) #8
  %tobool9.not78 = icmp eq %struct.mount* %call7, null
  br i1 %tobool9.not78, label %cleanup35, label %for.body10.lr.ph

for.body10.lr.ph:                                 ; preds = %if.end
  %mnt_mountpoint = getelementptr i8, i8* %.pn82, i64 -120
  %8 = bitcast i8* %mnt_mountpoint to %struct.dentry**
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %cleanup
  %m.079 = phi %struct.mount* [ %call7, %for.body10.lr.ph ], [ %call34, %cleanup ]
  %mnt11 = getelementptr inbounds %struct.mount, %struct.mount* %m.079, i64 0, i32 3
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  %call12 = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %mnt11, %struct.dentry* noundef %9) #9
  %tobool13.not = icmp eq %struct.mount* %call12, null
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %for.body10
  %mnt_umounting16 = getelementptr inbounds %struct.mount, %struct.mount* %call12, i64 0, i32 19
  %call17 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_umounting16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %call20 = call fastcc %struct.mount* @skip_propagation_subtree(%struct.mount* noundef nonnull %m.079) #8
  br label %cleanup

if.else:                                          ; preds = %if.end15
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call12, i64 0, i32 3, i32 2
  %10 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %10, 134217728
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %while.cond, label %if.then23

if.then23:                                        ; preds = %if.else
  call fastcc void @list_add_tail(%struct.list_head* noundef %mnt_umounting16, %struct.list_head* noundef nonnull %visited) #8
  br label %cleanup

while.cond:                                       ; preds = %if.else, %while.body
  %child.0 = phi %struct.mount* [ %11, %while.body ], [ %call12, %if.else ]
  %call27 = call fastcc i1 @__propagate_umount(%struct.mount* noundef %child.0, %struct.list_head* noundef nonnull %to_umount, %struct.list_head* noundef nonnull %to_restore) #8
  br i1 %call27, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond
  %mnt_parent28 = getelementptr inbounds %struct.mount, %struct.mount* %child.0, i64 0, i32 1
  %11 = load %struct.mount*, %struct.mount** %mnt_parent28, align 8
  %mnt_umounting29 = getelementptr inbounds %struct.mount, %struct.mount* %11, i64 0, i32 19
  %call30 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_umounting29) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %while.cond, label %cleanup

cleanup:                                          ; preds = %while.cond, %while.body, %for.body10, %if.then23, %if.then19
  %m.1 = phi %struct.mount* [ %m.079, %if.then23 ], [ %call20, %if.then19 ], [ %m.079, %for.body10 ], [ %m.079, %while.body ], [ %m.079, %while.cond ]
  %call34 = call fastcc %struct.mount* @propagation_next(%struct.mount* noundef %m.1, %struct.mount* noundef %6) #8
  %tobool9.not = icmp eq %struct.mount* %call34, null
  br i1 %tobool9.not, label %cleanup35, label %for.body10

cleanup35:                                        ; preds = %cleanup, %if.end, %for.body
  %prev42 = getelementptr inbounds i8, i8* %.pn82, i64 8
  %12 = bitcast i8* %prev42 to i8**
  %.pn = load i8*, i8** %12, align 8
  %13 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %13, %list
  br i1 %cmp.not, label %for.end48, label %for.body

for.end48:                                        ; preds = %cleanup35, %entry
  call fastcc void @umount_list(%struct.list_head* noundef nonnull %to_umount, %struct.list_head* noundef nonnull %to_restore) #8
  call fastcc void @restore_mounts(%struct.list_head* noundef nonnull %to_restore) #8
  call fastcc void @cleanup_umount_visitations(%struct.list_head* noundef nonnull %visited) #8
  call fastcc void @list_splice_tail(%struct.list_head* noundef nonnull %to_umount, %struct.list_head* noundef %list) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.mount* @skip_propagation_subtree(%struct.mount* noundef %m) unnamed_addr #5 {
entry:
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %m, i64 0, i32 16
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool.not = icmp eq %struct.mnt_namespace* %0, null
  br i1 %tobool.not, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef nonnull %0) #8
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mnt_slave_list = getelementptr inbounds %struct.mount, %struct.mount* %m, i64 0, i32 13
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_slave_list) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call4 = call fastcc %struct.mount* @last_slave(%struct.mount* noundef %m) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false, %entry
  %m.addr.0 = phi %struct.mount* [ %m, %lor.lhs.false ], [ %m, %land.lhs.true ], [ %call4, %if.then ], [ %m, %entry ]
  ret %struct.mount* %m.addr.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i1 @__propagate_umount(%struct.mount* noundef %mnt, %struct.list_head* noundef %to_umount, %struct.list_head* noundef %to_restore) unnamed_addr #3 {
entry:
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 201326592
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 6
  %1 = bitcast %struct.list_head* %mnt_mounts to i8**
  %.pn46 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn46 to %struct.list_head*
  %cmp.not47 = icmp eq %struct.list_head* %mnt_mounts, %2
  br i1 %cmp.not47, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn48 = phi i8* [ %.pn46, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %mnt_mountpoint = getelementptr i8, i8* %.pn48, i64 -80
  %3 = bitcast i8* %mnt_mountpoint to %struct.dentry**
  %4 = load %struct.dentry*, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp4 = icmp eq %struct.dentry* %4, %5
  br i1 %cmp4, label %for.inc, label %if.end6

if.end6:                                          ; preds = %for.body
  %mnt_umounting = getelementptr i8, i8* %.pn48, i64 160
  %6 = bitcast i8* %mnt_umounting to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %6) #8
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %land.lhs.true, label %children

land.lhs.true:                                    ; preds = %if.end6
  %mnt_flags9 = getelementptr i8, i8* %.pn48, i64 -56
  %7 = bitcast i8* %mnt_flags9 to i32*
  %8 = load i32, i32* %7, align 8
  %and10 = and i32 %8, 67108864
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %children, label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %9 = bitcast i8* %.pn48 to i8**
  %.pn = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %mnt_mounts, %10
  br i1 %cmp.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load i32, i32* %mnt_flags, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %11 = phi i32 [ %.pre, %for.end.loopexit ], [ %0, %if.end ]
  %or = or i32 %11, 67108864
  store i32 %or, i32* %mnt_flags, align 8
  %and26 = and i32 %11, 8388608
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %children

if.then28:                                        ; preds = %for.end
  call fastcc void @umount_one(%struct.mount* noundef %mnt, %struct.list_head* noundef %to_umount) #8
  br label %out

children:                                         ; preds = %if.end6, %land.lhs.true, %for.end
  %progress.0 = phi i1 [ true, %for.end ], [ false, %land.lhs.true ], [ false, %if.end6 ]
  %mnt_umounting29 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 19
  call fastcc void @list_move_tail(%struct.list_head* noundef %mnt_umounting29, %struct.list_head* noundef %to_restore) #8
  br label %out

out:                                              ; preds = %if.then28, %children, %entry
  %progress.1.off0 = phi i1 [ false, %entry ], [ %progress.0, %children ], [ true, %if.then28 ]
  ret i1 %progress.1.off0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @umount_list(%struct.list_head* noundef %to_umount, %struct.list_head* noundef %to_restore) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.list_head* %to_umount to i8**
  %.pn71 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn71 to %struct.list_head*
  %cmp.not72 = icmp eq %struct.list_head* %1, %to_umount
  br i1 %cmp.not72, label %for.end41, label %for.body

for.body:                                         ; preds = %entry, %for.inc32
  %.pn73 = phi i8* [ %.pn, %for.inc32 ], [ %.pn71, %entry ]
  %mnt_mounts = getelementptr i8, i8* %.pn73, i64 -56
  %2 = bitcast i8* %mnt_mounts to i8**
  %3 = load i8*, i8** %2, align 8
  %cmp19.not67 = icmp eq i8* %3, %mnt_mounts
  br i1 %cmp19.not67, label %for.inc32, label %for.body21.lr.ph

for.body21.lr.ph:                                 ; preds = %for.body
  %mnt22 = getelementptr i8, i8* %.pn73, i64 -112
  %mnt_root = bitcast i8* %mnt22 to %struct.dentry**
  br label %for.body21

for.body21:                                       ; preds = %for.body21.lr.ph, %for.inc
  %.pn61.in.in68 = phi i8* [ %3, %for.body21.lr.ph ], [ %.pn6170, %for.inc ]
  %.pn6170.in = bitcast i8* %.pn61.in.in68 to i8**
  %.pn6170 = load i8*, i8** %.pn6170.in, align 8
  %mnt_mountpoint = getelementptr i8, i8* %.pn61.in.in68, i64 -80
  %4 = bitcast i8* %mnt_mountpoint to %struct.dentry**
  %5 = load %struct.dentry*, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp23 = icmp eq %struct.dentry* %5, %6
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body21
  %mnt_umounting = getelementptr i8, i8* %.pn61.in.in68, i64 160
  %7 = bitcast i8* %mnt_umounting to %struct.list_head*
  call fastcc void @list_move_tail(%struct.list_head* noundef %7, %struct.list_head* noundef %to_restore) #8
  br label %for.inc

if.else:                                          ; preds = %for.body21
  %child.069.in = getelementptr i8, i8* %.pn61.in.in68, i64 -104
  %child.069 = bitcast i8* %child.069.in to %struct.mount*
  call fastcc void @umount_one(%struct.mount* noundef %child.069, %struct.list_head* noundef %to_umount) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %cmp19.not = icmp eq i8* %.pn6170, %mnt_mounts
  br i1 %cmp19.not, label %for.inc32, label %for.body21

for.inc32:                                        ; preds = %for.inc, %for.body
  %8 = bitcast i8* %.pn73 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %9, %to_umount
  br i1 %cmp.not, label %for.end41, label %for.body

for.end41:                                        ; preds = %for.inc32, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_mounts(%struct.list_head* noundef %to_restore) unnamed_addr #0 {
entry:
  %call32 = call fastcc i32 @list_empty(%struct.list_head* noundef %to_restore) #8
  %tobool.not33 = icmp eq i32 %call32, 0
  br i1 %tobool.not33, label %while.body.lr.ph, label %while.end11

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.list_head* %to_restore to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -264
  %2 = bitcast i8* %add.ptr to %struct.mount*
  %mnt_flags = getelementptr i8, i8* %1, i64 -216
  %3 = bitcast i8* %mnt_flags to i32*
  %4 = load i32, i32* %3, align 8
  %and = and i32 %4, -67108865
  store i32 %and, i32* %3, align 8
  %5 = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %5) #8
  %mnt_parent = getelementptr i8, i8* %1, i64 -248
  %6 = bitcast i8* %mnt_parent to %struct.mount**
  %parent.026 = load %struct.mount*, %struct.mount** %6, align 8
  %mnt_flags427 = getelementptr inbounds %struct.mount, %struct.mount* %parent.026, i64 0, i32 3, i32 2
  %7 = load i32, i32* %mnt_flags427, align 8
  %and528 = and i32 %7, 134217728
  %tobool6.not29 = icmp eq i32 %and528, 0
  br i1 %tobool6.not29, label %if.end, label %while.body7

while.body7:                                      ; preds = %while.body, %while.body7
  %parent.030 = phi %struct.mount* [ %parent.0, %while.body7 ], [ %parent.026, %while.body ]
  %mnt_parent9 = getelementptr inbounds %struct.mount, %struct.mount* %parent.030, i64 0, i32 1
  %parent.0 = load %struct.mount*, %struct.mount** %mnt_parent9, align 8
  %mnt_flags4 = getelementptr inbounds %struct.mount, %struct.mount* %parent.0, i64 0, i32 3, i32 2
  %8 = load i32, i32* %mnt_flags4, align 8
  %and5 = and i32 %8, 134217728
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %while.end, label %while.body7

while.end:                                        ; preds = %while.body7
  %cmp.not = icmp eq %struct.mount* %parent.0, %parent.026
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %mnt_mp8.le = getelementptr inbounds %struct.mount, %struct.mount* %parent.030, i64 0, i32 17
  %mp.0.le = load %struct.mountpoint*, %struct.mountpoint** %mnt_mp8.le, align 8
  call void @mnt_change_mountpoint(%struct.mount* noundef %parent.0, %struct.mountpoint* noundef %mp.0.le, %struct.mount* noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then, %while.end
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %to_restore) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end11

while.end11:                                      ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @cleanup_umount_visitations(%struct.list_head* noundef %visited) unnamed_addr #3 {
entry:
  %call4 = call fastcc i32 @list_empty(%struct.list_head* noundef %visited) #8
  %tobool.not5 = icmp eq i32 %call4, 0
  br i1 %tobool.not5, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr %struct.list_head, %struct.list_head* %visited, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load %struct.list_head*, %struct.list_head** %0, align 8
  call fastcc void @list_del_init(%struct.list_head* noundef %1) #8
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %visited) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_splice_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_path_reachable(%struct.mount* noundef, %struct.dentry* noundef, %struct.path* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_release_group_id(%struct.mount* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #8
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #8
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_anon_ns(%struct.mnt_namespace* nocapture noundef readonly %ns) unnamed_addr #4 {
entry:
  %seq = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 6
  %0 = load i64, i64* %seq, align 8
  %cmp = icmp eq i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_subdir(%struct.dentry* noundef, %struct.dentry* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @peers(%struct.mount* nocapture noundef readonly %m1, %struct.mount* nocapture noundef readonly %m2) unnamed_addr #4 {
entry:
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %m1, i64 0, i32 21
  %0 = load i32, i32* %mnt_group_id, align 4
  %mnt_group_id1 = getelementptr inbounds %struct.mount, %struct.mount* %m2, i64 0, i32 21
  %1 = load i32, i32* %mnt_group_id1, align 4
  %cmp = icmp eq i32 %0, %1
  %tobool = icmp ne i32 %0, 0
  %spec.select = and i1 %tobool, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mount* @copy_tree(%struct.mount* noundef, %struct.dentry* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_set_mountpoint(%struct.mount* noundef, %struct.mountpoint* noundef, %struct.mount* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #3 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %do.body22, label %do.body12

do.body12:                                        ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev, align 8
  br label %do.body22

do.body22:                                        ; preds = %entry, %do.body12
  store volatile %struct.hlist_node* %n, %struct.hlist_node** %first1, align 8
  %pprev34 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev34, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @count_mounts(%struct.mnt_namespace* noundef, %struct.mount* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mount* @first_slave(%struct.mount* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.mount, %struct.mount* %p, i64 0, i32 13, i32 0
  %0 = bitcast %struct.list_head** %next to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -208
  %2 = bitcast i8* %add.ptr to %struct.mount*
  ret %struct.mount* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mount* @next_slave(%struct.mount* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.mount, %struct.mount* %p, i64 0, i32 14, i32 0
  %0 = bitcast %struct.list_head** %next to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -208
  %2 = bitcast i8* %add.ptr to %struct.mount*
  ret %struct.mount* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  call fastcc void @do_raw_spin_lock() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #10, !srcloc !11
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) to i8*), i8 0) #10, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_get_count(%struct.mount* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_is_singular(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #8
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.mount* @last_slave(%struct.mount* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.mount, %struct.mount* %p, i64 0, i32 13, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -208
  %2 = bitcast i8* %add.ptr to %struct.mount*
  ret %struct.mount* %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @umount_one(%struct.mount* noundef %mnt, %struct.list_head* noundef %to_umount) unnamed_addr #3 {
entry:
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, -201326593
  %or = or i32 %and, 134217728
  store i32 %or, i32* %mnt_flags, align 8
  %mnt_child = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 7
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_child) #8
  %mnt_umounting = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 19
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_umounting) #8
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 10
  call fastcc void @list_move_tail(%struct.list_head* noundef %mnt_list, %struct.list_head* noundef %to_umount) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #8
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_change_mountpoint(%struct.mount* noundef, %struct.mountpoint* noundef, %struct.mount* noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }

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
!8 = !{i64 2151903004}
!9 = !{i64 2149407617}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147868349, i64 2147868382, i64 2147868435, i64 2147868494, i64 2147868528, i64 2147868583, i64 2147868612, i64 2147868632}
!12 = !{i64 2149414898}
!13 = !{i64 2149207128}
