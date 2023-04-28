; ModuleID = 'fs/stat.c'
source_filename = "fs/stat.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.0, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
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
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.12, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.58, %union.anon.59 }
%union.anon.58 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.59 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.26, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.25, [0 x i64] }
%struct.anon.25 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.53, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.29 }
%union.anon.29 = type { i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
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
%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.72, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.73, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.72 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.73 = type { %struct.hlist_node }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.38, %union.anon.39, i32 }
%struct.request_queue = type opaque
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.52, i32, [12 x i8] }
%union.anon.52 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.54, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.54 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.26 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.27, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.28, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.27 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.28 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.63 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.61, %struct.qspinlock }
%union.anon.61 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.63 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.37 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
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
%struct.kqid = type { %union.anon.65, i32 }
%union.anon.65 = type { %struct.kuid_t }
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
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.pt_regs = type { %union.anon.74, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.74 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.statx = type { i32, i32, i64, i32, i32, i32, i16, [1 x i16], i64, i64, i64, i64, %struct.statx_timestamp, %struct.statx_timestamp, %struct.statx_timestamp, %struct.statx_timestamp, i32, i32, i32, i32, i64, i64, [12 x i64] }
%struct.statx_timestamp = type { i64, i32, i32 }

@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local void @generic_fillattr(%struct.user_namespace* nocapture readnone %mnt_userns, %struct.inode* nocapture noundef readonly %inode, %struct.kstat* nocapture noundef writeonly %stat) local_unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 1
  %1 = load i32, i32* %s_dev, align 16
  %dev = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 7
  store i32 %1, i32* %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 8
  %2 = load i64, i64* %i_ino, align 8
  %ino = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 6
  store i64 %2, i64* %ino, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %3 = load i16, i16* %i_mode, align 8
  %mode = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 1
  store i16 %3, i16* %mode, align 4
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 9, i32 0
  %4 = load i32, i32* %i_nlink, align 8
  %nlink = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 2
  store i32 %4, i32* %nlink, align 8
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #10
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 9, i32 0
  store i32 %call, i32* %tmp.sroa.0.0..sroa_idx, align 8
  %call2 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %inode) #10
  %tmp1.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 10, i32 0
  store i32 %call2, i32* %tmp1.sroa.0.0..sroa_idx, align 4
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  %5 = load i32, i32* %i_rdev, align 4
  %rdev = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 8
  store i32 %5, i32* %rdev, align 4
  %call4 = call fastcc i64 @i_size_read(%struct.inode* noundef %inode) #10
  %size = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 11
  store i64 %call4, i64* %size, align 8
  %atime = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 12
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 12
  %6 = bitcast %struct.timespec64* %atime to i8*
  %7 = bitcast %struct.timespec64* %i_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %6, i8* noundef align 8 dereferenceable(16) %7, i64 16, i1 false)
  %mtime = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 13
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13
  %8 = bitcast %struct.timespec64* %mtime to i8*
  %9 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  %ctime = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 14
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14
  %10 = bitcast %struct.timespec64* %ctime to i8*
  %11 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %10, i8* noundef align 8 dereferenceable(16) %11, i64 16, i1 false)
  %call5 = call fastcc i32 @i_blocksize(%struct.inode* noundef %inode) #10
  %blksize = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 3
  store i32 %call5, i32* %blksize, align 4
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %12 = load i64, i64* %i_blocks, align 8
  %blocks = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 16
  store i64 %12, i64* %blocks, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_gid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %0 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kgid_into_mnt(i64 %coerce.val.ii) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_blocksize(%struct.inode* nocapture noundef readonly %node) unnamed_addr #2 {
entry:
  %i_blkbits = getelementptr inbounds %struct.inode, %struct.inode* %node, i64 0, i32 17
  %0 = load i8, i8* %i_blkbits, align 2
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 1, %conv
  ret i32 %shl
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @generic_fill_statx_attr(%struct.inode* nocapture noundef readonly %inode, %struct.kstat* nocapture noundef %stat) local_unnamed_addr #4 {
entry:
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %0 = load i32, i32* %i_flags, align 4
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %attributes = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 4
  %1 = load i64, i64* %attributes, align 8
  %or = or i64 %1, 16
  store i64 %or, i64* %attributes, align 8
  %.pre = load i32, i32* %i_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %and2 = and i32 %2, 4
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %attributes5 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 4
  %3 = load i64, i64* %attributes5, align 8
  %or6 = or i64 %3, 32
  store i64 %or6, i64* %attributes5, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %attributes_mask = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 5
  %4 = load i64, i64* %attributes_mask, align 8
  %or8 = or i64 %4, 48
  store i64 %or8, i64* %attributes_mask, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_getattr_nosec(%struct.path* noundef %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) local_unnamed_addr #5 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %0) #10
  %1 = bitcast %struct.kstat* %stat to i8*
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 144) #11
  %result_mask = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 0
  %2 = load i32, i32* %result_mask, align 8
  %or = or i32 %2, 2047
  store i32 %or, i32* %result_mask, align 8
  %and = and i32 %query_flags, 24576
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 10
  %4 = load i64, i64* %s_flags, align 16
  %and2 = and i64 %4, 1024
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and4 = and i32 %or, -33
  store i32 %and4, i32* %result_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %5 = load i32, i32* %i_flags, align 4
  %and5 = and i32 %5, 2048
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end16, label %if.then7

if.then7:                                         ; preds = %if.end
  %attributes = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 4
  %6 = load i64, i64* %attributes, align 8
  %or8 = or i64 %6, 4096
  store i64 %or8, i64* %attributes, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then7
  %attributes_mask = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 5
  %7 = load i64, i64* %attributes_mask, align 8
  %or17 = or i64 %7, 2101248
  store i64 %or17, i64* %attributes_mask, align 8
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call18 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %8) #10
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  %9 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %getattr = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %9, i64 0, i32 14
  %10 = load i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)** %getattr, align 16
  %tobool19.not = icmp eq i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* %10, null
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end16
  %call23 = call i32 %10(%struct.user_namespace* noundef %call18, %struct.path* noundef %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %and) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @generic_fillattr(%struct.user_namespace* undef, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then20
  %retval.0 = phi i32 [ %call23, %if.then20 ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_backing_inode(%struct.dentry* nocapture noundef readonly %upper) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %upper, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #5 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #12, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_getattr(%struct.path* noundef %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) local_unnamed_addr #5 {
entry:
  %call2 = call i32 @vfs_getattr_nosec(%struct.path* noundef %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #10
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fstat(i32 noundef %fd, %struct.kstat* noundef %stat) local_unnamed_addr #5 {
entry:
  %call = call fastcc [2 x i64] @fdget_raw(i32 noundef %fd) #10
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %f_path = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %call2 = call i32 @vfs_getattr(%struct.path* noundef %f_path, %struct.kstat* noundef %stat, i32 noundef 2047, i32 noundef 0) #10
  call fastcc void @fdput([2 x i64] %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -9, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget_raw(i32 noundef %fd) unnamed_addr #5 {
entry:
  %call = call i64 @__fdget_raw(i32 noundef %fd) #11
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #10
  ret [2 x i64] %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #5 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_fstatat(i32 noundef %dfd, i8* noundef %filename, %struct.kstat* noundef %stat, i32 noundef %flags) local_unnamed_addr #5 {
entry:
  %or = or i32 %flags, 2048
  %call = call fastcc i32 @vfs_statx(i32 noundef %dfd, i8* noundef %filename, i32 noundef %or, %struct.kstat* noundef %stat, i32 noundef 2047) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_statx(i32 noundef %dfd, i8* noundef %filename, i32 noundef %flags, %struct.kstat* noundef %stat, i32 noundef %request_mask) unnamed_addr #5 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %and = and i32 %flags, -30977
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and1 = lshr i32 %flags, 8
  %and1.lobit = and i32 %and1, 1
  %and5 = lshr i32 %flags, 9
  %1 = and i32 %and5, 4
  %2 = or i32 %and1.lobit, %1
  %and10 = shl nuw nsw i32 %flags, 2
  %3 = and i32 %and10, 16384
  %4 = or i32 %2, %3
  %5 = xor i32 %4, 5
  %call52 = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %5, %struct.path* noundef nonnull %path) #10
  %tobool15.not53 = icmp eq i32 %call52, 0
  br i1 %tobool15.not53, label %if.end17.lr.ph, label %cleanup

if.end17.lr.ph:                                   ; preds = %if.end
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %mnt_id20 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 17
  %result_mask = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %attributes = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 4
  %attributes_mask = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 5
  %6 = or i32 %5, 32
  br label %if.end17

retry:                                            ; preds = %if.end26
  %call = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %6, %struct.path* noundef nonnull %path) #10
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end17.lr.ph, %retry
  %lookup_flags.354 = phi i32 [ %5, %if.end17.lr.ph ], [ %6, %retry ]
  %call18 = call i32 @vfs_getattr(%struct.path* noundef nonnull %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #10
  %7 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call19 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %7) #10
  %mnt_id = getelementptr inbounds %struct.mount, %struct.mount* %call19, i64 0, i32 20
  %8 = load i32, i32* %mnt_id, align 8
  %conv = sext i32 %8 to i64
  store i64 %conv, i64* %mnt_id20, align 8
  %9 = load i32, i32* %result_mask, align 8
  %or21 = or i32 %9, 4096
  store i32 %or21, i32* %result_mask, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %7, i64 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %11 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %cmp = icmp eq %struct.dentry* %10, %11
  br i1 %cmp, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end17
  %12 = load i64, i64* %attributes, align 8
  %or25 = or i64 %12, 8192
  store i64 %or25, i64* %attributes, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end17
  %13 = load i64, i64* %attributes_mask, align 8
  %or27 = or i64 %13, 8192
  store i64 %or27, i64* %attributes_mask, align 8
  call void @path_put(%struct.path* noundef nonnull %path) #11
  %conv28 = sext i32 %call18 to i64
  %call29 = call fastcc i1 @retry_estale(i64 noundef %conv28, i32 noundef %lookup_flags.354) #10
  br i1 %call29, label %retry, label %cleanup

cleanup:                                          ; preds = %if.end26, %retry, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %call52, %if.end ], [ %call18, %if.end26 ], [ %call, %retry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_newstat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_newstat(i64 noundef %0, i64 noundef %1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_newstat(i64 noundef %filename, i64 noundef %statbuf) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %1 = inttoptr i64 %statbuf to %struct.stat*
  %call = call fastcc i64 @__do_sys_newstat(i8* noundef %0, %struct.stat* noundef %1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_newlstat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_newlstat(i64 noundef %0, i64 noundef %1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_newlstat(i64 noundef %filename, i64 noundef %statbuf) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %1 = inttoptr i64 %statbuf to %struct.stat*
  %call = call fastcc i64 @__do_sys_newlstat(i8* noundef %0, %struct.stat* noundef %1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_newfstatat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_newfstatat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_newfstatat(i64 noundef %dfd, i64 noundef %filename, i64 noundef %statbuf, i64 noundef %flag) unnamed_addr #5 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %1 = inttoptr i64 %statbuf to %struct.stat*
  %conv1 = trunc i64 %flag to i32
  %call = call fastcc i64 @__do_sys_newfstatat(i32 noundef %conv, i8* noundef %0, %struct.stat* noundef %1, i32 noundef %conv1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_newfstat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_newfstat(i64 noundef %0, i64 noundef %1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_newfstat(i64 noundef %fd, i64 noundef %statbuf) unnamed_addr #5 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %statbuf to %struct.stat*
  %call = call fastcc i64 @__do_sys_newfstat(i32 noundef %conv, %struct.stat* noundef %0) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_readlinkat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_readlinkat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_readlinkat(i64 noundef %dfd, i64 noundef %pathname, i64 noundef %buf, i64 noundef %bufsiz) unnamed_addr #5 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %buf to i8*
  %conv1 = trunc i64 %bufsiz to i32
  %call = call fastcc i64 @__do_sys_readlinkat(i32 noundef %conv, i8* noundef %0, i8* noundef %1, i32 noundef %conv1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_readlink(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #5 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_readlink(i64 noundef %0, i64 noundef %1, i64 noundef %2) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_readlink(i64 noundef %path, i64 noundef %buf, i64 noundef %bufsiz) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %path to i8*
  %1 = inttoptr i64 %buf to i8*
  %conv = trunc i64 %bufsiz to i32
  %call = call fastcc i64 @__do_sys_readlink(i8* noundef %0, i8* noundef %1, i32 noundef %conv) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_statx(i32 noundef %dfd, i8* noundef %filename, i32 noundef %flags, i32 noundef %mask, %struct.statx* noundef %buffer) local_unnamed_addr #5 {
entry:
  %stat = alloca %struct.kstat, align 8
  %0 = bitcast %struct.kstat* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false), !annotation !8
  %tobool.not = icmp slt i32 %mask, 0
  %and1 = and i32 %flags, 24576
  %cmp = icmp eq i32 %and1, 24576
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %call = call fastcc i32 @vfs_statx(i32 noundef %dfd, i8* noundef %filename, i32 noundef %flags, %struct.kstat* noundef nonnull %stat, i32 noundef %mask) #10
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end3
  %call7 = call fastcc i32 @cp_statx(%struct.kstat* noundef nonnull %stat, %struct.statx* noundef %buffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry ], [ %call, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cp_statx(%struct.kstat* noundef readonly %stat, %struct.statx* noundef %buffer) unnamed_addr #5 {
entry:
  %tmp = alloca %struct.statx, align 8
  %0 = bitcast %struct.statx* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %0, i8 0, i64 256, i1 false), !annotation !8
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 256) #11
  %result_mask = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 0
  %1 = load i32, i32* %result_mask, align 8
  %stx_mask = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 0
  store i32 %1, i32* %stx_mask, align 8
  %blksize = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 3
  %2 = load i32, i32* %blksize, align 4
  %stx_blksize = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 1
  store i32 %2, i32* %stx_blksize, align 4
  %attributes = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 4
  %3 = load i64, i64* %attributes, align 8
  %stx_attributes = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 2
  store i64 %3, i64* %stx_attributes, align 8
  %nlink = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 2
  %4 = load i32, i32* %nlink, align 8
  %stx_nlink = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 3
  store i32 %4, i32* %stx_nlink, align 8
  %coerce.dive = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 9, i32 0
  %5 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %5 to i64
  %call2 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #10
  %stx_uid = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 4
  store i32 %call2, i32* %stx_uid, align 4
  %coerce.dive4 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 10, i32 0
  %6 = load i32, i32* %coerce.dive4, align 4
  %coerce.val.ii5 = zext i32 %6 to i64
  %call6 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii5) #10
  %stx_gid = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 5
  store i32 %call6, i32* %stx_gid, align 8
  %mode = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 1
  %7 = load i16, i16* %mode, align 4
  %stx_mode = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 6
  store i16 %7, i16* %stx_mode, align 4
  %ino = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 6
  %8 = load i64, i64* %ino, align 8
  %stx_ino = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 8
  store i64 %8, i64* %stx_ino, align 8
  %size = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 11
  %9 = load i64, i64* %size, align 8
  %stx_size = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 9
  store i64 %9, i64* %stx_size, align 8
  %blocks = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 16
  %10 = load i64, i64* %blocks, align 8
  %stx_blocks = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 10
  store i64 %10, i64* %stx_blocks, align 8
  %attributes_mask = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 5
  %11 = load i64, i64* %attributes_mask, align 8
  %stx_attributes_mask = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 11
  store i64 %11, i64* %stx_attributes_mask, align 8
  %tv_sec = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 12, i32 0
  %12 = load i64, i64* %tv_sec, align 8
  %tv_sec7 = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 12, i32 0
  store i64 %12, i64* %tv_sec7, align 8
  %tv_nsec = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 12, i32 1
  %13 = load i64, i64* %tv_nsec, align 8
  %conv = trunc i64 %13 to i32
  %tv_nsec10 = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 12, i32 1
  store i32 %conv, i32* %tv_nsec10, align 8
  %tv_sec11 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 15, i32 0
  %14 = load i64, i64* %tv_sec11, align 8
  %tv_sec12 = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 13, i32 0
  store i64 %14, i64* %tv_sec12, align 8
  %tv_nsec14 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 15, i32 1
  %15 = load i64, i64* %tv_nsec14, align 8
  %conv15 = trunc i64 %15 to i32
  %tv_nsec17 = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 13, i32 1
  store i32 %conv15, i32* %tv_nsec17, align 8
  %tv_sec18 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 14, i32 0
  %16 = load i64, i64* %tv_sec18, align 8
  %tv_sec19 = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 14, i32 0
  store i64 %16, i64* %tv_sec19, align 8
  %tv_nsec21 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 14, i32 1
  %17 = load i64, i64* %tv_nsec21, align 8
  %conv22 = trunc i64 %17 to i32
  %tv_nsec24 = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 14, i32 1
  store i32 %conv22, i32* %tv_nsec24, align 8
  %tv_sec25 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 13, i32 0
  %18 = load i64, i64* %tv_sec25, align 8
  %tv_sec26 = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 15, i32 0
  store i64 %18, i64* %tv_sec26, align 8
  %tv_nsec28 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 13, i32 1
  %19 = load i64, i64* %tv_nsec28, align 8
  %conv29 = trunc i64 %19 to i32
  %tv_nsec31 = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 15, i32 1
  store i32 %conv29, i32* %tv_nsec31, align 8
  %rdev = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 8
  %20 = load i32, i32* %rdev, align 4
  %shr = lshr i32 %20, 20
  %stx_rdev_major = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 16
  store i32 %shr, i32* %stx_rdev_major, align 8
  %and = and i32 %20, 1048575
  %stx_rdev_minor = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 17
  store i32 %and, i32* %stx_rdev_minor, align 4
  %dev = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 7
  %21 = load i32, i32* %dev, align 8
  %shr33 = lshr i32 %21, 20
  %stx_dev_major = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 18
  store i32 %shr33, i32* %stx_dev_major, align 8
  %and35 = and i32 %21, 1048575
  %stx_dev_minor = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 19
  store i32 %and35, i32* %stx_dev_minor, align 4
  %mnt_id = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 17
  %22 = load i64, i64* %mnt_id, align 8
  %stx_mnt_id = getelementptr inbounds %struct.statx, %struct.statx* %tmp, i64 0, i32 20
  store i64 %22, i64* %stx_mnt_id, align 8
  %23 = bitcast %struct.statx* %buffer to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %23, i8* noundef nonnull %0, i64 noundef 256) #11
  %tobool.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #12
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_statx(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #5 {
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
  %call = call fastcc i64 @__se_sys_statx(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_statx(i64 noundef %dfd, i64 noundef %filename, i64 noundef %flags, i64 noundef %mask, i64 noundef %buffer) unnamed_addr #5 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %conv1 = trunc i64 %flags to i32
  %conv2 = trunc i64 %mask to i32
  %1 = inttoptr i64 %buffer to %struct.statx*
  %call = call fastcc i64 @__do_sys_statx(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, i32 noundef %conv2, %struct.statx* noundef %1) #10
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__inode_add_bytes(%struct.inode* nocapture noundef %inode, i64 noundef %bytes) local_unnamed_addr #4 {
entry:
  %shr = ashr i64 %bytes, 9
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %0 = load i64, i64* %i_blocks, align 8
  %add = add i64 %0, %shr
  store i64 %add, i64* %i_blocks, align 8
  %i_bytes = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 16
  %1 = load i16, i16* %i_bytes, align 4
  %2 = trunc i64 %bytes to i16
  %3 = and i16 %2, 511
  %conv2 = add i16 %1, %3
  store i16 %conv2, i16* %i_bytes, align 4
  %cmp = icmp ugt i16 %conv2, 511
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add i64 %add, 1
  store i64 %inc, i64* %i_blocks, align 8
  %sub = add i16 %conv2, -512
  store i16 %sub, i16* %i_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_add_bytes(%struct.inode* noundef %inode, i64 noundef %bytes) local_unnamed_addr #5 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @__inode_add_bytes(%struct.inode* noundef %inode, i64 noundef %bytes) #10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__inode_sub_bytes(%struct.inode* nocapture noundef %inode, i64 noundef %bytes) local_unnamed_addr #4 {
entry:
  %shr = ashr i64 %bytes, 9
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %0 = load i64, i64* %i_blocks, align 8
  %sub = sub i64 %0, %shr
  store i64 %sub, i64* %i_blocks, align 8
  %and = and i64 %bytes, 511
  %i_bytes = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 16
  %1 = load i16, i16* %i_bytes, align 4
  %conv = zext i16 %1 to i64
  %cmp = icmp ugt i64 %and, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dec = add i64 %sub, -1
  store i64 %dec, i64* %i_blocks, align 8
  %add = add i16 %1, 512
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i16 [ %add, %if.then ], [ %1, %entry ]
  %3 = trunc i64 %and to i16
  %conv9 = sub i16 %2, %3
  store i16 %conv9, i16* %i_bytes, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @inode_sub_bytes(%struct.inode* noundef %inode, i64 noundef %bytes) local_unnamed_addr #5 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @__inode_sub_bytes(%struct.inode* noundef %inode, i64 noundef %bytes) #10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @inode_get_bytes(%struct.inode* noundef %inode) local_unnamed_addr #5 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %call = call fastcc i64 @__inode_get_bytes(%struct.inode* noundef %inode) #10
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @__inode_get_bytes(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #2 {
entry:
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  %0 = load i64, i64* %i_blocks, align 8
  %shl = shl i64 %0, 9
  %i_bytes = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 16
  %1 = load i16, i16* %i_bytes, align 4
  %conv = zext i16 %1 to i64
  %add = add i64 %shl, %conv
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @inode_set_bytes(%struct.inode* nocapture noundef writeonly %inode, i64 noundef %bytes) local_unnamed_addr #8 {
entry:
  %shr = ashr i64 %bytes, 9
  %i_blocks = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 19
  store i64 %shr, i64* %i_blocks, align 8
  %0 = trunc i64 %bytes to i16
  %conv = and i16 %0, 511
  %i_bytes = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 16
  store i16 %conv, i16* %i_bytes, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_into_mnt(i64 %kgid.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #9 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget_raw(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path) unnamed_addr #5 {
entry:
  %call = call i32 @user_path_at_empty(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path, i32* noundef null) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef readnone %mnt) unnamed_addr #9 {
entry:
  %add.ptr2 = getelementptr %struct.vfsmount, %struct.vfsmount* %mnt, i64 -1
  %0 = bitcast %struct.vfsmount* %add.ptr2 to %struct.mount*
  ret %struct.mount* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @retry_estale(i64 noundef %error, i32 noundef %flags) unnamed_addr #9 {
entry:
  %cmp = icmp eq i64 %error, -116
  %and = and i32 %flags, 32
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i1 %cmp, %tobool.not
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, i8* noundef, i32 noundef, %struct.path* noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_newstat(i8* noundef %filename, %struct.stat* noundef %statbuf) unnamed_addr #5 {
entry:
  %stat = alloca %struct.kstat, align 8
  %0 = bitcast %struct.kstat* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false), !annotation !8
  %call = call fastcc i32 @vfs_stat(i8* noundef %filename, %struct.kstat* noundef nonnull %stat) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @cp_new_stat(%struct.kstat* noundef nonnull %stat, %struct.stat* noundef %statbuf) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0.in = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_stat(i8* noundef %filename, %struct.kstat* noundef %stat) unnamed_addr #5 {
entry:
  %call = call i32 @vfs_fstatat(i32 noundef -100, i8* noundef %filename, %struct.kstat* noundef %stat, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cp_new_stat(%struct.kstat* nocapture noundef readonly %stat, %struct.stat* noundef %statbuf) unnamed_addr #5 {
entry:
  %tmp = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !8
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 128) #11
  %dev = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 7
  %1 = load i32, i32* %dev, align 8
  %and1.i = and i32 %1, 255
  %2 = lshr i32 %1, 12
  %shl.i = and i32 %2, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %1, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %conv = zext i32 %or4.i to i64
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 0
  store i64 %conv, i64* %st_dev, align 8
  %ino = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 6
  %3 = load i64, i64* %ino, align 8
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 1
  store i64 %3, i64* %st_ino, align 8
  %mode = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 1
  %4 = load i16, i16* %mode, align 4
  %conv2 = zext i16 %4 to i32
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 2
  store i32 %conv2, i32* %st_mode, align 8
  %nlink = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 2
  %5 = load i32, i32* %nlink, align 8
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 3
  store i32 %5, i32* %st_nlink, align 4
  %coerce.dive = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 9, i32 0
  %6 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %6 to i64
  %call7 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #10
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 4
  store i32 %call7, i32* %st_uid, align 8
  %coerce.dive10 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 10, i32 0
  %7 = load i32, i32* %coerce.dive10, align 4
  %coerce.val.ii11 = zext i32 %7 to i64
  %call12 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii11) #10
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 5
  store i32 %call12, i32* %st_gid, align 4
  %rdev = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 8
  %8 = load i32, i32* %rdev, align 4
  %and1.i41 = and i32 %8, 255
  %9 = lshr i32 %8, 12
  %shl.i42 = and i32 %9, 1048320
  %or.i43 = or i32 %shl.i42, %and1.i41
  %and2.i44 = shl i32 %8, 12
  %shl3.i45 = and i32 %and2.i44, -1048576
  %or4.i46 = or i32 %or.i43, %shl3.i45
  %conv16 = zext i32 %or4.i46 to i64
  %st_rdev = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 6
  store i64 %conv16, i64* %st_rdev, align 8
  %size = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 11
  %10 = load i64, i64* %size, align 8
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 8
  store i64 %10, i64* %st_size, align 8
  %tv_sec = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 12, i32 0
  %11 = load i64, i64* %tv_sec, align 8
  %st_atime = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 12
  store i64 %11, i64* %st_atime, align 8
  %tv_sec17 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 13, i32 0
  %12 = load i64, i64* %tv_sec17, align 8
  %st_mtime = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 14
  store i64 %12, i64* %st_mtime, align 8
  %tv_sec18 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 14, i32 0
  %13 = load i64, i64* %tv_sec18, align 8
  %st_ctime = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 16
  store i64 %13, i64* %st_ctime, align 8
  %tv_nsec = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 12, i32 1
  %14 = load i64, i64* %tv_nsec, align 8
  %st_atime_nsec = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 13
  store i64 %14, i64* %st_atime_nsec, align 8
  %tv_nsec21 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 13, i32 1
  %15 = load i64, i64* %tv_nsec21, align 8
  %st_mtime_nsec = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 15
  store i64 %15, i64* %st_mtime_nsec, align 8
  %tv_nsec23 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 14, i32 1
  %16 = load i64, i64* %tv_nsec23, align 8
  %st_ctime_nsec = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 17
  store i64 %16, i64* %st_ctime_nsec, align 8
  %blocks = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 16
  %17 = load i64, i64* %blocks, align 8
  %st_blocks = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 11
  store i64 %17, i64* %st_blocks, align 8
  %blksize = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 3
  %18 = load i32, i32* %blksize, align 4
  %st_blksize = getelementptr inbounds %struct.stat, %struct.stat* %tmp, i64 0, i32 9
  store i32 %18, i32* %st_blksize, align 8
  %19 = bitcast %struct.stat* %statbuf to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %19, i8* noundef nonnull %0, i64 noundef 128) #11
  %tobool.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #12
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kuid_munged(i64 %kuid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #10
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowuid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kgid_munged(i64 %kgid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #10
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowgid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #9 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #5 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #10
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #10
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #11
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #5 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #12, !srcloc !9
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #12, !srcloc !10
  call void asm sideeffect "hint #20", "~{memory}"() #12, !srcloc !11
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_newlstat(i8* noundef %filename, %struct.stat* noundef %statbuf) unnamed_addr #5 {
entry:
  %stat = alloca %struct.kstat, align 8
  %0 = bitcast %struct.kstat* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false), !annotation !8
  %call = call fastcc i32 @vfs_lstat(i8* noundef %filename, %struct.kstat* noundef nonnull %stat) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @cp_new_stat(%struct.kstat* noundef nonnull %stat, %struct.stat* noundef %statbuf) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0.in = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_lstat(i8* noundef %name, %struct.kstat* noundef %stat) unnamed_addr #5 {
entry:
  %call = call i32 @vfs_fstatat(i32 noundef -100, i8* noundef %name, %struct.kstat* noundef %stat, i32 noundef 256) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_newfstatat(i32 noundef %dfd, i8* noundef %filename, %struct.stat* noundef %statbuf, i32 noundef %flag) unnamed_addr #5 {
entry:
  %stat = alloca %struct.kstat, align 8
  %0 = bitcast %struct.kstat* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false), !annotation !8
  %call = call i32 @vfs_fstatat(i32 noundef %dfd, i8* noundef %filename, %struct.kstat* noundef nonnull %stat, i32 noundef %flag) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @cp_new_stat(%struct.kstat* noundef nonnull %stat, %struct.stat* noundef %statbuf) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0.in = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_newfstat(i32 noundef %fd, %struct.stat* noundef %statbuf) unnamed_addr #5 {
entry:
  %stat = alloca %struct.kstat, align 8
  %0 = bitcast %struct.kstat* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false), !annotation !8
  %call = call i32 @vfs_fstat(i32 noundef %fd, %struct.kstat* noundef nonnull %stat) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @cp_new_stat(%struct.kstat* noundef nonnull %stat, %struct.stat* noundef %statbuf) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %error.0 = phi i32 [ %call, %entry ], [ %call1, %if.then ]
  %conv = sext i32 %error.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #12
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_readlinkat(i32 noundef %dfd, i8* noundef %pathname, i8* noundef %buf, i32 noundef %bufsiz) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @do_readlinkat(i32 noundef %dfd, i8* noundef %pathname, i8* noundef %buf, i32 noundef %bufsiz) #10
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_readlinkat(i32 noundef %dfd, i8* noundef %pathname, i8* noundef %buf, i32 noundef %bufsiz) unnamed_addr #5 {
entry:
  %path = alloca %struct.path, align 8
  %empty = alloca i32, align 4
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %1 = bitcast i32* %empty to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12
  store i32 0, i32* %empty, align 4
  %cmp = icmp slt i32 %bufsiz, 1
  br i1 %cmp, label %cleanup20, label %retry.preheader

retry.preheader:                                  ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  br label %retry

retry:                                            ; preds = %retry.preheader, %if.end15
  %lookup_flags.0 = phi i32 [ 16416, %if.end15 ], [ 16384, %retry.preheader ]
  %call = call i32 @user_path_at_empty(i32 noundef %dfd, i8* noundef %pathname, i32 noundef %lookup_flags.0, %struct.path* noundef nonnull %path, i32* noundef nonnull %empty) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %cleanup20

if.then1:                                         ; preds = %retry
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call5 = call fastcc i1 @d_is_symlink(%struct.dentry* noundef %2) #10
  br i1 %call5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then1
  %3 = load i32, i32* %empty, align 4
  %call2 = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %2) #10
  %tobool3.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool3.not, i32 -22, i32 -2
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 5
  %4 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %readlink = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %4, i64 0, i32 4
  %5 = load i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.dentry*, i8*, i32)** %readlink, align 32
  %tobool6.not = icmp eq i32 (%struct.dentry*, i8*, i32)* %5, null
  br i1 %tobool6.not, label %if.end15, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.then1
  call void @touch_atime(%struct.path* noundef nonnull %path) #11
  %6 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call13 = call i32 @vfs_readlink(%struct.dentry* noundef %6, i8* noundef %buf, i32 noundef %bufsiz) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %lor.lhs.false
  %error.0 = phi i32 [ %call13, %if.then7 ], [ %cond, %lor.lhs.false ]
  call void @path_put(%struct.path* noundef nonnull %path) #11
  %conv = sext i32 %error.0 to i64
  %call16 = call fastcc i1 @retry_estale(i64 noundef %conv, i32 noundef %lookup_flags.0) #10
  br i1 %call16, label %retry, label %cleanup20

cleanup20:                                        ; preds = %if.end15, %retry, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %error.0, %if.end15 ], [ %call, %retry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_symlink(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #10
  %cmp = icmp eq i32 %call, 6291456
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(%struct.path* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_readlink(%struct.dentry* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__d_entry_type(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 7340032
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_readlink(i8* noundef %path, i8* noundef %buf, i32 noundef %bufsiz) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @do_readlinkat(i32 noundef -100, i8* noundef %path, i8* noundef %buf, i32 noundef %bufsiz) #10
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_statx(i32 noundef %dfd, i8* noundef %filename, i32 noundef %flags, i32 noundef %mask, %struct.statx* noundef %buffer) unnamed_addr #5 {
entry:
  %call = call i32 @do_statx(i32 noundef %dfd, i8* noundef %filename, i32 noundef %flags, i32 noundef %mask, %struct.statx* noundef %buffer) #10
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #5 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #5 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !14
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #5 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !16
  ret void
}

attributes #0 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2152343526}
!8 = !{!"auto-init"}
!9 = !{i64 4602235, i64 4602318, i64 4602542, i64 4602762, i64 4602785}
!10 = !{i64 4606937, i64 4606961}
!11 = !{i64 2152121776}
!12 = !{i64 2149557195}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148067472, i64 2148067505, i64 2148067558, i64 2148067617, i64 2148067651, i64 2148067706, i64 2148067735, i64 2148067755}
!15 = !{i64 2149564476}
!16 = !{i64 2149356706}
