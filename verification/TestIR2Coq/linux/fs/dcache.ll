; ModuleID = 'fs/dcache.c'
source_filename = "fs/dcache.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.2 = type { i32, i32 }
%struct.dentry_stat_t = type { i64, i64, i64, i64, i64, i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.kmem_cache = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, {}*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.name_snapshot = type { %struct.qstr, [32 x i8] }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5, [48 x i8] }
%struct.anon.5 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.6, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.14, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.55, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.12 = type { i32 }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.mnt_namespace = type { %struct.ns_common, %struct.mount*, %struct.list_head, %struct.spinlock, %struct.user_namespace*, %struct.ucounts*, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.69, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.70, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.69 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.70 = type { %struct.hlist_node }
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
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
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.40, %union.anon.41, i32 }
%struct.request_queue = type opaque
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.54, i32, [12 x i8] }
%union.anon.54 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.17, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.33 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.56, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.14 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.15, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.16, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.15 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.16 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.57, %struct.qspinlock }
%union.anon.57 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { i64 }
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
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type opaque
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
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.external_name = type { %union.anon.71, [0 x i8] }
%union.anon.71 = type { %struct.callback_head }
%struct.anon.66 = type { %struct.spinlock, i32 }
%struct.check_mount = type { %struct.vfsmount*, i32 }
%struct.select_data = type { %struct.dentry*, %union.anon.72, %struct.list_head }
%union.anon.72 = type { i64 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@sysctl_vfs_cache_pressure = dso_local local_unnamed_addr global i32 100, section ".data..read_mostly", align 4
@rename_lock = dso_local global %struct.seqlock_t zeroinitializer, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@empty_name = dso_local local_unnamed_addr constant { { %struct.anon.2 }, i8* } { { %struct.anon.2 } zeroinitializer, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@slash_name = dso_local local_unnamed_addr constant { { %struct.anon.2 }, i8* } { { %struct.anon.2 } { %struct.anon.2 { i32 0, i32 1 } }, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@dotdot_name = dso_local local_unnamed_addr constant { { %struct.anon.2 }, i8* } { { %struct.anon.2 } { %struct.anon.2 { i32 0, i32 2 } }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0) }, align 8
@dentry_stat = dso_local local_unnamed_addr global %struct.dentry_stat_t { i64 0, i64 0, i64 45, i64 0, i64 0, i64 0 }, align 8
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"s_umount should've been locked\00", align 1
@d_splice_alias._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.d_splice_alias = private unnamed_addr constant [15 x i8] c"d_splice_alias\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"\014VFS: Lookup of '%s' in %s %s would have caused loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"#%llu\00", align 1
@__setup_str_set_dhash_entries = internal constant [15 x i8] c"dhash_entries=\00", section ".init.rodata", align 1
@__setup_set_dhash_entries = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__setup_str_set_dhash_entries, i32 0, i32 0), i32 (i8*)* @set_dhash_entries, i32 0 }, section ".init.setup", align 8
@in_lookup_hashtable = internal global [1024 x %struct.hlist_bl_head] zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"names_cache\00", align 1
@names_cachep = dso_local local_unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@nr_dentry = internal global i64 0, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@nr_dentry_unused = internal global i64 0, section ".data..percpu", align 8
@nr_dentry_negative = internal global i64 0, section ".data..percpu", align 8
@dentry_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@.str.8 = private unnamed_addr constant [69 x i8] c"\013BUG: Dentry %p{i=%lx,n=%pd}  still in use (%d) [unmount of %s %s]\0A\00", align 1
@dentry_hashtable = internal unnamed_addr global %struct.hlist_bl_head* null, section ".data..read_mostly", align 8
@d_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@dhash_entries = internal unnamed_addr global i64 0, section ".init.data", align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"Dentry cache\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"dentry\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_set_dhash_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_nr_dentry(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @get_nr_dentry() #18
  store i64 %call, i64* getelementptr inbounds (%struct.dentry_stat_t, %struct.dentry_stat_t* @dentry_stat, i64 0, i32 0), align 8
  %call1 = call fastcc i64 @get_nr_dentry_unused() #18
  store i64 %call1, i64* getelementptr inbounds (%struct.dentry_stat_t, %struct.dentry_stat_t* @dentry_stat, i64 0, i32 1), align 8
  %call2 = call fastcc i64 @get_nr_dentry_negative() #18
  store i64 %call2, i64* getelementptr inbounds (%struct.dentry_stat_t, %struct.dentry_stat_t* @dentry_stat, i64 0, i32 4), align 8
  %call3 = call i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #19
  ret i32 %call3
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @get_nr_dentry() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call12 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %cmp13 = icmp ult i32 %call12, %0
  br i1 %cmp13, label %do.body, label %for.end.thread

do.body:                                          ; preds = %entry, %do.body
  %call15 = phi i32 [ %call, %do.body ], [ %call12, %entry ]
  %sum.014 = phi i64 [ %add2, %do.body ], [ 0, %entry ]
  %idxprom = sext i32 %call15 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (i64* @nr_dentry to i64)
  %2 = inttoptr i64 %add to i64*
  %3 = load i64, i64* %2, align 8
  %add2 = add i64 %3, %sum.014
  %call = call i32 @cpumask_next(i32 noundef %call15, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body
  %4 = icmp sgt i64 %add2, 0
  %spec.select = select i1 %4, i64 %add2, i64 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %entry
  %5 = phi i64 [ 0, %entry ], [ %spec.select, %for.end ]
  ret i64 %5
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @get_nr_dentry_unused() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call12 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %cmp13 = icmp ult i32 %call12, %0
  br i1 %cmp13, label %do.body, label %for.end.thread

do.body:                                          ; preds = %entry, %do.body
  %call15 = phi i32 [ %call, %do.body ], [ %call12, %entry ]
  %sum.014 = phi i64 [ %add2, %do.body ], [ 0, %entry ]
  %idxprom = sext i32 %call15 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (i64* @nr_dentry_unused to i64)
  %2 = inttoptr i64 %add to i64*
  %3 = load i64, i64* %2, align 8
  %add2 = add i64 %3, %sum.014
  %call = call i32 @cpumask_next(i32 noundef %call15, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body
  %4 = icmp sgt i64 %add2, 0
  %spec.select = select i1 %4, i64 %add2, i64 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %entry
  %5 = phi i64 [ 0, %entry ], [ %spec.select, %for.end ]
  ret i64 %5
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @get_nr_dentry_negative() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call12 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %cmp13 = icmp ult i32 %call12, %0
  br i1 %cmp13, label %do.body, label %for.end.thread

do.body:                                          ; preds = %entry, %do.body
  %call15 = phi i32 [ %call, %do.body ], [ %call12, %entry ]
  %sum.014 = phi i64 [ %add2, %do.body ], [ 0, %entry ]
  %idxprom = sext i32 %call15 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (i64* @nr_dentry_negative to i64)
  %2 = inttoptr i64 %add to i64*
  %3 = load i64, i64* %2, align 8
  %add2 = add i64 %3, %sum.014
  %call = call i32 @cpumask_next(i32 noundef %call15, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body
  %4 = icmp sgt i64 %add2, 0
  %spec.select = select i1 %4, i64 %add2, i64 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %entry
  %5 = phi i64 [ 0, %entry ], [ %spec.select, %for.end ]
  ret i64 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @take_dentry_name_snapshot(%struct.name_snapshot* noundef %name, %struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4
  %1 = bitcast %struct.name_snapshot* %name to i8*
  %2 = bitcast %struct.qstr* %d_name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %1, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  %call = call fastcc i32 @dname_external(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call4 = call fastcc %struct.external_name* @external_name(%struct.dentry* noundef %dentry) #18
  %count = bitcast %struct.external_name* %call4 to %struct.atomic_t*
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %count) #19
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %name, i64 0, i32 1, i64 0
  %arraydecay5 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6, i64 0
  %3 = bitcast %struct.qstr* %d_name to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3, i64 0, i32 1
  %4 = load i32, i32* %len, align 4
  %add = add i32 %4, 1
  %conv7 = zext i32 %add to i64
  %call8 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %arraydecay5, i64 noundef %conv7) #19
  %name12 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %name, i64 0, i32 0, i32 1
  store i8* %arraydecay, i8** %name12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dname_external(%struct.dentry* noundef readonly %dentry) unnamed_addr #4 {
entry:
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %0 = load i8*, i8** %name, align 8
  %arraydecay = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6, i64 0
  %cmp = icmp ne i8* %0, %arraydecay
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.external_name* @external_name(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %0 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr i8, i8* %0, i64 -16
  %1 = bitcast i8* %add.ptr to %struct.external_name*
  ret %struct.external_name* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @release_dentry_name_snapshot(%struct.name_snapshot* noundef readonly %name) local_unnamed_addr #0 {
entry:
  %name2 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %name, i64 0, i32 0, i32 1
  %0 = load i8*, i8** %name2, align 8
  %arraydecay = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %name, i64 0, i32 1, i64 0
  %cmp.not = icmp eq i8* %0, %arraydecay
  br i1 %cmp.not, label %if.end24, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %0, i64 -16
  %count = bitcast i8* %add.ptr to %struct.atomic_t*
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %count) #19
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body14, label %if.end24, !prof !9

do.body14:                                        ; preds = %if.then
  %tobool15.not = icmp eq i8* %add.ptr, null
  br i1 %tobool15.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %do.body14
  %head = bitcast i8* %add.ptr to %struct.callback_head*
  call void @kvfree_call_rcu(%struct.callback_head* noundef nonnull %head, void (%struct.callback_head*)* noundef null) #19
  br label %if.end24

if.end24:                                         ; preds = %if.then, %do.end19, %do.body14, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__d_drop(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @___d_drop(%struct.dentry* noundef %dentry) #18
  %pprev = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 2, i32 1
  store %struct.hlist_bl_node** null, %struct.hlist_bl_node*** %pprev, align 8
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 1, i32 0
  call fastcc void @do_write_seqcount_invalidate(%struct.seqcount* noundef %seqcount.i) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_unhashed(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_hash = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 2
  %call = call fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* noundef %d_hash) #18
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @___d_drop(%struct.dentry* noundef readonly %dentry) unnamed_addr #0 {
entry:
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp eq %struct.dentry* %0, %dentry
  br i1 %cmp, label %if.then, label %if.else, !prof !9

if.then:                                          ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_roots = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 18
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %hash = bitcast %union.anon.3* %2 to i32*
  %3 = load i32, i32* %hash, align 8
  %call = call fastcc %struct.hlist_bl_head* @d_hash(i32 noundef %3) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %b.0 = phi %struct.hlist_bl_head* [ %s_roots, %if.then ], [ %call, %if.else ]
  call fastcc void @hlist_bl_lock(%struct.hlist_bl_head* noundef %b.0) #18
  %d_hash = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 2
  call fastcc void @__hlist_bl_del(%struct.hlist_bl_node* noundef %d_hash) #18
  call fastcc void @hlist_bl_unlock(%struct.hlist_bl_head* noundef %b.0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_invalidate(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !10
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %add = add i32 %0, 2
  store i32 %add, i32* %sequence, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_drop(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @__d_drop(%struct.dentry* noundef %dentry) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_mark_dontcache(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %first = bitcast %union.anon.62* %0 to %struct.hlist_node**
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr36 = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -11
  %tobool2.not4244 = icmp eq %struct.hlist_node* %add.ptr36, null
  %tobool2.not42 = or i1 %tobool.not, %tobool2.not4244
  br i1 %tobool2.not42, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %2 = bitcast %struct.hlist_node* %add.ptr36 to %struct.dentry*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %de.043 = phi %struct.dentry* [ %spec.select41, %for.body ], [ %2, %for.body.preheader ]
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %de.043, i64 0, i32 7, i32 0
  %rlock.i37 = bitcast %union.anon.65* %3 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i37) #19
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %de.043, i64 0, i32 0
  %4 = load i32, i32* %d_flags, align 8
  %or = or i32 %4, 128
  store i32 %or, i32* %d_flags, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i37) #19
  %next = getelementptr inbounds %struct.dentry, %struct.dentry* %de.043, i64 0, i32 15, i32 0, i32 0
  %5 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool7.not = icmp eq %struct.hlist_node* %5, null
  %add.ptr1435 = getelementptr %struct.hlist_node, %struct.hlist_node* %5, i64 -11
  %6 = bitcast %struct.hlist_node* %add.ptr1435 to %struct.dentry*
  %spec.select41 = select i1 %tobool7.not, %struct.dentry* null, %struct.dentry* %6
  %tobool2.not = icmp eq %struct.dentry* %spec.select41, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %7 = load i64, i64* %i_state, align 8
  %or18 = or i64 %7, 65536
  store i64 %or18, i64* %i_state, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dput(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %tobool.not22 = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not22, label %while.end, label %do.end2

do.end2:                                          ; preds = %entry, %if.end14
  %dentry.addr.023 = phi %struct.dentry* [ %call15, %if.end14 ], [ %dentry, %entry ]
  call fastcc void @__rcu_read_lock() #19
  %call = call fastcc i1 @fast_dput(%struct.dentry* noundef nonnull %dentry.addr.023) #18
  call fastcc void @rcu_read_unlock() #18
  br i1 %call, label %while.end, label %if.end, !prof !8

if.end:                                           ; preds = %do.end2
  %call5 = call fastcc i1 @retain_dentry(%struct.dentry* noundef nonnull %dentry.addr.023) #18
  br i1 %call5, label %if.then13, label %if.end14, !prof !8

if.then13:                                        ; preds = %if.end
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.addr.023, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %while.end

if.end14:                                         ; preds = %if.end
  %call15 = call fastcc %struct.dentry* @dentry_kill(%struct.dentry* noundef nonnull %dentry.addr.023) #18
  %tobool.not = icmp eq %struct.dentry* %call15, null
  br i1 %tobool.not, label %while.end, label %do.end2

while.end:                                        ; preds = %if.end14, %do.end2, %entry, %if.then13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @fast_dput(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_flags1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags1, align 8
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  %d_lockref5 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call = call i32 @lockref_put_or_lock(%struct.lockref* noundef %d_lockref5) #19
  %tobool4 = icmp ne i32 %call, 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call i32 @lockref_put_return(%struct.lockref* noundef %d_lockref5) #19
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then15, label %if.end26, !prof !9

if.then15:                                        ; preds = %if.end
  %1 = bitcast %struct.lockref* %d_lockref5 to %struct.anon.66*
  %rlock.i = bitcast %struct.lockref* %d_lockref5 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %1, i64 0, i32 1
  %2 = load i32, i32* %count, align 4
  %cmp18 = icmp sgt i32 %2, 1
  br i1 %cmp18, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.then15
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %count, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %tobool27.not = icmp eq i32 %call6, 0
  br i1 %tobool27.not, label %if.end29, label %cleanup

if.end29:                                         ; preds = %if.end26
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !11
  %3 = load volatile i32, i32* %d_flags1, align 8
  %and31 = and i32 %3, 524512
  %cmp32 = icmp eq i32 %and31, 524352
  br i1 %cmp32, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.end29
  %call34 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #18
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %land.lhs.true, %if.end29
  %4 = bitcast %struct.lockref* %d_lockref5 to %struct.anon.66*
  %rlock.i67 = bitcast %struct.lockref* %d_lockref5 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i67) #19
  %count41 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %4, i64 0, i32 1
  %5 = load i32, i32* %count41, align 4
  %tobool42.not = icmp eq i32 %5, 0
  br i1 %tobool42.not, label %if.end46, label %if.then43

if.then43:                                        ; preds = %if.end37
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i67) #19
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  store i32 1, i32* %count41, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end26, %if.then15, %if.end46, %if.then43, %if.then20, %if.then
  %retval.0 = phi i1 [ %tobool4, %if.then ], [ true, %if.then20 ], [ true, %if.then43 ], [ false, %if.end46 ], [ false, %if.then15 ], [ true, %if.end26 ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @retain_dentry(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 640; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #18
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end25, label %return, !prof !8

if.end25:                                         ; preds = %if.end
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 32
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end35, label %return, !prof !8

if.end35:                                         ; preds = %if.end25
  %and37 = and i32 %0, 8
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end51, label %if.then46, !prof !8

if.then46:                                        ; preds = %if.end35
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 8
  %1 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_delete = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %1, i64 0, i32 4
  %2 = load i32 (%struct.dentry*)*, i32 (%struct.dentry*)** %d_delete, align 32
  %call47 = call i32 %2(%struct.dentry* noundef %dentry) #19
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.if.end51_crit_edge, label %return

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  %.pre = load i32, i32* %d_flags, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then46.if.end51_crit_edge, %if.end35
  %3 = phi i32 [ %.pre, %if.then46.if.end51_crit_edge ], [ %0, %if.end35 ]
  %and53 = and i32 %3, 128
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end63, label %return, !prof !8

if.end63:                                         ; preds = %if.end51
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %5 = bitcast %union.anon.65* %4 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %5, i64 0, i32 1
  %6 = load i32, i32* %count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4
  %and65 = and i32 %3, 524288
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then76, label %if.else, !prof !9

if.then76:                                        ; preds = %if.end63
  call fastcc void @d_lru_add(%struct.dentry* noundef %dentry) #18
  br label %return

if.else:                                          ; preds = %if.end63
  %and78 = and i32 %3, 64
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then89, label %return, !prof !9

if.then89:                                        ; preds = %if.else
  %or = or i32 %3, 64
  store i32 %or, i32* %d_flags, align 8
  br label %return

return:                                           ; preds = %if.then76, %if.then89, %if.else, %if.end51, %if.then46, %if.end25, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ false, %if.end25 ], [ false, %if.then46 ], [ false, %if.end51 ], [ true, %if.else ], [ true, %if.then89 ], [ true, %if.then76 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dentry_kill(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool.not = icmp eq %struct.inode* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 15, i32 0, i32 0
  %call.i = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i) #19
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %slow_positive, label %if.end, !prof !9

if.end:                                           ; preds = %land.lhs.true, %entry
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp eq %struct.dentry* %1, %dentry
  br i1 %cmp, label %if.end42, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7, i32 0
  %rlock.i117 = bitcast %union.anon.65* %2 to %struct.raw_spinlock*
  %call.i118 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i117) #19
  %tobool9.not = icmp eq i32 %call.i118, 0
  br i1 %tobool9.not, label %if.then19, label %if.end42, !prof !9

if.then19:                                        ; preds = %if.then6
  %call20 = call fastcc %struct.dentry* @__lock_parent(%struct.dentry* noundef %dentry) #18
  br i1 %tobool.not, label %lor.rhs, label %got_locks

lor.rhs:                                          ; preds = %if.then19
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool23.not = icmp eq %struct.inode* %3, null
  br i1 %tobool23.not, label %got_locks, label %if.end34, !prof !8

if.end34:                                         ; preds = %lor.rhs
  %tobool35.not = icmp eq %struct.dentry* %call20, null
  br i1 %tobool35.not, label %slow_positive, label %if.then36

if.then36:                                        ; preds = %if.end34
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %call20, i64 0, i32 7, i32 0
  %rlock.i119 = bitcast %union.anon.65* %4 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i119) #19
  %.pre = load %struct.inode*, %struct.inode** %d_inode, align 8
  br label %slow_positive

if.end42:                                         ; preds = %if.then6, %if.end
  %parent.0 = phi %struct.dentry* [ null, %if.end ], [ %1, %if.then6 ]
  call fastcc void @__dentry_kill(%struct.dentry* noundef %dentry) #18
  br label %cleanup

slow_positive:                                    ; preds = %if.end34, %if.then36, %land.lhs.true
  %inode.0 = phi %struct.inode* [ %0, %land.lhs.true ], [ %.pre, %if.then36 ], [ %3, %if.end34 ]
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i120 = bitcast %union.anon.65* %5 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i120) #19
  %rlock.i121 = getelementptr inbounds %struct.inode, %struct.inode* %inode.0, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i121) #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i120) #19
  %call48 = call fastcc %struct.dentry* @lock_parent(%struct.dentry* noundef %dentry) #18
  br label %got_locks

got_locks:                                        ; preds = %if.then19, %lor.rhs, %slow_positive
  %inode.1 = phi %struct.inode* [ %inode.0, %slow_positive ], [ null, %lor.rhs ], [ %0, %if.then19 ]
  %parent.1 = phi %struct.dentry* [ %call48, %slow_positive ], [ %call20, %lor.rhs ], [ %call20, %if.then19 ]
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %7 = bitcast %union.anon.65* %6 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %7, i64 0, i32 1
  %8 = load i32, i32* %count, align 4
  %cmp50.not = icmp eq i32 %8, 1
  br i1 %cmp50.not, label %if.else, label %if.then59, !prof !8

if.then59:                                        ; preds = %got_locks
  %dec = add i32 %8, -1
  store i32 %dec, i32* %count, align 4
  br label %if.end74

if.else:                                          ; preds = %got_locks
  %call62 = call fastcc i1 @retain_dentry(%struct.dentry* noundef %dentry) #18
  br i1 %call62, label %if.end74, label %if.then72, !prof !9

if.then72:                                        ; preds = %if.else
  call fastcc void @__dentry_kill(%struct.dentry* noundef %dentry) #18
  br label %cleanup

if.end74:                                         ; preds = %if.else, %if.then59
  %tobool75.not = icmp eq %struct.inode* %inode.1, null
  br i1 %tobool75.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.end74
  %rlock.i123 = getelementptr inbounds %struct.inode, %struct.inode* %inode.1, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i123) #19
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end74
  %tobool79.not = icmp eq %struct.dentry* %parent.1, null
  br i1 %tobool79.not, label %if.end83, label %if.then80

if.then80:                                        ; preds = %if.end78
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %parent.1, i64 0, i32 7, i32 0
  %rlock.i124 = bitcast %union.anon.65* %9 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i124) #19
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end78
  %rlock.i125 = bitcast %union.anon.65* %6 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i125) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then72, %if.end42
  %retval.0 = phi %struct.dentry* [ null, %if.end83 ], [ %parent.1, %if.then72 ], [ %parent.0, %if.end42 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dput_to_list(%struct.dentry* noundef %dentry, %struct.list_head* noundef %list) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %call = call fastcc i1 @fast_dput(%struct.dentry* noundef %dentry) #18
  call fastcc void @rcu_read_unlock() #18
  br i1 %call, label %return, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @retain_dentry(%struct.dentry* noundef %dentry) #18
  br i1 %call2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @__dput_to_list(%struct.dentry* noundef %dentry, %struct.list_head* noundef %list) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dput_to_list(%struct.dentry* noundef %dentry, %struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %2 = bitcast %union.anon.65* %1 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %2, i64 0, i32 1
  %3 = load i32, i32* %count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %count, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %and2 = and i32 %0, 524288
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.else
  call fastcc void @d_lru_del(%struct.dentry* noundef %dentry) #18
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %5 = bitcast %union.anon.65* %4 to %struct.anon.66*
  %count6 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %5, i64 0, i32 1
  %6 = load i32, i32* %count6, align 4
  %dec7 = add i32 %6, -1
  store i32 %dec7, i32* %count6, align 4
  %tobool8.not = icmp eq i32 %dec7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call fastcc void @d_shrink_add(%struct.dentry* noundef %dentry, %struct.list_head* noundef %list) #18
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then9, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @dget_parent(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %d_seq = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 1
  %sequence.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %d_seq, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %sequence.i, align 4
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !13
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load volatile %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7
  %call3 = call i32 @lockref_get_not_zero(%struct.lockref* noundef %d_lockref) #19
  call fastcc void @rcu_read_unlock() #18
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end11, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %and = and i32 %0, -2
  %seqcount.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %d_seq, i64 0, i32 0
  %call8 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %and) #18
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  call void @dput(%struct.dentry* noundef %1) #18
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  call fastcc void @__rcu_read_lock() #19
  %2 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 7, i32 0
  %rlock.i76 = bitcast %union.anon.65* %3 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i76) #19
  %4 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp.not77 = icmp eq %struct.dentry* %2, %4
  br i1 %cmp.not77, label %if.end26, label %if.then23, !prof !8

if.then23:                                        ; preds = %if.end11, %if.then23
  %rlock.i78 = phi %struct.raw_spinlock* [ %rlock.i, %if.then23 ], [ %rlock.i76, %if.end11 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i78) #19
  call fastcc void @rcu_read_unlock() #18
  call fastcc void @__rcu_read_lock() #19
  %5 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %6 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %7 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp.not = icmp eq %struct.dentry* %5, %7
  br i1 %cmp.not, label %if.end26, label %if.then23, !prof !8

if.end26:                                         ; preds = %if.then23, %if.end11
  %.lcssa75 = phi %union.anon.65* [ %3, %if.end11 ], [ %6, %if.then23 ]
  %.lcssa74 = phi %struct.dentry* [ %2, %if.end11 ], [ %5, %if.then23 ]
  %8 = bitcast %union.anon.65* %.lcssa75 to %struct.anon.66*
  call fastcc void @rcu_read_unlock() #18
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %8, i64 0, i32 1
  %9 = load i32, i32* %count, align 4
  %tobool29.not = icmp eq i32 %9, 0
  br i1 %tobool29.not, label %do.body40, label %do.end48, !prof !9

do.body40:                                        ; preds = %if.end26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 966; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !14
  unreachable

do.end48:                                         ; preds = %if.end26
  %rlock.i.le = bitcast %union.anon.65* %.lcssa75 to %struct.raw_spinlock*
  %inc = add i32 %9, 1
  store i32 %inc, i32* %count, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i.le) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end48
  %retval.0 = phi %struct.dentry* [ %.lcssa74, %do.end48 ], [ %1, %if.then ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_zero(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !15
  %call = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_find_any_alias(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call = call fastcc %struct.dentry* @__d_find_any_alias(%struct.inode* noundef %inode) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__d_find_any_alias(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %i_dentry = bitcast %union.anon.62* %0 to %struct.hlist_head*
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %i_dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast %union.anon.62* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -176
  %3 = bitcast i8* %add.ptr to %struct.dentry*
  call fastcc void @__dget(%struct.dentry* noundef %3) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.dentry* [ %3, %if.end ], [ null, %entry ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_find_alias(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %i_dentry = bitcast %union.anon.62* %0 to %struct.hlist_head*
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %i_dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call1 = call fastcc %struct.dentry* @__d_find_alias(%struct.inode* noundef %inode) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %de.0 = phi %struct.dentry* [ null, %entry ], [ %call1, %if.then ]
  ret %struct.dentry* %de.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #6 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__d_find_alias(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.dentry* @__d_find_any_alias(%struct.inode* noundef %inode) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %first = bitcast %union.anon.62* %2 to %struct.hlist_node**
  %3 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr43 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -11
  %tobool3.not4953 = icmp eq %struct.hlist_node* %add.ptr43, null
  %tobool3.not49 = or i1 %tobool.not, %tobool3.not4953
  br i1 %tobool3.not49, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %4 = bitcast %struct.hlist_node* %add.ptr43 to %struct.dentry*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end9
  %alias.050 = phi %struct.dentry* [ %spec.select47, %if.end9 ], [ %4, %for.body.preheader ]
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %alias.050, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %5 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call4 = call fastcc i32 @d_unhashed(%struct.dentry* noundef nonnull %alias.050) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %for.body
  %rlock.i.le = bitcast %union.anon.65* %5 to %struct.raw_spinlock*
  call fastcc void @__dget_dlock(%struct.dentry* noundef nonnull %alias.050) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i.le) #19
  br label %cleanup

if.end9:                                          ; preds = %for.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %next = getelementptr inbounds %struct.dentry, %struct.dentry* %alias.050, i64 0, i32 15, i32 0, i32 0
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool14.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr2142 = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -11
  %7 = bitcast %struct.hlist_node* %add.ptr2142 to %struct.dentry*
  %spec.select47 = select i1 %tobool14.not, %struct.dentry* null, %struct.dentry* %7
  %tobool3.not = icmp eq %struct.dentry* %spec.select47, null
  br i1 %tobool3.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end9, %if.end, %if.then6, %if.then
  %retval.0 = phi %struct.dentry* [ %call, %if.then ], [ %alias.050, %if.then6 ], [ null, %if.end ], [ null, %if.end9 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_find_alias_rcu(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %1 = load i64, i64* %i_state, align 8
  %and = and i64 %1, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.rhs, label %if.end36, !prof !8

land.rhs:                                         ; preds = %entry
  %i_dentry = bitcast %union.anon.62* %0 to %struct.hlist_head*
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %i_dentry) #18
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end36, !prof !8

if.then:                                          ; preds = %land.rhs
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, -4096
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %4 = bitcast %union.anon.62* %0 to i8**
  %5 = load i8*, i8** %4, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 -176
  %6 = bitcast i8* %add.ptr to %struct.dentry*
  br label %if.end36

if.else:                                          ; preds = %if.then
  %first9 = bitcast %union.anon.62* %0 to %struct.hlist_node**
  %7 = load %struct.hlist_node*, %struct.hlist_node** %first9, align 8
  %tobool11.not = icmp eq %struct.hlist_node* %7, null
  %add.ptr1758 = getelementptr %struct.hlist_node, %struct.hlist_node* %7, i64 -11
  %tobool18.not6265 = icmp eq %struct.hlist_node* %add.ptr1758, null
  %tobool18.not62 = or i1 %tobool11.not, %tobool18.not6265
  br i1 %tobool18.not62, label %if.end36, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else
  %8 = bitcast %struct.hlist_node* %add.ptr1758 to %struct.dentry*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %de.063 = phi %struct.dentry* [ %spec.select61, %for.inc ], [ %8, %for.body.preheader ]
  %call19 = call fastcc i32 @d_unhashed(%struct.dentry* noundef nonnull %de.063) #18
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end36, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.dentry, %struct.dentry* %de.063, i64 0, i32 15, i32 0, i32 0
  %9 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool24.not = icmp eq %struct.hlist_node* %9, null
  %add.ptr3157 = getelementptr %struct.hlist_node, %struct.hlist_node* %9, i64 -11
  %10 = bitcast %struct.hlist_node* %add.ptr3157 to %struct.dentry*
  %spec.select61 = select i1 %tobool24.not, %struct.dentry* null, %struct.dentry* %10
  %tobool18.not = icmp eq %struct.dentry* %spec.select61, null
  br i1 %tobool18.not, label %if.end36, label %for.body

if.end36:                                         ; preds = %for.inc, %for.body, %if.else, %entry, %if.then8, %land.rhs
  %de.1 = phi %struct.dentry* [ %6, %if.then8 ], [ null, %land.rhs ], [ null, %entry ], [ null, %if.else ], [ null, %for.inc ], [ %de.063, %for.body ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret %struct.dentry* %de.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_prune_aliases(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %first = bitcast %union.anon.62* %0 to %struct.hlist_node**
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not69 = icmp eq %struct.hlist_node* %1, null
  %add.ptr5570 = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -11
  %tobool2.not657277 = icmp eq %struct.hlist_node* %add.ptr5570, null
  %tobool2.not6572 = or i1 %tobool.not69, %tobool2.not657277
  br i1 %tobool2.not6572, label %for.end, label %for.body.lr.ph.preheader

for.body.lr.ph.preheader:                         ; preds = %entry
  %2 = bitcast %struct.hlist_node* %add.ptr5570 to %struct.dentry*
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.preheader
  %dentry.066 = phi %struct.dentry* [ %2, %for.body.lr.ph.preheader ], [ %dentry.066.be, %for.body.backedge ]
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.066, i64 0, i32 7, i32 0
  %4 = bitcast %union.anon.65* %3 to %struct.anon.66*
  %rlock.i56 = bitcast %union.anon.65* %3 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i56) #19
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %4, i64 0, i32 1
  %5 = load i32, i32* %count, align 4
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  %call = call fastcc %struct.dentry* @lock_parent(%struct.dentry* noundef nonnull %dentry.066) #18
  %6 = load i32, i32* %count, align 4
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %if.then
  %tobool12.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 7, i32 0
  %rlock.i57 = bitcast %union.anon.65* %7 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i57) #19
  br label %if.end17

cleanup:                                          ; preds = %if.then
  call fastcc void @__dentry_kill(%struct.dentry* noundef nonnull %dentry.066) #18
  call void @dput(%struct.dentry* noundef %call) #18
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %8 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %8, null
  %add.ptr55 = getelementptr %struct.hlist_node, %struct.hlist_node* %8, i64 -11
  %9 = bitcast %struct.hlist_node* %add.ptr55 to %struct.dentry*
  %spec.select = select i1 %tobool.not, %struct.dentry* null, %struct.dentry* %9
  %tobool2.not65 = icmp eq %struct.dentry* %spec.select, null
  br i1 %tobool2.not65, label %for.end, label %for.body.backedge

if.end17:                                         ; preds = %if.end, %if.then13, %for.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i56) #19
  %next = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.066, i64 0, i32 15, i32 0, i32 0
  %10 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool22.not = icmp eq %struct.hlist_node* %10, null
  %add.ptr2954 = getelementptr %struct.hlist_node, %struct.hlist_node* %10, i64 -11
  %11 = bitcast %struct.hlist_node* %add.ptr2954 to %struct.dentry*
  %spec.select63 = select i1 %tobool22.not, %struct.dentry* null, %struct.dentry* %11
  %tobool2.not = icmp eq %struct.dentry* %spec.select63, null
  br i1 %tobool2.not, label %for.end, label %for.body.backedge

for.body.backedge:                                ; preds = %if.end17, %cleanup
  %dentry.066.be = phi %struct.dentry* [ %spec.select63, %if.end17 ], [ %spec.select, %cleanup ]
  br label %for.body

for.end:                                          ; preds = %cleanup, %if.end17, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @lock_parent(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp eq %struct.dentry* %0, %dentry
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %1 to %struct.raw_spinlock*
  %call.i = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i) #19
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %cleanup, !prof !9

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc %struct.dentry* @__lock_parent(%struct.dentry* noundef %dentry) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi %struct.dentry* [ %call6, %if.end5 ], [ null, %entry ], [ %0, %if.end ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dentry_kill(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp eq %struct.dentry* %0, %dentry
  %spec.select = select i1 %cmp, %struct.dentry* null, %struct.dentry* %0
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_mark_dead(%struct.lockref* noundef %d_lockref) #19
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %and = and i32 %1, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 8
  %2 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_prune = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %2, i64 0, i32 7
  %3 = load void (%struct.dentry*)*, void (%struct.dentry*)** %d_prune, align 8
  call void %3(%struct.dentry* noundef %dentry) #19
  %.pre = load i32, i32* %d_flags, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry
  %4 = phi i32 [ %.pre, %if.then2 ], [ %1, %entry ]
  %5 = and i32 %4, 525312
  %6 = icmp eq i32 %5, 524288
  br i1 %6, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end3
  call fastcc void @d_lru_del(%struct.dentry* noundef %dentry) #18
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end3
  call void @__d_drop(%struct.dentry* noundef %dentry) #18
  call fastcc void @dentry_unlist(%struct.dentry* noundef %dentry, %struct.dentry* noundef %spec.select) #18
  %tobool14.not = icmp eq %struct.dentry* %spec.select, null
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %spec.select, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %7 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %8 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool18.not = icmp eq %struct.inode* %8, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  call fastcc void @dentry_unlink_inode(%struct.dentry* noundef %dentry) #18
  br label %do.body23

if.else:                                          ; preds = %if.end17
  %rlock.i87 = bitcast %struct.lockref* %d_lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i87) #19
  br label %do.body23

do.body23:                                        ; preds = %if.else, %if.then19
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !16
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (i64* @nr_dentry to i64)
  %9 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %9, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  %d_op31 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 8
  %10 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op31, align 8
  %tobool32.not = icmp eq %struct.dentry_operations* %10, null
  br i1 %tobool32.not, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body23
  %d_release = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %10, i64 0, i32 6
  %11 = load void (%struct.dentry*)*, void (%struct.dentry*)** %d_release, align 16
  %tobool34.not = icmp eq void (%struct.dentry*)* %11, null
  br i1 %tobool34.not, label %if.end38, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  call void %11(%struct.dentry* noundef %dentry) #19
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true, %do.body23
  %rlock.i88 = bitcast %struct.lockref* %d_lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i88) #19
  %12 = load i32, i32* %d_flags, align 8
  %and42 = and i32 %12, 1024
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then52.critedge, label %if.then44

if.then44:                                        ; preds = %if.end38
  %or = or i32 %12, 8388608
  store i32 %or, i32* %d_flags, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i88) #19
  br label %if.end53

if.then52.critedge:                               ; preds = %if.end38
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i88) #19
  call fastcc void @dentry_free(%struct.dentry* noundef %dentry) #18
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %if.then52.critedge
  call fastcc void @_cond_resched() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @shrink_dentry_list(%struct.list_head* noundef %list) local_unnamed_addr #0 {
entry:
  %call33 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #18
  %tobool.not34 = icmp eq i32 %call33, 0
  br i1 %tobool.not34, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -128
  %2 = bitcast i8* %add.ptr to %struct.dentry*
  %d_lockref = getelementptr i8, i8* %1, i64 -40
  %rlock.i = bitcast i8* %d_lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__rcu_read_lock() #19
  %call1 = call fastcc i1 @shrink_lock_dentry(%struct.dentry* noundef %2) #18
  call fastcc void @rcu_read_unlock() #18
  call fastcc void @d_shrink_del(%struct.dentry* noundef %2) #18
  br i1 %call1, label %if.end10, label %if.then

if.then:                                          ; preds = %while.body
  %count = getelementptr i8, i8* %1, i64 -36
  %3 = bitcast i8* %count to i32*
  %4 = load i32, i32* %3, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end9.critedge

if.then3:                                         ; preds = %if.then
  %d_flags = bitcast i8* %add.ptr to i32*
  %5 = load i32, i32* %d_flags, align 8
  %and = and i32 %5, 8388608
  %tobool4.not = icmp eq i32 %and, 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br i1 %tobool4.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.then3
  call fastcc void @dentry_free(%struct.dentry* noundef %2) #18
  br label %cleanup

if.end9.critedge:                                 ; preds = %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %d_parent = getelementptr i8, i8* %1, i64 -104
  %6 = bitcast i8* %d_parent to %struct.dentry**
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  %cmp11.not = icmp eq %struct.dentry* %7, %2
  br i1 %cmp11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call fastcc void @__dput_to_list(%struct.dentry* noundef %7, %struct.list_head* noundef %list) #18
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  call fastcc void @__dentry_kill(%struct.dentry* noundef %2) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then8, %if.end9.critedge, %if.end13
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @shrink_lock_dentry(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %1 = bitcast %union.anon.65* %0 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %1, i64 0, i32 1
  %2 = load i32, i32* %count, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool1.not = icmp eq %struct.inode* %3, null
  br i1 %tobool1.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 15, i32 0, i32 0
  %call.i = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i) #19
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then6, label %if.end34, !prof !9

if.then6:                                         ; preds = %land.lhs.true
  %rlock.i120 = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i120) #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i120) #19
  %4 = load i32, i32* %count, align 4
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %if.end22, label %if.then91, !prof !8

if.end22:                                         ; preds = %if.then6
  %5 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %cmp.not = icmp eq %struct.inode* %3, %5
  br i1 %cmp.not, label %if.end34, label %if.then91, !prof !8

if.end34:                                         ; preds = %if.end22, %land.lhs.true, %if.end
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %6 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp36 = icmp eq %struct.dentry* %6, %dentry
  br i1 %cmp36, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 7, i32 0
  %rlock.i123 = bitcast %union.anon.65* %7 to %struct.raw_spinlock*
  %call.i124 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i123) #19
  %tobool41.not = icmp eq i32 %call.i124, 0
  br i1 %tobool41.not, label %if.end50, label %cleanup, !prof !9

if.end50:                                         ; preds = %lor.lhs.false
  %rlock.i125 = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i125) #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i123) #19
  %8 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp56.not = icmp eq %struct.dentry* %6, %8
  br i1 %cmp56.not, label %do.body, label %if.then65, !prof !8

if.then65:                                        ; preds = %if.end50
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i123) #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i125) #19
  br label %out

do.body:                                          ; preds = %if.end50
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i125) #18
  %9 = load i32, i32* %count, align 4
  %tobool76.not = icmp eq i32 %9, 0
  br i1 %tobool76.not, label %cleanup, label %if.end87, !prof !8

if.end87:                                         ; preds = %do.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i123) #19
  br label %out

out:                                              ; preds = %if.end87, %if.then65
  br i1 %tobool1.not, label %cleanup, label %if.then91

if.then91:                                        ; preds = %if.then6, %if.end22, %out
  %rlock.i131 = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i131) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then91, %do.body, %if.end34, %lor.lhs.false, %entry
  %retval.0 = phi i1 [ false, %entry ], [ true, %lor.lhs.false ], [ true, %if.end34 ], [ true, %do.body ], [ false, %if.then91 ], [ false, %out ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_shrink_del(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 525312
  %cmp.not = icmp eq i32 %and, 525312
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 421; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %d_lru = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %d_lru) #18
  %1 = load i32, i32* %d_flags, align 8
  %and15 = and i32 %1, -525313
  store i32 %and15, i32* %d_flags, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (i64* @nr_dentry_unused to i64)
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %2, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dentry_free(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_u = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 15
  %d_alias = getelementptr %union.anon.68, %union.anon.68* %d_u, i64 0, i32 0
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %d_alias) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 340; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call fastcc i32 @dname_external(%struct.dentry* noundef %dentry) #18
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end38, label %if.then25, !prof !8

if.then25:                                        ; preds = %if.end
  %call26 = call fastcc %struct.external_name* @external_name(%struct.dentry* noundef %dentry) #18
  %count = bitcast %struct.external_name* %call26 to %struct.atomic_t*
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %count) #19
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %cleanup, label %if.end38, !prof !8

cleanup:                                          ; preds = %if.then25
  %d_rcu = bitcast %union.anon.68* %d_u to %struct.callback_head*
  call void @call_rcu(%struct.callback_head* noundef %d_rcu, void (%struct.callback_head*)* noundef nonnull @__d_free_external) #19
  br label %if.end45

if.end38:                                         ; preds = %if.then25, %if.end
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 1073741824
  %tobool39.not = icmp eq i32 %and, 0
  %d_rcu44 = bitcast %union.anon.68* %d_u to %struct.callback_head*
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__d_free(%struct.callback_head* noundef %d_rcu44) #18
  br label %if.end45

if.else:                                          ; preds = %if.end38
  call void @call_rcu(%struct.callback_head* noundef %d_rcu44, void (%struct.callback_head*)* noundef nonnull @__d_free) #19
  br label %if.end45

if.end45:                                         ; preds = %cleanup, %if.else, %if.then40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @prune_dcache_sb(%struct.super_block* noundef %sb, %struct.shrink_control* noundef %sc) local_unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %s_dentry_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 47
  %call = call fastcc i64 @list_lru_shrink_walk(%struct.list_lru* noundef %s_dentry_lru, %struct.shrink_control* noundef %sc, i8* noundef nonnull %0) #18
  call void @shrink_dentry_list(%struct.list_head* noundef nonnull %dispose) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @list_lru_shrink_walk(%struct.list_lru* noundef %lru, %struct.shrink_control* noundef %sc, i8* noundef %cb_arg) unnamed_addr #0 {
entry:
  %nid = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 1
  %0 = load i32, i32* %nid, align 4
  %memcg = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 4
  %1 = load %struct.mem_cgroup*, %struct.mem_cgroup** %memcg, align 8
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 2
  %call = call i64 @list_lru_walk_one(%struct.list_lru* noundef %lru, i32 noundef %0, %struct.mem_cgroup* noundef %1, i32 (%struct.list_head*, %struct.list_lru_one*, %struct.spinlock*, i8*)* noundef nonnull @dentry_lru_isolate, i8* noundef %cb_arg, i64* noundef %nr_to_scan) #19
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @dentry_lru_isolate(%struct.list_head* noundef %item, %struct.list_lru_one* noundef %lru, %struct.spinlock* nocapture noundef readnone %lru_lock, i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.list_head*
  %add.ptr29 = getelementptr %struct.list_head, %struct.list_head* %item, i64 -8
  %1 = bitcast %struct.list_head* %add.ptr29 to %struct.dentry*
  %d_lockref = getelementptr %struct.list_head, %struct.list_head* %item, i64 -3, i32 1
  %rlock.i = bitcast %struct.list_head** %d_lockref to %struct.raw_spinlock*
  %call.i = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i) #19
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.list_head** %d_lockref to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %2, i64 0, i32 1
  %3 = load i32, i32* %count, align 4
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @d_lru_isolate(%struct.list_lru_one* noundef %lru, %struct.dentry* noundef %1) #18
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %d_flags = bitcast %struct.list_head* %add.ptr29 to i32*
  %4 = load i32, i32* %d_flags, align 8
  %and = and i32 %4, 64
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end6
  %and10 = and i32 %4, -65
  store i32 %and10, i32* %d_flags, align 8
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end6
  call fastcc void @d_lru_shrink_move(%struct.list_lru_one* noundef %lru, %struct.dentry* noundef %1, %struct.list_head* noundef %0) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %if.then8, %if.end13
  %retval.0.ph = phi i32 [ 0, %if.end13 ], [ 2, %if.then8 ], [ 0, %if.then3 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 3, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @shrink_dcache_sb(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %dispose to i8*
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  %s_dentry_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 47
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  call fastcc void @list_lru_walk(%struct.list_lru* noundef %s_dentry_lru, i8* noundef nonnull %0) #18
  call void @shrink_dentry_list(%struct.list_head* noundef nonnull %dispose) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  %call2 = call fastcc i64 @list_lru_count(%struct.list_lru* noundef %s_dentry_lru) #18
  %cmp.not = icmp eq i64 %call2, 0
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_lru_walk(%struct.list_lru* noundef %lru, i8* noundef %cb_arg) unnamed_addr #0 {
entry:
  %nr_to_walk.addr = alloca i64, align 8
  store i64 1024, i64* %nr_to_walk.addr, align 8
  %call = call i64 @list_lru_walk_node(%struct.list_lru* noundef %lru, i32 noundef 0, i32 (%struct.list_head*, %struct.list_lru_one*, %struct.spinlock*, i8*)* noundef nonnull @dentry_lru_isolate_shrink, i8* noundef %cb_arg, i64* noundef nonnull %nr_to_walk.addr) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @dentry_lru_isolate_shrink(%struct.list_head* noundef %item, %struct.list_lru_one* noundef %lru, %struct.spinlock* nocapture noundef readnone %lru_lock, i8* noundef %arg) #0 {
entry:
  %d_lockref = getelementptr %struct.list_head, %struct.list_head* %item, i64 -3, i32 1
  %rlock.i = bitcast %struct.list_head** %d_lockref to %struct.raw_spinlock*
  %call.i = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %rlock.i) #19
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr9 = getelementptr %struct.list_head, %struct.list_head* %item, i64 -8
  %0 = bitcast %struct.list_head* %add.ptr9 to %struct.dentry*
  %1 = bitcast i8* %arg to %struct.list_head*
  call fastcc void @d_lru_shrink_move(%struct.list_lru_one* noundef %lru, %struct.dentry* noundef %0, %struct.list_head* noundef %1) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @list_lru_count(%struct.list_lru* noundef %lru) unnamed_addr #0 {
entry:
  %call = call i64 @list_lru_count_node(%struct.list_lru* noundef %lru, i32 noundef 0) #19
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @path_has_submounts(%struct.path* nocapture noundef readonly %parent) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.check_mount, align 8
  %0 = bitcast %struct.check_mount* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.check_mount, %struct.check_mount* %data, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !22
  store i64 0, i64* %2, align 8, !annotation !22
  %mnt = getelementptr inbounds %struct.check_mount, %struct.check_mount* %data, i64 0, i32 0
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %parent, i64 0, i32 0
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  store %struct.vfsmount* %3, %struct.vfsmount** %mnt, align 8
  %mounted = getelementptr inbounds %struct.check_mount, %struct.check_mount* %data, i64 0, i32 1
  call fastcc void @read_seqlock_excl(%struct.seqlock_t* noundef nonnull @mount_lock) #18
  %dentry = getelementptr inbounds %struct.path, %struct.path* %parent, i64 0, i32 1
  %4 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call fastcc void @d_walk(%struct.dentry* noundef %4, i8* noundef nonnull %0, i32 (i8*, %struct.dentry*)* noundef nonnull @path_check_mount) #18
  call fastcc void @read_sequnlock_excl(%struct.seqlock_t* noundef nonnull @mount_lock) #18
  %5 = load i32, i32* %mounted, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_seqlock_excl(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_walk(%struct.dentry* noundef %parent, i8* noundef %data, i32 (i8*, %struct.dentry*)* nocapture noundef readonly %enter) unnamed_addr #0 {
entry:
  %seq = alloca i32, align 4
  %0 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %1 to %struct.raw_spinlock*
  br label %again

again:                                            ; preds = %do.end105, %entry
  %storemerge = phi i32 [ 0, %entry ], [ 1, %do.end105 ]
  store i32 %storemerge, i32* %seq, align 4
  call fastcc void @read_seqbegin_or_lock(i32* noundef nonnull %seq) #18
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call = call i32 %enter(i8* noundef %data, %struct.dentry* noundef %parent) #19
  switch i32 %call, label %sw.epilog [
    i32 2, label %sw.bb1
    i32 1, label %out_unlock.loopexit
    i32 3, label %out_unlock.loopexit
  ]

sw.bb1:                                           ; preds = %again
  br label %sw.epilog

sw.epilog:                                        ; preds = %again, %sw.bb1
  %retry.1.off0 = phi i1 [ true, %again ], [ false, %sw.bb1 ]
  %2 = load i32, i32* %seq, align 4
  br label %repeat

repeat.loopexit:                                  ; preds = %sw.epilog22
  %3 = bitcast %struct.list_head* %add.ptr165 to %struct.dentry*
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %this_parent.1, i64 0, i32 7, i32 0
  %rlock.i169 = bitcast %union.anon.65* %4 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i169) #19
  br label %repeat

repeat:                                           ; preds = %repeat.loopexit, %sw.epilog
  %retry.2.off0 = phi i1 [ %retry.1.off0, %sw.epilog ], [ %retry.5.off0, %repeat.loopexit ]
  %this_parent.0 = phi %struct.dentry* [ %parent, %sw.epilog ], [ %3, %repeat.loopexit ]
  %next2 = getelementptr inbounds %struct.dentry, %struct.dentry* %this_parent.0, i64 0, i32 14, i32 0
  %5 = load %struct.list_head*, %struct.list_head** %next2, align 8
  br label %resume

resume.loopexit:                                  ; preds = %if.end56
  call fastcc void @rcu_read_unlock() #18
  br label %resume

resume:                                           ; preds = %resume.loopexit, %repeat
  %retry.3.off0 = phi i1 [ %retry.2.off0, %repeat ], [ %retry.4.off0.lcssa, %resume.loopexit ]
  %next.0 = phi %struct.list_head* [ %5, %repeat ], [ %13, %resume.loopexit ]
  %this_parent.1 = phi %struct.dentry* [ %this_parent.0, %repeat ], [ %10, %resume.loopexit ]
  %d_subdirs3202 = getelementptr inbounds %struct.dentry, %struct.dentry* %this_parent.1, i64 0, i32 14
  %cmp.not203 = icmp eq %struct.list_head* %next.0, %d_subdirs3202
  br i1 %cmp.not203, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %resume
  %d_subdirs3 = getelementptr inbounds %struct.dentry, %struct.dentry* %this_parent.1, i64 0, i32 14
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  %next.1205 = phi %struct.list_head* [ %6, %while.cond.backedge ], [ %next.0, %while.body.preheader ]
  %retry.4.off0204 = phi i1 [ %retry.6.off0.ph, %while.cond.backedge ], [ %retry.3.off0, %while.body.preheader ]
  %add.ptr165 = getelementptr %struct.list_head, %struct.list_head* %next.1205, i64 -9
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %next.1205, i64 0, i32 0
  %6 = load %struct.list_head*, %struct.list_head** %next5, align 8
  %d_flags = bitcast %struct.list_head* %add.ptr165 to i32*
  %7 = load i32, i32* %d_flags, align 8
  %and = and i32 %7, 536870912
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body8, label %while.cond.backedge, !prof !8

do.body8:                                         ; preds = %while.body
  %8 = bitcast %struct.list_head* %add.ptr165 to %struct.dentry*
  %d_lockref9 = getelementptr %struct.list_head, %struct.list_head* %next.1205, i64 -4, i32 1
  %rlock.i166 = bitcast %struct.list_head** %d_lockref9 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i166) #18
  %call14 = call i32 %enter(i8* noundef %data, %struct.dentry* noundef %8) #19
  switch i32 %call14, label %sw.epilog22 [
    i32 3, label %while.cond.backedge.sink.split
    i32 1, label %cleanup.thread
    i32 2, label %sw.bb18
  ]

cleanup.thread:                                   ; preds = %do.body8
  %rlock.i166.le = bitcast %struct.list_head** %d_lockref9 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i166.le) #19
  br label %out_unlock

sw.bb18:                                          ; preds = %do.body8
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %do.body8, %sw.bb18
  %retry.5.off0 = phi i1 [ %retry.4.off0204, %do.body8 ], [ false, %sw.bb18 ]
  %9 = getelementptr %struct.list_head, %struct.list_head* %next.1205, i64 1
  %call24 = call fastcc i32 @list_empty(%struct.list_head* noundef %9) #18
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %repeat.loopexit, label %while.cond.backedge.sink.split

while.cond.backedge.sink.split:                   ; preds = %sw.epilog22, %do.body8
  %retry.6.off0.ph.ph = phi i1 [ %retry.4.off0204, %do.body8 ], [ %retry.5.off0, %sw.epilog22 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i166) #19
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.sink.split, %while.body
  %retry.6.off0.ph = phi i1 [ %retry.4.off0204, %while.body ], [ %retry.6.off0.ph.ph, %while.cond.backedge.sink.split ]
  %cmp.not = icmp eq %struct.list_head* %6, %d_subdirs3
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %resume
  %retry.4.off0.lcssa = phi i1 [ %retry.3.off0, %resume ], [ %retry.6.off0.ph, %while.cond.backedge ]
  call fastcc void @__rcu_read_lock() #19
  %cmp39.not267 = icmp eq %struct.dentry* %this_parent.1, %parent
  br i1 %cmp39.not267, label %if.end77, label %if.then41

ascend.loopexit:                                  ; preds = %do.body50
  %cmp39.not = icmp eq %struct.dentry* %10, %parent
  br i1 %cmp39.not, label %if.end77, label %if.then41

if.then41:                                        ; preds = %while.end, %ascend.loopexit
  %this_parent.4268 = phi %struct.dentry* [ %10, %ascend.loopexit ], [ %this_parent.1, %while.end ]
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %this_parent.4268, i64 0, i32 3
  %10 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %this_parent.4268, i64 0, i32 7, i32 0
  %rlock.i171 = bitcast %union.anon.65* %11 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i171) #19
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i64 0, i32 7, i32 0
  %rlock.i172 = bitcast %union.anon.65* %12 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i172) #19
  %call46 = call fastcc i32 @need_seqretry(i32 noundef %2) #18
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body50.preheader, label %rename_retry.loopexit

do.body50.preheader:                              ; preds = %if.then41
  %d_subdirs52 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i64 0, i32 14
  br label %do.body50

do.body50:                                        ; preds = %do.body50.preheader, %if.end56
  %child.0 = phi %struct.dentry* [ %14, %if.end56 ], [ %this_parent.4268, %do.body50.preheader ]
  %next51 = getelementptr inbounds %struct.dentry, %struct.dentry* %child.0, i64 0, i32 13, i32 0
  %13 = load %struct.list_head*, %struct.list_head** %next51, align 8
  %cmp53 = icmp eq %struct.list_head* %13, %d_subdirs52
  br i1 %cmp53, label %ascend.loopexit, label %if.end56

if.end56:                                         ; preds = %do.body50
  %add.ptr62164 = getelementptr %struct.list_head, %struct.list_head* %13, i64 -9
  %14 = bitcast %struct.list_head* %add.ptr62164 to %struct.dentry*
  %d_flags64 = bitcast %struct.list_head* %add.ptr62164 to i32*
  %15 = load i32, i32* %d_flags64, align 8
  %and65 = and i32 %15, 32768
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %resume.loopexit, label %do.body50, !prof !8

if.end77:                                         ; preds = %while.end, %ascend.loopexit
  %call78 = call fastcc i32 @need_seqretry(i32 noundef %2) #18
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %rename_retry

if.end81:                                         ; preds = %if.end77
  call fastcc void @rcu_read_unlock() #18
  br label %out_unlock

out_unlock.loopexit:                              ; preds = %again, %again
  %.pre = load i32, i32* %seq, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.loopexit, %cleanup.thread, %if.end81
  %16 = phi i32 [ %2, %if.end81 ], [ %2, %cleanup.thread ], [ %.pre, %out_unlock.loopexit ]
  %this_parent.5 = phi %struct.dentry* [ %parent, %if.end81 ], [ %this_parent.1, %cleanup.thread ], [ %parent, %out_unlock.loopexit ]
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %this_parent.5, i64 0, i32 7, i32 0
  %rlock.i173 = bitcast %union.anon.65* %17 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i173) #19
  call fastcc void @done_seqretry(i32 noundef %16) #18
  br label %cleanup109

rename_retry.loopexit:                            ; preds = %if.then41
  %rlock.i172.le = bitcast %union.anon.65* %12 to %struct.raw_spinlock*
  br label %rename_retry

rename_retry:                                     ; preds = %rename_retry.loopexit, %if.end77
  %rlock.i174.pre-phi = phi %struct.raw_spinlock* [ %rlock.i, %if.end77 ], [ %rlock.i172.le, %rename_retry.loopexit ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i174.pre-phi) #19
  call fastcc void @rcu_read_unlock() #18
  %and87 = and i32 %2, 1
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.end105, label %do.body97, !prof !8

do.body97:                                        ; preds = %rename_retry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 1422; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !23
  unreachable

do.end105:                                        ; preds = %rename_retry
  br i1 %retry.4.off0.lcssa, label %again, label %cleanup109

cleanup109:                                       ; preds = %do.end105, %out_unlock
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @path_check_mount(i8* nocapture noundef %data, %struct.dentry* noundef %dentry) #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %mnt1 = bitcast i8* %data to %struct.vfsmount**
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %mnt, align 8
  %dentry2 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  store %struct.dentry* %dentry, %struct.dentry** %dentry2, align 8
  %call = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %dentry) #18
  br i1 %call, label %if.end, label %cleanup, !prof !9

if.end:                                           ; preds = %entry
  %call5 = call fastcc i1 @__path_is_mountpoint(%struct.path* noundef nonnull %path) #18
  br i1 %call5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  %mounted = getelementptr inbounds i8, i8* %data, i64 8
  %2 = bitcast i8* %mounted to i32*
  store i32 1, i32* %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_sequnlock_excl(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @d_set_mounted(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  call fastcc void @write_seqlock() #18
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %p.038 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_parent139 = getelementptr inbounds %struct.dentry, %struct.dentry* %p.038, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent139, align 8
  %cmp.not40 = icmp eq %struct.dentry* %p.038, %0
  br i1 %cmp.not40, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %d_parent142 = phi %struct.dentry** [ %d_parent1, %if.end ], [ %d_parent139, %entry ]
  %p.041 = phi %struct.dentry* [ %p.0, %if.end ], [ %p.038, %entry ]
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %p.041, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %1 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call = call fastcc i32 @d_unhashed(%struct.dentry* noundef %p.041) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %for.body
  %rlock.i.le = bitcast %union.anon.65* %1 to %struct.raw_spinlock*
  br label %out

if.end:                                           ; preds = %for.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %p.0 = load %struct.dentry*, %struct.dentry** %d_parent142, align 8
  %d_parent1 = getelementptr inbounds %struct.dentry, %struct.dentry* %p.0, i64 0, i32 3
  %2 = load %struct.dentry*, %struct.dentry** %d_parent1, align 8
  %cmp.not = icmp eq %struct.dentry* %p.0, %2
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i36 = bitcast %union.anon.65* %3 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i36) #19
  %call12 = call fastcc i32 @d_unlinked(%struct.dentry* noundef %dentry) #18
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %out

if.then14:                                        ; preds = %for.end
  %call15 = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %dentry) #18
  br i1 %call15, label %out, label %if.then16

if.then16:                                        ; preds = %if.then14
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %4 = load i32, i32* %d_flags, align 8
  %or = or i32 %4, 65536
  store i32 %or, i32* %d_flags, align 8
  br label %out

out:                                              ; preds = %for.end, %if.then16, %if.then14, %if.then
  %rlock.i36.sink = phi %struct.raw_spinlock* [ %rlock.i.le, %if.then ], [ %rlock.i36, %if.then14 ], [ %rlock.i36, %if.then16 ], [ %rlock.i36, %for.end ]
  %ret.1 = phi i32 [ -2, %if.then ], [ -16, %if.then14 ], [ 0, %if.then16 ], [ -2, %for.end ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i36.sink) #19
  call fastcc void @write_sequnlock() #18
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_seqlock() unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 1, i32 0, i32 0)) #19
  call fastcc void @do_write_seqcount_begin(%struct.seqcount* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 0, i32 0)) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_unlinked(%struct.dentry* noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp ne %struct.dentry* %0, %dentry
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_mountpoint(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 65536
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_sequnlock() unnamed_addr #0 {
entry:
  call fastcc void @do_write_seqcount_end(%struct.seqcount* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 0, i32 0)) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 1, i32 0, i32 0)) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @shrink_dcache_parent(%struct.dentry* noundef %parent) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.select_data, align 8
  %0 = bitcast %struct.select_data* %data to i8*
  %start = getelementptr inbounds %struct.select_data, %struct.select_data* %data, i64 0, i32 0
  %dispose = getelementptr inbounds %struct.select_data, %struct.select_data* %data, i64 0, i32 2
  %1 = getelementptr inbounds %struct.select_data, %struct.select_data* %data, i64 0, i32 1
  %found = getelementptr inbounds %union.anon.72, %union.anon.72* %1, i64 0, i32 0
  %victim = bitcast %union.anon.72* %1 to %struct.dentry**
  %2 = getelementptr inbounds %struct.select_data, %struct.select_data* %data, i64 0, i32 1
  %3 = bitcast %union.anon.72* %2 to i8*
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store %struct.dentry* %parent, %struct.dentry** %start, align 8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %dispose) #18
  call fastcc void @d_walk(%struct.dentry* noundef %parent, i8* noundef nonnull %0, i32 (i8*, %struct.dentry*)* noundef nonnull @select_collect) #18
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %dispose) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %for.cond
  call fastcc void @_cond_resched() #18
  %4 = load i64, i64* %found, align 8
  %tobool4.not = icmp eq i64 %4, 0
  br i1 %tobool4.not, label %for.end, label %if.end6

if.end6:                                          ; preds = %if.end
  store %struct.dentry* null, %struct.dentry** %victim, align 8
  call fastcc void @d_walk(%struct.dentry* noundef %parent, i8* noundef nonnull %0, i32 (i8*, %struct.dentry*)* noundef nonnull @select_collect2) #18
  %5 = load %struct.dentry*, %struct.dentry** %victim, align 8
  %tobool8.not = icmp eq %struct.dentry* %5, null
  br i1 %tobool8.not, label %if.end25, label %if.then9

if.then9:                                         ; preds = %if.end6
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %6 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %7 = load %struct.dentry*, %struct.dentry** %victim, align 8
  %call13 = call fastcc i1 @shrink_lock_dentry(%struct.dentry* noundef %7) #18
  br i1 %call13, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then9
  %8 = load %struct.dentry*, %struct.dentry** %victim, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i64 0, i32 7, i32 0
  %rlock.i37 = bitcast %union.anon.65* %9 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i37) #19
  call fastcc void @rcu_read_unlock() #18
  br label %if.end25

if.else:                                          ; preds = %if.then9
  call fastcc void @rcu_read_unlock() #18
  %10 = load %struct.dentry*, %struct.dentry** %victim, align 8
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i64 0, i32 3
  %11 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp.not = icmp eq %struct.dentry* %11, %10
  br i1 %cmp.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.else
  call fastcc void @__dput_to_list(%struct.dentry* noundef %11, %struct.list_head* noundef %dispose) #18
  %.pre = load %struct.dentry*, %struct.dentry** %victim, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else
  %12 = phi %struct.dentry* [ %.pre, %if.then20 ], [ %10, %if.else ]
  call fastcc void @__dentry_kill(%struct.dentry* noundef %12) #18
  br label %if.end25

if.end25:                                         ; preds = %if.then14, %if.end22, %if.end6
  %call27 = call fastcc i32 @list_empty(%struct.list_head* noundef %dispose) #18
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end25, %for.cond
  call void @shrink_dentry_list(%struct.list_head* noundef %dispose) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  br label %for.cond

for.end:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @select_collect(i8* noundef %_data, %struct.dentry* noundef %dentry) #0 {
entry:
  %start = bitcast i8* %_data to %struct.dentry**
  %0 = load %struct.dentry*, %struct.dentry** %start, align 8
  %cmp = icmp eq %struct.dentry* %0, %dentry
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %entry
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %and = and i32 %1, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end12.sink.split

if.else:                                          ; preds = %if.end
  %and3 = and i32 %1, 524288
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.else
  call fastcc void @d_lru_del(%struct.dentry* noundef %dentry) #18
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %3 = bitcast %union.anon.65* %2 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %3, i64 0, i32 1
  %4 = load i32, i32* %count, align 4
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end6
  %dispose = getelementptr inbounds i8, i8* %_data, i64 16
  %5 = bitcast i8* %dispose to %struct.list_head*
  call fastcc void @d_shrink_add(%struct.dentry* noundef %dentry, %struct.list_head* noundef %5) #18
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.end, %if.then8
  %6 = getelementptr inbounds i8, i8* %_data, i64 8
  %found = bitcast i8* %6 to i64*
  %7 = load i64, i64* %found, align 8
  %inc10 = add i64 %7, 1
  store i64 %inc10, i64* %found, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.end6
  %dispose13 = getelementptr inbounds i8, i8* %_data, i64 16
  %8 = bitcast i8* %dispose13 to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %8) #18
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.then15, label %out

if.then15:                                        ; preds = %if.end12
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !24
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %11 = getelementptr %struct.task_struct, %struct.task_struct* %10, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %11) #19
  %tobool.i.not = icmp eq i32 %call1.i, 0
  %cond = select i1 %tobool.i.not, i32 2, i32 1
  br label %out

out:                                              ; preds = %if.end12, %if.then15, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end12 ], [ %cond, %if.then15 ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @select_collect2(i8* noundef %_data, %struct.dentry* noundef %dentry) #0 {
entry:
  %start = bitcast i8* %_data to %struct.dentry**
  %0 = load %struct.dentry*, %struct.dentry** %start, align 8
  %cmp = icmp eq %struct.dentry* %0, %dentry
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %and = and i32 %1, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %3 = bitcast %union.anon.65* %2 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %3, i64 0, i32 1
  %4 = load i32, i32* %count, align 4
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.then1
  call fastcc void @__rcu_read_lock() #19
  %5 = getelementptr inbounds i8, i8* %_data, i64 8
  %victim = bitcast i8* %5 to %struct.dentry**
  store %struct.dentry* %dentry, %struct.dentry** %victim, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and6 = and i32 %1, 524288
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.else
  call fastcc void @d_lru_del(%struct.dentry* noundef %dentry) #18
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %7 = bitcast %union.anon.65* %6 to %struct.anon.66*
  %count11 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %7, i64 0, i32 1
  %8 = load i32, i32* %count11, align 4
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  %dispose = getelementptr inbounds i8, i8* %_data, i64 16
  %9 = bitcast i8* %dispose to %struct.list_head*
  call fastcc void @d_shrink_add(%struct.dentry* noundef %dentry, %struct.list_head* noundef %9) #18
  br label %if.end15

if.end15:                                         ; preds = %if.end9, %if.then13, %if.then1
  %dispose16 = getelementptr inbounds i8, i8* %_data, i64 16
  %10 = bitcast i8* %dispose16 to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %10) #18
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.end15
  %11 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !24
  %12 = inttoptr i64 %11 to %struct.task_struct*
  %13 = getelementptr %struct.task_struct, %struct.task_struct* %12, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %13) #19
  %tobool.i.not = icmp eq i32 %call1.i, 0
  %cond = select i1 %tobool.i.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then18, %if.end15, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %entry ], [ 0, %if.end15 ], [ %cond, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @shrink_dcache_for_umount(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %s_umount) #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !8

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0)) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 1670; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %0 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  store %struct.dentry* null, %struct.dentry** %s_root, align 8
  call fastcc void @do_one_tree(%struct.dentry* noundef %0) #18
  %s_roots = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 18
  %call2241 = call fastcc i1 @hlist_bl_empty(%struct.hlist_bl_head* noundef %s_roots) #18
  br i1 %call2241, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %call26 = call fastcc %struct.hlist_bl_node* @hlist_bl_first(%struct.hlist_bl_head* noundef %s_roots) #18
  %add.ptr = getelementptr %struct.hlist_bl_node, %struct.hlist_bl_node* %call26, i64 -1, i32 1
  %1 = bitcast %struct.hlist_bl_node*** %add.ptr to %struct.dentry*
  %call31 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %1) #18
  call fastcc void @do_one_tree(%struct.dentry* noundef %1) #18
  %call22 = call fastcc i1 @hlist_bl_empty(%struct.hlist_bl_head* noundef %s_roots) #18
  br i1 %call22, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_one_tree(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  call void @shrink_dcache_parent(%struct.dentry* noundef %dentry) #18
  %0 = bitcast %struct.dentry* %dentry to i8*
  call fastcc void @d_walk(%struct.dentry* noundef %dentry, i8* noundef %0, i32 (i8*, %struct.dentry*)* noundef nonnull @umount_check) #18
  call void @d_drop(%struct.dentry* noundef %dentry) #18
  call void @dput(%struct.dentry* noundef %dentry) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hlist_bl_empty(%struct.hlist_bl_head* noundef %h) unnamed_addr #6 {
entry:
  %first = getelementptr inbounds %struct.hlist_bl_head, %struct.hlist_bl_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_bl_node*, %struct.hlist_bl_node** %first, align 8
  %tobool.not = icmp ult %struct.hlist_bl_node* %0, inttoptr (i64 2 to %struct.hlist_bl_node*)
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dget(%struct.dentry* noundef returned %dentry) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.hlist_bl_node* @hlist_bl_first(%struct.hlist_bl_head* nocapture noundef readonly %h) unnamed_addr #4 {
entry:
  %first = getelementptr inbounds %struct.hlist_bl_head, %struct.hlist_bl_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_bl_node*, %struct.hlist_bl_node** %first, align 8
  %1 = ptrtoint %struct.hlist_bl_node* %0 to i64
  %and = and i64 %1, -2
  %2 = inttoptr i64 %and to %struct.hlist_bl_node*
  ret %struct.hlist_bl_node* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_invalidate(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %victim = alloca %struct.dentry*, align 8
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup14

if.end:                                           ; preds = %entry
  call void @__d_drop(%struct.dentry* noundef %dentry) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool5.not = icmp eq %struct.inode* %1, null
  br i1 %tobool5.not, label %cleanup14, label %if.end7

if.end7:                                          ; preds = %if.end
  call void @shrink_dcache_parent(%struct.dentry* noundef %dentry) #18
  %2 = bitcast %struct.dentry** %victim to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #21
  store %struct.dentry* null, %struct.dentry** %victim, align 8
  call fastcc void @d_walk(%struct.dentry* noundef %dentry, i8* noundef nonnull %2, i32 (i8*, %struct.dentry*)* noundef nonnull @find_submount) #18
  %3 = load %struct.dentry*, %struct.dentry** %victim, align 8
  %tobool8.not27 = icmp eq %struct.dentry* %3, null
  br i1 %tobool8.not27, label %cleanup.thread, label %cleanup

if.then9:                                         ; preds = %cleanup
  br i1 %tobool8.not27, label %cleanup.thread, label %if.then11

if.then11:                                        ; preds = %if.then9
  call void @shrink_dcache_parent(%struct.dentry* noundef %dentry) #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end7, %if.then9, %if.then11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #21
  br label %cleanup14

cleanup:                                          ; preds = %if.end7, %cleanup
  %4 = phi %struct.dentry* [ %6, %cleanup ], [ %3, %if.end7 ]
  call fastcc void @detach_mounts(%struct.dentry* noundef nonnull %4) #18
  %5 = load %struct.dentry*, %struct.dentry** %victim, align 8
  call void @dput(%struct.dentry* noundef %5) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #21
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #21
  store %struct.dentry* null, %struct.dentry** %victim, align 8
  call fastcc void @d_walk(%struct.dentry* noundef %dentry, i8* noundef nonnull %2, i32 (i8*, %struct.dentry*)* noundef nonnull @find_submount) #18
  %6 = load %struct.dentry*, %struct.dentry** %victim, align 8
  %tobool8.not = icmp eq %struct.dentry* %6, null
  br i1 %tobool8.not, label %if.then9, label %cleanup

cleanup14:                                        ; preds = %cleanup.thread, %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @find_submount(i8* nocapture noundef writeonly %_data, %struct.dentry* noundef %dentry) #9 {
entry:
  %call = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %dentry) #18
  br i1 %call, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %_data to %struct.dentry**
  call fastcc void @__dget_dlock(%struct.dentry* noundef %dentry) #18
  store %struct.dentry* %dentry, %struct.dentry** %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @detach_mounts(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %dentry) #18
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void @__detach_mounts(%struct.dentry* noundef %dentry) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_alloc(%struct.dentry* noundef %parent, %struct.qstr* noundef %name) local_unnamed_addr #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call fastcc %struct.dentry* @__d_alloc(%struct.super_block* noundef %0, %struct.qstr* noundef %name) #18
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %1 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__dget_dlock(%struct.dentry* noundef %parent) #18
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 3
  store %struct.dentry* %parent, %struct.dentry** %d_parent, align 8
  %d_child = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 13
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 14
  call fastcc void @list_add(%struct.list_head* noundef %d_child, %struct.list_head* noundef %d_subdirs) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__d_alloc(%struct.super_block* noundef %sb, %struct.qstr* noundef readonly %name) unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @dentry_cache, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #19
  %1 = bitcast i8* %call to %struct.dentry*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup82, label %if.end

if.end:                                           ; preds = %entry
  %d_iname = getelementptr inbounds i8, i8* %call, i64 56
  %arrayidx = getelementptr i8, i8* %call, i64 87
  store i8 0, i8* %arrayidx, align 1
  %tobool1.not = icmp eq %struct.qstr* %name, null
  br i1 %tobool1.not, label %if.end22, label %if.else, !prof !9

if.else:                                          ; preds = %if.end
  %2 = bitcast %struct.qstr* %name to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2, i64 0, i32 1
  %3 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %3, 31
  br i1 %cmp, label %if.end9.i, label %if.end22

if.end9.i:                                        ; preds = %if.else
  %conv10 = zext i32 %3 to i64
  %add = add nuw nsw i64 %conv10, 17
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef 4197584) #19
  %tobool12.not = icmp eq i8* %call10.i, null
  br i1 %tobool12.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end9.i
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @dentry_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %4, i8* noundef nonnull %call) #19
  br label %cleanup82

cleanup:                                          ; preds = %if.end9.i
  %counter.i = bitcast i8* %call10.i to i32*
  store volatile i32 1, i32* %counter.i, align 128
  %name15 = getelementptr inbounds i8, i8* %call10.i, i64 16
  br label %if.end22

if.end22:                                         ; preds = %if.end, %cleanup, %if.else
  %dname.1 = phi i8* [ %name15, %cleanup ], [ %d_iname, %if.else ], [ %d_iname, %if.end ]
  %name.addr.0 = phi %struct.qstr* [ %name, %cleanup ], [ %name, %if.else ], [ bitcast ({ { %struct.anon.2 }, i8* }* @slash_name to %struct.qstr*), %if.end ]
  %5 = bitcast %struct.qstr* %name.addr.0 to %struct.anon.2*
  %len23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5, i64 0, i32 1
  %6 = load i32, i32* %len23, align 4
  %d_name = getelementptr inbounds i8, i8* %call, i64 32
  %len24 = getelementptr inbounds i8, i8* %call, i64 36
  %7 = bitcast i8* %len24 to i32*
  store i32 %6, i32* %7, align 4
  %hash = bitcast %struct.qstr* %name.addr.0 to i32*
  %8 = load i32, i32* %hash, align 8
  %hash26 = bitcast i8* %d_name to i32*
  store i32 %8, i32* %hash26, align 8
  %name27 = getelementptr inbounds %struct.qstr, %struct.qstr* %name.addr.0, i64 0, i32 1
  %9 = load i8*, i8** %name27, align 8
  %conv29 = zext i32 %6 to i64
  %call30 = call i8* @memcpy(i8* noundef %dname.1, i8* noundef %9, i64 noundef %conv29) #19
  %10 = load i32, i32* %len23, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx32 = getelementptr i8, i8* %dname.1, i64 %idxprom
  store i8 0, i8* %arrayidx32, align 1
  %name34 = getelementptr inbounds i8, i8* %call, i64 40
  %11 = bitcast i8* %name34 to i8**
  %12 = ptrtoint i8* %dname.1 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i8** elementtype(i8*) %11, i64 %12) #21, !srcloc !26
  %d_lockref = getelementptr inbounds i8, i8* %call, i64 88
  %count40 = getelementptr inbounds i8, i8* %call, i64 92
  %13 = bitcast i8* %count40 to i32*
  store i32 1, i32* %13, align 4
  %d_flags = bitcast i8* %call to i32*
  store i32 0, i32* %d_flags, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %d_lockref to i32*
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %d_seq = getelementptr inbounds i8, i8* %call, i64 4
  %seqcount = bitcast i8* %d_seq to %struct.seqcount*
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount) #18
  %d_inode = getelementptr inbounds i8, i8* %call, i64 48
  %14 = bitcast i8* %d_inode to %struct.inode**
  store %struct.inode* null, %struct.inode** %14, align 8
  %d_parent = getelementptr inbounds i8, i8* %call, i64 24
  %15 = bitcast i8* %d_parent to i8**
  store i8* %call, i8** %15, align 8
  %d_sb = getelementptr inbounds i8, i8* %call, i64 104
  %16 = bitcast i8* %d_sb to %struct.super_block**
  store %struct.super_block* %sb, %struct.super_block** %16, align 8
  %d_op = getelementptr inbounds i8, i8* %call, i64 96
  %17 = bitcast i8* %d_op to %struct.dentry_operations**
  store %struct.dentry_operations* null, %struct.dentry_operations** %17, align 8
  %d_fsdata = getelementptr inbounds i8, i8* %call, i64 120
  %18 = bitcast i8* %d_fsdata to i8**
  store i8* null, i8** %18, align 8
  %d_hash = getelementptr inbounds i8, i8* %call, i64 8
  %19 = bitcast i8* %d_hash to %struct.hlist_bl_node*
  call fastcc void @INIT_HLIST_BL_NODE(%struct.hlist_bl_node* noundef %19) #18
  %20 = getelementptr inbounds i8, i8* %call, i64 128
  %d_lru = bitcast i8* %20 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %d_lru) #18
  %d_subdirs = getelementptr inbounds i8, i8* %call, i64 160
  %21 = bitcast i8* %d_subdirs to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %21) #18
  %d_u = getelementptr inbounds i8, i8* %call, i64 176
  %d_alias = bitcast i8* %d_u to %struct.hlist_node*
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %d_alias) #18
  %d_child = getelementptr inbounds i8, i8* %call, i64 144
  %22 = bitcast i8* %d_child to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %22) #18
  %23 = load %struct.super_block*, %struct.super_block** %16, align 8
  %s_d_op = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i64 0, i32 37
  %24 = load %struct.dentry_operations*, %struct.dentry_operations** %s_d_op, align 8
  call void @d_set_d_op(%struct.dentry* noundef %1, %struct.dentry_operations* noundef %24) #18
  %25 = load %struct.dentry_operations*, %struct.dentry_operations** %17, align 8
  %tobool53.not = icmp eq %struct.dentry_operations* %25, null
  br i1 %tobool53.not, label %do.body70, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end22
  %d_init = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %25, i64 0, i32 5
  %26 = load i32 (%struct.dentry*)*, i32 (%struct.dentry*)** %d_init, align 8
  %tobool55.not = icmp eq i32 (%struct.dentry*)* %26, null
  br i1 %tobool55.not, label %do.body70, label %if.then56

if.then56:                                        ; preds = %land.lhs.true
  %call59 = call i32 %26(%struct.dentry* noundef %1) #19
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.body70, label %if.then61

if.then61:                                        ; preds = %if.then56
  %call62 = call fastcc i32 @dname_external(%struct.dentry* noundef %1) #18
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.then61
  %call65 = call fastcc %struct.external_name* @external_name(%struct.dentry* noundef %1) #18
  %27 = bitcast %struct.external_name* %call65 to i8*
  call void @kfree(i8* noundef %27) #19
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.then61
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** @dentry_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %28, i8* noundef nonnull %call) #19
  br label %cleanup82

do.body70:                                        ; preds = %if.then56, %land.lhs.true, %if.end22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %call78 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add79 = add i64 %call78, ptrtoint (i64* @nr_dentry to i64)
  %29 = inttoptr i64 %add79 to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %29, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %cleanup82

cleanup82:                                        ; preds = %cleanup.thread, %entry, %do.body70, %if.end66
  %retval.1 = phi %struct.dentry* [ null, %if.end66 ], [ %1, %do.body70 ], [ null, %entry ], [ null, %cleanup.thread ]
  ret %struct.dentry* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__dget_dlock(%struct.dentry* nocapture noundef %dentry) unnamed_addr #9 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %1 = bitcast %union.anon.65* %0 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %1, i64 0, i32 1
  %2 = load i32, i32* %count, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %count, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_alloc_anon(%struct.super_block* noundef %sb) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @__d_alloc(%struct.super_block* noundef %sb, %struct.qstr* noundef null) #18
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_alloc_cursor(%struct.dentry* noundef %parent) local_unnamed_addr #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call %struct.dentry* @d_alloc_anon(%struct.super_block* noundef %0) #18
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %or = or i32 %1, 536870912
  store i32 %or, i32* %d_flags, align 8
  %call1 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %parent) #18
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 3
  store %struct.dentry* %parent, %struct.dentry** %d_parent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_alloc_pseudo(%struct.super_block* noundef %sb, %struct.qstr* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @__d_alloc(%struct.super_block* noundef %sb, %struct.qstr* noundef %name) #18
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %or = or i32 %0, 1073741824
  store i32 %or, i32* %d_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_alloc_name(%struct.dentry* noundef %parent, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %q = alloca %struct.qstr, align 8
  %0 = bitcast %struct.qstr* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %name1 = getelementptr inbounds %struct.qstr, %struct.qstr* %q, i64 0, i32 1
  store i8* %name, i8** %name1, align 8
  %1 = bitcast %struct.dentry* %parent to i8*
  %call = call i64 @hashlen_string(i8* noundef %1, i8* noundef %name) #20
  %hash_len = getelementptr inbounds %struct.qstr, %struct.qstr* %q, i64 0, i32 0, i32 0
  store i64 %call, i64* %hash_len, align 8
  %call2 = call %struct.dentry* @d_alloc(%struct.dentry* noundef %parent, %struct.qstr* noundef nonnull %q) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret %struct.dentry* %call2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(i8* noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_set_d_op(%struct.dentry* nocapture noundef %dentry, %struct.dentry_operations* noundef %op) local_unnamed_addr #0 {
entry:
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 8
  %0 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %tobool.not = icmp eq %struct.dentry_operations* %0, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 1891; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %and = and i32 %1, 67110927
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end30, label %if.then29, !prof !8

if.then29:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 1897; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !30
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end
  store %struct.dentry_operations* %op, %struct.dentry_operations** %d_op, align 8
  %tobool40.not = icmp eq %struct.dentry_operations* %op, null
  br i1 %tobool40.not, label %if.end76, label %if.end42

if.end42:                                         ; preds = %if.end30
  %d_hash = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %op, i64 0, i32 2
  %2 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %d_hash, align 16
  %tobool43.not = icmp eq i32 (%struct.dentry*, %struct.qstr*)* %2, null
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end42
  %3 = load i32, i32* %d_flags, align 8
  %or = or i32 %3, 1
  store i32 %or, i32* %d_flags, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end42
  %d_compare = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %op, i64 0, i32 3
  %4 = load i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)** %d_compare, align 8
  %tobool47.not = icmp eq i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* %4, null
  br i1 %tobool47.not, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.end46
  %5 = load i32, i32* %d_flags, align 8
  %or50 = or i32 %5, 2
  store i32 %or50, i32* %d_flags, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46
  %d_revalidate = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %op, i64 0, i32 0
  %6 = load i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)** %d_revalidate, align 64
  %tobool52.not = icmp eq i32 (%struct.dentry*, i32)* %6, null
  br i1 %tobool52.not, label %if.end56, label %if.then53

if.then53:                                        ; preds = %if.end51
  %7 = load i32, i32* %d_flags, align 8
  %or55 = or i32 %7, 4
  store i32 %or55, i32* %d_flags, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51
  %d_weak_revalidate = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %op, i64 0, i32 1
  %8 = load i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)** %d_weak_revalidate, align 8
  %tobool57.not = icmp eq i32 (%struct.dentry*, i32)* %8, null
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.end56
  %9 = load i32, i32* %d_flags, align 8
  %or60 = or i32 %9, 2048
  store i32 %or60, i32* %d_flags, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end56
  %d_delete = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %op, i64 0, i32 4
  %10 = load i32 (%struct.dentry*)*, i32 (%struct.dentry*)** %d_delete, align 32
  %tobool62.not = icmp eq i32 (%struct.dentry*)* %10, null
  br i1 %tobool62.not, label %if.end66, label %if.then63

if.then63:                                        ; preds = %if.end61
  %11 = load i32, i32* %d_flags, align 8
  %or65 = or i32 %11, 8
  store i32 %or65, i32* %d_flags, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end61
  %d_prune = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %op, i64 0, i32 7
  %12 = load void (%struct.dentry*)*, void (%struct.dentry*)** %d_prune, align 8
  %tobool67.not = icmp eq void (%struct.dentry*)* %12, null
  br i1 %tobool67.not, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.end66
  %13 = load i32, i32* %d_flags, align 8
  %or70 = or i32 %13, 16
  store i32 %or70, i32* %d_flags, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end66
  %d_real = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %op, i64 0, i32 12
  %14 = load %struct.dentry* (%struct.dentry*, %struct.inode*)*, %struct.dentry* (%struct.dentry*, %struct.inode*)** %d_real, align 32
  %tobool72.not = icmp eq %struct.dentry* (%struct.dentry*, %struct.inode*)* %14, null
  br i1 %tobool72.not, label %if.end76, label %if.then73

if.then73:                                        ; preds = %if.end71
  %15 = load i32, i32* %d_flags, align 8
  %or75 = or i32 %15, 67108864
  store i32 %or75, i32* %d_flags, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end30, %if.then73, %if.end71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_set_fallthru(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %or = or i32 %1, 16777216
  store i32 %or, i32* %d_flags, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_instantiate(%struct.dentry* noundef %entry1, %struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %d_alias = getelementptr inbounds %struct.dentry, %struct.dentry* %entry1, i64 0, i32 15, i32 0
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %d_alias) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body5, label %do.end8, !prof !9

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2006; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !31
  unreachable

do.end8:                                          ; preds = %entry
  %tobool9.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %do.end8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__d_instantiate(%struct.dentry* noundef %entry1, %struct.inode* noundef nonnull %inode) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #4 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__d_instantiate(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @d_flags_for_inode(%struct.inode* noundef %inode) #18
  %call1 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 1973; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %and = and i32 %1, 524288
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end28, label %do.body18

do.body18:                                        ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  %call25 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call25, ptrtoint (i64* @nr_dentry_negative to i64)
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %2, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %if.end28

if.end28:                                         ; preds = %do.body18, %if.end
  %d_alias = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 15, i32 0
  %3 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %i_dentry = bitcast %union.anon.62* %3 to %struct.hlist_head*
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %d_alias, %struct.hlist_head* noundef %i_dentry) #18
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 1, i32 0
  call fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* noundef %seqcount.i) #18
  call fastcc void @__d_set_inode_and_type(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i32 noundef %call) #18
  call fastcc void @do_raw_write_seqcount_end(%struct.seqcount* noundef %seqcount.i) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_instantiate_new(%struct.dentry* noundef %entry1, %struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %d_alias = getelementptr inbounds %struct.dentry, %struct.dentry* %entry1, i64 0, i32 15, i32 0
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %d_alias) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body5, label %do.body9, !prof !9

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2024; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !35
  unreachable

do.body9:                                         ; preds = %entry
  %tobool10.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool10.not, label %do.body21, label %do.end26, !prof !9

do.body21:                                        ; preds = %do.body9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2025; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !36
  unreachable

do.end26:                                         ; preds = %do.body9
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__d_instantiate(%struct.dentry* noundef %entry1, %struct.inode* noundef nonnull %inode) #18
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 20
  %0 = load i64, i64* %i_state, align 8
  %and = and i64 %0, 8
  %tobool27.not = icmp eq i64 %and, 0
  br i1 %tobool27.not, label %if.then42, label %if.end43, !prof !9

if.then42:                                        ; preds = %do.end26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2030; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !37
  %.pre = load i64, i64* %i_state, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %do.end26
  %1 = phi i64 [ %.pre, %if.then42 ], [ %0, %do.end26 ]
  %and52 = and i64 %1, -32777
  store i64 %and52, i64* %i_state, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !38
  %2 = bitcast i64* %i_state to i8*
  call void @wake_up_bit(i8* noundef %2, i32 noundef 3) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_make_root(%struct.inode* noundef %root_inode) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.inode* %root_inode, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %root_inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call %struct.dentry* @d_alloc_anon(%struct.super_block* noundef %0) #18
  %tobool1.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @d_instantiate(%struct.dentry* noundef nonnull %call, %struct.inode* noundef nonnull %root_inode) #18
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @iput(%struct.inode* noundef nonnull %root_inode) #19
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else, %entry
  %res.0 = phi %struct.dentry* [ %call, %if.then2 ], [ null, %if.else ], [ null, %entry ]
  ret %struct.dentry* %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_instantiate_anon(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @__d_instantiate_anon(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i1 noundef true) #18
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__d_instantiate_anon(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i1 noundef %disconnected) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call = call fastcc %struct.dentry* @__d_find_any_alias(%struct.inode* noundef %inode) #18
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @dput(%struct.dentry* noundef %dentry) #18
  call void @iput(%struct.inode* noundef %inode) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @d_flags_for_inode(%struct.inode* noundef %inode) #18
  %or = or i32 %call2, 32
  %spec.select = select i1 %disconnected, i32 %or, i32 %call2
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i41 = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i41) #19
  call fastcc void @__d_set_inode_and_type(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i32 noundef %spec.select) #18
  %d_alias = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 15, i32 0
  %1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %i_dentry = bitcast %union.anon.62* %1 to %struct.hlist_head*
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %d_alias, %struct.hlist_head* noundef %i_dentry) #18
  br i1 %disconnected, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %2 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_roots = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 18
  call fastcc void @hlist_bl_lock(%struct.hlist_bl_head* noundef %s_roots) #18
  %d_hash = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 2
  %3 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_roots9 = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 18
  call fastcc void @hlist_bl_add_head(%struct.hlist_bl_node* noundef %d_hash, %struct.hlist_bl_head* noundef %s_roots9) #18
  %4 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_roots11 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 18
  call fastcc void @hlist_bl_unlock(%struct.hlist_bl_head* noundef %s_roots11) #18
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i41) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end12
  %retval.0 = phi %struct.dentry* [ %call, %if.then ], [ %dentry, %if.end12 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_obtain_alias(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @__d_obtain_alias(%struct.inode* noundef %inode, i1 noundef true) #18
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__d_obtain_alias(%struct.inode* noundef %inode, i1 noundef %disconnected) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -116) #18
  %0 = bitcast i8* %call to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.inode* %inode to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef nonnull %1) #18
  br i1 %call1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = bitcast %struct.inode* %inode to %struct.dentry*
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.dentry* @d_find_any_alias(%struct.inode* noundef nonnull %inode) #18
  %tobool6.not = icmp eq %struct.dentry* %call5, null
  br i1 %tobool6.not, label %if.end8, label %out_iput

if.end8:                                          ; preds = %if.end4
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call9 = call %struct.dentry* @d_alloc_anon(%struct.super_block* noundef %3) #18
  %tobool10.not = icmp eq %struct.dentry* %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef -12) #18
  %4 = bitcast i8* %call12 to %struct.dentry*
  br label %out_iput

if.end13:                                         ; preds = %if.end8
  %call15 = call fastcc %struct.dentry* @__d_instantiate_anon(%struct.dentry* noundef nonnull %call9, %struct.inode* noundef nonnull %inode, i1 noundef %disconnected) #18
  br label %cleanup

out_iput:                                         ; preds = %if.end4, %if.then11
  %res.0 = phi %struct.dentry* [ %call5, %if.end4 ], [ %4, %if.then11 ]
  call void @iput(%struct.inode* noundef nonnull %inode) #19
  br label %cleanup

cleanup:                                          ; preds = %out_iput, %if.end13, %if.then2, %if.then
  %retval.0 = phi %struct.dentry* [ %2, %if.then2 ], [ %res.0, %out_iput ], [ %call15, %if.end13 ], [ %0, %if.then ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_obtain_root(%struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @__d_obtain_alias(%struct.inode* noundef %inode, i1 noundef false) #18
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_add_ci(%struct.dentry* nocapture noundef readonly %dentry, %struct.inode* noundef %inode, %struct.qstr* noundef %name) local_unnamed_addr #0 {
entry:
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %call = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* noundef %0, %struct.qstr* noundef %name) #18
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @iput(%struct.inode* noundef %inode) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #18
  %tobool2.not = icmp eq i32 %call1, 0
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12
  %d_wait = bitcast %union.anon.67* %2 to %struct.wait_queue_head**
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %d_wait, align 8
  %call5 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef %1, %struct.qstr* noundef %name, %struct.wait_queue_head* noundef %3) #18
  %4 = bitcast %struct.dentry* %call5 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %4) #18
  br i1 %call6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %call7 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %call5) #18
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end17

if.then9:                                         ; preds = %lor.lhs.false, %if.then3
  call void @iput(%struct.inode* noundef %inode) #19
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call12 = call %struct.dentry* @d_alloc(%struct.dentry* noundef %1, %struct.qstr* noundef %name) #18
  %tobool13.not = icmp eq %struct.dentry* %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.else
  call void @iput(%struct.inode* noundef %inode) #19
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef -12) #18
  %5 = bitcast i8* %call15 to %struct.dentry*
  br label %cleanup

if.end17:                                         ; preds = %if.else, %lor.lhs.false
  %found.0 = phi %struct.dentry* [ %call5, %lor.lhs.false ], [ %call12, %if.else ]
  %call18 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef %inode, %struct.dentry* noundef %found.0) #18
  %tobool19.not = icmp eq %struct.dentry* %call18, null
  br i1 %tobool19.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @dput(%struct.dentry* noundef %found.0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then20, %if.then14, %if.then9, %if.then
  %retval.0 = phi %struct.dentry* [ %call, %if.then ], [ %call5, %if.then9 ], [ %call18, %if.then20 ], [ %5, %if.then14 ], [ %found.0, %if.end17 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry* noundef %dir, %struct.qstr* noundef %name) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dentry* %dir to i8*
  %name1 = getelementptr inbounds %struct.qstr, %struct.qstr* %name, i64 0, i32 1
  %1 = load i8*, i8** %name1, align 8
  %2 = bitcast %struct.qstr* %name to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2, i64 0, i32 1
  %3 = load i32, i32* %len, align 4
  %call = call i32 @full_name_hash(i8* noundef %0, i8* noundef %1, i32 noundef %3) #20
  %hash = bitcast %struct.qstr* %name to i32*
  store i32 %call, i32* %hash, align 8
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dir, i64 0, i32 0
  %4 = load i32, i32* %d_flags, align 8
  %and = and i32 %4, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dir, i64 0, i32 8
  %5 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_hash = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %5, i64 0, i32 2
  %6 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %d_hash, align 16
  %call2 = call i32 %6(%struct.dentry* noundef %dir, %struct.qstr* noundef %name) #19
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end8, !prof !9

cleanup:                                          ; preds = %if.then
  %conv6 = sext i32 %call2 to i64
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef %conv6) #18
  %7 = bitcast i8* %call7 to %struct.dentry*
  br label %return

if.end8:                                          ; preds = %if.then, %entry
  %call9 = call %struct.dentry* @d_lookup(%struct.dentry* noundef %dir, %struct.qstr* noundef %name) #18
  br label %return

return:                                           ; preds = %cleanup, %if.end8
  %retval.1 = phi %struct.dentry* [ %7, %cleanup ], [ %call9, %if.end8 ]
  ret %struct.dentry* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_in_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 268435456
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef %parent, %struct.qstr* noundef %name, %struct.wait_queue_head* noundef %wq) local_unnamed_addr #0 {
entry:
  %d_seq = alloca i32, align 4
  %hash1 = bitcast %struct.qstr* %name to i32*
  %0 = load i32, i32* %hash1, align 8
  %call = call fastcc %struct.hlist_bl_head* @in_lookup_hash(%struct.dentry* noundef %parent, i32 noundef %0) #18
  %call2 = call %struct.dentry* @d_alloc(%struct.dentry* noundef %parent, %struct.qstr* noundef %name) #18
  %1 = bitcast i32* %d_seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #21
  store i32 0, i32* %d_seq, align 4, !annotation !22
  %tobool.not = icmp eq %struct.dentry* %call2, null
  br i1 %tobool.not, label %if.then, label %retry.preheader, !prof !9

retry.preheader:                                  ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 5
  br label %retry

if.then:                                          ; preds = %entry
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -12) #18
  %2 = bitcast i8* %call6 to %struct.dentry*
  br label %cleanup

retry:                                            ; preds = %retry.backedge, %retry.preheader
  call fastcc void @__rcu_read_lock() #19
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %4 = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 40
  %i_dir_seq = bitcast %union.anon.64* %4 to i32*
  %5 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %i_dir_seq) #21, !srcloc !39
  %call8 = call fastcc i32 @read_seqbegin() #18
  %call9 = call %struct.dentry* @__d_lookup_rcu(%struct.dentry* noundef %parent, %struct.qstr* noundef %name, i32* noundef nonnull %d_seq) #18
  %tobool10.not = icmp eq %struct.dentry* %call9, null
  br i1 %tobool10.not, label %if.end29, label %if.then18, !prof !8

if.then18:                                        ; preds = %retry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %call9, i64 0, i32 7
  %call19 = call i32 @lockref_get_not_dead(%struct.lockref* noundef %d_lockref) #19
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  call fastcc void @rcu_read_unlock() #18
  br label %retry.backedge

if.end22:                                         ; preds = %if.then18
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %call9, i64 0, i32 1, i32 0
  %6 = load i32, i32* %d_seq, align 4
  %call25 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %6) #18
  %tobool26.not = icmp eq i32 %call25, 0
  call fastcc void @rcu_read_unlock() #18
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @dput(%struct.dentry* noundef nonnull %call9) #18
  br label %retry.backedge

if.end28:                                         ; preds = %if.end22
  call void @dput(%struct.dentry* noundef nonnull %call2) #18
  br label %cleanup

if.end29:                                         ; preds = %retry
  %call30 = call fastcc i32 @read_seqretry(i32 noundef %call8) #18
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end40, label %if.then39, !prof !8

if.then39:                                        ; preds = %if.end29
  call fastcc void @rcu_read_unlock() #18
  br label %retry.backedge

if.end40:                                         ; preds = %if.end29
  %and = and i32 %5, 1
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end50, label %if.then49, !prof !8

if.then49:                                        ; preds = %if.end40
  call fastcc void @rcu_read_unlock() #18
  br label %retry.backedge

if.end50:                                         ; preds = %if.end40
  call fastcc void @hlist_bl_lock(%struct.hlist_bl_head* noundef nonnull %call) #18
  %7 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i64 0, i32 40
  %i_dir_seq56 = bitcast %union.anon.64* %8 to i32*
  %9 = load volatile i32, i32* %i_dir_seq56, align 8
  %cmp.not = icmp eq i32 %9, %5
  br i1 %cmp.not, label %if.end66, label %if.then65, !prof !8

if.then65:                                        ; preds = %if.end50
  call fastcc void @hlist_bl_unlock(%struct.hlist_bl_head* noundef nonnull %call) #18
  call fastcc void @rcu_read_unlock() #18
  br label %retry.backedge

if.end66:                                         ; preds = %if.end50
  %call67 = call fastcc %struct.hlist_bl_node* @hlist_bl_first(%struct.hlist_bl_head* noundef nonnull %call) #18
  %tobool68.not216 = icmp eq %struct.hlist_bl_node* %call67, null
  br i1 %tobool68.not216, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %if.end66, %for.inc
  %node.0217 = phi %struct.hlist_bl_node* [ %20, %for.inc ], [ %call67, %if.end66 ]
  %add.ptr209 = getelementptr %struct.hlist_bl_node, %struct.hlist_bl_node* %node.0217, i64 -11
  %10 = bitcast %struct.hlist_bl_node* %add.ptr209 to %struct.dentry*
  %d_name = getelementptr %struct.hlist_bl_node, %struct.hlist_bl_node* %node.0217, i64 -9
  %hash75 = bitcast %struct.hlist_bl_node* %d_name to i32*
  %11 = load i32, i32* %hash75, align 8
  %cmp76.not = icmp eq i32 %11, %0
  br i1 %cmp76.not, label %if.end79, label %for.inc

if.end79:                                         ; preds = %land.rhs
  %d_parent = getelementptr %struct.hlist_bl_node, %struct.hlist_bl_node* %node.0217, i64 -10, i32 1
  %12 = bitcast %struct.hlist_bl_node*** %d_parent to %struct.dentry**
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  %cmp80.not = icmp eq %struct.dentry* %13, %parent
  br i1 %cmp80.not, label %if.end83, label %for.inc

if.end83:                                         ; preds = %if.end79
  %call84 = call fastcc i1 @d_same_name(%struct.dentry* noundef %10, %struct.dentry* noundef %parent, %struct.qstr* noundef %name) #18
  br i1 %call84, label %if.end86, label %for.inc

if.end86:                                         ; preds = %if.end83
  %14 = bitcast %struct.hlist_bl_node* %add.ptr209 to %struct.dentry*
  %15 = bitcast %struct.hlist_bl_node*** %d_parent to %struct.dentry**
  call fastcc void @hlist_bl_unlock(%struct.hlist_bl_head* noundef nonnull %call) #18
  %d_lockref87 = getelementptr %struct.hlist_bl_node, %struct.hlist_bl_node* %node.0217, i64 -6, i32 1
  %16 = bitcast %struct.hlist_bl_node*** %d_lockref87 to %struct.lockref*
  %call88 = call i32 @lockref_get_not_dead(%struct.lockref* noundef %16) #19
  %tobool89.not = icmp eq i32 %call88, 0
  call fastcc void @rcu_read_unlock() #18
  br i1 %tobool89.not, label %retry.backedge, label %if.end91

retry.backedge:                                   ; preds = %if.end86, %if.then21, %if.then27, %if.then39, %if.then49, %if.then65, %mismatch
  br label %retry

if.end91:                                         ; preds = %if.end86
  %hash75.le = bitcast %struct.hlist_bl_node* %d_name to i32*
  %rlock.i = bitcast %struct.hlist_bl_node*** %d_lockref87 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @d_wait_lookup(%struct.dentry* noundef %14) #18
  %17 = load i32, i32* %hash75.le, align 8
  %cmp95.not = icmp eq i32 %17, %0
  br i1 %cmp95.not, label %if.end105, label %mismatch, !prof !8

if.end105:                                        ; preds = %if.end91
  %18 = load %struct.dentry*, %struct.dentry** %15, align 8
  %cmp107.not = icmp eq %struct.dentry* %18, %parent
  br i1 %cmp107.not, label %if.end117, label %mismatch, !prof !8

if.end117:                                        ; preds = %if.end105
  %call118 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %14) #18
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end128, label %mismatch, !prof !8

if.end128:                                        ; preds = %if.end117
  %call129 = call fastcc i1 @d_same_name(%struct.dentry* noundef %14, %struct.dentry* noundef %parent, %struct.qstr* noundef %name) #18
  br i1 %call129, label %if.end140, label %mismatch, !prof !8

if.end140:                                        ; preds = %if.end128
  %19 = bitcast %struct.hlist_bl_node* %add.ptr209 to %struct.dentry*
  %rlock.i.le = bitcast %struct.hlist_bl_node*** %d_lockref87 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i.le) #19
  call void @dput(%struct.dentry* noundef nonnull %call2) #18
  br label %cleanup

for.inc:                                          ; preds = %if.end83, %if.end79, %land.rhs
  %next = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %node.0217, i64 0, i32 0
  %20 = load %struct.hlist_bl_node*, %struct.hlist_bl_node** %next, align 8
  %tobool68.not = icmp eq %struct.hlist_bl_node* %20, null
  br i1 %tobool68.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %if.end66, %for.inc
  call fastcc void @rcu_read_unlock() #18
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %call2, i64 0, i32 0
  %21 = load i32, i32* %d_flags, align 8
  %or = or i32 %21, 268435456
  store i32 %or, i32* %d_flags, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %call2, i64 0, i32 12
  %d_wait = bitcast %union.anon.67* %22 to %struct.wait_queue_head**
  store %struct.wait_queue_head* %wq, %struct.wait_queue_head** %d_wait, align 8
  %d_u = getelementptr inbounds %struct.dentry, %struct.dentry* %call2, i64 0, i32 15
  %d_in_lookup_hash = bitcast %union.anon.68* %d_u to %struct.hlist_bl_node*
  call fastcc void @hlist_bl_add_head_rcu(%struct.hlist_bl_node* noundef %d_in_lookup_hash, %struct.hlist_bl_head* noundef nonnull %call) #18
  call fastcc void @hlist_bl_unlock(%struct.hlist_bl_head* noundef nonnull %call) #18
  br label %cleanup

mismatch:                                         ; preds = %if.end128, %if.end117, %if.end105, %if.end91
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @dput(%struct.dentry* noundef %14) #18
  br label %retry.backedge

cleanup:                                          ; preds = %for.end, %if.end140, %if.end28, %if.then
  %retval.0 = phi %struct.dentry* [ %2, %if.then ], [ %call9, %if.end28 ], [ %19, %if.end140 ], [ %call2, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #21
  ret %struct.dentry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #11 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #11 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_splice_alias(%struct.inode* noundef %inode, %struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.inode* %inode to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %0) #18
  br i1 %call, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.inode* %inode to %struct.dentry*
  br label %return

do.body:                                          ; preds = %entry
  %call2 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body7, label %do.end11, !prof !9

do.body7:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 3059; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !40
  unreachable

do.end11:                                         ; preds = %do.body
  %tobool12.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool12.not, label %out, label %if.end14

if.end14:                                         ; preds = %do.end11
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, -4096
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %if.then17, label %out

if.then17:                                        ; preds = %if.end14
  %call18 = call fastcc %struct.dentry* @__d_find_any_alias(%struct.inode* noundef nonnull %inode) #18
  %tobool19.not = icmp eq %struct.dentry* %call18, null
  br i1 %tobool19.not, label %out, label %if.then27, !prof !8

if.then27:                                        ; preds = %if.then17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @write_seqlock() #18
  %call29 = call %struct.dentry* @d_ancestor(%struct.dentry* noundef nonnull %call18, %struct.dentry* noundef %dentry) #18
  %tobool30.not = icmp eq %struct.dentry* %call29, null
  br i1 %tobool30.not, label %if.else, label %if.then38, !prof !8

if.then38:                                        ; preds = %if.then27
  call fastcc void @write_sequnlock() #18
  call void @dput(%struct.dentry* noundef nonnull %call18) #18
  %call39 = call fastcc i8* @ERR_PTR(i64 noundef -40) #18
  %4 = bitcast i8* %call39 to %struct.dentry*
  %call40 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @d_splice_alias._rs, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.d_splice_alias, i64 0, i64 0)) #19
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %do.end44

do.end44:                                         ; preds = %if.then38
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %5 = load i8*, i8** %name, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %6 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 5
  %7 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %name45 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %7, i64 0, i32 0
  %8 = load i8*, i8** %name45, align 8
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 31, i64 0
  %call47 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* noundef %5, i8* noundef %8, i8* noundef %arraydecay) #23
  br label %cleanup

if.else:                                          ; preds = %if.then27
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %call18, i64 0, i32 3
  %9 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp49 = icmp eq %struct.dentry* %call18, %9
  br i1 %cmp49, label %if.else60, label %if.then51

if.then51:                                        ; preds = %if.else
  %call53 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %9) #18
  %call54 = call fastcc i32 @__d_unalias(%struct.dentry* noundef %dentry, %struct.dentry* noundef nonnull %call18) #18
  call fastcc void @write_sequnlock() #18
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.then51
  call void @dput(%struct.dentry* noundef nonnull %call18) #18
  %conv57 = sext i32 %call54 to i64
  %call58 = call fastcc i8* @ERR_PTR(i64 noundef %conv57) #18
  %10 = bitcast i8* %call58 to %struct.dentry*
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then51
  %new.0 = phi %struct.dentry* [ %10, %if.then56 ], [ %call18, %if.then51 ]
  call void @dput(%struct.dentry* noundef %9) #18
  br label %cleanup

if.else60:                                        ; preds = %if.else
  call fastcc void @__d_move(%struct.dentry* noundef nonnull %call18, %struct.dentry* noundef %dentry, i1 noundef false) #18
  call fastcc void @write_sequnlock() #18
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.then38, %if.else60, %if.end59
  %new.1 = phi %struct.dentry* [ %4, %do.end44 ], [ %4, %if.then38 ], [ %call18, %if.else60 ], [ %new.0, %if.end59 ]
  call void @iput(%struct.inode* noundef nonnull %inode) #19
  br label %return

out:                                              ; preds = %if.then17, %if.end14, %do.end11
  call fastcc void @__d_add(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode) #18
  br label %return

return:                                           ; preds = %cleanup, %out, %if.then
  %retval.1 = phi %struct.dentry* [ %1, %if.then ], [ %new.1, %cleanup ], [ null, %out ]
  ret %struct.dentry* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @__d_lookup_rcu(%struct.dentry* noundef readonly %parent, %struct.qstr* noundef %name, i32* nocapture noundef writeonly %seqp) local_unnamed_addr #0 {
entry:
  %hash_len = getelementptr inbounds %struct.qstr, %struct.qstr* %name, i64 0, i32 0, i32 0
  %0 = load i64, i64* %hash_len, align 8
  %name1 = getelementptr inbounds %struct.qstr, %struct.qstr* %name, i64 0, i32 1
  %1 = load i8*, i8** %name1, align 8
  %conv = trunc i64 %0 to i32
  %call = call fastcc %struct.hlist_bl_head* @d_hash(i32 noundef %conv) #18
  %call2 = call fastcc %struct.hlist_bl_node* @hlist_bl_first_rcu(%struct.hlist_bl_head* noundef %call) #18
  %tobool.not111 = icmp eq %struct.hlist_bl_node* %call2, null
  br i1 %tobool.not111, label %cleanup59, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 0
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 8
  %shr = lshr i64 %0, 32
  %conv45 = trunc i64 %shr to i32
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %node.0112 = phi %struct.hlist_bl_node* [ %call2, %land.rhs.lr.ph ], [ %18, %for.inc ]
  %add.ptr = getelementptr %struct.hlist_bl_node, %struct.hlist_bl_node* %node.0112, i64 -1, i32 1
  %2 = bitcast %struct.hlist_bl_node*** %add.ptr to %struct.dentry*
  %d_seq = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 1
  %sequence.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %d_seq, i64 0, i32 0, i32 0
  %3 = load volatile i32, i32* %sequence.i, align 4
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !41
  %d_parent = getelementptr inbounds %struct.hlist_bl_node**, %struct.hlist_bl_node*** %add.ptr, i64 3
  %4 = bitcast %struct.hlist_bl_node*** %d_parent to %struct.dentry**
  %5 = load %struct.dentry*, %struct.dentry** %4, align 8
  %cmp.not109 = icmp eq %struct.dentry* %5, %parent
  br i1 %cmp.not109, label %if.end.lr.ph, label %for.inc

if.end.lr.ph:                                     ; preds = %land.rhs
  %d_name = getelementptr inbounds %struct.hlist_bl_node**, %struct.hlist_bl_node*** %add.ptr, i64 4
  %hash = bitcast %struct.hlist_bl_node*** %d_name to i32*
  %6 = bitcast %struct.hlist_bl_node*** %d_name to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i64 0, i32 1
  %name26 = getelementptr inbounds %struct.hlist_bl_node**, %struct.hlist_bl_node*** %add.ptr, i64 5
  %7 = bitcast %struct.hlist_bl_node*** %name26 to i8**
  %seqcount.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %d_seq, i64 0, i32 0
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup
  %and110.in = phi i32 [ %3, %if.end.lr.ph ], [ %14, %cleanup ]
  %and110 = and i32 %and110.in, -2
  %call9 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %2) #18
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.inc

if.end12:                                         ; preds = %if.end
  %8 = load i32, i32* %d_flags, align 8
  %and13 = and i32 %8, 2
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then18, !prof !8

if.then18:                                        ; preds = %if.end12
  %9 = load i32, i32* %hash, align 8
  %cmp20.not = icmp eq i32 %9, %conv
  br i1 %cmp20.not, label %if.end23, label %for.inc

if.end23:                                         ; preds = %if.then18
  %10 = load i32, i32* %len, align 4
  %11 = load i8*, i8** %7, align 8
  %call29 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %and110) #18
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %if.end23
  %12 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_compare = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %12, i64 0, i32 3
  %13 = load i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)** %d_compare, align 8
  %call33 = call i32 %13(%struct.dentry* noundef %2, i32 noundef %10, i8* noundef %11, %struct.qstr* noundef %name) #19
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %cleanup52, label %for.inc

cleanup:                                          ; preds = %if.end23
  call fastcc void @cpu_relax() #18
  %14 = load volatile i32, i32* %sequence.i, align 4
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !41
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %cmp.not = icmp eq %struct.dentry* %15, %parent
  br i1 %cmp.not, label %if.end, label %for.inc

if.else:                                          ; preds = %if.end12
  %hash_len40 = bitcast %struct.hlist_bl_node*** %d_name to i64*
  %16 = load i64, i64* %hash_len40, align 8
  %cmp41.not = icmp eq i64 %16, %0
  br i1 %cmp41.not, label %if.end44, label %for.inc

if.end44:                                         ; preds = %if.else
  %call46 = call fastcc i32 @dentry_cmp(%struct.dentry* noundef %2, i8* noundef %1, i32 noundef %conv45) #18
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %cleanup52, label %for.inc

cleanup52:                                        ; preds = %if.end32, %if.end44
  %17 = bitcast %struct.hlist_bl_node*** %add.ptr to %struct.dentry*
  store i32 %and110, i32* %seqp, align 4
  br label %cleanup59

for.inc:                                          ; preds = %if.end, %cleanup, %if.then18, %land.rhs, %if.end32, %if.else, %if.end44
  %next = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %node.0112, i64 0, i32 0
  %18 = load volatile %struct.hlist_bl_node*, %struct.hlist_bl_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node* %18, null
  br i1 %tobool.not, label %cleanup59, label %land.rhs

cleanup59:                                        ; preds = %for.inc, %entry, %cleanup52
  %retval.2 = phi %struct.dentry* [ %17, %cleanup52 ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.dentry* %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.hlist_bl_head* @d_hash(i32 noundef %hash) unnamed_addr #4 {
entry:
  %0 = load %struct.hlist_bl_head*, %struct.hlist_bl_head** @dentry_hashtable, align 8
  %1 = load i32, i32* @d_hash_shift, align 4
  %shr = lshr i32 %hash, %1
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr %struct.hlist_bl_head, %struct.hlist_bl_head* %0, i64 %idx.ext
  ret %struct.hlist_bl_head* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.hlist_bl_node* @hlist_bl_first_rcu(%struct.hlist_bl_head* noundef %h) unnamed_addr #6 {
entry:
  %first = getelementptr inbounds %struct.hlist_bl_head, %struct.hlist_bl_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_bl_node*, %struct.hlist_bl_node** %first, align 8
  %1 = ptrtoint %struct.hlist_bl_node* %0 to i64
  %and = and i64 %1, -2
  %2 = inttoptr i64 %and to %struct.hlist_bl_node*
  ret %struct.hlist_bl_node* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #21, !srcloc !42
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dentry_cmp(%struct.dentry* noundef %dentry, i8* noundef readonly %ct, i32 noundef %tcount) unnamed_addr #12 {
entry:
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %0 = load volatile i8*, i8** %name, align 8
  %call = call fastcc i32 @dentry_string_cmp(i8* noundef %0, i8* noundef %ct, i32 noundef %tcount) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_lookup(%struct.dentry* noundef %parent, %struct.qstr* noundef %name) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call fastcc i32 @read_seqbegin() #18
  %call1 = call %struct.dentry* @__d_lookup(%struct.dentry* noundef %parent, %struct.qstr* noundef %name) #18
  %tobool.not = icmp eq %struct.dentry* %call1, null
  br i1 %tobool.not, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %call2 = call fastcc i32 @read_seqretry(i32 noundef %call) #18
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body, %do.cond
  ret %struct.dentry* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqbegin() unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 0, i32 0, i32 0), align 64
  %and1 = and i32 %0, 1
  %tobool.not2 = icmp eq i32 %and1, 0
  br i1 %tobool.not2, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #18
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !43
  ret i32 %.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @__d_lookup(%struct.dentry* noundef readonly %parent, %struct.qstr* noundef %name) local_unnamed_addr #0 {
entry:
  %hash1 = bitcast %struct.qstr* %name to i32*
  %0 = load i32, i32* %hash1, align 8
  %call = call fastcc %struct.hlist_bl_head* @d_hash(i32 noundef %0) #18
  call fastcc void @__rcu_read_lock() #19
  %call2 = call fastcc %struct.hlist_bl_node* @hlist_bl_first_rcu(%struct.hlist_bl_head* noundef %call) #18
  %tobool.not51 = icmp eq %struct.hlist_bl_node* %call2, null
  br i1 %tobool.not51, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %for.inc
  %node.052 = phi %struct.hlist_bl_node* [ %8, %for.inc ], [ %call2, %entry ]
  %add.ptr = getelementptr %struct.hlist_bl_node, %struct.hlist_bl_node* %node.052, i64 -1, i32 1
  %1 = bitcast %struct.hlist_bl_node*** %add.ptr to %struct.dentry*
  %d_name = getelementptr inbounds %struct.hlist_bl_node**, %struct.hlist_bl_node*** %add.ptr, i64 4
  %hash5 = bitcast %struct.hlist_bl_node*** %d_name to i32*
  %2 = load i32, i32* %hash5, align 8
  %cmp.not = icmp eq i32 %2, %0
  br i1 %cmp.not, label %if.end, label %for.inc

if.end:                                           ; preds = %land.rhs
  %d_lockref = getelementptr inbounds %struct.hlist_bl_node**, %struct.hlist_bl_node*** %add.ptr, i64 11
  %rlock.i = bitcast %struct.hlist_bl_node*** %d_lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %d_parent = getelementptr inbounds %struct.hlist_bl_node**, %struct.hlist_bl_node*** %add.ptr, i64 3
  %3 = bitcast %struct.hlist_bl_node*** %d_parent to %struct.dentry**
  %4 = load %struct.dentry*, %struct.dentry** %3, align 8
  %cmp6.not = icmp eq %struct.dentry* %4, %parent
  br i1 %cmp6.not, label %if.end8, label %next

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %1) #18
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %next

if.end12:                                         ; preds = %if.end8
  %call13 = call fastcc i1 @d_same_name(%struct.dentry* noundef %1, %struct.dentry* noundef %parent, %struct.qstr* noundef %name) #18
  br i1 %call13, label %if.end15, label %next

if.end15:                                         ; preds = %if.end12
  %5 = bitcast %struct.hlist_bl_node*** %add.ptr to %struct.dentry*
  %rlock.i.le = bitcast %struct.hlist_bl_node*** %d_lockref to %struct.raw_spinlock*
  %6 = bitcast %struct.hlist_bl_node*** %d_lockref to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %6, i64 0, i32 1
  %7 = load i32, i32* %count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %count, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i.le) #19
  br label %for.end

next:                                             ; preds = %if.end12, %if.end8, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %for.inc

for.inc:                                          ; preds = %land.rhs, %next
  %next25 = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %node.052, i64 0, i32 0
  %8 = load volatile %struct.hlist_bl_node*, %struct.hlist_bl_node** %next25, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node* %8, null
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %for.inc, %entry, %if.end15
  %found.0 = phi %struct.dentry* [ %5, %if.end15 ], [ null, %entry ], [ null, %for.inc ]
  call fastcc void @rcu_read_unlock() #18
  ret %struct.dentry* %found.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqretry(i32 noundef %start) unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 0, i32 0), i32 noundef %start) #18
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @d_same_name(%struct.dentry* noundef %dentry, %struct.dentry* nocapture noundef readonly %parent, %struct.qstr* noundef %name) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end11, !prof !8

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %2 = bitcast %union.anon.3* %1 to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2, i64 0, i32 1
  %3 = load i32, i32* %len, align 4
  %4 = bitcast %struct.qstr* %name to %struct.anon.2*
  %len4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4, i64 0, i32 1
  %5 = load i32, i32* %len4, align 4
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %name7 = getelementptr inbounds %struct.qstr, %struct.qstr* %name, i64 0, i32 1
  %6 = load i8*, i8** %name7, align 8
  %call = call fastcc i32 @dentry_cmp(%struct.dentry* noundef %dentry, i8* noundef %6, i32 noundef %3) #18
  %cmp9 = icmp eq i32 %call, 0
  br label %return

if.end11:                                         ; preds = %entry
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 8
  %7 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_compare = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %7, i64 0, i32 3
  %8 = load i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)** %d_compare, align 8
  %d_name12 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4
  %9 = bitcast %struct.qstr* %d_name12 to %struct.anon.2*
  %len13 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i64 0, i32 1
  %10 = load i32, i32* %len13, align 4
  %name15 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %11 = load i8*, i8** %name15, align 8
  %call16 = call i32 %8(%struct.dentry* noundef %dentry, i32 noundef %10, i8* noundef %11, %struct.qstr* noundef %name) #19
  %cmp17 = icmp eq i32 %call16, 0
  br label %return

return:                                           ; preds = %if.then, %if.end11, %if.end
  %retval.0 = phi i1 [ %cmp9, %if.end ], [ %cmp17, %if.end11 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_delete(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %2 = bitcast %union.anon.65* %1 to %struct.anon.66*
  %rlock.i13 = bitcast %union.anon.65* %1 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i13) #19
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %2, i64 0, i32 1
  %3 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %4 = load i32, i32* %d_flags, align 8
  %and = and i32 %4, -257
  store i32 %and, i32* %d_flags, align 8
  call fastcc void @dentry_unlink_inode(%struct.dentry* noundef %dentry) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__d_drop(%struct.dentry* noundef %dentry) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i13) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dentry_unlink_inode(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 1, i32 0
  call fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* noundef %seqcount.i) #18
  call fastcc void @__d_clear_type_and_inode(%struct.dentry* noundef %dentry) #18
  %d_alias = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 15, i32 0
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %d_alias) #18
  call fastcc void @do_raw_write_seqcount_end(%struct.seqcount* noundef %seqcount.i) #18
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %1 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %rlock.i39 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i39) #19
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 9, i32 0
  %2 = load i32, i32* %i_nlink, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %entry
  call fastcc void @fsnotify_inoderemove(%struct.inode* noundef %0) #18
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %entry
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 8
  %3 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %tobool14.not = icmp eq %struct.dentry_operations* %3, null
  br i1 %tobool14.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %d_iput = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %3, i64 0, i32 8
  %4 = load void (%struct.dentry*, %struct.inode*)*, void (%struct.dentry*, %struct.inode*)** %d_iput, align 64
  %tobool16.not = icmp eq void (%struct.dentry*, %struct.inode*)* %4, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  call void %4(%struct.dentry* noundef %dentry, %struct.inode* noundef %0) #19
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true, %if.end13
  call void @iput(%struct.inode* noundef %0) #19
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_rehash(%struct.dentry* noundef %entry1) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %entry1, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__d_rehash(%struct.dentry* noundef %entry1) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__d_rehash(%struct.dentry* noundef %entry1) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %entry1, i64 0, i32 4, i32 0
  %hash = bitcast %union.anon.3* %0 to i32*
  %1 = load i32, i32* %hash, align 8
  %call = call fastcc %struct.hlist_bl_head* @d_hash(i32 noundef %1) #18
  call fastcc void @hlist_bl_lock(%struct.hlist_bl_head* noundef %call) #18
  %d_hash = getelementptr inbounds %struct.dentry, %struct.dentry* %entry1, i64 0, i32 2
  call fastcc void @hlist_bl_add_head_rcu(%struct.hlist_bl_node* noundef %d_hash, %struct.hlist_bl_head* noundef %call) #18
  call fastcc void @hlist_bl_unlock(%struct.hlist_bl_head* noundef %call) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.hlist_bl_head* @in_lookup_hash(%struct.dentry* noundef %parent, i32 noundef %hash) unnamed_addr #11 {
entry:
  %0 = ptrtoint %struct.dentry* %parent to i64
  %div = lshr i64 %0, 6
  %1 = trunc i64 %div to i32
  %conv1 = add i32 %1, %hash
  %call = call fastcc i32 @hash_32_generic(i32 noundef %conv1) #18
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr [1024 x %struct.hlist_bl_head], [1024 x %struct.hlist_bl_head]* @in_lookup_hashtable, i64 0, i64 %idx.ext
  ret %struct.hlist_bl_head* %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_bl_lock(%struct.hlist_bl_head* noundef %b) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.hlist_bl_head* %b to i64*
  call fastcc void @bit_spin_lock(i64* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_bl_unlock(%struct.hlist_bl_head* noundef %b) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.hlist_bl_head* %b to i64*
  call fastcc void @__bit_spin_unlock(i64* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_wait_lookup(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %call = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #21
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #22, !srcloc !24
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @default_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %next = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 0
  store %struct.list_head* null, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* null, %struct.list_head** %prev, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12
  %d_wait = bitcast %union.anon.67* %5 to %struct.wait_queue_head**
  %6 = load %struct.wait_queue_head*, %struct.wait_queue_head** %d_wait, align 8
  call void @add_wait_queue(%struct.wait_queue_head* noundef %6, %struct.wait_queue_entry* noundef nonnull %wait) #19
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %7 to %struct.raw_spinlock*
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !44
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @schedule() #19
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call23 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #18
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end25, label %do.body

do.end25:                                         ; preds = %do.body
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #21
  br label %if.end

if.end:                                           ; preds = %do.end25, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_bl_add_head_rcu(%struct.hlist_bl_node* noundef %n, %struct.hlist_bl_head* noundef %h) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.hlist_bl_node* @hlist_bl_first(%struct.hlist_bl_head* noundef %h) #18
  %next = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %n, i64 0, i32 0
  store %struct.hlist_bl_node* %call, %struct.hlist_bl_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %call, i64 0, i32 1
  store %struct.hlist_bl_node** %next, %struct.hlist_bl_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %first2 = getelementptr inbounds %struct.hlist_bl_head, %struct.hlist_bl_head* %h, i64 0, i32 0
  %pprev3 = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %n, i64 0, i32 1
  store %struct.hlist_bl_node** %first2, %struct.hlist_bl_node*** %pprev3, align 8
  call fastcc void @hlist_bl_set_first_rcu(%struct.hlist_bl_head* noundef %h, %struct.hlist_bl_node* noundef %n) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__d_lookup_done(%struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %hash = bitcast %union.anon.3* %1 to i32*
  %2 = load i32, i32* %hash, align 8
  %call = call fastcc %struct.hlist_bl_head* @in_lookup_hash(%struct.dentry* noundef %0, i32 noundef %2) #18
  call fastcc void @hlist_bl_lock(%struct.hlist_bl_head* noundef nonnull %call) #18
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %3 = load i32, i32* %d_flags, align 8
  %and = and i32 %3, -268435457
  store i32 %and, i32* %d_flags, align 8
  %d_u = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 15
  %d_in_lookup_hash = bitcast %union.anon.68* %d_u to %struct.hlist_bl_node*
  call fastcc void @__hlist_bl_del(%struct.hlist_bl_node* noundef %d_in_lookup_hash) #18
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12
  %d_wait = bitcast %union.anon.67* %4 to %struct.wait_queue_head**
  %5 = load %struct.wait_queue_head*, %struct.wait_queue_head** %d_wait, align 8
  call void @__wake_up(%struct.wait_queue_head* noundef %5, i32 noundef 3, i32 noundef 0, i8* noundef null) #19
  store %struct.wait_queue_head* null, %struct.wait_queue_head** %d_wait, align 8
  call fastcc void @hlist_bl_unlock(%struct.hlist_bl_head* noundef nonnull %call) #18
  %d_alias = getelementptr %union.anon.68, %union.anon.68* %d_u, i64 0, i32 0
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %d_alias) #18
  %d_lru = getelementptr %union.anon.67, %union.anon.67* %4, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %d_lru) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_bl_del(%struct.hlist_bl_node* nocapture noundef readonly %n) unnamed_addr #8 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_bl_node*, %struct.hlist_bl_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_bl_node**, %struct.hlist_bl_node*** %pprev2, align 8
  %2 = ptrtoint %struct.hlist_bl_node* %0 to i64
  %3 = load %struct.hlist_bl_node*, %struct.hlist_bl_node** %1, align 8
  %4 = ptrtoint %struct.hlist_bl_node* %3 to i64
  %and = and i64 %4, 1
  %or = or i64 %and, %2
  %5 = inttoptr i64 %or to %struct.hlist_bl_node*
  store volatile %struct.hlist_bl_node* %5, %struct.hlist_bl_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pprev9 = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %0, i64 0, i32 1
  store %struct.hlist_bl_node** %1, %struct.hlist_bl_node*** %pprev9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #13 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_add(%struct.dentry* noundef %entry1, %struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__d_add(%struct.dentry* noundef %entry1, %struct.inode* noundef %inode) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__d_add(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call3 = call fastcc i32 @start_dir_add(%struct.inode* noundef %2) #18
  call void @__d_lookup_done(%struct.dentry* noundef %dentry) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dir.0 = phi %struct.inode* [ %2, %if.then ], [ null, %entry ]
  %n.0 = phi i32 [ %call3, %if.then ], [ 0, %entry ]
  %tobool4.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool4.not, label %if.end21, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i32 @d_flags_for_inode(%struct.inode* noundef nonnull %inode) #18
  %d_alias = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 15, i32 0
  %3 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %i_dentry = bitcast %union.anon.62* %3 to %struct.hlist_head*
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %d_alias, %struct.hlist_head* noundef %i_dentry) #18
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 1, i32 0
  call fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* noundef %seqcount.i) #18
  call fastcc void @__d_set_inode_and_type(%struct.dentry* noundef %dentry, %struct.inode* noundef nonnull %inode, i32 noundef %call6) #18
  call fastcc void @do_raw_write_seqcount_end(%struct.seqcount* noundef %seqcount.i) #18
  br label %if.end21

if.end21:                                         ; preds = %if.then5, %if.end
  call fastcc void @__d_rehash(%struct.dentry* noundef %dentry) #18
  %tobool22.not = icmp eq %struct.inode* %dir.0, null
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end21
  call fastcc void @end_dir_add(%struct.inode* noundef nonnull %dir.0, i32 noundef %n.0) #18
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br i1 %tobool4.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end24
  %rlock.i54 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i54) #19
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @d_exact_alias(%struct.dentry* noundef %entry1, %struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %entry1, i64 0, i32 4
  %hash2 = bitcast %struct.qstr* %d_name to i32*
  %0 = load i32, i32* %hash2, align 8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 29
  %first = bitcast %union.anon.62* %1 to %struct.hlist_node**
  %2 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr67 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -11
  %tobool4.not7679 = icmp eq %struct.hlist_node* %add.ptr67, null
  %tobool4.not76 = or i1 %tobool.not, %tobool4.not7679
  br i1 %tobool4.not76, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %3 = bitcast %struct.hlist_node* %add.ptr67 to %struct.dentry*
  %d_parent7 = getelementptr inbounds %struct.dentry, %struct.dentry* %entry1, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %alias.077 = phi %struct.dentry* [ %3, %for.body.lr.ph ], [ %spec.select74, %for.inc ]
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %alias.077, i64 0, i32 4, i32 0
  %hash6 = bitcast %union.anon.3* %4 to i32*
  %5 = load i32, i32* %hash6, align 8
  %cmp.not = icmp eq i32 %5, %0
  br i1 %cmp.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %alias.077, i64 0, i32 3
  %6 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %7 = load %struct.dentry*, %struct.dentry** %d_parent7, align 8
  %cmp8.not = icmp eq %struct.dentry* %6, %7
  br i1 %cmp8.not, label %if.end10, label %for.inc

if.end10:                                         ; preds = %if.end
  %call = call fastcc i1 @d_same_name(%struct.dentry* noundef nonnull %alias.077, %struct.dentry* noundef %6, %struct.qstr* noundef %d_name) #18
  br i1 %call, label %if.end14, label %for.inc

if.end14:                                         ; preds = %if.end10
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %alias.077, i64 0, i32 7, i32 0
  %rlock.i68 = bitcast %union.anon.65* %8 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i68) #19
  %call15 = call fastcc i32 @d_unhashed(%struct.dentry* noundef nonnull %alias.077) #18
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %if.else

if.else:                                          ; preds = %if.end14
  call fastcc void @__dget_dlock(%struct.dentry* noundef nonnull %alias.077) #18
  call fastcc void @__d_rehash(%struct.dentry* noundef nonnull %alias.077) #18
  br label %if.end22

if.end22:                                         ; preds = %if.end14, %if.else
  %alias.1 = phi %struct.dentry* [ %alias.077, %if.else ], [ null, %if.end14 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i68) #19
  br label %cleanup

for.inc:                                          ; preds = %if.end10, %if.end, %for.body
  %next = getelementptr inbounds %struct.dentry, %struct.dentry* %alias.077, i64 0, i32 15, i32 0, i32 0
  %9 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool26.not = icmp eq %struct.hlist_node* %9, null
  %add.ptr3366 = getelementptr %struct.hlist_node, %struct.hlist_node* %9, i64 -11
  %10 = bitcast %struct.hlist_node* %add.ptr3366 to %struct.dentry*
  %spec.select74 = select i1 %tobool26.not, %struct.dentry* null, %struct.dentry* %10
  %tobool4.not = icmp eq %struct.dentry* %spec.select74, null
  br i1 %tobool4.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.end22
  %retval.0 = phi %struct.dentry* [ %alias.1, %if.end22 ], [ null, %entry ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_move(%struct.dentry* noundef %dentry, %struct.dentry* noundef %target) local_unnamed_addr #0 {
entry:
  call fastcc void @write_seqlock() #18
  call fastcc void @__d_move(%struct.dentry* noundef %dentry, %struct.dentry* noundef %target, i1 noundef false) #18
  call fastcc void @write_sequnlock() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__d_move(%struct.dentry* noundef %dentry, %struct.dentry* noundef %target, i1 noundef %exchange) unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool.not = icmp eq %struct.inode* %0, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2865; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq %struct.dentry* %dentry, %target
  br i1 %cmp, label %if.then30, label %do.body, !prof !9

if.then30:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2866; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !46
  br label %cleanup

do.body:                                          ; preds = %if.end
  %call = call %struct.dentry* @d_ancestor(%struct.dentry* noundef %target, %struct.dentry* noundef %dentry) #18
  %tobool43.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool43.not, label %do.end58, label %do.body52, !prof !8

do.body52:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2869; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !47
  unreachable

do.end58:                                         ; preds = %do.body
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %call59 = call %struct.dentry* @d_ancestor(%struct.dentry* noundef %1, %struct.dentry* noundef %target) #18
  %cmp61 = icmp eq %struct.dentry* %1, %dentry
  %tobool65.not = icmp eq %struct.dentry* %call59, null
  br i1 %cmp61, label %do.body64, label %if.else

do.body64:                                        ; preds = %do.end58
  br i1 %tobool65.not, label %do.end82, label %do.body74, !prof !8

do.body74:                                        ; preds = %do.body64
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2873; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !48
  unreachable

do.end82:                                         ; preds = %do.body64
  %d_parent83 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 3
  %2 = load %struct.dentry*, %struct.dentry** %d_parent83, align 8
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %3 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %do.body131

if.else:                                          ; preds = %do.end58
  br i1 %tobool65.not, label %if.then85, label %do.body96

if.then85:                                        ; preds = %if.else
  %d_parent86 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 3
  %4 = load %struct.dentry*, %struct.dentry** %d_parent86, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 7, i32 0
  %rlock.i350 = bitcast %union.anon.65* %5 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i350) #19
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7, i32 0
  %rlock.i351 = bitcast %union.anon.65* %6 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i351) #18
  br label %do.body131

do.body96:                                        ; preds = %if.else
  %cmp97 = icmp eq %struct.dentry* %call59, %dentry
  br i1 %cmp97, label %do.body107, label %do.end115, !prof !9

do.body107:                                       ; preds = %do.body96
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2880; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !49
  unreachable

do.end115:                                        ; preds = %do.body96
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7, i32 0
  %rlock.i352 = bitcast %union.anon.65* %7 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i352) #19
  %cmp118.not = icmp eq %struct.dentry* %call59, %target
  br i1 %cmp118.not, label %do.body131, label %do.body121

do.body121:                                       ; preds = %do.end115
  %d_parent122 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 3
  %8 = load %struct.dentry*, %struct.dentry** %d_parent122, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i64 0, i32 7, i32 0
  %rlock.i353 = bitcast %union.anon.65* %9 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i353) #18
  br label %do.body131

do.body131:                                       ; preds = %do.end82, %do.end115, %do.body121, %if.then85
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i354 = bitcast %union.anon.65* %10 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i354) #18
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 7, i32 0
  %rlock.i355 = bitcast %union.anon.65* %11 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i355) #18
  %call143 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %target) #18
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %do.body157, label %if.then152, !prof !8

if.then152:                                       ; preds = %do.body131
  %d_parent153 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 3
  %12 = load %struct.dentry*, %struct.dentry** %d_parent153, align 8
  %d_inode154 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i64 0, i32 5
  %13 = load %struct.inode*, %struct.inode** %d_inode154, align 8
  %call155 = call fastcc i32 @start_dir_add(%struct.inode* noundef %13) #18
  call void @__d_lookup_done(%struct.dentry* noundef %target) #18
  br label %do.body157

do.body157:                                       ; preds = %do.body131, %if.then152
  %n.0 = phi i32 [ %call155, %if.then152 ], [ 0, %do.body131 ]
  %dir.0 = phi %struct.inode* [ %13, %if.then152 ], [ null, %do.body131 ]
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 1, i32 0
  call fastcc void @do_write_seqcount_begin(%struct.seqcount* noundef %seqcount.i) #18
  %seqcount.i356 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 1, i32 0
  call fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* noundef %seqcount.i356) #18
  %call176 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #18
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then178, label %if.end179

if.then178:                                       ; preds = %do.body157
  call fastcc void @___d_drop(%struct.dentry* noundef %dentry) #18
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %do.body157
  %call180 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %target) #18
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then182, label %if.end183

if.then182:                                       ; preds = %if.end179
  call fastcc void @___d_drop(%struct.dentry* noundef %target) #18
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %if.end179
  %d_parent184 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 3
  %14 = load %struct.dentry*, %struct.dentry** %d_parent184, align 8
  store %struct.dentry* %14, %struct.dentry** %d_parent, align 8
  br i1 %exchange, label %if.else222, label %if.then187

if.then187:                                       ; preds = %if.end183
  call fastcc void @copy_name(%struct.dentry* noundef %dentry, %struct.dentry* noundef %target) #18
  %pprev = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 2, i32 1
  store %struct.hlist_bl_node** null, %struct.hlist_bl_node*** %pprev, align 8
  %15 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i64 0, i32 7, i32 0
  %17 = bitcast %union.anon.65* %16 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %17, i64 0, i32 1
  %18 = load i32, i32* %count, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %count, align 4
  br i1 %cmp61, label %if.end225, label %if.then192

if.then192:                                       ; preds = %if.then187
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7, i32 0
  %20 = bitcast %union.anon.65* %19 to %struct.anon.66*
  %count195 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %20, i64 0, i32 1
  %21 = load i32, i32* %count195, align 4
  %dec = add i32 %21, -1
  store i32 %dec, i32* %count195, align 4
  %tobool196.not = icmp eq i32 %dec, 0
  br i1 %tobool196.not, label %if.then211, label %if.end225, !prof !9

if.then211:                                       ; preds = %if.then192
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2911; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !50
  br label %if.end225

if.else222:                                       ; preds = %if.end183
  store %struct.dentry* %1, %struct.dentry** %d_parent184, align 8
  call fastcc void @swap_names(%struct.dentry* noundef %dentry, %struct.dentry* noundef %target) #18
  %d_child = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 13
  %22 = load %struct.dentry*, %struct.dentry** %d_parent184, align 8
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i64 0, i32 14
  call fastcc void @list_move(%struct.list_head* noundef %d_child, %struct.list_head* noundef %d_subdirs) #18
  call fastcc void @__d_rehash(%struct.dentry* noundef %target) #18
  br label %if.end225

if.end225:                                        ; preds = %if.then192, %if.then211, %if.then187, %if.else222
  %d_child226 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 13
  %23 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_subdirs228 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i64 0, i32 14
  call fastcc void @list_move(%struct.list_head* noundef %d_child226, %struct.list_head* noundef %d_subdirs228) #18
  call fastcc void @__d_rehash(%struct.dentry* noundef %dentry) #18
  call fastcc void @do_write_seqcount_end(%struct.seqcount* noundef %seqcount.i356) #18
  call fastcc void @do_write_seqcount_end(%struct.seqcount* noundef %seqcount.i) #18
  %tobool247.not = icmp eq %struct.inode* %dir.0, null
  br i1 %tobool247.not, label %if.end249, label %if.then248

if.then248:                                       ; preds = %if.end225
  call fastcc void @end_dir_add(%struct.inode* noundef nonnull %dir.0, i32 noundef %n.0) #18
  br label %if.end249

if.end249:                                        ; preds = %if.then248, %if.end225
  %24 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp251.not = icmp eq %struct.dentry* %24, %1
  br i1 %cmp251.not, label %if.end257, label %if.then253

if.then253:                                       ; preds = %if.end249
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i64 0, i32 7, i32 0
  %rlock.i359 = bitcast %union.anon.65* %25 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i359) #19
  br label %if.end257

if.end257:                                        ; preds = %if.then253, %if.end249
  br i1 %cmp61, label %if.end263, label %if.then260

if.then260:                                       ; preds = %if.end257
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7, i32 0
  %rlock.i360 = bitcast %union.anon.65* %26 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i360) #19
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end257
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i355) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i354) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end263
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_exchange(%struct.dentry* noundef %dentry1, %struct.dentry* noundef %dentry2) local_unnamed_addr #0 {
entry:
  call fastcc void @write_seqlock() #18
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry1, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool.not = icmp eq %struct.inode* %0, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2964; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %d_inode17 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry2, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode17, align 8
  %tobool18.not = icmp eq %struct.inode* %1, null
  br i1 %tobool18.not, label %if.then33, label %if.end34, !prof !9

if.then33:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2965; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !52
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry1, i64 0, i32 3
  %2 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp eq %struct.dentry* %2, %dentry1
  br i1 %cmp, label %if.then57, label %if.end58, !prof !9

if.then57:                                        ; preds = %if.end34
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2966; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !53
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end34
  %d_parent68 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry2, i64 0, i32 3
  %3 = load %struct.dentry*, %struct.dentry** %d_parent68, align 8
  %cmp69 = icmp eq %struct.dentry* %3, %dentry2
  br i1 %cmp69, label %if.then83, label %if.end84, !prof !9

if.then83:                                        ; preds = %if.end58
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 2967; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !54
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end58
  call fastcc void @__d_move(%struct.dentry* noundef %dentry1, %struct.dentry* noundef %dentry2, i1 noundef true) #18
  call fastcc void @write_sequnlock() #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local %struct.dentry* @d_ancestor(%struct.dentry* noundef readnone %p1, %struct.dentry* noundef readonly %p2) local_unnamed_addr #14 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %p.0 = phi %struct.dentry* [ %p2, %entry ], [ %0, %for.body ]
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %p.0, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp.not = icmp eq %struct.dentry* %p.0, %0
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp2 = icmp eq %struct.dentry* %0, %p1
  br i1 %cmp2, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi %struct.dentry* [ %p.0, %for.body ], [ null, %for.cond ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__d_unalias(%struct.dentry* noundef %dentry, %struct.dentry* noundef %alias) unnamed_addr #0 {
entry:
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %alias, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_parent1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent1, align 8
  %cmp = icmp eq %struct.dentry* %0, %1
  br i1 %cmp, label %if.end15.thread, label %if.end

if.end15.thread:                                  ; preds = %entry
  call fastcc void @__d_move(%struct.dentry* noundef %alias, %struct.dentry* noundef %dentry, i1 noundef false) #18
  br label %if.end18

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %2 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_vfs_rename_mutex = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 35
  %call = call i32 @mutex_trylock(%struct.mutex* noundef %s_vfs_rename_mutex) #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end18, label %if.end3

if.end3:                                          ; preds = %if.end
  %3 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_vfs_rename_mutex5 = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 35
  %4 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 5
  %5 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call7 = call fastcc i32 @inode_trylock_shared(%struct.inode* noundef %5) #18
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %out_err

out_err:                                          ; preds = %if.end3
  %6 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode12 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 5
  %7 = load %struct.inode*, %struct.inode** %d_inode12, align 8
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %7, i64 0, i32 21
  call fastcc void @__d_move(%struct.dentry* noundef %alias, %struct.dentry* noundef %dentry, i1 noundef false) #18
  %tobool13.not = icmp eq %struct.rw_semaphore* %i_rwsem, null
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %out_err
  call void @up_read(%struct.rw_semaphore* noundef nonnull %i_rwsem) #19
  br label %if.end15

if.end15:                                         ; preds = %if.end3, %if.then14, %out_err
  %ret.06 = phi i32 [ 0, %if.then14 ], [ 0, %out_err ], [ -116, %if.end3 ]
  %tobool16.not = icmp eq %struct.mutex* %s_vfs_rename_mutex5, null
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @mutex_unlock(%struct.mutex* noundef nonnull %s_vfs_rename_mutex5) #19
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.end15.thread, %if.then17, %if.end15
  %ret.0614 = phi i32 [ 0, %if.end15.thread ], [ %ret.06, %if.then17 ], [ %ret.06, %if.end15 ], [ -116, %if.end ]
  ret i32 %ret.0614
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @is_subdir(%struct.dentry* noundef readonly %new_dentry, %struct.dentry* noundef readnone %old_dentry) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dentry* %new_dentry, %old_dentry
  br i1 %cmp, label %cleanup, label %do.body

do.body:                                          ; preds = %entry, %do.body
  %call = call fastcc i32 @read_seqbegin() #18
  call fastcc void @__rcu_read_lock() #19
  %call1 = call %struct.dentry* @d_ancestor(%struct.dentry* noundef %old_dentry, %struct.dentry* noundef %new_dentry) #18
  call fastcc void @rcu_read_unlock() #18
  %call4 = call fastcc i32 @read_seqretry(i32 noundef %call) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %tobool.not = icmp ne %struct.dentry* %call1, null
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i1 [ %tobool.not, %do.end ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_genocide(%struct.dentry* noundef %parent) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dentry* %parent to i8*
  call fastcc void @d_walk(%struct.dentry* noundef %parent, i8* noundef %0, i32 (i8*, %struct.dentry*)* noundef nonnull @d_genocide_kill) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @d_genocide_kill(i8* noundef readnone %data, %struct.dentry* noundef %dentry) #9 {
entry:
  %0 = bitcast i8* %data to %struct.dentry*
  %cmp.not = icmp eq %struct.dentry* %0, %dentry
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool1.not = icmp eq %struct.inode* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %2 = load i32, i32* %d_flags, align 8
  %and = and i32 %2, 512
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %or = or i32 %2, 512
  store i32 %or, i32* %d_flags, align 8
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %4 = bitcast %union.anon.65* %3 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %4, i64 0, i32 1
  %5 = load i32, i32* %count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then4, %if.end, %if.then, %lor.lhs.false
  %retval.0 = phi i32 [ 3, %lor.lhs.false ], [ 3, %if.then ], [ 0, %if.end ], [ 0, %if.then4 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @d_tmpfile(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  call fastcc void @inode_dec_link_count(%struct.inode* noundef %inode) #18
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %0 = load i8*, i8** %name, align 8
  %arraydecay = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6, i64 0
  %cmp.not = icmp eq i8* %0, %arraydecay
  br i1 %cmp.not, label %lor.lhs.false, label %do.body6, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %d_alias = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 15, i32 0
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %d_alias) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body6, label %lor.rhs, !prof !9

lor.rhs:                                          ; preds = %lor.lhs.false
  %call1 = call fastcc i32 @d_unlinked(%struct.dentry* noundef %dentry) #18
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body6, label %do.end9, !prof !9

do.body6:                                         ; preds = %entry, %lor.lhs.false, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 3175; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !55
  unreachable

do.end9:                                          ; preds = %lor.rhs
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %2 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i37 = bitcast %union.anon.65* %3 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i37) #18
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 8
  %4 = load i64, i64* %i_ino, align 8
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef %4) #19
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %6 = bitcast %union.anon.3* %5 to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i64 0, i32 1
  store i32 %call17, i32* %len, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i37) #19
  %7 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 7, i32 0
  %rlock.i39 = bitcast %union.anon.65* %8 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i39) #19
  call void @d_instantiate(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_dec_link_count(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @drop_nlink(%struct.inode* noundef %inode) #19
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !56
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @set_dhash_entries(i8* noundef %str) #16 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @simple_strtoul(i8* noundef nonnull %str, i8** noundef nonnull %str.addr, i32 noundef 0) #19
  store i64 %call, i64* @dhash_entries, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @vfs_caches_init_early() local_unnamed_addr #16 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %first = getelementptr [1024 x %struct.hlist_bl_head], [1024 x %struct.hlist_bl_head]* @in_lookup_hashtable, i64 0, i64 %indvars.iv, i32 0
  store %struct.hlist_bl_node* null, %struct.hlist_bl_node** %first, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call fastcc void @dcache_init_early() #24
  call void @inode_init_early() #23
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @dcache_init_early() unnamed_addr #16 section ".init.text" {
entry:
  %0 = load i64, i64* @dhash_entries, align 8
  %call = call i8* @alloc_large_system_hash(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 noundef 8, i64 noundef %0, i32 noundef 13, i32 noundef 5, i32* noundef nonnull @d_hash_shift, i32* noundef null, i64 noundef 0, i64 noundef 0) #19
  store i8* %call, i8** bitcast (%struct.hlist_bl_head** @dentry_hashtable to i8**), align 8
  %1 = load i32, i32* @d_hash_shift, align 4
  %sub = sub i32 32, %1
  store i32 %sub, i32* @d_hash_shift, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @inode_init_early() local_unnamed_addr #15 section ".init.text"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @vfs_caches_init() local_unnamed_addr #16 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 noundef 4096, i32 noundef 0, i32 noundef 270336, i32 noundef 0, i32 noundef 4096, void (i8*)* noundef null) #19
  store %struct.kmem_cache* %call, %struct.kmem_cache** @names_cachep, align 8
  call fastcc void @dcache_init() #24
  call void @inode_init() #23
  call void @files_init() #23
  call void @files_maxfiles_init() #23
  call void @mnt_init() #23
  call void @bdev_cache_init() #23
  call void @chrdev_init() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @dcache_init() unnamed_addr #16 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 noundef 192, i32 noundef 8, i32 noundef 1441792, i32 noundef 56, i32 noundef 32, void (i8*)* noundef null) #19
  store %struct.kmem_cache* %call, %struct.kmem_cache** @dentry_cache, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @inode_init() local_unnamed_addr #15 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @files_init() local_unnamed_addr #15 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @files_maxfiles_init() local_unnamed_addr #15 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mnt_init() local_unnamed_addr #15 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @bdev_cache_init() local_unnamed_addr #15 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @chrdev_init() local_unnamed_addr #15 section ".init.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !57
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !58
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #21, !srcloc !59
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !60
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* nocapture noundef readonly %h) unnamed_addr #4 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_bl_node**, %struct.hlist_bl_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node** %0, null
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_put_or_lock(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_put_return(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !62
  call void @rcu_read_unlock_strict() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_lru_add(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 525312
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 401; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !63
  %.pre = load i32, i32* %d_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %or = or i32 %1, 524288
  store i32 %or, i32* %d_flags, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !64
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (i64* @nr_dentry_unused to i64)
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %2, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !65
  %call22 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #18
  br i1 %call22, label %do.body25, label %if.end37

do.body25:                                        ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !66
  %call34 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add35 = add i64 %call34, ptrtoint (i64* @nr_dentry_negative to i64)
  %3 = inttoptr i64 %add35 to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !67
  br label %if.end37

if.end37:                                         ; preds = %do.body25, %if.end
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %4 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_dentry_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 47
  %d_lru = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12, i32 0
  %call39 = call i1 @list_lru_add(%struct.list_lru* noundef %s_dentry_lru, %struct.list_head* noundef %d_lru) #19
  br i1 %call39, label %if.end55, label %if.then54, !prof !8

if.then54:                                        ; preds = %if.end37
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 406; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !68
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #21, !srcloc !69
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #1 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #25, !srcloc !70
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_negative(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @d_is_miss(%struct.dentry* noundef %dentry) #18
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @list_lru_add(%struct.list_lru* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_miss(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #18
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__d_entry_type(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 7340032
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__lock_parent(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.65* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load volatile %struct.dentry*, %struct.dentry** %d_parent, align 8
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7, i32 0
  %rlock.i2528 = bitcast %union.anon.65* %2 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i2528) #19
  %3 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp.not29 = icmp eq %struct.dentry* %1, %3
  br i1 %cmp.not29, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry, %if.then
  %rlock.i2530 = phi %struct.raw_spinlock* [ %rlock.i25, %if.then ], [ %rlock.i2528, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i2530) #19
  %4 = load volatile %struct.dentry*, %struct.dentry** %d_parent, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 7, i32 0
  %rlock.i25 = bitcast %union.anon.65* %5 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i25) #19
  %6 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp.not = icmp eq %struct.dentry* %4, %6
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.end:                                           ; preds = %if.then, %entry
  %.lcssa = phi %struct.dentry* [ %1, %entry ], [ %4, %if.then ]
  call fastcc void @rcu_read_unlock() #18
  %cmp7.not = icmp eq %struct.dentry* %.lcssa, %dentry
  br i1 %cmp7.not, label %if.end15, label %do.body10

do.body10:                                        ; preds = %if.end
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %if.end15

if.end15:                                         ; preds = %if.end, %do.body10
  %parent.0 = phi %struct.dentry* [ %.lcssa, %do.body10 ], [ null, %if.end ]
  ret %struct.dentry* %parent.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !71
  %call = call fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !72
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !8

if.end.i:                                         ; preds = %entry
  %1 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #21, !srcloc !73
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_lru_del(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 525312
  %cmp.not = icmp eq i32 %and, 524288
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 411; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !74
  %.pre = load i32, i32* %d_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %and15 = and i32 %1, -524289
  store i32 %and15, i32* %d_flags, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !75
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (i64* @nr_dentry_unused to i64)
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %2, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !76
  %call23 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #18
  br i1 %call23, label %do.body26, label %if.end38

do.body26:                                        ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !77
  %call35 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add36 = add i64 %call35, ptrtoint (i64* @nr_dentry_negative to i64)
  %3 = inttoptr i64 %add36 to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !78
  br label %if.end38

if.end38:                                         ; preds = %do.body26, %if.end
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %4 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_dentry_lru = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 47
  %d_lru = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12, i32 0
  %call40 = call i1 @list_lru_del(%struct.list_lru* noundef %s_dentry_lru, %struct.list_head* noundef %d_lru) #19
  br i1 %call40, label %if.end56, label %if.then55, !prof !8

if.then55:                                        ; preds = %if.end38
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 416; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !79
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_shrink_add(%struct.dentry* noundef %dentry, %struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 525312
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 429; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !80
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %d_lru = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %d_lru, %struct.list_head* noundef %list) #18
  %1 = load i32, i32* %d_flags, align 8
  %or = or i32 %1, 525312
  store i32 %or, i32* %d_flags, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !81
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (i64* @nr_dentry_unused to i64)
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %2, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @list_lru_del(%struct.list_lru* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #6 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dget(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_mark_dead(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @dentry_unlist(%struct.dentry* noundef %dentry, %struct.dentry* noundef readnone %parent) unnamed_addr #8 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %or = or i32 %0, 32768
  store i32 %or, i32* %d_flags, align 8
  %d_child = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 13
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %d_child) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !8

if.end:                                           ; preds = %entry
  call fastcc void @__list_del_entry(%struct.list_head* noundef %d_child) #18
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %d_child, i64 0, i32 0
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %parent, i64 0, i32 14
  %1 = load %struct.list_head*, %struct.list_head** %next5, align 8
  %cmp.not35 = icmp eq %struct.list_head* %1, %d_subdirs
  br i1 %cmp.not35, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end, %if.end21
  %2 = phi %struct.list_head* [ %4, %if.end21 ], [ %1, %if.end ]
  %add.ptr34 = getelementptr %struct.list_head, %struct.list_head* %2, i64 -9
  %d_flags9 = bitcast %struct.list_head* %add.ptr34 to i32*
  %3 = load i32, i32* %d_flags9, align 8
  %and = and i32 %3, 536870912
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %cleanup, label %if.end21, !prof !8

if.end21:                                         ; preds = %while.body
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i64 0, i32 0
  %4 = load %struct.list_head*, %struct.list_head** %next23, align 8
  store %struct.list_head* %4, %struct.list_head** %next5, align 8
  %cmp.not = icmp eq %struct.list_head* %4, %d_subdirs
  br i1 %cmp.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end21, %if.end, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #8 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #18
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__d_free_external(%struct.callback_head* noundef %head) #0 {
entry:
  %add.ptr4 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -11
  %add.ptr = bitcast %struct.callback_head* %add.ptr4 to i8*
  %0 = bitcast %struct.callback_head* %add.ptr4 to %struct.dentry*
  %call = call fastcc %struct.external_name* @external_name(%struct.dentry* noundef %0) #18
  %1 = bitcast %struct.external_name* %call to i8*
  call void @kfree(i8* noundef %1) #19
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @dentry_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %2, i8* noundef %add.ptr) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__d_free(%struct.callback_head* noundef %head) #0 {
entry:
  %add.ptr3 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -11
  %add.ptr = bitcast %struct.callback_head* %add.ptr3 to i8*
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @dentry_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %add.ptr) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @list_lru_walk_one(%struct.list_lru* noundef, i32 noundef, %struct.mem_cgroup* noundef, i32 (%struct.list_head*, %struct.list_lru_one*, %struct.spinlock*, i8*)* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_lru_isolate(%struct.list_lru_one* noundef %lru, %struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 525312
  %cmp.not = icmp eq i32 %and, 524288
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 443; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !83
  %.pre = load i32, i32* %d_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %and15 = and i32 %1, -524289
  store i32 %and15, i32* %d_flags, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !84
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (i64* @nr_dentry_unused to i64)
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %2, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !85
  %call23 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #18
  br i1 %call23, label %do.body26, label %if.end38

do.body26:                                        ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !86
  %call35 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add36 = add i64 %call35, ptrtoint (i64* @nr_dentry_negative to i64)
  %3 = inttoptr i64 %add36 to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !87
  br label %if.end38

if.end38:                                         ; preds = %do.body26, %if.end
  %d_lru = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12, i32 0
  call void @list_lru_isolate(%struct.list_lru_one* noundef %lru, %struct.list_head* noundef %d_lru) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_lru_shrink_move(%struct.list_lru_one* noundef %lru, %struct.dentry* noundef %dentry, %struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 525312
  %cmp.not = icmp eq i32 %and, 524288
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 454; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !88
  %.pre = load i32, i32* %d_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %or = or i32 %1, 1024
  store i32 %or, i32* %d_flags, align 8
  %call = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #18
  br i1 %call, label %do.body16, label %if.end24

do.body16:                                        ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !89
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call22, ptrtoint (i64* @nr_dentry_negative to i64)
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %2, i64 noundef -1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !90
  br label %if.end24

if.end24:                                         ; preds = %do.body16, %if.end
  %d_lru = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 12, i32 0
  call void @list_lru_isolate_move(%struct.list_lru_one* noundef %lru, %struct.list_head* noundef %d_lru, %struct.list_head* noundef %list) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(%struct.list_lru_one* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate_move(%struct.list_lru_one* noundef, %struct.list_head* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @list_lru_walk_node(%struct.list_lru* noundef, i32 noundef, i32 (%struct.list_head*, %struct.list_lru_one*, %struct.spinlock*, i8*)* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @list_lru_count_node(%struct.list_lru* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_seqbegin_or_lock(i32* nocapture noundef %seq) unnamed_addr #0 {
entry:
  %0 = load i32, i32* %seq, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @read_seqbegin() #18
  store i32 %call, i32* %seq, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @read_seqlock_excl(%struct.seqlock_t* noundef nonnull @rename_lock) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @need_seqretry(i32 noundef %seq) unnamed_addr #0 {
entry:
  %and = and i32 %seq, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = call fastcc i32 @read_seqretry(i32 noundef %seq) #18
  %tobool1 = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @done_seqretry(i32 noundef %seq) unnamed_addr #0 {
entry:
  %and = and i32 %seq, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @read_sequnlock_excl(%struct.seqlock_t* noundef nonnull @rename_lock) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__path_is_mountpoint(%struct.path* nocapture noundef readonly %path) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %0, %struct.dentry* noundef %1) #19
  %tobool.not = icmp eq %struct.mount* %call, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 2
  %2 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %2, 33554432
  %tobool2.not = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2.not, %land.rhs ]
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* noundef %s) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* noundef %s) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !91
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_end(%struct.seqcount* noundef %s) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !92
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @umount_check(i8* noundef readnone %_data, %struct.dentry* noundef %dentry) #0 {
entry:
  %d_subdirs = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 14
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %d_subdirs) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %_data to %struct.dentry*
  %cmp = icmp eq %struct.dentry* %0, %dentry
  br i1 %cmp, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %if.end
  %1 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %2 = bitcast %union.anon.65* %1 to %struct.anon.66*
  %count = getelementptr inbounds %struct.anon.66, %struct.anon.66* %2, i64 0, i32 1
  %3 = load i32, i32* %count, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %return, label %do.end

do.end:                                           ; preds = %land.lhs.true, %if.end
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %4 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool4.not = icmp eq %struct.inode* %4, null
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %do.end
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %4, i64 0, i32 8
  %5 = load i64, i64* %i_ino, align 8
  br label %cond.end

cond.end:                                         ; preds = %do.end, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ 0, %do.end ]
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %7 = bitcast %union.anon.65* %6 to %struct.anon.66*
  %count7 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %7, i64 0, i32 1
  %8 = load i32, i32* %count7, align 4
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %9 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i64 0, i32 5
  %10 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %10, i64 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %arraydecay = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i64 0, i32 31, i64 0
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), %struct.dentry* noundef %dentry, i64 noundef %cond, %struct.dentry* noundef %dentry, i32 noundef %8, i8* noundef %11, i8* noundef %arraydecay) #23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/dcache.c\22; .popsection; .long 14472b - 14470b; .short 1651; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !93
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %cond.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__detach_mounts(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__seqcount_init(%struct.seqcount* nocapture noundef writeonly %s) unnamed_addr #13 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  store i32 0, i32* %sequence, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_BL_NODE(%struct.hlist_bl_node* nocapture noundef writeonly %h) unnamed_addr #13 {
entry:
  %next = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %h, i64 0, i32 0
  store %struct.hlist_bl_node* null, %struct.hlist_bl_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %h, i64 0, i32 1
  store %struct.hlist_bl_node** null, %struct.hlist_bl_node*** %pprev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @d_flags_for_inode(%struct.inode* noundef %inode) unnamed_addr #9 {
entry:
  %tobool.not = icmp eq %struct.inode* %inode, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, 16384
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 1
  %2 = load i16, i16* %i_opflags, align 2
  br i1 %cmp, label %if.then2, label %if.end27

if.then2:                                         ; preds = %if.end
  %3 = and i16 %2, 2
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %if.then10, label %type_determined, !prof !9

if.then10:                                        ; preds = %if.then2
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  %4 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %lookup = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %4, i64 0, i32 0
  %5 = load %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, %struct.dentry* (%struct.inode*, %struct.dentry*, i32)** %lookup, align 64
  %tobool11.not = icmp eq %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* %5, null
  br i1 %tobool11.not, label %type_determined, label %if.else, !prof !9

if.else:                                          ; preds = %if.then10
  %or = or i16 %2, 2
  store i16 %or, i16* %i_opflags, align 2
  br label %type_determined

if.end27:                                         ; preds = %if.end
  %6 = and i16 %2, 4
  %tobool31.not = icmp eq i16 %6, 0
  br i1 %tobool31.not, label %if.then41, label %if.end57, !prof !9

if.then41:                                        ; preds = %if.end27
  %i_op42 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  %7 = load %struct.inode_operations*, %struct.inode_operations** %i_op42, align 8
  %get_link = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %7, i64 0, i32 1
  %8 = load i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)** %get_link, align 8
  %tobool43.not = icmp eq i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* %8, null
  br i1 %tobool43.not, label %if.end52, label %type_determined, !prof !8

if.end52:                                         ; preds = %if.then41
  %or55 = or i16 %2, 4
  store i16 %or55, i16* %i_opflags, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.end52, %if.end27
  %cmp61.not = icmp eq i16 %1, -32768
  br i1 %cmp61.not, label %type_determined, label %if.then72, !prof !8

if.then72:                                        ; preds = %if.end57
  br label %type_determined

type_determined:                                  ; preds = %if.then41, %if.then10, %if.end57, %if.then72, %if.then2, %if.else
  %add_flags.0 = phi i32 [ 2097152, %if.else ], [ 2097152, %if.then2 ], [ 5242880, %if.then72 ], [ 4194304, %if.end57 ], [ 3145728, %if.then10 ], [ 6291456, %if.then41 ]
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %9 = load i32, i32* %i_flags, align 4
  %and74 = and i32 %9, 2048
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %cleanup, label %if.then83, !prof !8

if.then83:                                        ; preds = %type_determined
  %or84 = or i32 %add_flags.0, 131072
  br label %cleanup

cleanup:                                          ; preds = %type_determined, %if.then83, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %or84, %if.then83 ], [ %add_flags.0, %type_determined ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #8 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__d_set_inode_and_type(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i32 noundef %type_flags) unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  store %struct.inode* %inode, %struct.inode** %d_inode, align 8
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load volatile i32, i32* %d_flags, align 8
  %and = and i32 %0, -24117249
  %or = or i32 %and, %type_flags
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %d_flags, i32 %or) #21, !srcloc !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @hlist_bl_add_head(%struct.hlist_bl_node* noundef %n, %struct.hlist_bl_head* noundef %h) unnamed_addr #9 {
entry:
  %call = call fastcc %struct.hlist_bl_node* @hlist_bl_first(%struct.hlist_bl_head* noundef %h) #18
  %next = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %n, i64 0, i32 0
  store %struct.hlist_bl_node* %call, %struct.hlist_bl_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %call, i64 0, i32 1
  store %struct.hlist_bl_node** %next, %struct.hlist_bl_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %first2 = getelementptr inbounds %struct.hlist_bl_head, %struct.hlist_bl_head* %h, i64 0, i32 0
  %pprev3 = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %n, i64 0, i32 1
  store %struct.hlist_bl_node** %first2, %struct.hlist_bl_node*** %pprev3, align 8
  call fastcc void @hlist_bl_set_first(%struct.hlist_bl_head* noundef %h, %struct.hlist_bl_node* noundef %n) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @hlist_bl_set_first(%struct.hlist_bl_head* nocapture noundef writeonly %h, %struct.hlist_bl_node* noundef %n) unnamed_addr #13 {
entry:
  %0 = ptrtoint %struct.hlist_bl_node* %n to i64
  %or = or i64 %0, 1
  %1 = inttoptr i64 %or to %struct.hlist_bl_node*
  %first = getelementptr inbounds %struct.hlist_bl_head, %struct.hlist_bl_head* %h, i64 0, i32 0
  store %struct.hlist_bl_node* %1, %struct.hlist_bl_node** %first, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @dentry_string_cmp(i8* nocapture noundef readonly %cs, i8* noundef %ct, i32 noundef %tcount) unnamed_addr #1 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %entry
  %cs.addr.0 = phi i8* [ %cs, %entry ], [ %add.ptr, %if.end8 ]
  %ct.addr.0 = phi i8* [ %ct, %entry ], [ %add.ptr9, %if.end8 ]
  %tcount.addr.0 = phi i32 [ %tcount, %entry ], [ %sub, %if.end8 ]
  %0 = bitcast i8* %cs.addr.0 to i64*
  %1 = load i64, i64* %0, align 8
  %call1 = call fastcc i64 @load_unaligned_zeropad(i8* noundef %ct.addr.0) #18
  %cmp = icmp ult i32 %tcount.addr.0, 8
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  %cmp3.not = icmp eq i64 %1, %call1
  br i1 %cmp3.not, label %if.end8, label %cleanup, !prof !8

if.end8:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, i8* %cs.addr.0, i64 8
  %add.ptr9 = getelementptr i8, i8* %ct.addr.0, i64 8
  %sub = add i32 %tcount.addr.0, -8
  %tobool12.not = icmp eq i32 %sub, 0
  br i1 %tobool12.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond
  %mul = shl nuw nsw i32 %tcount.addr.0, 3
  %sh_prom = zext i32 %mul to i64
  %shl = shl nsw i64 -1, %sh_prom
  %neg = xor i64 %shl, -1
  %xor = xor i64 %call1, %1
  %and = and i64 %xor, %neg
  %tobool15 = icmp ne i64 %and, 0
  %lnot.ext23 = zext i1 %tobool15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %for.end
  %retval.0 = phi i32 [ %lnot.ext23, %for.end ], [ 0, %if.end8 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @load_unaligned_zeropad(i8* noundef %addr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %addr to i64*
  %1 = call { i64, i64 } asm "1:\09ldr\09$0, $3\0A2:\0A\09.pushsection .fixup,\22ax\22\0A\09.align 2\0A3:\09bic\09$1, $2, #0x7\0A\09ldr\09$0, [$1]\0A\09and\09$1, $2, #0x7\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=&r,=&r,r,*Q"(i8* %addr, i64* elementtype(i64) %0) #25, !srcloc !95
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__d_clear_type_and_inode(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load volatile i32, i32* %d_flags, align 8
  %and = and i32 %0, -24117249
  store volatile i32 %and, i32* %d_flags, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  store %struct.inode* null, %struct.inode** %d_inode, align 8
  %and12 = and i32 %0, 524288
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end, label %do.body14

do.body14:                                        ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !96
  %call = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call, ptrtoint (i64* @nr_dentry_negative to i64)
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !97
  br label %if.end

if.end:                                           ; preds = %do.body14, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #18
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_inoderemove(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #6 {
entry:
  call fastcc void @fsnotify_inode(%struct.inode* noundef %inode) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #8 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_inode(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #6 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @hash_32_generic(i32 noundef %val) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @__hash_32_generic(i32 noundef %val) #18
  %shr = lshr i32 %call, 22
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__hash_32_generic(i32 noundef %val) unnamed_addr #11 {
entry:
  %mul = mul i32 %val, 1640531527
  ret i32 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bit_spin_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !98
  %call2 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) #18
  br i1 %call2, label %while.body, label %while.end, !prof !9

while.body:                                       ; preds = %entry, %do.end
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !99
  br label %do.body

do.body:                                          ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #18
  %0 = load volatile i64, i64* %addr, align 8
  %conv.i1 = and i64 %0, 1
  %tobool4.not = icmp eq i64 %conv.i1, 0
  br i1 %tobool4.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !100
  %call = call fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) #18
  br i1 %call, label %while.body, label %while.end, !prof !9

while.end:                                        ; preds = %do.end, %entry
  ret void
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
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #19
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #21, !srcloc !101
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__bit_spin_unlock(i64* noundef %addr) unnamed_addr #0 {
entry:
  call fastcc void @__clear_bit_unlock(i64* noundef %addr) #18
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !102
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__clear_bit_unlock(i64* noundef %addr) unnamed_addr #0 {
entry:
  call fastcc void @arch___clear_bit_unlock(i64* noundef %addr) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch___clear_bit_unlock(i64* noundef %p) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %p, align 8
  %and = and i64 %0, -2
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %p, i64 %and) #21, !srcloc !103
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_bl_set_first_rcu(%struct.hlist_bl_head* noundef %h, %struct.hlist_bl_node* noundef %n) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.hlist_bl_node* %n to i64
  %or = or i64 %0, 1
  %first9 = getelementptr inbounds %struct.hlist_bl_head, %struct.hlist_bl_head* %h, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_bl_node** elementtype(%struct.hlist_bl_node*) %first9, i64 %or) #21, !srcloc !104
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @start_dir_add(%struct.inode* noundef %dir) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 40
  %1 = bitcast %union.anon.64* %0 to i8*
  %i_dir_seq = bitcast %union.anon.64* %0 to i32*
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %2 = load i32, i32* %i_dir_seq, align 8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %for.cond
  %add = add nuw i32 %2, 1
  %call11.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %2, i32 noundef %add) #19
  %cmp = icmp eq i32 %2, %call11.i
  br i1 %cmp, label %return, label %cleanup

cleanup:                                          ; preds = %for.cond, %land.lhs.true
  call fastcc void @cpu_relax() #18
  br label %for.cond

return:                                           ; preds = %land.lhs.true
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @end_dir_add(%struct.inode* noundef %dir, i32 noundef %n) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 40
  %i_dir_seq = bitcast %union.anon.64* %0 to i32*
  %add = add i32 %n, 2
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %i_dir_seq, i32 %add) #21, !srcloc !105
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #21, !srcloc !106
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_name(%struct.dentry* noundef %dentry, %struct.dentry* noundef readonly %target) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @dname_external(%struct.dentry* noundef %dentry) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call3 = call fastcc %struct.external_name* @external_name(%struct.dentry* noundef %dentry) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %old_name.0 = phi %struct.external_name* [ %call3, %if.then ], [ null, %entry ]
  %call4 = call fastcc i32 @dname_external(%struct.dentry* noundef %target) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then13, !prof !8

if.then13:                                        ; preds = %if.end
  %call14 = call fastcc %struct.external_name* @external_name(%struct.dentry* noundef %target) #18
  %count = bitcast %struct.external_name* %call14 to %struct.atomic_t*
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %count) #19
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4
  %d_name15 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 4
  %0 = bitcast %struct.qstr* %d_name to i8*
  %1 = bitcast %struct.qstr* %d_name15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %if.end27

if.else:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6, i64 0
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 4, i32 1
  %2 = load i8*, i8** %name, align 8
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 4, i32 0
  %4 = bitcast %union.anon.3* %3 to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4, i64 0, i32 1
  %5 = load i32, i32* %len, align 4
  %add = add i32 %5, 1
  %conv18 = zext i32 %add to i64
  %call19 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %2, i64 noundef %conv18) #19
  %name23 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  store i8* %arraydecay, i8** %name23, align 8
  %hash_len = getelementptr %union.anon.3, %union.anon.3* %3, i64 0, i32 0
  %6 = load i64, i64* %hash_len, align 8
  %hash_len26 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0, i32 0
  store i64 %6, i64* %hash_len26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then13
  %tobool28.not = icmp eq %struct.external_name* %old_name.0, null
  br i1 %tobool28.not, label %if.end47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end27
  %count30 = bitcast %struct.external_name* %old_name.0 to %struct.atomic_t*
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef nonnull %count30) #19
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %if.end47, !prof !8

do.end:                                           ; preds = %land.lhs.true
  %head = getelementptr inbounds %struct.external_name, %struct.external_name* %old_name.0, i64 0, i32 0, i32 0
  call void @kvfree_call_rcu(%struct.callback_head* noundef %head, void (%struct.callback_head*)* noundef null) #19
  br label %if.end47

if.end47:                                         ; preds = %do.end, %land.lhs.true, %if.end27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @swap_names(%struct.dentry* noundef %dentry, %struct.dentry* noundef %target) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @dname_external(%struct.dentry* noundef %target) #18
  %tobool.not = icmp eq i32 %call, 0
  %call33 = call fastcc i32 @dname_external(%struct.dentry* noundef %dentry) #18
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %if.else32, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  br i1 %tobool34.not, label %if.else, label %do.body, !prof !8

do.body:                                          ; preds = %if.then
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 4, i32 1
  %0 = load i8*, i8** %name, align 8
  %name14 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %1 = load i8*, i8** %name14, align 8
  store i8* %1, i8** %name, align 8
  store i8* %0, i8** %name14, align 8
  br label %do.body81

if.else:                                          ; preds = %if.then
  %arraydecay = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 6, i64 0
  %name20 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %2 = load i8*, i8** %name20, align 8
  %3 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %4 = bitcast %union.anon.3* %3 to %struct.anon.2*
  %len = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4, i64 0, i32 1
  %5 = load i32, i32* %len, align 4
  %add = add i32 %5, 1
  %conv22 = zext i32 %add to i64
  %call23 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %2, i64 noundef %conv22) #19
  %name25 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 4, i32 1
  %6 = load i8*, i8** %name25, align 8
  store i8* %6, i8** %name20, align 8
  store i8* %arraydecay, i8** %name25, align 8
  br label %do.body81

if.else32:                                        ; preds = %entry
  br i1 %tobool34.not, label %for.cond.preheader, label %if.then42, !prof !8

for.cond.preheader:                               ; preds = %if.else32
  %d_iname67 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6
  %7 = bitcast [32 x i8]* %d_iname67 to i64*
  %d_iname68 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 6
  %8 = bitcast [32 x i8]* %d_iname68 to i64*
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %8, align 8
  store i64 %10, i64* %7, align 8
  store i64 %9, i64* %8, align 8
  %arrayidx.1 = getelementptr %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6, i64 8
  %11 = bitcast i8* %arrayidx.1 to i64*
  %12 = load i64, i64* %11, align 8
  %arrayidx70.1 = getelementptr %struct.dentry, %struct.dentry* %target, i64 0, i32 6, i64 8
  %13 = bitcast i8* %arrayidx70.1 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  store i64 %12, i64* %13, align 8
  %arrayidx.2 = getelementptr %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6, i64 16
  %15 = bitcast i8* %arrayidx.2 to i64*
  %16 = load i64, i64* %15, align 8
  %arrayidx70.2 = getelementptr %struct.dentry, %struct.dentry* %target, i64 0, i32 6, i64 16
  %17 = bitcast i8* %arrayidx70.2 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %15, align 8
  store i64 %16, i64* %17, align 8
  %arrayidx.3 = getelementptr %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6, i64 24
  %19 = bitcast i8* %arrayidx.3 to i64*
  %20 = load i64, i64* %19, align 8
  %arrayidx70.3 = getelementptr %struct.dentry, %struct.dentry* %target, i64 0, i32 6, i64 24
  %21 = bitcast i8* %arrayidx70.3 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %19, align 8
  store i64 %20, i64* %21, align 8
  br label %do.body81

if.then42:                                        ; preds = %if.else32
  %arraydecay44 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 6, i64 0
  %name46 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 4, i32 1
  %23 = load i8*, i8** %name46, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 4, i32 0
  %25 = bitcast %union.anon.3* %24 to %struct.anon.2*
  %len48 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %25, i64 0, i32 1
  %26 = load i32, i32* %len48, align 4
  %add49 = add i32 %26, 1
  %conv50 = zext i32 %add49 to i64
  %call51 = call i8* @memcpy(i8* noundef %arraydecay44, i8* noundef %23, i64 noundef %conv50) #19
  %name53 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %27 = load i8*, i8** %name53, align 8
  store i8* %27, i8** %name46, align 8
  store i8* %arraydecay44, i8** %name53, align 8
  br label %do.body81

do.body81:                                        ; preds = %for.cond.preheader, %if.else, %do.body, %if.then42
  %hash_len = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0, i32 0
  %28 = load i64, i64* %hash_len, align 8
  %hash_len85 = getelementptr inbounds %struct.dentry, %struct.dentry* %target, i64 0, i32 4, i32 0, i32 0
  %29 = load i64, i64* %hash_len85, align 8
  store i64 %29, i64* %hash_len, align 8
  store i64 %28, i64* %hash_len85, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #18
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @inode_trylock_shared(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %i_rwsem) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 7) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @alloc_large_system_hash(i8* noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #21 = { nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { cold nobuiltin nounwind "no-builtins" }
attributes #24 = { cold nobuiltin "no-builtins" }
attributes #25 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2150301597}
!11 = !{i64 2153277678}
!12 = !{i64 2153271201}
!13 = !{i64 2153282818}
!14 = !{i64 2153287959}
!15 = !{i64 2150293091}
!16 = !{i64 2153265351}
!17 = !{i64 2153266123}
!18 = !{i64 2153217642}
!19 = !{i64 2153222970}
!20 = !{i64 2153223812}
!21 = !{i64 2153176353}
!22 = !{!"auto-init"}
!23 = !{i64 2153332296}
!24 = !{i64 351609}
!25 = !{i64 2153337151}
!26 = !{i64 2153341452}
!27 = !{i64 2153350077}
!28 = !{i64 2153350849}
!29 = !{i64 2153352542}
!30 = !{i64 2153354334}
!31 = !{i64 2153373847}
!32 = !{i64 2153356813}
!33 = !{i64 2153362259}
!34 = !{i64 2153363121}
!35 = !{i64 2153375310}
!36 = !{i64 2153376628}
!37 = !{i64 2153378236}
!38 = !{i64 2153378599}
!39 = !{i64 2153401511}
!40 = !{i64 2153472211}
!41 = !{i64 2153386171}
!42 = !{i64 1894261}
!43 = !{i64 2150312355}
!44 = !{i64 2153400829}
!45 = !{i64 2153433769}
!46 = !{i64 2153435331}
!47 = !{i64 2153436674}
!48 = !{i64 2153438019}
!49 = !{i64 2153439745}
!50 = !{i64 2153454687}
!51 = !{i64 2153466006}
!52 = !{i64 2153467569}
!53 = !{i64 2153469192}
!54 = !{i64 2153470815}
!55 = !{i64 2153475937}
!56 = !{i64 2149766947}
!57 = !{i64 2148018180, i64 2148018696, i64 2148018726, i64 2148018753, i64 2148018787, i64 2148018817}
!58 = !{i64 2149774228}
!59 = !{i64 2149721076}
!60 = !{i64 2148028753, i64 2148029401, i64 2148029431, i64 2148029463, i64 2148029497, i64 2148029533, i64 2148029558}
!61 = !{i64 2149522458}
!62 = !{i64 2149522675}
!63 = !{i64 2153187909}
!64 = !{i64 2153192722}
!65 = !{i64 2153193564}
!66 = !{i64 2153198164}
!67 = !{i64 2153199026}
!68 = !{i64 2153200412}
!69 = !{i64 2149175017, i64 2149175058, i64 2149175114, i64 2149175166}
!70 = !{i64 2149149071, i64 2149149118, i64 2149149124, i64 2149149161, i64 2149149179, i64 2149150106, i64 2149150154, i64 2149150202, i64 2149150265, i64 2149150314, i64 2149149257, i64 2149149282, i64 2149149308, i64 2149149314, i64 2149149351, i64 2149149357, i64 2149149407, i64 2149149453, i64 2149149486}
!71 = !{i64 2149747405}
!72 = !{i64 2149751462}
!73 = !{i64 2148114042, i64 2148114075, i64 2148114128, i64 2148114187, i64 2148114221, i64 2148114276, i64 2148114305, i64 2148114325}
!74 = !{i64 2153202238}
!75 = !{i64 2153207555}
!76 = !{i64 2153208397}
!77 = !{i64 2153213531}
!78 = !{i64 2153214393}
!79 = !{i64 2153215779}
!80 = !{i64 2153225313}
!81 = !{i64 2153230137}
!82 = !{i64 2153230979}
!83 = !{i64 2153232509}
!84 = !{i64 2153237826}
!85 = !{i64 2153238668}
!86 = !{i64 2153243802}
!87 = !{i64 2153244664}
!88 = !{i64 2153250255}
!89 = !{i64 2153255696}
!90 = !{i64 2153256558}
!91 = !{i64 2150293332}
!92 = !{i64 2150293573}
!93 = !{i64 2153335269}
!94 = !{i64 2153161285}
!95 = !{i64 5658399, i64 5658419, i64 5658427, i64 5658460, i64 5658475, i64 5658500, i64 5658519, i64 5658542, i64 5658587, i64 5658642, i64 5658653, i64 2153143177, i64 2153143218, i64 2153143240, i64 2153143286}
!96 = !{i64 2153174198}
!97 = !{i64 2153175060}
!98 = !{i64 2151172167}
!99 = !{i64 2151172278}
!100 = !{i64 2151172340}
!101 = !{i64 2148090148, i64 2148090818, i64 2148090848, i64 2148090880, i64 2148090912, i64 2148090946, i64 2148090971}
!102 = !{i64 2151173126}
!103 = !{i64 2148322439}
!104 = !{i64 2151873127}
!105 = !{i64 2153394600}
!106 = !{i64 2148131250, i64 2148131283, i64 2148131335, i64 2148131394, i64 2148131428, i64 2148131484, i64 2148131513, i64 2148131540}
