; ModuleID = 'fs/nsfs.c'
source_filename = "fs/nsfs.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1, [48 x i8] }
%struct.anon.1 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.58, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.5, [0 x i64] }
%struct.anon.5 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.6, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.6 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.7, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.8, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.7 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.8 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.9, %union.anon.37, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.37 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.15, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.22 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.22 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.17 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.17 = type { %struct.callback_head }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.43, %union.anon.44, i32 }
%struct.request_queue = type opaque
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rseq = type { i32, i32, %union.anon.57, i32, [12 x i8] }
%union.anon.57 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.59, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.59 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.60, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.66 }
%union.anon.66 = type { i64 }
%struct.dentry_operations = type { {}*, {}*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.16, i64, i32 }
%union.anon.16 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.18, i32 }
%union.anon.18 = type { %struct.kuid_t }
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
%union.anon.68 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.69 = type { %struct.hlist_node }
%struct.ns_get_path_task_args = type { %struct.proc_ns_operations*, %struct.task_struct* }
%struct.pseudo_fs_context = type { %struct.super_operations*, %struct.xattr_handler**, %struct.dentry_operations*, i64 }

@ns_dentry_operations = dso_local constant { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] } { i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* @always_delete_dentry, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* @ns_prune_dentry, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* @ns_dname, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@.str = private unnamed_addr constant [8 x i8] c"%s:[%u]\00", align 1
@ns_file_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @ns_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@nsfs_mnt = internal unnamed_addr global %struct.vfsmount* null, align 8
@nsfs = internal global %struct.file_system_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 (%struct.fs_context*)* @nsfs_init_fs_context, %struct.fs_parameter_spec* null, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* null, void (%struct.super_block*)* @kill_anon_super, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"can't set nsfs up\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s:[%lu]\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"nsfs\00", align 1
@nsfs_ops = internal constant %struct.super_operations { %struct.inode* (%struct.super_block*)* null, void (%struct.inode*)* null, void (%struct.inode*)* null, void (%struct.inode*, i32)* null, i32 (%struct.inode*, %struct.writeback_control*)* null, i32 (%struct.inode*)* null, void (%struct.inode*)* @nsfs_evict, void (%struct.super_block*)* null, i32 (%struct.super_block*, i32)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.dentry*, %struct.kstatfs*)* @simple_statfs, i32 (%struct.super_block*, i32*, i8*)* null, void (%struct.super_block*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* @nsfs_show_path, i32 (%struct.seq_file*, %struct.dentry*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null }, align 8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(%struct.dentry* noundef) #0

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal void @ns_prune_dentry(%struct.dentry* nocapture noundef readonly %dentry) #1 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #10
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.ns_common**
  %1 = load %struct.ns_common*, %struct.ns_common** %0, align 8
  %counter.i.i = getelementptr inbounds %struct.ns_common, %struct.ns_common* %1, i64 0, i32 0, i32 0
  store volatile i64 0, i64* %counter.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @ns_dname(%struct.dentry* noundef %dentry, i8* noundef %buffer, i32 noundef %buflen) #2 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #10
  %d_fsdata = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 11
  %0 = bitcast i8** %d_fsdata to %struct.proc_ns_operations**
  %1 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %0, align 8
  %name = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %1, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  %call1 = call i8* (%struct.dentry*, i8*, i32, i8*, ...) @dynamic_dname(%struct.dentry* noundef %dentry, i8* noundef %buffer, i32 noundef %buflen, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2, i64 noundef %3) #11
  ret i8* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ns_get_path_cb(%struct.path* nocapture noundef writeonly %path, %struct.ns_common* (i8*)* nocapture noundef readonly %ns_get_cb, i8* noundef %private_data) local_unnamed_addr #2 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call %struct.ns_common* %ns_get_cb(i8* noundef %private_data) #11
  %tobool.not = icmp eq %struct.ns_common* %call, null
  br i1 %tobool.not, label %cleanup2, label %do.cond

do.cond:                                          ; preds = %do.body
  %call1 = call fastcc i32 @__ns_get_path(%struct.path* noundef %path, %struct.ns_common* noundef nonnull %call) #10
  %cmp = icmp eq i32 %call1, -11
  br i1 %cmp, label %do.body, label %cleanup2

cleanup2:                                         ; preds = %do.body, %do.cond
  %retval.2 = phi i32 [ %call1, %do.cond ], [ -2, %do.body ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ns_get_path(%struct.path* nocapture noundef writeonly %path, %struct.ns_common* noundef %ns) unnamed_addr #2 {
entry:
  %0 = load %struct.vfsmount*, %struct.vfsmount** @nsfs_mnt, align 8
  call fastcc void @__rcu_read_lock() #11
  %counter.i.i = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %slow, label %if.end

if.end:                                           ; preds = %entry
  %2 = inttoptr i64 %1 to %struct.dentry*
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 7
  %call1 = call i32 @lockref_get_not_dead(%struct.lockref* noundef %d_lockref) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %slow, label %if.end4

if.end4:                                          ; preds = %if.end
  call fastcc void @rcu_read_unlock() #10
  %ops = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 1
  %3 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %ops, align 8
  %put = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %3, i64 0, i32 4
  %4 = load void (%struct.ns_common*)*, void (%struct.ns_common*)** %put, align 8
  call void %4(%struct.ns_common* noundef %ns) #11
  br label %got_it

got_it:                                           ; preds = %if.end19, %if.end4
  %dentry.0 = phi %struct.dentry* [ %2, %if.end4 ], [ %call16, %if.end19 ]
  %call5 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %0) #11
  %mnt6 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  store %struct.vfsmount* %call5, %struct.vfsmount** %mnt6, align 8
  %dentry7 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  store %struct.dentry* %dentry.0, %struct.dentry** %dentry7, align 8
  br label %cleanup

slow:                                             ; preds = %if.end, %entry
  call fastcc void @rcu_read_unlock() #10
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %5 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call8 = call %struct.inode* @new_inode_pseudo(%struct.super_block* noundef %5) #11
  %tobool9.not = icmp eq %struct.inode* %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %slow
  %ops11 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 1
  %6 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %ops11, align 8
  %put12 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %6, i64 0, i32 4
  %7 = load void (%struct.ns_common*)*, void (%struct.ns_common*)** %put12, align 8
  call void %7(%struct.ns_common* noundef %ns) #11
  br label %cleanup

if.end13:                                         ; preds = %slow
  %inum = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 2
  %8 = load i32, i32* %inum, align 8
  %conv = zext i32 %8 to i64
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 8
  store i64 %conv, i64* %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 14
  %call14 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call8) #11
  %call14.fca.0.extract = extractvalue [2 x i64] %call14, 0
  %call14.fca.1.extract = extractvalue [2 x i64] %call14, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 14, i32 0
  store i64 %call14.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx30 = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 14, i32 1
  store i64 %call14.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx30, align 8
  %9 = bitcast %struct.timespec64* %i_atime to i8*
  %10 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %9, i8* noundef align 8 dereferenceable(16) %10, i64 16, i1 false)
  %11 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %11, i8* noundef align 8 dereferenceable(16) %10, i64 16, i1 false)
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 4
  %12 = load i32, i32* %i_flags, align 4
  %or = or i32 %12, 8
  store i32 %or, i32* %i_flags, align 4
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 0
  store i16 -32476, i16* %i_mode, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 36, i32 0
  store %struct.file_operations* @ns_file_operations, %struct.file_operations** %i_fop, align 8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 42
  %13 = bitcast i8** %i_private to %struct.ns_common**
  store %struct.ns_common* %ns, %struct.ns_common** %13, align 8
  %14 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call16 = call %struct.dentry* @d_alloc_anon(%struct.super_block* noundef %14) #11
  %tobool17.not = icmp eq %struct.dentry* %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @iput(%struct.inode* noundef nonnull %call8) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @d_instantiate(%struct.dentry* noundef nonnull %call16, %struct.inode* noundef nonnull %call8) #11
  %ops20 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 1
  %15 = bitcast %struct.proc_ns_operations** %ops20 to i8**
  %16 = load i8*, i8** %15, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, %struct.dentry* %call16, i64 0, i32 11
  store i8* %16, i8** %d_fsdata, align 8
  %17 = ptrtoint %struct.dentry* %call16 to i64
  %18 = bitcast %struct.ns_common* %ns to i8*
  %call14.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %18, i64 noundef %17) #11
  %tobool23.not = icmp eq i64 %call14.i.i.i, 0
  br i1 %tobool23.not, label %got_it, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void @d_delete(%struct.dentry* noundef nonnull %call16) #11
  call void @dput(%struct.dentry* noundef nonnull %call16) #11
  call fastcc void @cpu_relax() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.then18, %if.then10, %got_it
  %retval.0 = phi i32 [ 0, %got_it ], [ -11, %if.then24 ], [ -12, %if.then18 ], [ -12, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ns_get_path(%struct.path* nocapture noundef writeonly %path, %struct.task_struct* noundef %task, %struct.proc_ns_operations* noundef %ns_ops) local_unnamed_addr #2 {
entry:
  %args = alloca %struct.ns_get_path_task_args, align 8
  %0 = bitcast %struct.ns_get_path_task_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  %ns_ops1 = getelementptr inbounds %struct.ns_get_path_task_args, %struct.ns_get_path_task_args* %args, i64 0, i32 0
  store %struct.proc_ns_operations* %ns_ops, %struct.proc_ns_operations** %ns_ops1, align 8
  %task2 = getelementptr inbounds %struct.ns_get_path_task_args, %struct.ns_get_path_task_args* %args, i64 0, i32 1
  store %struct.task_struct* %task, %struct.task_struct** %task2, align 8
  %call = call i32 @ns_get_path_cb(%struct.path* noundef %path, %struct.ns_common* (i8*)* noundef nonnull @ns_get_path_task, i8* noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.ns_common* @ns_get_path_task(i8* nocapture noundef readonly %private_data) #2 {
entry:
  %ns_ops = bitcast i8* %private_data to %struct.proc_ns_operations**
  %0 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %ns_ops, align 8
  %get = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %0, i64 0, i32 3
  %1 = load %struct.ns_common* (%struct.task_struct*)*, %struct.ns_common* (%struct.task_struct*)** %get, align 8
  %task = getelementptr inbounds i8, i8* %private_data, i64 8
  %2 = bitcast i8* %task to %struct.task_struct**
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %call = call %struct.ns_common* %1(%struct.task_struct* noundef %3) #11
  ret %struct.ns_common* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @open_related_ns(%struct.ns_common* noundef %ns, %struct.ns_common* (%struct.ns_common*)* nocapture noundef readonly %get_ns) local_unnamed_addr #2 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %call = call i32 @get_unused_fd_flags(i32 noundef 524288) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup21, label %do.body

do.body:                                          ; preds = %entry, %do.cond
  %call1 = call %struct.ns_common* %get_ns(%struct.ns_common* noundef %ns) #11
  %1 = bitcast %struct.ns_common* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #10
  br i1 %call2, label %cleanup.thread, label %do.cond

cleanup.thread:                                   ; preds = %do.body
  %2 = bitcast %struct.ns_common* %call1 to i8*
  call void @put_unused_fd(i32 noundef %call) #11
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %2) #10
  %conv = trunc i64 %call4 to i32
  br label %cleanup21

do.cond:                                          ; preds = %do.body
  %call6 = call fastcc i32 @__ns_get_path(%struct.path* noundef nonnull %path, %struct.ns_common* noundef %call1) #10
  switch i32 %call6, label %if.then9 [
    i32 -11, label %do.body
    i32 0, label %do.end13
  ]

if.then9:                                         ; preds = %do.cond
  call void @put_unused_fd(i32 noundef %call) #11
  br label %cleanup21

do.end13:                                         ; preds = %do.cond
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 80
  %5 = load %struct.cred*, %struct.cred** %cred, align 8
  %call15 = call %struct.file* @dentry_open(%struct.path* noundef nonnull %path, i32 noundef 0, %struct.cred* noundef %5) #11
  call void @path_put(%struct.path* noundef nonnull %path) #11
  %6 = bitcast %struct.file* %call15 to i8*
  %call16 = call fastcc i1 @IS_ERR(i8* noundef %6) #10
  br i1 %call16, label %if.then17, label %if.else

if.then17:                                        ; preds = %do.end13
  call void @put_unused_fd(i32 noundef %call) #11
  %call18 = call fastcc i64 @PTR_ERR(i8* noundef %6) #10
  %conv19 = trunc i64 %call18 to i32
  br label %cleanup21

if.else:                                          ; preds = %do.end13
  call void @fd_install(i32 noundef %call, %struct.file* noundef %call15) #11
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup.thread, %if.then17, %if.else, %entry, %if.then9
  %retval.2 = phi i32 [ %call6, %if.then9 ], [ %call, %entry ], [ %conv19, %if.then17 ], [ %call, %if.else ], [ %conv, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @dentry_open(%struct.path* noundef, i32 noundef, %struct.cred* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ns_get_name(i8* noundef %buf, i64 noundef %size, %struct.task_struct* noundef %task, %struct.proc_ns_operations* nocapture noundef readonly %ns_ops) local_unnamed_addr #2 {
entry:
  %get = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %ns_ops, i64 0, i32 3
  %0 = load %struct.ns_common* (%struct.task_struct*)*, %struct.ns_common* (%struct.task_struct*)** %get, align 8
  %call = call %struct.ns_common* %0(%struct.task_struct* noundef %task) #11
  %tobool.not = icmp eq %struct.ns_common* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %real_ns_name = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %ns_ops, i64 0, i32 1
  %1 = load i8*, i8** %real_ns_name, align 8
  %tobool1.not = icmp eq i8* %1, null
  br i1 %tobool1.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then
  %name2 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %ns_ops, i64 0, i32 0
  %2 = load i8*, i8** %name2, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i8* [ %2, %cond.false ], [ %1, %if.then ]
  %inum = getelementptr inbounds %struct.ns_common, %struct.ns_common* %call, i64 0, i32 2
  %3 = load i32, i32* %inum, align 8
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef %size, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef %cond, i32 noundef %3) #11
  %put = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %ns_ops, i64 0, i32 4
  %4 = load void (%struct.ns_common*)*, void (%struct.ns_common*)** %put, align 8
  call void %4(%struct.ns_common* noundef nonnull %call) #11
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %res.0 = phi i32 [ %call3, %cond.end ], [ -2, %entry ]
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @proc_ns_file(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #6 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp = icmp eq %struct.file_operations* %0, @ns_file_operations
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @proc_ns_fget(i32 noundef %fd) local_unnamed_addr #2 {
entry:
  %call = call %struct.file* @fget(i32 noundef %fd) #11
  %tobool.not = icmp eq %struct.file* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %call, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp.not = icmp eq %struct.file_operations* %0, @ns_file_operations
  br i1 %cmp.not, label %cleanup, label %out_invalid

out_invalid:                                      ; preds = %if.end
  call void @fput(%struct.file* noundef nonnull %call) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %out_invalid
  %.sink = phi i64 [ -22, %out_invalid ], [ -9, %entry ]
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #10
  %1 = bitcast i8* %call4 to %struct.file*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi %struct.file* [ %call, %if.end ], [ %1, %cleanup.sink.split ]
  ret %struct.file* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget(i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @ns_match(%struct.ns_common* nocapture noundef readonly %ns, i32 noundef %dev, i64 noundef %ino) local_unnamed_addr #6 {
entry:
  %inum = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 2
  %0 = load i32, i32* %inum, align 8
  %conv = zext i32 %0 to i64
  %cmp = icmp eq i64 %conv, %ino
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.vfsmount*, %struct.vfsmount** @nsfs_mnt, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %1, i64 0, i32 1
  %2 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 1
  %3 = load i32, i32* %s_dev, align 16
  %cmp2 = icmp eq i32 %3, %dev
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %4
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @nsfs_init() local_unnamed_addr #7 section ".init.text" {
entry:
  %call = call %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef nonnull @nsfs) #11
  store %struct.vfsmount* %call, %struct.vfsmount** @nsfs_mnt, align 8
  %0 = bitcast %struct.vfsmount* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #10
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #14
  unreachable

if.end:                                           ; preds = %entry
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %call, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 10
  %2 = load i64, i64* %s_flags, align 16
  %and = and i64 %2, 2147483647
  store i64 %and, i64* %s_flags, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef) local_unnamed_addr #0

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dynamic_dname(%struct.dentry* noundef, i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(%struct.lockref* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 {
entry:
  call fastcc void @__rcu_read_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @mntget(%struct.vfsmount* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode_pseudo(%struct.super_block* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc_anon(%struct.super_block* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(%struct.dentry* noundef, %struct.inode* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(%struct.dentry* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #2 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #12, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #2 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  call void @rcu_read_unlock_strict() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64 %new, i64* elementtype(i64) %0) #12, !srcloc !11
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @ns_ioctl(%struct.file* nocapture noundef readonly %filp, i32 noundef %ioctl, i64 noundef %arg) #2 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #10
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 42
  %0 = load i8*, i8** %i_private, align 8
  %1 = bitcast i8* %0 to %struct.ns_common*
  switch i32 %ioctl, label %cleanup [
    i32 46849, label %sw.bb
    i32 46850, label %sw.bb2
    i32 46851, label %sw.bb7
    i32 46852, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call i32 @open_related_ns(%struct.ns_common* noundef %1, %struct.ns_common* (%struct.ns_common*)* noundef nonnull @ns_get_owner) #10
  %conv = sext i32 %call1 to i64
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %ops = getelementptr inbounds i8, i8* %0, i64 8
  %2 = bitcast i8* %ops to %struct.proc_ns_operations**
  %3 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %2, align 8
  %get_parent = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %3, i64 0, i32 7
  %4 = load %struct.ns_common* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)** %get_parent, align 8
  %tobool.not = icmp eq %struct.ns_common* (%struct.ns_common*)* %4, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb2
  %call5 = call i32 @open_related_ns(%struct.ns_common* noundef %1, %struct.ns_common* (%struct.ns_common*)* noundef nonnull %4) #10
  %conv6 = sext i32 %call5 to i64
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %ops8 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %ops8 to %struct.proc_ns_operations**
  %6 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %5, align 8
  %type = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %6, i64 0, i32 2
  %7 = load i32, i32* %type, align 8
  %conv9 = sext i32 %7 to i64
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %ops11 = getelementptr inbounds i8, i8* %0, i64 8
  %8 = bitcast i8* %ops11 to %struct.proc_ns_operations**
  %9 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %8, align 8
  %type12 = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %9, i64 0, i32 2
  %10 = load i32, i32* %type12, align 8
  %cmp.not = icmp eq i32 %10, 268435456
  br i1 %cmp.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %sw.bb10
  %owner = getelementptr i8, i8* %0, i64 -12
  %coerce.dive = bitcast i8* %owner to i32*
  %11 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %11 to i64
  %call17 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #10
  %12 = inttoptr i64 %arg to i8*
  %call19 = call fastcc i64 @__range_ok(i8* noundef %12) #10
  %tobool20.not = icmp eq i64 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end15
  %call22 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %12) #10
  %13 = bitcast i8* %call22 to i32*
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call17, i32* %13, i32 -14, i32 0) #12, !srcloc !12
  %phi.cast = sext i32 %14 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then21, %if.end15, %sw.bb10, %sw.bb2, %sw.bb7, %if.end, %sw.bb
  %retval.0 = phi i64 [ %conv9, %sw.bb7 ], [ %conv6, %if.end ], [ %conv, %sw.bb ], [ -22, %sw.bb2 ], [ -22, %sw.bb10 ], [ %phi.cast, %if.then21 ], [ -14, %if.end15 ], [ -25, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #6 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal %struct.ns_common* @ns_get_owner(%struct.ns_common* nocapture noundef readnone %ns) #5 {
entry:
  %call = call fastcc i8* @ERR_PTR(i64 noundef -1) #10
  %0 = bitcast i8* %call to %struct.ns_common*
  ret %struct.ns_common* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kuid_munged(i64 %kuid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #10
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowuid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #2 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 4, i8* %addr, i64 549755813887) #12, !srcloc !13
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #12, !srcloc !14
  call void asm sideeffect "hint #20", "~{memory}"() #12, !srcloc !15
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @nsfs_init_fs_context(%struct.fs_context* noundef %fc) #2 {
entry:
  %call = call %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef %fc, i64 noundef 1853056627) #11
  %tobool.not = icmp eq %struct.pseudo_fs_context* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %call, i64 0, i32 0
  store %struct.super_operations* @nsfs_ops, %struct.super_operations** %ops, align 8
  %dops = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %call, i64 0, i32 2
  store %struct.dentry_operations* bitcast ({ i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }* @ns_dentry_operations to %struct.dentry_operations*), %struct.dentry_operations** %dops, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(%struct.super_block* noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @nsfs_evict(%struct.inode* noundef %inode) #2 {
entry:
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.ns_common**
  %1 = load %struct.ns_common*, %struct.ns_common** %0, align 8
  call void @clear_inode(%struct.inode* noundef %inode) #11
  %ops = getelementptr inbounds %struct.ns_common, %struct.ns_common* %1, i64 0, i32 1
  %2 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %ops, align 8
  %put = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %2, i64 0, i32 4
  %3 = load void (%struct.ns_common*)*, void (%struct.ns_common*)** %put, align 8
  call void %3(%struct.ns_common* noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(%struct.dentry* noundef, %struct.kstatfs* noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @nsfs_show_path(%struct.seq_file* noundef %seq, %struct.dentry* nocapture noundef readonly %dentry) #2 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #10
  %d_fsdata = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 11
  %0 = bitcast i8** %d_fsdata to %struct.proc_ns_operations**
  %1 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %0, align 8
  %name = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %1, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %seq, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2, i64 noundef %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(%struct.inode* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #1 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1254535}
!8 = !{i64 1732307}
!9 = !{i64 2149846615}
!10 = !{i64 2149846832}
!11 = !{i64 2147877901, i64 2147877934, i64 2147877985, i64 2147878041, i64 2147878074, i64 2147878129, i64 2147878158, i64 2147878185}
!12 = !{i64 2152765975, i64 2152766013, i64 2152766030, i64 2152766064, i64 2152766086, i64 2152766112, i64 2152766130, i64 2152766288, i64 2152766329, i64 2152766351, i64 2152766397}
!13 = !{i64 4051239, i64 4051322, i64 4051546, i64 4051766, i64 4051789}
!14 = !{i64 4055941, i64 4055965}
!15 = !{i64 2151608725}
