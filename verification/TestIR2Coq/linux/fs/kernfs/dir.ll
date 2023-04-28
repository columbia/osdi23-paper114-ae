; ModuleID = 'fs/kernfs/dir.c'
source_filename = "fs/kernfs/dir.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.kmem_cache = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7, [48 x i8] }
%struct.anon.7 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.8, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.22 }
%union.anon.22 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.57, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.42, %union.anon.43, i32 }
%struct.request_queue = type opaque
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.56, i32, [12 x i8] }
%union.anon.56 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.20, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.36 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.58, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.58 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.18, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.19, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.18 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.19 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.64 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.62, %struct.qspinlock }
%union.anon.62 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.64 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.11 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.11 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.10, i64, i32 }
%union.anon.10 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.12, i32 }
%union.anon.12 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
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
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.kstatfs = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.1, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.1 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.simple_xattr = type { %struct.list_head, i8*, i64, [0 x i8] }
%struct.kernfs_super_info = type { %struct.super_block*, %struct.kernfs_root*, i8*, %struct.list_head }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@kernfs_rwsem = dso_local global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @kernfs_rwsem to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @kernfs_rwsem to i8*), i64 24) to %struct.list_head*) } }, align 8
@kernfs_rename_lock = internal global %struct.spinlock zeroinitializer, align 4
@kernfs_pr_cont_buf = internal global [4096 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"\01c%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\01c(error)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\01c(name too long)\00", align 1
@kernfs_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"kernfs_put: %s/%s: released with incorrect active_ref %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kernfs_iattrs_cache = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@kernfs_idr_lock = internal global %struct.spinlock zeroinitializer, align 4
@kernfs_node_cache = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@kernfs_sops = external dso_local constant %struct.super_operations, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"\014kernfs: ns %s in '%s' for '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@kernfs_create_root.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"&root->deactivate_waitq\00", align 1
@kernfs_dops = dso_local local_unnamed_addr constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* @kernfs_dop_revalidate, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* null, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* null, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@kernfs_dir_iops = dso_local local_unnamed_addr constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @kernfs_iop_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @kernfs_iop_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* @kernfs_iop_mkdir, i32 (%struct.inode*, %struct.dentry*)* @kernfs_iop_rmdir, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @kernfs_iop_rename, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @kernfs_iop_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @kernfs_iop_getattr, i64 (%struct.dentry*, i8*, i64)* @kernfs_iop_listxattr, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@.str.9 = private unnamed_addr constant [45 x i8] c"\014kernfs: can not remove '%s', no directory\0A\00", align 1
@kernfs_dir_fops = dso_local local_unnamed_addr constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @kernfs_fop_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @kernfs_dir_fop_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_name(%struct.kernfs_node* noundef %kn, i8* noundef %buf, i64 noundef %buflen) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_rename_lock, i64 0, i32 0, i32 0)) #16
  %call5 = call fastcc i32 @kernfs_name_locked(%struct.kernfs_node* noundef %kn, i8* noundef %buf, i64 noundef %buflen) #16
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #17
  ret i32 %call5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_name_locked(%struct.kernfs_node* noundef readonly %kn, i8* noundef %buf, i64 noundef %buflen) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %kn, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool1.not = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool1.not, label %return, label %cond.true

cond.true:                                        ; preds = %if.end
  %name = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 3
  %1 = load i8*, i8** %name, align 8
  br label %return

return:                                           ; preds = %cond.true, %if.end, %entry
  %cond.sink = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %entry ], [ %1, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %if.end ]
  %call2 = call i64 @strlcpy(i8* noundef %buf, i8* noundef %cond.sink, i64 noundef %buflen) #17
  %retval.0 = trunc i64 %call2 to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_path_from_node(%struct.kernfs_node* noundef %to, %struct.kernfs_node* noundef %from, i8* noundef %buf, i64 noundef %buflen) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_rename_lock, i64 0, i32 0, i32 0)) #16
  %call5 = call fastcc i32 @kernfs_path_from_node_locked(%struct.kernfs_node* noundef %to, %struct.kernfs_node* noundef %from, i8* noundef %buf, i64 noundef %buflen) #16
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #17
  ret i32 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_path_from_node_locked(%struct.kernfs_node* noundef %kn_to, %struct.kernfs_node* noundef %kn_from, i8* noundef %buf, i64 noundef %buflen) unnamed_addr #0 {
entry:
  %parent_str = alloca i32, align 4
  %0 = bitcast i32* %parent_str to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 3026479, i32* %parent_str, align 4
  %tobool.not = icmp eq %struct.kernfs_node* %kn_to, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @strlcpy(i8* noundef %buf, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 noundef %buflen) #17
  %conv = trunc i64 %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.kernfs_node* %kn_from, null
  br i1 %tobool1.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef nonnull %kn_to) #16
  %kn4 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call3, i64 0, i32 0
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %kn4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %kn_from.addr.0 = phi %struct.kernfs_node* [ %kn_from, %if.end ], [ %1, %if.then2 ]
  %cmp = icmp eq %struct.kernfs_node* %kn_from.addr.0, %kn_to
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  %call8 = call i64 @strlcpy(i8* noundef %buf, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 noundef %buflen) #17
  %conv9 = trunc i64 %call8 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %tobool11.not = icmp eq i8* %buf, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end10
  %call14 = call fastcc %struct.kernfs_node* @kernfs_common_ancestor(%struct.kernfs_node* noundef %kn_from.addr.0, %struct.kernfs_node* noundef nonnull %kn_to) #16
  %tobool15.not = icmp eq %struct.kernfs_node* %call14, null
  br i1 %tobool15.not, label %if.then25, label %if.end36, !prof !9

if.then25:                                        ; preds = %if.end13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 144; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !10
  br label %cleanup

if.end36:                                         ; preds = %if.end13
  %call37 = call fastcc i64 @kernfs_depth(%struct.kernfs_node* noundef nonnull %call14, %struct.kernfs_node* noundef nonnull %kn_to) #16
  %call38 = call fastcc i64 @kernfs_depth(%struct.kernfs_node* noundef nonnull %call14, %struct.kernfs_node* noundef %kn_from.addr.0) #16
  store i8 0, i8* %buf, align 1
  %cmp40138.not = icmp eq i64 %call38, 0
  br i1 %cmp40138.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end36, %for.body
  %i.0140 = phi i32 [ %inc, %for.body ], [ 0, %if.end36 ]
  %len.0139 = phi i64 [ %add, %for.body ], [ 0, %if.end36 ]
  %add.ptr = getelementptr i8, i8* %buf, i64 %len.0139
  %2 = call i64 @llvm.usub.sat.i64(i64 %buflen, i64 %len.0139)
  %call44 = call i64 @strlcpy(i8* noundef %add.ptr, i8* noundef nonnull %0, i64 noundef %2) #17
  %add = add i64 %call44, %len.0139
  %inc = add i32 %i.0140, 1
  %conv39 = sext i32 %inc to i64
  %cmp40 = icmp ugt i64 %call38, %conv39
  br i1 %cmp40, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end36
  %len.0.lcssa = phi i64 [ 0, %if.end36 ], [ %add, %for.body ]
  %3 = trunc i64 %call37 to i32
  %i.1145 = add i32 %3, -1
  %cmp48146 = icmp sgt i32 %i.1145, -1
  br i1 %cmp48146, label %for.cond51.preheader, label %for.end79

for.cond51.preheader:                             ; preds = %for.end, %for.end57
  %i.1148 = phi i32 [ %i.1, %for.end57 ], [ %i.1145, %for.end ]
  %len.1147 = phi i64 [ %add77, %for.end57 ], [ %len.0.lcssa, %for.end ]
  %cmp52141.not = icmp eq i32 %i.1148, 0
  br i1 %cmp52141.not, label %for.end57, label %for.body54

for.body54:                                       ; preds = %for.cond51.preheader, %for.body54
  %j.0143 = phi i32 [ %inc56, %for.body54 ], [ 0, %for.cond51.preheader ]
  %kn.0142 = phi %struct.kernfs_node* [ %4, %for.body54 ], [ %kn_to, %for.cond51.preheader ]
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.0142, i64 0, i32 2
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %inc56 = add nuw nsw i32 %j.0143, 1
  %exitcond.not = icmp eq i32 %inc56, %i.1148
  br i1 %exitcond.not, label %for.end57, label %for.body54

for.end57:                                        ; preds = %for.body54, %for.cond51.preheader
  %kn.0.lcssa = phi %struct.kernfs_node* [ %kn_to, %for.cond51.preheader ], [ %4, %for.body54 ]
  %add.ptr58 = getelementptr i8, i8* %buf, i64 %len.1147
  %5 = call i64 @llvm.usub.sat.i64(i64 %buflen, i64 %len.1147)
  %call66 = call i64 @strlcpy(i8* noundef %add.ptr58, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 noundef %5) #17
  %add67 = add i64 %call66, %len.1147
  %add.ptr68 = getelementptr i8, i8* %buf, i64 %add67
  %name = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.0.lcssa, i64 0, i32 3
  %6 = load i8*, i8** %name, align 8
  %7 = call i64 @llvm.usub.sat.i64(i64 %buflen, i64 %add67)
  %call76 = call i64 @strlcpy(i8* noundef %add.ptr68, i8* noundef %6, i64 noundef %7) #17
  %add77 = add i64 %call76, %add67
  %i.1 = add i32 %i.1148, -1
  %cmp48 = icmp sgt i32 %i.1, -1
  br i1 %cmp48, label %for.cond51.preheader, label %for.end79

for.end79:                                        ; preds = %for.end57, %for.end
  %len.1.lcssa = phi i64 [ %len.0.lcssa, %for.end ], [ %add77, %for.end57 ]
  %conv80 = trunc i64 %len.1.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end10, %for.end79, %if.then7, %if.then
  %retval.0 = phi i32 [ %conv9, %if.then7 ], [ %conv80, %for.end79 ], [ %conv, %if.then ], [ -22, %if.end10 ], [ -22, %if.then25 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pr_cont_kernfs_name(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_rename_lock, i64 0, i32 0, i32 0)) #16
  %call5 = call fastcc i32 @kernfs_name_locked(%struct.kernfs_node* noundef %kn, i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @kernfs_pr_cont_buf, i64 0, i64 0), i64 noundef 4096) #16
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @kernfs_pr_cont_buf, i64 0, i64 0)) #19
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pr_cont_kernfs_path(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_rename_lock, i64 0, i32 0, i32 0)) #16
  %call5 = call fastcc i32 @kernfs_path_from_node_locked(%struct.kernfs_node* noundef %kn, %struct.kernfs_node* noundef null, i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @kernfs_pr_cont_buf, i64 0, i64 0), i64 noundef 4096) #16
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end

do.end10:                                         ; preds = %entry
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #19
  br label %out

if.end:                                           ; preds = %entry
  %cmp14 = icmp ugt i32 %call5, 4095
  br i1 %cmp14, label %do.end19, label %do.end25

do.end19:                                         ; preds = %if.end
  %call21 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #19
  br label %out

do.end25:                                         ; preds = %if.end
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @kernfs_pr_cont_buf, i64 0, i64 0)) #19
  br label %out

out:                                              ; preds = %do.end25, %do.end19, %do.end10
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_get_parent(%struct.kernfs_node* nocapture noundef readonly %kn) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_rename_lock, i64 0, i32 0, i32 0)) #16
  %parent5 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent5, align 8
  call void @kernfs_get(%struct.kernfs_node* noundef %0) #16
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #17
  ret %struct.kernfs_node* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_get(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %kn, null
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 0
  %counter.i = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.then10, label %if.end, !prof !9

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 496; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  call fastcc void @__ll_sc_atomic_add(i32 noundef 1, %struct.atomic_t* noundef %count) #17
  br label %if.end19

if.end19:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %kn, null
  br i1 %tobool.not, label %return, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 1
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %active, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %1 = bitcast %struct.atomic_t* %active to i8*
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %if.end
  %c.0.i.i = phi i32 [ %0, %if.end ], [ %call11.i.i.i.i, %do.cond.i.i ]
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %return, label %do.cond.i.i, !prof !9

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i, i32 noundef %add.i.i) #17
  %cmp.not.i.i.i = icmp eq i32 %c.0.i.i, %call11.i.i.i.i
  br i1 %cmp.not.i.i.i, label %return, label %do.body.i.i, !prof !12

return:                                           ; preds = %do.cond.i.i, %do.body.i.i, %entry
  %retval.0 = phi %struct.kernfs_node* [ null, %entry ], [ %kn, %do.cond.i.i ], [ null, %do.body.i.i ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_put_active(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %kn, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 1
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %active) #17
  %cmp.not = icmp eq i32 %call.i.i.i, -2147483647
  br i1 %cmp.not, label %if.end16, label %cleanup, !prof !9

if.end16:                                         ; preds = %if.end
  %call17 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef nonnull %kn) #16
  %deactivate_waitq = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call17, i64 0, i32 7
  call void @__wake_up(%struct.wait_queue_head* noundef %deactivate_waitq, i32 noundef 3, i32 noundef 0, i8* noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #4 {
entry:
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool.not = icmp eq %struct.kernfs_node* %0, null
  %spec.select = select i1 %tobool.not, %struct.kernfs_node* %kn, %struct.kernfs_node* %0
  %root = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %spec.select, i64 0, i32 7, i32 0, i32 2
  %1 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  ret %struct.kernfs_root* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_put(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %kn, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %count) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef nonnull %kn) #16
  %ino_idr = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call1, i64 0, i32 2
  br label %repeat

repeat:                                           ; preds = %if.then64, %if.end
  %kn.addr.0 = phi %struct.kernfs_node* [ %kn, %if.end ], [ %0, %if.then64 ]
  %parent2 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.addr.0, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent2, align 8
  %counter.i = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.addr.0, i64 0, i32 1, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp ne i32 %1, -2147483647
  %.b98 = load i1, i1* @kernfs_put.__already_done, align 1
  %lnot7 = xor i1 %.b98, true
  %2 = select i1 %cmp, i1 %lnot7, i1 false
  br i1 %2, label %if.then11, label %if.end39, !prof !9

if.then11:                                        ; preds = %repeat
  store i1 true, i1* @kernfs_put.__already_done, align 1
  %tobool22.not = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool22.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then11
  %name = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 3
  %3 = load i8*, i8** %name, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then11, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %if.then11 ]
  %name23 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.addr.0, i64 0, i32 3
  %4 = load i8*, i8** %name23, align 8
  %5 = load volatile i32, i32* %counter.i, align 4
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* noundef %cond, i8* noundef %4, i32 noundef %5) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 525; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !13
  br label %if.end39

if.end39:                                         ; preds = %cond.end, %repeat
  %call48 = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef nonnull %kn.addr.0) #16
  %cmp49 = icmp eq i32 %call48, 4
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end39
  %6 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.addr.0, i64 0, i32 7
  %target_kn = bitcast %union.anon.1* %6 to %struct.kernfs_node**
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %target_kn, align 8
  call void @kernfs_put(%struct.kernfs_node* noundef %7) #16
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end39
  %name53 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.addr.0, i64 0, i32 3
  %8 = load i8*, i8** %name53, align 8
  call void @kfree_const(i8* noundef %8) #17
  %iattr = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.addr.0, i64 0, i32 12
  %9 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %tobool54.not = icmp eq %struct.kernfs_iattrs* %9, null
  br i1 %tobool54.not, label %if.end58, label %if.then55

if.then55:                                        ; preds = %if.end52
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %9, i64 0, i32 5
  call fastcc void @simple_xattrs_free(%struct.simple_xattrs* noundef %xattrs) #16
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** @kernfs_iattrs_cache, align 8
  %11 = bitcast %struct.kernfs_iattrs** %iattr to i8**
  %12 = load i8*, i8** %11, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %10, i8* noundef %12) #17
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_idr_lock, i64 0, i32 0, i32 0)) #17
  %call59 = call fastcc i64 @kernfs_ino(%struct.kernfs_node* noundef nonnull %kn.addr.0) #16
  %conv61 = and i64 %call59, 4294967295
  %call62 = call i8* @idr_remove(%struct.idr* noundef %ino_idr, i64 noundef %conv61) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_idr_lock, i64 0, i32 0, i32 0)) #17
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** @kernfs_node_cache, align 8
  %14 = bitcast %struct.kernfs_node* %kn.addr.0 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %13, i8* noundef nonnull %14) #17
  %tobool63.not = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end58
  %count65 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 0
  %call.i.i.i.i100 = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %count65) #17
  %cmp.i.i101 = icmp eq i32 %call.i.i.i.i100, 0
  br i1 %cmp.i.i101, label %repeat, label %cleanup

if.else:                                          ; preds = %if.end58
  call void @idr_destroy(%struct.idr* noundef %ino_idr) #17
  %15 = bitcast %struct.kernfs_root* %call1 to i8*
  call void @kfree(i8* noundef %15) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.else, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kernfs_type(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 15
  %and = zext i16 %1 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(i8* noundef) local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_remove(%struct.idr* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @kernfs_ino(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #4 {
entry:
  %id = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 9
  %0 = load i64, i64* %id, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(%struct.idr* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.kernfs_node* @kernfs_node_from_dentry(%struct.dentry* nocapture noundef readonly %dentry) local_unnamed_addr #4 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %1 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %cmp = icmp eq %struct.super_operations* %1, @kernfs_sops
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %dentry) #16
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.kernfs_node* [ %call, %if.then ], [ null, %entry ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @d_really_is_negative(%struct.dentry* noundef %dentry) #16
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #16
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.kernfs_node* [ %1, %if.end ], [ null, %entry ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* noundef %parent, i8* noundef %name, i16 noundef %mode, i64 %uid.coerce, i64 %gid.coerce, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %parent) #16
  %coerce.val.ii4 = and i64 %uid.coerce, 4294967295
  %coerce.val.ii6 = and i64 %gid.coerce, 4294967295
  %call7 = call fastcc %struct.kernfs_node* @__kernfs_new_node(%struct.kernfs_root* noundef %call, %struct.kernfs_node* noundef %parent, i8* noundef %name, i16 noundef %mode, i64 %coerce.val.ii4, i64 %coerce.val.ii6, i32 noundef %flags) #16
  %tobool.not = icmp eq %struct.kernfs_node* %call7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @kernfs_get(%struct.kernfs_node* noundef %parent) #16
  %parent8 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call7, i64 0, i32 2
  store %struct.kernfs_node* %parent, %struct.kernfs_node** %parent8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.kernfs_node* %call7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @__kernfs_new_node(%struct.kernfs_root* noundef %root, %struct.kernfs_node* noundef readnone %parent, i8* noundef %name, i16 noundef %mode, i64 %uid.coerce, i64 %gid.coerce, i32 noundef %flags) unnamed_addr #0 {
entry:
  %iattr = alloca %struct.iattr, align 8
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  %coerce.val.ii2 = trunc i64 %gid.coerce to i32
  %call = call i8* @kstrdup_const(i8* noundef %name, i32 noundef 3264) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup54, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @kernfs_node_cache, align 8
  %call3 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #16
  %1 = bitcast i8* %call3 to %struct.kernfs_node*
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %err_out1, label %if.end6

if.end6:                                          ; preds = %if.end
  call void @idr_preload(i32 noundef 3264) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_idr_lock, i64 0, i32 0, i32 0)) #17
  %ino_idr = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %root, i64 0, i32 2
  %call7 = call i32 @idr_alloc_cyclic(%struct.idr* noundef %ino_idr, i8* noundef nonnull %call3, i32 noundef 1, i32 noundef 0, i32 noundef 2592) #17
  %cmp = icmp sgt i32 %call7, -1
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %last_id_lowbits = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %root, i64 0, i32 3
  %2 = load i32, i32* %last_id_lowbits, align 8
  %cmp8 = icmp ult i32 %call7, %2
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  %id_highbits10 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %root, i64 0, i32 4
  %3 = load i32, i32* %id_highbits10, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %id_highbits10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true, %if.end6
  %id_highbits12 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %root, i64 0, i32 4
  %4 = load i32, i32* %id_highbits12, align 4
  %last_id_lowbits13 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %root, i64 0, i32 3
  store i32 %call7, i32* %last_id_lowbits13, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_idr_lock, i64 0, i32 0, i32 0)) #17
  call fastcc void @idr_preload_end() #16
  %cmp14 = icmp slt i32 %call7, 0
  br i1 %cmp14, label %err_out2, label %if.end16

if.end16:                                         ; preds = %if.end11
  %conv = zext i32 %4 to i64
  %shl = shl nuw i64 %conv, 32
  %conv1790 = zext i32 %call7 to i64
  %or = or i64 %shl, %conv1790
  %id = getelementptr inbounds i8, i8* %call3, i64 104
  %5 = bitcast i8* %id to i64*
  store i64 %or, i64* %5, align 8
  %counter.i = bitcast i8* %call3 to i32*
  store volatile i32 1, i32* %counter.i, align 4
  %active = getelementptr inbounds i8, i8* %call3, i64 4
  %counter.i89 = bitcast i8* %active to i32*
  store volatile i32 -2147483647, i32* %counter.i89, align 4
  %rb = getelementptr inbounds i8, i8* %call3, i64 24
  %6 = ptrtoint i8* %rb to i64
  %__rb_parent_color = bitcast i8* %rb to i64*
  store i64 %6, i64* %__rb_parent_color, align 8
  %name19 = getelementptr inbounds i8, i8* %call3, i64 16
  %7 = bitcast i8* %name19 to i8**
  store i8* %call, i8** %7, align 8
  %mode20 = getelementptr inbounds i8, i8* %call3, i64 114
  %8 = bitcast i8* %mode20 to i16*
  store i16 %mode, i16* %8, align 2
  %conv21 = trunc i32 %flags to i16
  %flags22 = getelementptr inbounds i8, i8* %call3, i64 112
  %9 = bitcast i8* %flags22 to i16*
  store i16 %conv21, i16* %9, align 8
  %coerce.val.ii24 = and i64 %uid.coerce, 4294967295
  %call27 = call fastcc i1 @uid_eq(i64 %coerce.val.ii24) #16
  br i1 %call27, label %lor.lhs.false, label %if.then35

lor.lhs.false:                                    ; preds = %if.end16
  %coerce.val.ii31 = and i64 %gid.coerce, 4294967295
  %call34 = call fastcc i1 @gid_eq(i64 %coerce.val.ii31) #16
  br i1 %call34, label %cleanup54, label %if.then35

if.then35:                                        ; preds = %lor.lhs.false, %if.end16
  %10 = bitcast %struct.iattr* %iattr to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %10) #18
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 0
  %11 = bitcast %struct.iattr* %iattr to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %11, i8 0, i64 80, i1 false)
  store i32 6, i32* %ia_valid, align 8
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 2, i32 0
  store i32 %coerce.val.ii, i32* %uid.sroa.0.0..sroa_idx, align 8
  %gid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %iattr, i64 0, i32 3, i32 0
  store i32 %coerce.val.ii2, i32* %gid.sroa.0.0..sroa_idx, align 4
  %call36 = call i32 @__kernfs_setattr(%struct.kernfs_node* noundef nonnull %1, %struct.iattr* noundef nonnull %iattr) #17
  %cmp37 = icmp slt i32 %call36, 0
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %10) #18
  br i1 %cmp37, label %err_out3, label %cleanup54

err_out3:                                         ; preds = %if.then35
  %call50 = call fastcc i64 @kernfs_ino(%struct.kernfs_node* noundef nonnull %1) #16
  %conv52 = and i64 %call50, 4294967295
  %call53 = call i8* @idr_remove(%struct.idr* noundef %ino_idr, i64 noundef %conv52) #17
  br label %err_out2

err_out2:                                         ; preds = %if.end11, %err_out3
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** @kernfs_node_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %12, i8* noundef nonnull %call3) #17
  br label %err_out1

err_out1:                                         ; preds = %if.end, %err_out2
  call void @kfree_const(i8* noundef nonnull %call) #17
  br label %cleanup54

cleanup54:                                        ; preds = %lor.lhs.false, %if.then35, %entry, %err_out1
  %retval.0 = phi %struct.kernfs_node* [ null, %err_out1 ], [ null, %entry ], [ %1, %if.then35 ], [ %1, %lor.lhs.false ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_find_and_get_node_by_id(%struct.kernfs_root* noundef %root, i64 noundef %id) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_idr_lock, i64 0, i32 0, i32 0)) #17
  %ino_idr = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %root, i64 0, i32 2
  %conv2 = and i64 %id, 4294967295
  %call3 = call i8* @idr_find(%struct.idr* noundef %ino_idr, i64 noundef %conv2) #17
  %0 = bitcast i8* %call3 to %struct.kernfs_node*
  %tobool.not = icmp eq i8* %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call fastcc i64 @kernfs_ino(%struct.kernfs_node* noundef nonnull %0) #16
  %cmp.not = icmp eq i64 %call4, %id
  br i1 %cmp.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds i8, i8* %call3, i64 112
  %1 = bitcast i8* %flags to i16*
  %2 = load i16, i16* %1, align 8
  %3 = and i16 %2, 16
  %tobool9.not = icmp eq i16 %3, 0
  br i1 %tobool9.not, label %cleanup, label %lor.rhs, !prof !9

lor.rhs:                                          ; preds = %if.end7
  %counter.i.i.i.i = bitcast i8* %call3 to i32*
  %4 = load volatile i32, i32* %counter.i.i.i.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %lor.rhs
  %c.0.i.i.i.i = phi i32 [ %4, %lor.rhs ], [ %call11.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %cleanup, label %do.cond.i.i.i.i, !prof !9

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef nonnull %call3, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #17
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %cleanup, label %do.body.i.i.i.i, !prof !12

cleanup:                                          ; preds = %do.body.i.i.i.i, %do.cond.i.i.i.i, %entry, %if.end, %if.end7
  %retval.0 = phi %struct.kernfs_node* [ null, %if.end7 ], [ null, %if.end ], [ null, %entry ], [ %0, %do.cond.i.i.i.i ], [ null, %do.body.i.i.i.i ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_idr_lock, i64 0, i32 0, i32 0)) #17
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_find(%struct.idr* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_add_one(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %parent1 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent1, align 8
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call = call fastcc i1 @kernfs_ns_enabled(%struct.kernfs_node* noundef %0) #16
  %ns = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 5
  %1 = load i8*, i8** %ns, align 8
  %tobool2 = icmp eq i8* %1, null
  %cmp.not = xor i1 %call, %tobool2
  br i1 %cmp.not, label %if.end31, label %do.end, !prof !12

do.end:                                           ; preds = %entry
  %cond = select i1 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %name = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 3
  %2 = load i8*, i8** %name, align 8
  %name16 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 3
  %3 = load i8*, i8** %name16, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* noundef %cond, i8* noundef %2, i8* noundef %3) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 730; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !14
  br label %out_unlock

if.end31:                                         ; preds = %entry
  %call32 = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %0) #16
  %cmp33.not = icmp eq i32 %call32, 1
  br i1 %cmp33.not, label %if.end36, label %out_unlock

if.end36:                                         ; preds = %if.end31
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 10
  %4 = load i16, i16* %flags, align 8
  %conv37 = zext i16 %4 to i32
  %and = and i32 %conv37, 4096
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end40, label %out_unlock

if.end40:                                         ; preds = %if.end36
  %and43 = and i32 %conv37, 16
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end40
  %call45 = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef %0) #16
  br i1 %call45, label %land.lhs.true.if.end47_crit_edge, label %out_unlock

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load i8*, i8** %ns, align 8
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end40
  %5 = phi i8* [ %.pre, %land.lhs.true.if.end47_crit_edge ], [ %1, %if.end40 ]
  %name48 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 3
  %6 = load i8*, i8** %name48, align 8
  %call50 = call fastcc i32 @kernfs_name_hash(i8* noundef %6, i8* noundef %5) #16
  %hash = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 6
  store i32 %call50, i32* %hash, align 8
  %call51 = call fastcc i32 @kernfs_link_sibling(%struct.kernfs_node* noundef %kn) #16
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %out_unlock

if.end54:                                         ; preds = %if.end47
  %iattr = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 12
  %7 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %tobool55.not = icmp eq %struct.kernfs_iattrs* %7, null
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.end54
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %7, i64 0, i32 4
  call void @ktime_get_real_ts64(%struct.timespec64* noundef %ia_ctime) #17
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %7, i64 0, i32 3
  %8 = bitcast %struct.timespec64* %ia_mtime to i8*
  %9 = bitcast %struct.timespec64* %ia_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call59 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %kn) #16
  %flags60 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call59, i64 0, i32 1
  %10 = load i32, i32* %flags60, align 8
  %and61 = and i32 %10, 1
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then63, label %cleanup

if.then63:                                        ; preds = %if.end58
  call void @kernfs_activate(%struct.kernfs_node* noundef %kn) #16
  br label %cleanup

out_unlock:                                       ; preds = %do.end, %if.end47, %land.lhs.true, %if.end36, %if.end31
  %ret.0 = phi i32 [ -22, %do.end ], [ -22, %if.end31 ], [ -2, %if.end36 ], [ %call51, %if.end47 ], [ -2, %land.lhs.true ]
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then63, %out_unlock
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ 0, %if.then63 ], [ 0, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @kernfs_ns_enabled(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 32
  %tobool = icmp ne i16 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @kernfs_active(%struct.kernfs_node* noundef %kn) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 1, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_name_hash(i8* noundef %name, i8* noundef %ns) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ns to i64
  %call = call i64 @strlen(i8* noundef %name) #17
  %conv = trunc i64 %call to i32
  %tobool.not20 = icmp eq i32 %conv, 0
  br i1 %tobool.not20, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %len.023 = phi i32 [ %dec, %while.body ], [ %conv, %entry ]
  %hash.022 = phi i64 [ %call2, %while.body ], [ %0, %entry ]
  %name.addr.021 = phi i8* [ %incdec.ptr, %while.body ], [ %name, %entry ]
  %dec = add i32 %len.023, -1
  %incdec.ptr = getelementptr i8, i8* %name.addr.021, i64 1
  %1 = load i8, i8* %name.addr.021, align 1
  %conv1 = zext i8 %1 to i64
  %call2 = call fastcc i64 @partial_name_hash(i64 noundef %conv1, i64 noundef %hash.022) #16
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %hash.0.lcssa = phi i64 [ %0, %entry ], [ %call2, %while.body ]
  %call3 = call fastcc i32 @end_name_hash(i64 noundef %hash.0.lcssa) #16
  %2 = and i32 %call3, 2147483647
  %and = zext i32 %2 to i64
  %cmp = icmp ult i32 %2, 2
  %add = add nuw nsw i64 %and, 2
  %spec.select = select i1 %cmp, i64 %add, i64 %and
  %3 = icmp ult i64 %spec.select, 2147483646
  %spec.store.select = select i1 %3, i64 %spec.select, i64 2147483646
  %conv10 = trunc i64 %spec.store.select to i32
  ret i32 %conv10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_link_sibling(%struct.kernfs_node* noundef %kn) unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %rb_node = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 7, i32 0, i32 1, i32 0
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not44 = icmp eq %struct.rb_node* %1, null
  br i1 %tobool.not44, label %while.end, label %while.body

while.cond:                                       ; preds = %while.body
  %2 = load %struct.rb_node*, %struct.rb_node** %node.2, align 8
  %tobool.not = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond
  %3 = phi %struct.rb_node* [ %2, %while.cond ], [ %1, %entry ]
  %node.045 = phi %struct.rb_node** [ %node.2, %while.cond ], [ %rb_node, %entry ]
  %add.ptr40 = getelementptr %struct.rb_node, %struct.rb_node* %3, i64 -1
  %4 = bitcast %struct.rb_node* %add.ptr40 to %struct.kernfs_node*
  %call = call fastcc i32 @kernfs_sd_compare(%struct.kernfs_node* noundef %kn, %struct.kernfs_node* noundef %4) #16
  %cmp = icmp slt i32 %call, 0
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 2
  %cmp2.not = icmp eq i32 %call, 0
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 1
  %spec.select = select i1 %cmp2.not, %struct.rb_node** %node.045, %struct.rb_node** %rb_right
  %not.cmp2.not = xor i1 %cmp2.not, true
  %node.2 = select i1 %cmp, %struct.rb_node** %rb_left, %struct.rb_node** %spec.select
  %cond = or i1 %cmp, %not.cmp2.not
  br i1 %cond, label %while.cond, label %cleanup20

while.end:                                        ; preds = %while.cond, %entry
  %parent1.0.lcssa = phi %struct.rb_node* [ null, %entry ], [ %3, %while.cond ]
  %node.0.lcssa = phi %struct.rb_node** [ %rb_node, %entry ], [ %node.2, %while.cond ]
  %rb8 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 4
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb8, %struct.rb_node* noundef %parent1.0.lcssa, %struct.rb_node** noundef %node.0.lcssa) #16
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %children12 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %5, i64 0, i32 7, i32 0, i32 1
  call void @rb_insert_color(%struct.rb_node* noundef %rb8, %struct.rb_root* noundef %children12) #17
  %call13 = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %kn) #16
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %while.end
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %subdirs = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %6, i64 0, i32 7, i32 0, i32 0
  %7 = load i64, i64* %subdirs, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %subdirs, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %while.end
  %8 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  call fastcc void @kernfs_inc_rev(%struct.kernfs_node* noundef %8) #16
  br label %cleanup20

cleanup20:                                        ; preds = %while.body, %if.end18
  %retval.2 = phi i32 [ 0, %if.end18 ], [ -17, %while.body ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(%struct.timespec64* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_activate(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call64 = call fastcc %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node* noundef null, %struct.kernfs_node* noundef %kn) #16
  %tobool.not65 = icmp eq %struct.kernfs_node* %call64, null
  br i1 %tobool.not65, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %call66 = phi %struct.kernfs_node* [ %call, %while.cond.backedge ], [ %call64, %entry ]
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call66, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 16
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.end, label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call66, i64 0, i32 2
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool2.not = icmp eq %struct.kernfs_node* %2, null
  br i1 %tobool2.not, label %if.end14, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %rb = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call66, i64 0, i32 4
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %3 = load i64, i64* %__rb_parent_color, align 8
  %4 = ptrtoint %struct.rb_node* %rb to i64
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then13, label %if.end14, !prof !9

if.then13:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 1300; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !15
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then13, %land.rhs
  %active = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call66, i64 0, i32 1
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %active, i64 0, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %cmp24.not = icmp eq i32 %5, -2147483647
  br i1 %cmp24.not, label %if.end39, label %if.then38, !prof !12

if.then38:                                        ; preds = %if.end14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 1301; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !16
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end14
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %active) #17
  %6 = load i16, i16* %flags, align 8
  %7 = or i16 %6, 16
  store i16 %7, i16* %flags, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end39, %while.body
  %call = call fastcc %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node* noundef nonnull %call66, %struct.kernfs_node* noundef %kn) #16
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %entry
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* nocapture noundef readonly %parent, i8* noundef %name, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call = call fastcc %struct.kernfs_node* @kernfs_find_ns(%struct.kernfs_node* noundef %parent, i8* noundef %name, i8* noundef %ns) #16
  call void @kernfs_get(%struct.kernfs_node* noundef %call) #16
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  ret %struct.kernfs_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_find_ns(%struct.kernfs_node* nocapture noundef readonly %parent, i8* noundef %name, i8* noundef %ns) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @kernfs_ns_enabled(%struct.kernfs_node* noundef %parent) #16
  %tobool1 = icmp eq i8* %ns, null
  %cmp.not = xor i1 %tobool1, %call
  br i1 %cmp.not, label %if.end28, label %do.end12

do.end12:                                         ; preds = %entry
  %cond = select i1 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %name15 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 3
  %0 = load i8*, i8** %name15, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* noundef %cond, i8* noundef %0, i8* noundef %name) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 795; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !17
  br label %cleanup46

if.end28:                                         ; preds = %entry
  %rb_node = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 7, i32 0, i32 1, i32 0
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %call29 = call fastcc i32 @kernfs_name_hash(i8* noundef %name, i8* noundef %ns) #16
  %tobool30.not75 = icmp eq %struct.rb_node* %1, null
  br i1 %tobool30.not75, label %cleanup46, label %while.body

while.body:                                       ; preds = %if.end28, %cleanup
  %node.076 = phi %struct.rb_node* [ %node.1, %cleanup ], [ %1, %if.end28 ]
  %add.ptr69 = getelementptr %struct.rb_node, %struct.rb_node* %node.076, i64 -1
  %2 = bitcast %struct.rb_node* %add.ptr69 to %struct.kernfs_node*
  %call35 = call fastcc i32 @kernfs_name_compare(i32 noundef %call29, i8* noundef %name, i8* noundef %ns, %struct.kernfs_node* noundef %2) #16
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.076, i64 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  %cmp39.not = icmp eq i32 %call35, 0
  br i1 %cmp39.not, label %cleanup46.loopexit.split.loop.exit, label %if.then41

if.then41:                                        ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.076, i64 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.then41
  %node.1.in = phi %struct.rb_node** [ %rb_left, %if.then38 ], [ %rb_right, %if.then41 ]
  %node.1 = load %struct.rb_node*, %struct.rb_node** %node.1.in, align 8
  %tobool30.not = icmp eq %struct.rb_node* %node.1, null
  br i1 %tobool30.not, label %cleanup46, label %while.body

cleanup46.loopexit.split.loop.exit:               ; preds = %if.else
  %3 = bitcast %struct.rb_node* %add.ptr69 to %struct.kernfs_node*
  br label %cleanup46

cleanup46:                                        ; preds = %cleanup, %cleanup46.loopexit.split.loop.exit, %if.end28, %do.end12
  %retval.2 = phi %struct.kernfs_node* [ null, %do.end12 ], [ null, %if.end28 ], [ %3, %cleanup46.loopexit.split.loop.exit ], [ null, %cleanup ]
  ret %struct.kernfs_node* %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_walk_and_get_ns(%struct.kernfs_node* noundef %parent, i8* noundef %path, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call = call fastcc %struct.kernfs_node* @kernfs_walk_ns(%struct.kernfs_node* noundef %parent, i8* noundef %path, i8* noundef %ns) #16
  call void @kernfs_get(%struct.kernfs_node* noundef %call) #16
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  ret %struct.kernfs_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_walk_ns(%struct.kernfs_node* noundef readonly %parent, i8* noundef %path, i8* noundef %ns) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  call fastcc void @__raw_spin_lock_irq() #17
  %call = call i64 @strlcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @kernfs_pr_cont_buf, i64 0, i64 0), i8* noundef %path, i64 noundef 4096) #17
  %cmp = icmp ugt i64 %call, 4095
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @kernfs_pr_cont_buf, i64 0, i64 0), i8** %p, align 8
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end6, %if.end
  %parent.addr.0.ph = phi %struct.kernfs_node* [ %call7, %if.end6 ], [ %parent, %if.end ]
  %tobool2 = icmp ne %struct.kernfs_node* %parent.addr.0.ph, null
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call1 = call i8* @strsep(i8** noundef nonnull %p, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #17
  %tobool = icmp ne i8* %call1, null
  %1 = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %1, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %call1, align 1
  %cmp3 = icmp eq i8 %2, 0
  br i1 %cmp3, label %while.cond, label %if.end6

if.end6:                                          ; preds = %while.body
  %call7 = call fastcc %struct.kernfs_node* @kernfs_find_ns(%struct.kernfs_node* noundef nonnull %parent.addr.0.ph, i8* noundef nonnull %call1, i8* noundef %ns) #16
  br label %while.cond.outer

cleanup:                                          ; preds = %while.cond, %entry
  %retval.0 = phi %struct.kernfs_node* [ null, %entry ], [ %parent.addr.0.ph, %while.cond ]
  call fastcc void @__raw_spin_unlock_irq() #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_root* @kernfs_create_root(%struct.kernfs_syscall_ops* noundef %scops, i32 noundef %flags, i8* noundef %priv) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #16
  %0 = bitcast i8* %call to %struct.kernfs_root*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %1 = bitcast i8* %call1 to %struct.kernfs_root*
  br label %cleanup

if.end:                                           ; preds = %entry
  %ino_idr = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %ino_idr to %struct.idr*
  call fastcc void @idr_init(%struct.idr* noundef %2) #16
  %supers = getelementptr inbounds i8, i8* %call, i64 56
  %3 = bitcast i8* %supers to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %3) #16
  %id_highbits = getelementptr inbounds i8, i8* %call, i64 44
  %4 = bitcast i8* %id_highbits to i32*
  store i32 0, i32* %4, align 4
  %call6 = call fastcc %struct.kernfs_node* @__kernfs_new_node(%struct.kernfs_root* noundef nonnull %0, %struct.kernfs_node* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i16 noundef 16749, i64 0, i64 0, i32 noundef 1) #16
  %tobool7.not = icmp eq %struct.kernfs_node* %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @idr_destroy(%struct.idr* noundef %2) #17
  call void @kfree(i8* noundef nonnull %call) #17
  %call10 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %5 = bitcast i8* %call10 to %struct.kernfs_root*
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %priv12 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call6, i64 0, i32 8
  store i8* %priv, i8** %priv12, align 8
  %root13 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call6, i64 0, i32 7, i32 0, i32 2
  %6 = bitcast %struct.kernfs_root** %root13 to i8**
  store i8* %call, i8** %6, align 8
  %syscall_ops = getelementptr inbounds i8, i8* %call, i64 48
  %7 = bitcast i8* %syscall_ops to %struct.kernfs_syscall_ops**
  store %struct.kernfs_syscall_ops* %scops, %struct.kernfs_syscall_ops** %7, align 8
  %flags14 = getelementptr inbounds i8, i8* %call, i64 8
  %8 = bitcast i8* %flags14 to i32*
  store i32 %flags, i32* %8, align 8
  %kn15 = bitcast i8* %call to %struct.kernfs_node**
  store %struct.kernfs_node* %call6, %struct.kernfs_node** %kn15, align 8
  %deactivate_waitq = getelementptr inbounds i8, i8* %call, i64 72
  %9 = bitcast i8* %deactivate_waitq to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %9, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @kernfs_create_root.__key) #17
  %10 = load i32, i32* %8, align 8
  %and = and i32 %10, 1
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.end11
  call void @kernfs_activate(%struct.kernfs_node* noundef nonnull %call6) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then18, %if.then8, %if.then
  %retval.0 = phi %struct.kernfs_root* [ %5, %if.then8 ], [ %1, %if.then ], [ %0, %if.then18 ], [ %0, %if.end11 ]
  ret %struct.kernfs_root* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #17
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @idr_init(%struct.idr* nocapture noundef writeonly %idr) unnamed_addr #8 {
entry:
  call fastcc void @idr_init_base(%struct.idr* noundef %idr) #16
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_destroy_root(%struct.kernfs_root* nocapture noundef readonly %root) local_unnamed_addr #0 {
entry:
  %kn = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %root, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  call void @kernfs_remove(%struct.kernfs_node* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_remove(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  call fastcc void @__kernfs_remove(%struct.kernfs_node* noundef %kn) #16
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_create_dir_ns(%struct.kernfs_node* noundef %parent, i8* noundef %name, i16 noundef %mode, i64 %uid.coerce, i64 %gid.coerce, i8* noundef %priv, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  %0 = or i16 %mode, 16384
  %coerce.val.ii5 = and i64 %uid.coerce, 4294967295
  %coerce.val.ii7 = and i64 %gid.coerce, 4294967295
  %call = call %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* noundef %parent, i8* noundef %name, i16 noundef %0, i64 %coerce.val.ii5, i64 %coerce.val.ii7, i32 noundef 1) #16
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %root = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 7, i32 0, i32 2
  %1 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  %root10 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 7, i32 0, i32 2
  store %struct.kernfs_root* %1, %struct.kernfs_root** %root10, align 8
  %ns11 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 5
  store i8* %ns, i8** %ns11, align 8
  %priv12 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 8
  store i8* %priv, i8** %priv12, align 8
  %call13 = call i32 @kernfs_add_one(%struct.kernfs_node* noundef nonnull %call) #16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #16
  %conv17 = sext i32 %call13 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.end16
  %conv17.sink = phi i64 [ %conv17, %if.end16 ], [ -12, %entry ]
  %call18 = call fastcc i8* @ERR_PTR(i64 noundef %conv17.sink) #16
  %2 = bitcast i8* %call18 to %struct.kernfs_node*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi %struct.kernfs_node* [ %call, %if.end ], [ %2, %cleanup.sink.split ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_create_empty_dir(%struct.kernfs_node* noundef %parent, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* noundef %parent, i8* noundef %name, i16 noundef 16749, i64 0, i64 0, i32 noundef 1) #16
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = or i16 %0, 4096
  store i16 %1, i16* %flags, align 8
  %root = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 7, i32 0, i32 2
  %2 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  %root8 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 7, i32 0, i32 2
  store %struct.kernfs_root* %2, %struct.kernfs_root** %root8, align 8
  %ns = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 5
  store i8* null, i8** %ns, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 8
  store i8* null, i8** %priv, align 8
  %call9 = call i32 @kernfs_add_one(%struct.kernfs_node* noundef nonnull %call) #16
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #16
  %conv13 = sext i32 %call9 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.end12
  %conv13.sink = phi i64 [ %conv13, %if.end12 ], [ -12, %entry ]
  %call14 = call fastcc i8* @ERR_PTR(i64 noundef %conv13.sink) #16
  %3 = bitcast i8* %call14 to %struct.kernfs_node*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi %struct.kernfs_node* [ %call, %if.end ], [ %3, %cleanup.sink.split ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_dop_revalidate(%struct.dentry* noundef %dentry, i32 noundef %flags) #0 {
entry:
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup37

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @d_really_is_negative(%struct.dentry* noundef %dentry) #16
  br i1 %call, label %if.then1, label %if.end13

if.then1:                                         ; preds = %if.end
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.67* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %call2 = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %1) #16
  %tobool3.not = icmp eq %struct.kernfs_node* %call2, null
  br i1 %tobool3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.then1
  %call5 = call fastcc i1 @kernfs_dir_changed(%struct.kernfs_node* noundef nonnull %call2, %struct.dentry* noundef %dentry) #16
  br i1 %call5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup37.sink.split

if.end10:                                         ; preds = %if.then4, %if.then1
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup37.sink.split

if.end13:                                         ; preds = %if.end
  %call14 = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %dentry) #16
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call15 = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef %call14) #16
  br i1 %call15, label %if.end17, label %out_bad

if.end17:                                         ; preds = %if.end13
  %d_parent18 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %2 = load %struct.dentry*, %struct.dentry** %d_parent18, align 8
  %call19 = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %2) #16
  %parent20 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call14, i64 0, i32 2
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %parent20, align 8
  %cmp.not = icmp eq %struct.kernfs_node* %call19, %3
  br i1 %cmp.not, label %if.end22, label %out_bad

if.end22:                                         ; preds = %if.end17
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %4 = load i8*, i8** %name, align 8
  %name23 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call14, i64 0, i32 3
  %5 = load i8*, i8** %name23, align 8
  %call24 = call i32 @strcmp(i8* noundef %4, i8* noundef %5) #17
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end27, label %out_bad

if.end27:                                         ; preds = %if.end22
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %parent20, align 8
  %tobool29.not = icmp eq %struct.kernfs_node* %6, null
  br i1 %tobool29.not, label %cleanup37.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end27
  %call31 = call fastcc i1 @kernfs_ns_enabled(%struct.kernfs_node* noundef nonnull %6) #16
  br i1 %call31, label %land.lhs.true32, label %cleanup37.sink.split

land.lhs.true32:                                  ; preds = %land.lhs.true
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %7 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i64 0, i32 27
  %8 = bitcast i8** %s_fs_info to %struct.kernfs_super_info**
  %9 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %8, align 8
  %ns = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %9, i64 0, i32 2
  %10 = load i8*, i8** %ns, align 8
  %ns33 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call14, i64 0, i32 5
  %11 = load i8*, i8** %ns33, align 8
  %cmp34.not = icmp eq i8* %10, %11
  br i1 %cmp34.not, label %cleanup37.sink.split, label %out_bad

out_bad:                                          ; preds = %land.lhs.true32, %if.end22, %if.end17, %if.end13
  br label %cleanup37.sink.split

cleanup37.sink.split:                             ; preds = %if.end27, %land.lhs.true, %land.lhs.true32, %out_bad, %if.end10, %if.then6
  %retval.1.ph = phi i32 [ 1, %if.end10 ], [ 0, %if.then6 ], [ 0, %out_bad ], [ 1, %land.lhs.true32 ], [ 1, %land.lhs.true ], [ 1, %if.end27 ]
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup37.sink.split, %entry
  %retval.1 = phi i32 [ -10, %entry ], [ %retval.1.ph, %cleanup37.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @kernfs_iop_lookup(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #0 {
entry:
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call = call fastcc i1 @kernfs_ns_enabled(%struct.kernfs_node* noundef %1) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 27
  %3 = bitcast i8** %s_fs_info to %struct.kernfs_super_info**
  %4 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %3, align 8
  %ns1 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %4, i64 0, i32 2
  %5 = load i8*, i8** %ns1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ns.0 = phi i8* [ %5, %if.then ], [ null, %entry ]
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %6 = load i8*, i8** %name, align 8
  %call2 = call fastcc %struct.kernfs_node* @kernfs_find_ns(%struct.kernfs_node* noundef %1, i8* noundef %6, i8* noundef %ns.0) #16
  %tobool.not = icmp eq %struct.kernfs_node* %call2, null
  br i1 %tobool.not, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef nonnull %call2) #16
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %i_sb7 = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %7 = load %struct.super_block*, %struct.super_block** %i_sb7, align 8
  %call8 = call %struct.inode* @kernfs_get_inode(%struct.super_block* noundef %7, %struct.kernfs_node* noundef nonnull %call2) #17
  %tobool9.not = icmp eq %struct.inode* %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %8 = bitcast i8* %call11 to %struct.inode*
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %if.then10, %if.end
  %inode.0 = phi %struct.inode* [ %call8, %if.end6 ], [ %8, %if.then10 ], [ null, %if.end ]
  %9 = bitcast %struct.inode* %inode.0 to i8*
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %9) #16
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  call fastcc void @kernfs_set_rev(%struct.kernfs_node* noundef %1, %struct.dentry* noundef %dentry) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call17 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef %inode.0, %struct.dentry* noundef %dentry) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then5
  %retval.0 = phi %struct.dentry* [ %call17, %if.end16 ], [ null, %if.then5 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_iop_mkdir(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry, i16 noundef %mode) #0 {
entry:
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %call = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %1) #16
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call, i64 0, i32 5
  %2 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %syscall_ops, align 8
  %tobool.not = icmp eq %struct.kernfs_syscall_ops* %2, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %mkdir = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %2, i64 0, i32 1
  %3 = load i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*, i8*, i16)** %mkdir, align 8
  %tobool1.not = icmp eq i32 (%struct.kernfs_node*, i8*, i16)* %3, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %1) #16
  %tobool3.not = icmp eq %struct.kernfs_node* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %4 = load i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*, i8*, i16)** %mkdir, align 8
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %5 = load i8*, i8** %name, align 8
  %call7 = call i32 %4(%struct.kernfs_node* noundef %1, i8* noundef %5, i16 noundef %mode) #17
  call void @kernfs_put_active(%struct.kernfs_node* noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end5
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -19, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_iop_rmdir(%struct.inode* nocapture noundef readnone %dir, %struct.dentry* nocapture noundef readonly %dentry) #0 {
entry:
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %dentry) #16
  %call1 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %call) #16
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call1, i64 0, i32 5
  %0 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %syscall_ops, align 8
  %tobool.not = icmp eq %struct.kernfs_syscall_ops* %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rmdir = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %0, i64 0, i32 2
  %1 = load i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*)** %rmdir, align 8
  %tobool2.not = icmp eq i32 (%struct.kernfs_node*)* %1, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %call) #16
  %tobool4.not = icmp eq %struct.kernfs_node* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*)** %rmdir, align 8
  %call8 = call i32 %2(%struct.kernfs_node* noundef %call) #17
  call void @kernfs_put_active(%struct.kernfs_node* noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end6
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -19, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_iop_rename(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.inode* nocapture noundef readnone %old_dir, %struct.dentry* nocapture noundef readonly %old_dentry, %struct.inode* nocapture noundef readonly %new_dir, %struct.dentry* nocapture noundef readonly %new_dentry, i32 noundef %flags) #0 {
entry:
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %old_dentry) #16
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %new_dir, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %call1 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %call) #16
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call1, i64 0, i32 5
  %2 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %syscall_ops, align 8
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.kernfs_syscall_ops* %2, null
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %rename = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %2, i64 0, i32 3
  %3 = load i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)** %rename, align 8
  %tobool3.not = icmp eq i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)* %3, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %call) #16
  %tobool7.not = icmp eq %struct.kernfs_node* %call6, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = call %struct.kernfs_node* @kernfs_get_active(%struct.kernfs_node* noundef %1) #16
  %tobool11.not = icmp eq %struct.kernfs_node* %call10, null
  br i1 %tobool11.not, label %cleanup.sink.split, label %if.end13

if.end13:                                         ; preds = %if.end9
  %4 = load i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)** %rename, align 8
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %new_dentry, i64 0, i32 4, i32 1
  %5 = load i8*, i8** %name, align 8
  %call15 = call i32 %4(%struct.kernfs_node* noundef %call, %struct.kernfs_node* noundef %1, i8* noundef %5) #17
  call void @kernfs_put_active(%struct.kernfs_node* noundef %1) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %if.end13
  %retval.0.ph = phi i32 [ %call15, %if.end13 ], [ -19, %if.end9 ]
  call void @kernfs_put_active(%struct.kernfs_node* noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -1, %lor.lhs.false ], [ -1, %if.end ], [ -19, %if.end5 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_setattr(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_getattr(%struct.user_namespace* noundef, %struct.path* noundef, %struct.kstat* noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @kernfs_iop_listxattr(%struct.dentry* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node* noundef %pos, %struct.kernfs_node* noundef %root) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %pos, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node* noundef %root) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.kernfs_node* %pos, %root
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %rb = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos, i64 0, i32 4
  %call3 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %rb) #17
  %tobool4.not = icmp eq %struct.rb_node* %call3, null
  br i1 %tobool4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end2
  %add.ptr18 = getelementptr %struct.rb_node, %struct.rb_node* %call3, i64 -1
  %0 = bitcast %struct.rb_node* %add.ptr18 to %struct.kernfs_node*
  %call9 = call fastcc %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node* noundef %0) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end2
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos, i64 0, i32 2
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end10, %if.then5, %if.then
  %retval.0 = phi %struct.kernfs_node* [ %call9, %if.then5 ], [ %1, %if.end10 ], [ %call, %if.then ], [ null, %if.end ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kernfs_remove(%struct.kernfs_node* noundef %kn) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %kn, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool1.not = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %rb = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 4
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %1 = load i64, i64* %__rb_parent_color, align 8
  %2 = ptrtoint %struct.rb_node* %rb to i64
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %call81 = call fastcc %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node* noundef null, %struct.kernfs_node* noundef nonnull %kn) #16
  %tobool3.not82 = icmp eq %struct.kernfs_node* %call81, null
  br i1 %tobool3.not82, label %do.body7.preheader, label %while.body

do.body7.preheader:                               ; preds = %if.end6, %if.end
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %counter.i = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 1, i32 0
  br label %do.body7

while.body:                                       ; preds = %if.end, %if.end6
  %call83 = phi %struct.kernfs_node* [ %call, %if.end6 ], [ %call81, %if.end ]
  %call4 = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef nonnull %call83) #16
  br i1 %call4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  %active = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call83, i64 0, i32 1
  call fastcc void @__ll_sc_atomic_add(i32 noundef -2147483647, %struct.atomic_t* noundef %active) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.body
  %call = call fastcc %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node* noundef nonnull %call83, %struct.kernfs_node* noundef nonnull %kn) #16
  %tobool3.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool3.not, label %do.body7.preheader, label %while.body

do.body7:                                         ; preds = %do.body7.preheader, %if.end47
  %call8 = call fastcc %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node* noundef nonnull %kn) #16
  call void @kernfs_get(%struct.kernfs_node* noundef %call8) #16
  %3 = load i16, i16* %flags, align 8
  %4 = and i16 %3, 16
  %tobool9.not = icmp eq i16 %4, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.body7
  call fastcc void @kernfs_drain(%struct.kernfs_node* noundef %call8) #16
  br label %if.end33

if.else:                                          ; preds = %do.body7
  %5 = load volatile i32, i32* %counter.i, align 4
  %cmp13.not = icmp eq i32 %5, -2147483647
  br i1 %cmp13.not, label %if.end33, label %if.then23, !prof !12

if.then23:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 1353; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !18
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then23, %if.then10
  %parent34 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call8, i64 0, i32 2
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %parent34, align 8
  %tobool35.not = icmp eq %struct.kernfs_node* %6, null
  br i1 %tobool35.not, label %if.end46, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end33
  %call37 = call fastcc i1 @kernfs_unlink_sibling(%struct.kernfs_node* noundef %call8) #16
  br i1 %call37, label %if.then39, label %if.end47

if.then39:                                        ; preds = %lor.lhs.false36
  %.pr = load %struct.kernfs_node*, %struct.kernfs_node** %parent34, align 8
  %tobool41.not = icmp eq %struct.kernfs_node* %.pr, null
  br i1 %tobool41.not, label %if.end46, label %cond.end

cond.end:                                         ; preds = %if.then39
  %iattr = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %.pr, i64 0, i32 12
  %7 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %tobool43.not = icmp eq %struct.kernfs_iattrs* %7, null
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %cond.end
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %7, i64 0, i32 4
  call void @ktime_get_real_ts64(%struct.timespec64* noundef %ia_ctime) #17
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %7, i64 0, i32 3
  %8 = bitcast %struct.timespec64* %ia_mtime to i8*
  %9 = bitcast %struct.timespec64* %ia_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %if.end46

if.end46:                                         ; preds = %if.end33, %if.then39, %if.then44, %cond.end
  call void @kernfs_put(%struct.kernfs_node* noundef %call8) #16
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %lor.lhs.false36
  call void @kernfs_put(%struct.kernfs_node* noundef %call8) #16
  %cmp49.not = icmp eq %struct.kernfs_node* %call8, %kn
  br i1 %cmp49.not, label %cleanup, label %do.body7

cleanup:                                          ; preds = %if.end47, %entry, %land.lhs.true
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_break_active_protection(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  call void @kernfs_put_active(%struct.kernfs_node* noundef %kn) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_unbreak_active_protection(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %active = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 1
  call fastcc void @__ll_sc_atomic_add(i32 noundef 1, %struct.atomic_t* noundef %active) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kernfs_remove_self(%struct.kernfs_node* noundef %kn) local_unnamed_addr #0 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  call void @kernfs_break_active_protection(%struct.kernfs_node* noundef %kn) #16
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 1024
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %or = or i16 %0, 1024
  store i16 %or, i16* %flags, align 8
  call fastcc void @__kernfs_remove(%struct.kernfs_node* noundef %kn) #16
  %2 = load i16, i16* %flags, align 8
  %3 = or i16 %2, 2048
  store i16 %3, i16* %flags, align 8
  br label %if.end41

if.else:                                          ; preds = %entry
  %call = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %kn) #16
  %deactivate_waitq = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call, i64 0, i32 7
  %4 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #18
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !19
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = bitcast i8** %private to %struct.task_struct**
  %8 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %8, align 8
  store %struct.task_struct* %6, %struct.task_struct** %7, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry10 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry10, i64 0, i32 0
  store %struct.list_head* %entry10, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry10, %struct.list_head** %prev, align 8
  %counter.i = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 1, i32 0
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %deactivate_waitq, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 2) #17
  %9 = load i16, i16* %flags, align 8
  %10 = and i16 %9, 2048
  %tobool16.not = icmp eq i16 %10, 0
  br i1 %tobool16.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %11 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp eq i32 %11, -2147483647
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %land.lhs.true, %while.cond
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  call void @schedule() #17
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  br label %while.cond

while.end:                                        ; preds = %land.lhs.true
  call void @finish_wait(%struct.wait_queue_head* noundef %deactivate_waitq, %struct.wait_queue_entry* noundef nonnull %wait) #17
  %rb = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 4
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %12 = load i64, i64* %__rb_parent_color, align 8
  %13 = ptrtoint %struct.rb_node* %rb to i64
  %cmp21.not = icmp eq i64 %12, %13
  br i1 %cmp21.not, label %if.end33, label %if.then32, !prof !12

if.then32:                                        ; preds = %while.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 1506; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !20
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %while.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #18
  br label %if.end41

if.end41:                                         ; preds = %if.end33, %if.then
  call void @kernfs_unbreak_active_protection(%struct.kernfs_node* noundef %kn) #16
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_remove_by_name_ns(%struct.kernfs_node* noundef readonly %parent, i8* noundef %name, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %parent, null
  br i1 %tobool.not, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8* noundef %name) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 1536; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !21
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call = call fastcc %struct.kernfs_node* @kernfs_find_ns(%struct.kernfs_node* noundef nonnull %parent, i8* noundef %name, i8* noundef %ns) #16
  %tobool19.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end18
  call fastcc void @__kernfs_remove(%struct.kernfs_node* noundef nonnull %call) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %. = phi i32 [ 0, %if.then20 ], [ -2, %if.end18 ]
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %., %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_rename_ns(%struct.kernfs_node* noundef %kn, %struct.kernfs_node* noundef %new_parent, i8* noundef %new_name, i8* noundef %new_ns) local_unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool.not = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef %kn) #16
  br i1 %call, label %lor.lhs.false, label %out

lor.lhs.false:                                    ; preds = %if.end
  %call1 = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef %new_parent) #16
  br i1 %call1, label %lor.lhs.false2, label %out

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %new_parent, i64 0, i32 10
  %1 = load i16, i16* %flags, align 8
  %2 = and i16 %1, 4096
  %tobool3.not = icmp eq i16 %2, 0
  br i1 %tobool3.not, label %if.end5, label %out

if.end5:                                          ; preds = %lor.lhs.false2
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %cmp = icmp eq %struct.kernfs_node* %3, %new_parent
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %ns = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 5
  %4 = load i8*, i8** %ns, align 8
  %cmp8 = icmp eq i8* %4, %new_ns
  br i1 %cmp8, label %land.lhs.true10, label %if.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %name = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 3
  %5 = load i8*, i8** %name, align 8
  %call11 = call i32 @strcmp(i8* noundef %5, i8* noundef %new_name) #17
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %out, label %if.end15

if.end15:                                         ; preds = %land.lhs.true10, %land.lhs.true, %if.end5
  %call16 = call fastcc %struct.kernfs_node* @kernfs_find_ns(%struct.kernfs_node* noundef %new_parent, i8* noundef %new_name, i8* noundef %new_ns) #16
  %tobool17.not = icmp eq %struct.kernfs_node* %call16, null
  br i1 %tobool17.not, label %if.end19, label %out

if.end19:                                         ; preds = %if.end15
  %name20 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 3
  %6 = load i8*, i8** %name20, align 8
  %call21 = call i32 @strcmp(i8* noundef %6, i8* noundef %new_name) #17
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end19
  %call25 = call i8* @kstrdup_const(i8* noundef %new_name, i32 noundef 3264) #17
  %tobool26.not = icmp eq i8* %call25, null
  br i1 %tobool26.not, label %out, label %if.end29

if.end29:                                         ; preds = %if.end19, %if.then24
  %new_name.addr.0 = phi i8* [ %call25, %if.then24 ], [ null, %if.end19 ]
  %call30 = call fastcc i1 @kernfs_unlink_sibling(%struct.kernfs_node* noundef %kn) #16
  call void @kernfs_get(%struct.kernfs_node* noundef %new_parent) #16
  call fastcc void @__raw_spin_lock_irq() #17
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  store %struct.kernfs_node* %new_parent, %struct.kernfs_node** %parent, align 8
  %ns33 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 5
  store i8* %new_ns, i8** %ns33, align 8
  %tobool34.not = icmp eq i8* %new_name.addr.0, null
  br i1 %tobool34.not, label %if.end38, label %if.then35

if.then35:                                        ; preds = %if.end29
  %8 = load i8*, i8** %name20, align 8
  store i8* %new_name.addr.0, i8** %name20, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end29
  %old_name.0 = phi i8* [ %8, %if.then35 ], [ null, %if.end29 ]
  call fastcc void @__raw_spin_unlock_irq() #17
  %9 = load i8*, i8** %name20, align 8
  %10 = load i8*, i8** %ns33, align 8
  %call41 = call fastcc i32 @kernfs_name_hash(i8* noundef %9, i8* noundef %10) #16
  %hash = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 6
  store i32 %call41, i32* %hash, align 8
  %call42 = call fastcc i32 @kernfs_link_sibling(%struct.kernfs_node* noundef %kn) #16
  call void @kernfs_put(%struct.kernfs_node* noundef %7) #16
  call void @kfree_const(i8* noundef %old_name.0) #17
  br label %out

out:                                              ; preds = %if.then24, %if.end15, %land.lhs.true10, %if.end, %lor.lhs.false, %lor.lhs.false2, %if.end38
  %error.0 = phi i32 [ -2, %lor.lhs.false2 ], [ 0, %land.lhs.true10 ], [ -17, %if.end15 ], [ 0, %if.end38 ], [ -12, %if.then24 ], [ -2, %lor.lhs.false ], [ -2, %if.end ]
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrdup_const(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @kernfs_unlink_sibling(%struct.kernfs_node* noundef %kn) unnamed_addr #0 {
entry:
  %rb = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 4
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.rb_node* %rb to i64
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %kn) #16
  %cmp2 = icmp eq i32 %call, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %subdirs = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %2, i64 0, i32 7, i32 0, i32 0
  %3 = load i64, i64* %subdirs, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %subdirs, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %parent5 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %parent5, align 8
  call fastcc void @kernfs_inc_rev(%struct.kernfs_node* noundef %4) #16
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %parent5, align 8
  %children = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %5, i64 0, i32 7, i32 0, i32 1
  call void @rb_erase(%struct.rb_node* noundef %rb, %struct.rb_root* noundef %children) #17
  store i64 %1, i64* %__rb_parent_color, align 8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %6 = xor i1 %cmp, true
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_read_dir(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_fop_readdir(%struct.file* nocapture noundef %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %0) #16
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.kernfs_node**
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %1, align 8
  %call2 = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #16
  br i1 %call2, label %if.end, label %cleanup27

if.end:                                           ; preds = %entry
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call3 = call fastcc i1 @kernfs_ns_enabled(%struct.kernfs_node* noundef %call) #16
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %3 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 27
  %4 = bitcast i8** %s_fs_info to %struct.kernfs_super_info**
  %5 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %4, align 8
  %ns5 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %5, i64 0, i32 2
  %6 = load i8*, i8** %ns5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %ns.0 = phi i8* [ %6, %if.then4 ], [ null, %if.end ]
  %pos7 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %7 = load i64, i64* %pos7, align 8
  %call8 = call fastcc %struct.kernfs_node* @kernfs_dir_pos(i8* noundef %ns.0, %struct.kernfs_node* noundef %call, i64 noundef %7, %struct.kernfs_node* noundef %2) #16
  %tobool.not61 = icmp eq %struct.kernfs_node* %call8, null
  br i1 %tobool.not61, label %for.end, label %for.body

for.body:                                         ; preds = %if.end6, %if.end19
  %pos.062 = phi %struct.kernfs_node* [ %call24, %if.end19 ], [ %call8, %if.end6 ]
  %name9 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos.062, i64 0, i32 3
  %8 = load i8*, i8** %name9, align 8
  %call10 = call fastcc i8 @dt_type(%struct.kernfs_node* noundef nonnull %pos.062) #16
  %conv = zext i8 %call10 to i32
  %call11 = call i64 @strlen(i8* noundef %8) #17
  %conv12 = trunc i64 %call11 to i32
  %call13 = call fastcc i64 @kernfs_ino(%struct.kernfs_node* noundef nonnull %pos.062) #16
  %hash = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos.062, i64 0, i32 6
  %9 = load i32, i32* %hash, align 8
  %conv14 = zext i32 %9 to i64
  store i64 %conv14, i64* %pos7, align 8
  store %struct.kernfs_node* %pos.062, %struct.kernfs_node** %1, align 8
  call void @kernfs_get(%struct.kernfs_node* noundef nonnull %pos.062) #16
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %call17 = call fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %8, i32 noundef %conv12, i64 noundef %call13, i32 noundef %conv) #16
  br i1 %call17, label %if.end19, label %cleanup27

if.end19:                                         ; preds = %for.body
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %10 = load i64, i64* %pos7, align 8
  %call24 = call fastcc %struct.kernfs_node* @kernfs_dir_next_pos(i8* noundef %ns.0, %struct.kernfs_node* noundef %call, i64 noundef %10, %struct.kernfs_node* noundef nonnull %pos.062) #16
  %tobool.not = icmp eq %struct.kernfs_node* %call24, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end19, %if.end6
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  store i8* null, i8** %private_data, align 8
  store i64 2147483647, i64* %pos7, align 8
  br label %cleanup27

cleanup27:                                        ; preds = %for.body, %entry, %for.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_dir_fop_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %filp) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  call void @kernfs_put(%struct.kernfs_node* noundef %1) #16
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #16
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #16
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
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

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
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #18, !srcloc !22
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #18, !srcloc !23
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #16
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #18, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #18, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_rename_lock, i64 0, i32 0, i32 0)) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #18, !srcloc !28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.kernfs_node* @kernfs_common_ancestor(%struct.kernfs_node* noundef %a, %struct.kernfs_node* noundef %b) unnamed_addr #11 {
entry:
  %call = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %a) #16
  %call1 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %b) #16
  %cmp.not = icmp eq %struct.kernfs_root* %call, %call1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %kn = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call, i64 0, i32 0
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call2 = call fastcc i64 @kernfs_depth(%struct.kernfs_node* noundef %0, %struct.kernfs_node* noundef %a) #16
  %call4 = call fastcc i64 @kernfs_depth(%struct.kernfs_node* noundef %0, %struct.kernfs_node* noundef %b) #16
  %cmp540 = icmp ugt i64 %call2, %call4
  br i1 %cmp540, label %while.body, label %while.cond6.preheader

while.cond6.preheader:                            ; preds = %if.end
  %cmp744 = icmp ugt i64 %call4, %call2
  br i1 %cmp744, label %while.body8, label %while.cond12.preheader

while.body:                                       ; preds = %if.end, %while.body
  %da.042 = phi i64 [ %dec, %while.body ], [ %call2, %if.end ]
  %a.addr.041 = phi %struct.kernfs_node* [ %1, %while.body ], [ %a, %if.end ]
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %a.addr.041, i64 0, i32 2
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %dec = add i64 %da.042, -1
  %cmp5 = icmp ugt i64 %dec, %call4
  br i1 %cmp5, label %while.body, label %while.cond12.preheader

while.cond12.preheader:                           ; preds = %while.body8, %while.body, %while.cond6.preheader
  %a.addr.0.lcssa57 = phi %struct.kernfs_node* [ %a, %while.cond6.preheader ], [ %1, %while.body ], [ %a, %while.body8 ]
  %b.addr.0.lcssa = phi %struct.kernfs_node* [ %b, %while.cond6.preheader ], [ %b, %while.body ], [ %2, %while.body8 ]
  %cmp13.not48 = icmp eq %struct.kernfs_node* %b.addr.0.lcssa, %a.addr.0.lcssa57
  br i1 %cmp13.not48, label %cleanup, label %while.body14

while.body8:                                      ; preds = %while.cond6.preheader, %while.body8
  %db.046 = phi i64 [ %dec10, %while.body8 ], [ %call4, %while.cond6.preheader ]
  %b.addr.045 = phi %struct.kernfs_node* [ %2, %while.body8 ], [ %b, %while.cond6.preheader ]
  %parent9 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %b.addr.045, i64 0, i32 2
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %parent9, align 8
  %dec10 = add i64 %db.046, -1
  %cmp7 = icmp ugt i64 %dec10, %call2
  br i1 %cmp7, label %while.body8, label %while.cond12.preheader

while.body14:                                     ; preds = %while.cond12.preheader, %while.body14
  %b.addr.150 = phi %struct.kernfs_node* [ %3, %while.body14 ], [ %b.addr.0.lcssa, %while.cond12.preheader ]
  %a.addr.149 = phi %struct.kernfs_node* [ %4, %while.body14 ], [ %a.addr.0.lcssa57, %while.cond12.preheader ]
  %parent15 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %b.addr.150, i64 0, i32 2
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %parent15, align 8
  %parent16 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %a.addr.149, i64 0, i32 2
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %parent16, align 8
  %cmp13.not = icmp eq %struct.kernfs_node* %3, %4
  br i1 %cmp13.not, label %cleanup, label %while.body14

cleanup:                                          ; preds = %while.body14, %while.cond12.preheader, %entry
  %retval.0 = phi %struct.kernfs_node* [ null, %entry ], [ %a.addr.0.lcssa57, %while.cond12.preheader ], [ %3, %while.body14 ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @kernfs_depth(%struct.kernfs_node* noundef readnone %from, %struct.kernfs_node* noundef readonly %to) unnamed_addr #11 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %to.addr.0 = phi %struct.kernfs_node* [ %to, %entry ], [ %0, %while.cond ]
  %depth.0 = phi i64 [ 0, %entry ], [ %inc, %while.cond ]
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %to.addr.0, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool = icmp ne %struct.kernfs_node* %0, null
  %cmp = icmp ne %struct.kernfs_node* %to.addr.0, %from
  %1 = and i1 %cmp, %tobool
  %inc = add i64 %depth.0, 1
  br i1 %1, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  ret i64 %depth.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #18, !srcloc !29
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !30
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #18, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_really_is_negative(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %cmp = icmp eq %struct.inode* %0, null
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #0 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #17
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(%struct.idr* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @idr_preload_end() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce) unnamed_addr #7 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #16
  %call7 = call fastcc i32 @__kuid_val(i64 0) #16
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce) unnamed_addr #7 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #16
  %call7 = call fastcc i32 @__kgid_val(i64 0) #16
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernfs_setattr(%struct.kernfs_node* noundef, %struct.iattr* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #12 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !35
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #7 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #7 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @partial_name_hash(i64 noundef %c, i64 noundef %prevhash) unnamed_addr #7 {
entry:
  %shl = shl i64 %c, 4
  %add = add i64 %shl, %prevhash
  %shr = lshr i64 %c, 4
  %add1 = add i64 %add, %shr
  %mul = mul i64 %add1, 11
  ret i64 %mul
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @end_name_hash(i64 noundef %hash) unnamed_addr #7 {
entry:
  %mul.i = mul i64 %hash, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 32
  %conv.i = trunc i64 %shr.i to i32
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_sd_compare(%struct.kernfs_node* nocapture noundef readonly %left, %struct.kernfs_node* nocapture noundef readonly %right) unnamed_addr #0 {
entry:
  %hash = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %left, i64 0, i32 6
  %0 = load i32, i32* %hash, align 8
  %name = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %left, i64 0, i32 3
  %1 = load i8*, i8** %name, align 8
  %ns = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %left, i64 0, i32 5
  %2 = load i8*, i8** %ns, align 8
  %call = call fastcc i32 @kernfs_name_compare(i32 noundef %0, i8* noundef %1, i8* noundef %2, %struct.kernfs_node* noundef %right) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #8 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @kernfs_inc_rev(%struct.kernfs_node* nocapture noundef %parent) unnamed_addr #14 {
entry:
  %rev = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 7, i32 0, i32 3
  %0 = load i64, i64* %rev, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %rev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_name_compare(i32 noundef %hash, i8* noundef %name, i8* noundef readnone %ns, %struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #0 {
entry:
  %hash1 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 6
  %0 = load i32, i32* %hash1, align 8
  %cmp = icmp ugt i32 %0, %hash
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp ult i32 %0, %hash
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %ns6 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 5
  %1 = load i8*, i8** %ns6, align 8
  %cmp7 = icmp ugt i8* %1, %ns
  br i1 %cmp7, label %return, label %if.end9

if.end9:                                          ; preds = %if.end5
  %cmp11 = icmp ult i8* %1, %ns
  br i1 %cmp11, label %return, label %if.end13

if.end13:                                         ; preds = %if.end9
  %name14 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 3
  %2 = load i8*, i8** %name14, align 8
  %call = call i32 @strcmp(i8* noundef %name, i8* noundef %2) #17
  br label %return

return:                                           ; preds = %if.end9, %if.end5, %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ %call, %if.end13 ], [ -1, %entry ], [ 1, %if.end ], [ -1, %if.end5 ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strsep(i8** noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @idr_init_base(%struct.idr* nocapture noundef writeonly %idr) unnamed_addr #8 {
entry:
  %idr_rt = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 0
  call fastcc void @xa_init_flags(%struct.xarray* noundef %idr_rt) #16
  %idr_base = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 1
  store i32 0, i32* %idr_base, align 8
  %idr_next = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 2
  store i32 0, i32* %idr_next, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init_flags(%struct.xarray* nocapture noundef writeonly %xa) unnamed_addr #8 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  store i32 33554436, i32* %xa_flags, align 4
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  store i8* null, i8** %xa_head, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @kernfs_dir_changed(%struct.kernfs_node* nocapture noundef readonly %parent, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %rev = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 7, i32 0, i32 3
  %0 = load i64, i64* %rev, align 8
  %d_time = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 10
  %1 = load i64, i64* %d_time, align 8
  %cmp.not = icmp ne i64 %0, %1
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @kernfs_get_inode(%struct.super_block* noundef, %struct.kernfs_node* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @kernfs_set_rev(%struct.kernfs_node* nocapture noundef readonly %parent, %struct.dentry* nocapture noundef writeonly %dentry) unnamed_addr #14 {
entry:
  %rev = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 7, i32 0, i32 3
  %0 = load i64, i64* %rev, align 8
  %d_time = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 10
  store i64 %0, i64* %d_time, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_splice_alias(%struct.inode* noundef, %struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node* noundef %pos) unnamed_addr #0 {
entry:
  %call15 = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %pos) #16
  %cmp.not16 = icmp eq i32 %call15, 1
  br i1 %cmp.not16, label %if.end, label %while.end

if.end:                                           ; preds = %entry, %cleanup
  %pos.addr.017 = phi %struct.kernfs_node* [ %0, %cleanup ], [ %pos, %entry ]
  %children = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos.addr.017, i64 0, i32 7, i32 0, i32 1
  %call1 = call %struct.rb_node* @rb_first(%struct.rb_root* noundef %children) #17
  %tobool.not = icmp eq %struct.rb_node* %call1, null
  br i1 %tobool.not, label %while.end, label %cleanup

cleanup:                                          ; preds = %if.end
  %add.ptr11 = getelementptr %struct.rb_node, %struct.rb_node* %call1, i64 -1
  %0 = bitcast %struct.rb_node* %add.ptr11 to %struct.kernfs_node*
  %call = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %0) #16
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %while.end.loopexit.split.loop.exit

while.end.loopexit.split.loop.exit:               ; preds = %cleanup
  %1 = bitcast %struct.rb_node* %add.ptr11 to %struct.kernfs_node*
  br label %while.end

while.end:                                        ; preds = %if.end, %while.end.loopexit.split.loop.exit, %entry
  %pos.addr.0.lcssa = phi %struct.kernfs_node* [ %pos, %entry ], [ %1, %while.end.loopexit.split.loop.exit ], [ %pos.addr.017, %if.end ]
  ret %struct.kernfs_node* %pos.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_first(%struct.rb_root* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 -2147483647, i32* elementtype(i32) %counter) #18, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_drain(%struct.kernfs_node* noundef %kn) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %call = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %kn) #16
  %call1 = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef %kn) #16
  br i1 %call1, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/dir.c\22; .popsection; .long 14472b - 14470b; .short 465; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  %counter.i = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 1, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp37 = icmp eq i32 %0, -2147483647
  br i1 %cmp37, label %do.end51, label %if.end40

if.end40:                                         ; preds = %if.end
  %1 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !38
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #17
  %deactivate_waitq = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call, i64 0, i32 7
  %call4177 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %deactivate_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #17
  %2 = load volatile i32, i32* %counter.i, align 4
  %cmp4478 = icmp eq i32 %2, -2147483647
  br i1 %cmp4478, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end40, %cleanup
  call void @schedule() #17
  %call41 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %deactivate_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #17
  %3 = load volatile i32, i32* %counter.i, align 4
  %cmp44 = icmp eq i32 %3, -2147483647
  br i1 %cmp44, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end40
  call void @finish_wait(%struct.wait_queue_head* noundef %deactivate_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #18
  br label %do.end51

do.end51:                                         ; preds = %if.end, %for.end
  call void @kernfs_drain_open_files(%struct.kernfs_node* noundef %kn) #17
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_drain_open_files(%struct.kernfs_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_rename_lock, i64 0, i32 0, i32 0)) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kernfs_rename_lock, i64 0, i32 0, i32 0)) #16
  call fastcc void @arch_local_irq_enable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #18, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dots(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  switch i64 %0, label %return [
    i64 0, label %if.then
    i64 1, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @dir_emit_dot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #16
  br i1 %call, label %if.end3.thread, label %return

if.end3.thread:                                   ; preds = %if.then
  store i64 1, i64* %pos, align 8
  br label %if.then6

if.then6:                                         ; preds = %entry, %if.end3.thread
  %call7 = call fastcc i1 @dir_emit_dotdot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #16
  br i1 %call7, label %if.end9, label %return

if.end9:                                          ; preds = %if.then6
  store i64 2, i64* %pos, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9, %if.then6, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then6 ], [ true, %if.end9 ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_dir_pos(i8* noundef readnone %ns, %struct.kernfs_node* noundef readonly %parent, i64 noundef %hash, %struct.kernfs_node* noundef %pos) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kernfs_node* %pos, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef nonnull %pos) #16
  br i1 %call, label %land.lhs.true, label %land.end.thread

land.lhs.true:                                    ; preds = %if.then
  %parent1 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent1, align 8
  %cmp = icmp eq %struct.kernfs_node* %0, %parent
  br i1 %cmp, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %land.lhs.true, %if.then
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %pos) #16
  br label %if.end7

land.end:                                         ; preds = %land.lhs.true
  %hash2 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos, i64 0, i32 6
  %1 = load i32, i32* %hash2, align 8
  %conv = zext i32 %1 to i64
  %cmp3 = icmp eq i64 %conv, %hash
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %pos) #16
  br i1 %cmp3, label %land.rhs33.preheader, label %if.end7

if.end7:                                          ; preds = %land.end, %land.end.thread, %entry
  %2 = add i64 %hash, -2
  %3 = icmp ult i64 %2, 2147483645
  br i1 %3, label %if.then15, label %while.end53

if.then15:                                        ; preds = %if.end7
  %rb_node = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 7, i32 0, i32 1, i32 0
  %node.087 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool16.not88 = icmp eq %struct.rb_node* %node.087, null
  br i1 %tobool16.not88, label %while.end53, label %while.body

while.body:                                       ; preds = %if.then15, %if.end29
  %node.089 = phi %struct.rb_node* [ %node.0, %if.end29 ], [ %node.087, %if.then15 ]
  %hash17 = getelementptr %struct.rb_node, %struct.rb_node* %node.089, i64 1, i32 1
  %4 = bitcast %struct.rb_node** %hash17 to i32*
  %5 = load i32, i32* %4, align 8
  %conv18 = zext i32 %5 to i64
  %cmp19 = icmp sgt i64 %conv18, %hash
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.089, i64 0, i32 2
  br label %if.end29

if.else:                                          ; preds = %while.body
  %cmp24 = icmp ult i64 %conv18, %hash
  br i1 %cmp24, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.089, i64 0, i32 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then21
  %node.1.in = phi %struct.rb_node** [ %rb_left, %if.then21 ], [ %rb_right, %if.then26 ]
  %node.0 = load %struct.rb_node*, %struct.rb_node** %node.1.in, align 8
  %tobool16.not = icmp eq %struct.rb_node* %node.0, null
  br i1 %tobool16.not, label %if.end30, label %while.body

if.end30:                                         ; preds = %if.end29, %if.else
  %add.ptr82.le91 = getelementptr %struct.rb_node, %struct.rb_node* %node.089, i64 -1
  %6 = bitcast %struct.rb_node* %add.ptr82.le91 to %struct.kernfs_node*
  %tobool32.not93 = icmp eq %struct.rb_node* %add.ptr82.le91, null
  br i1 %tobool32.not93, label %while.end53, label %land.rhs33.preheader

land.rhs33.preheader:                             ; preds = %land.end, %if.end30
  %pos.addr.594.ph = phi %struct.kernfs_node* [ %pos, %land.end ], [ %6, %if.end30 ]
  br label %land.rhs33

land.rhs33:                                       ; preds = %land.rhs33.preheader, %while.body40
  %pos.addr.594 = phi %struct.kernfs_node* [ %spec.select, %while.body40 ], [ %pos.addr.594.ph, %land.rhs33.preheader ]
  %call34 = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef nonnull %pos.addr.594) #16
  br i1 %call34, label %lor.rhs, label %while.body40

lor.rhs:                                          ; preds = %land.rhs33
  %ns35 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos.addr.594, i64 0, i32 5
  %7 = load i8*, i8** %ns35, align 8
  %cmp36.not = icmp eq i8* %7, %ns
  br i1 %cmp36.not, label %while.end53, label %while.body40

while.body40:                                     ; preds = %land.rhs33, %lor.rhs
  %rb = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos.addr.594, i64 0, i32 4
  %call42 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %rb) #17
  %tobool43.not = icmp eq %struct.rb_node* %call42, null
  %add.ptr5181 = getelementptr %struct.rb_node, %struct.rb_node* %call42, i64 -1
  %8 = bitcast %struct.rb_node* %add.ptr5181 to %struct.kernfs_node*
  %spec.select = select i1 %tobool43.not, %struct.kernfs_node* null, %struct.kernfs_node* %8
  %tobool32.not = icmp eq %struct.kernfs_node* %spec.select, null
  br i1 %tobool32.not, label %while.end53, label %land.rhs33

while.end53:                                      ; preds = %lor.rhs, %while.body40, %if.then15, %if.end7, %if.end30
  %pos.addr.5.lcssa = phi %struct.kernfs_node* [ null, %if.end30 ], [ null, %if.end7 ], [ null, %if.then15 ], [ null, %while.body40 ], [ %pos.addr.594, %lor.rhs ]
  ret %struct.kernfs_node* %pos.addr.5.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @dt_type(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #4 {
entry:
  %mode = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 11
  %0 = load i16, i16* %mode, align 2
  %1 = lshr i16 %0, 12
  %conv1 = trunc i16 %1 to i8
  ret i8 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %type) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %1, i64 noundef %ino, i32 noundef %type) #17
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_dir_next_pos(i8* noundef %ns, %struct.kernfs_node* noundef %parent, i64 noundef %ino, %struct.kernfs_node* noundef %pos) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kernfs_node* @kernfs_dir_pos(i8* noundef %ns, %struct.kernfs_node* noundef %parent, i64 noundef %ino, %struct.kernfs_node* noundef %pos) #16
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %if.end10, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %rb22 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 4
  %call123 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %rb22) #17
  %tobool2.not24 = icmp eq %struct.rb_node* %call123, null
  %add.ptr2125 = getelementptr %struct.rb_node, %struct.rb_node* %call123, i64 -1
  %tobool6.not2730 = icmp eq %struct.rb_node* %add.ptr2125, null
  %tobool6.not27 = or i1 %tobool2.not24, %tobool6.not2730
  br i1 %tobool6.not27, label %if.end10, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %do.body.preheader
  %0 = bitcast %struct.rb_node* %add.ptr2125 to %struct.kernfs_node*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %do.body.backedge
  %pos.addr.128 = phi %struct.kernfs_node* [ %pos.addr.1, %do.body.backedge ], [ %0, %land.rhs.preheader ]
  %call7 = call fastcc i1 @kernfs_active(%struct.kernfs_node* noundef nonnull %pos.addr.128) #16
  br i1 %call7, label %lor.rhs, label %do.body.backedge

lor.rhs:                                          ; preds = %land.rhs
  %ns8 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos.addr.128, i64 0, i32 5
  %1 = load i8*, i8** %ns8, align 8
  %cmp.not = icmp eq i8* %1, %ns
  br i1 %cmp.not, label %if.end10, label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs, %land.rhs
  %rb = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %pos.addr.128, i64 0, i32 4
  %call1 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %rb) #17
  %tobool2.not = icmp eq %struct.rb_node* %call1, null
  %add.ptr21 = getelementptr %struct.rb_node, %struct.rb_node* %call1, i64 -1
  %2 = bitcast %struct.rb_node* %add.ptr21 to %struct.kernfs_node*
  %pos.addr.1 = select i1 %tobool2.not, %struct.kernfs_node* null, %struct.kernfs_node* %2
  %tobool6.not = icmp eq %struct.kernfs_node* %pos.addr.1, null
  br i1 %tobool6.not, label %if.end10, label %land.rhs

if.end10:                                         ; preds = %lor.rhs, %do.body.backedge, %do.body.preheader, %entry
  %pos.addr.2 = phi %struct.kernfs_node* [ null, %entry ], [ null, %do.body.preheader ], [ %pos.addr.128, %lor.rhs ], [ null, %do.body.backedge ]
  ret %struct.kernfs_node* %pos.addr.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 8
  %4 = load i64, i64* %i_ino, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1, i64 noundef %1, i64 noundef %4, i32 noundef 4) #17
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dotdot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc i64 @parent_ino(%struct.dentry* noundef %2) #16
  %call1 = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 noundef 2, i64 noundef %1, i64 noundef %call, i32 noundef 4) #17
  %cmp = icmp eq i32 %call1, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @parent_ino(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.67* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  ret i64 %3
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #15

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readonly }

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
!8 = !{i64 2149707061}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152846874}
!11 = !{i64 2152872065}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2152879146}
!14 = !{i64 2152882473}
!15 = !{i64 2152893972}
!16 = !{i64 2152895729}
!17 = !{i64 2152884576}
!18 = !{i64 2152898243}
!19 = !{i64 197652}
!20 = !{i64 2152904393}
!21 = !{i64 2152906361}
!22 = !{i64 2148961609, i64 2148961656, i64 2148961662, i64 2148961699, i64 2148961717, i64 2148963028, i64 2148963076, i64 2148963124, i64 2148963187, i64 2148963236, i64 2148961795, i64 2148961820, i64 2148961846, i64 2148961852, i64 2148962694, i64 2148962734, i64 2148962752, i64 2148962784, i64 2148962812, i64 2148962866, i64 2148962886, i64 2148962983, i64 2148961875, i64 2148961889, i64 2148961895, i64 2148961945, i64 2148961991, i64 2148962024}
!23 = !{i64 2148963788, i64 2148963835, i64 2148963841, i64 2148963878, i64 2148963896, i64 2148964839, i64 2148964887, i64 2148964935, i64 2148964998, i64 2148965047, i64 2148963974, i64 2148963999, i64 2148964025, i64 2148964031, i64 2148964068, i64 2148964074, i64 2148964124, i64 2148964170, i64 2148964203}
!24 = !{i64 2148955906, i64 2148955953, i64 2148955959, i64 2148955996, i64 2148956014, i64 2148957355, i64 2148957403, i64 2148957451, i64 2148957514, i64 2148957563, i64 2148956092, i64 2148956117, i64 2148956143, i64 2148956149, i64 2148957021, i64 2148957061, i64 2148957079, i64 2148957111, i64 2148957139, i64 2148957193, i64 2148957213, i64 2148957310, i64 2148956172, i64 2148956186, i64 2148956192, i64 2148956242, i64 2148956288, i64 2148956321}
!25 = !{i64 2148001765, i64 2148001798, i64 2148001851, i64 2148001910, i64 2148001944, i64 2148001999, i64 2148002028, i64 2148002048}
!26 = !{i64 2149732904}
!27 = !{i64 2149676191}
!28 = !{i64 2148967622, i64 2148967669, i64 2148967675, i64 2148967712, i64 2148967730, i64 2148969041, i64 2148969089, i64 2148969137, i64 2148969200, i64 2148969249, i64 2148967808, i64 2148967833, i64 2148967859, i64 2148967865, i64 2148968707, i64 2148968747, i64 2148968765, i64 2148968797, i64 2148968825, i64 2148968879, i64 2148968899, i64 2148968996, i64 2148967888, i64 2148967902, i64 2148967908, i64 2148967958, i64 2148968004, i64 2148968037}
!29 = !{i64 2148018973, i64 2148019006, i64 2148019058, i64 2148019117, i64 2148019151, i64 2148019207, i64 2148019236, i64 2148019263}
!30 = !{i64 2147916476, i64 2147917124, i64 2147917154, i64 2147917186, i64 2147917220, i64 2147917256, i64 2147917281}
!31 = !{i64 2147905903, i64 2147906419, i64 2147906449, i64 2147906476, i64 2147906510, i64 2147906540}
!32 = !{i64 2149722062}
!33 = !{i64 2149729343}
!34 = !{i64 2151865416}
!35 = !{i64 2149104186, i64 2149104233, i64 2149104239, i64 2149104276, i64 2149104294, i64 2149105221, i64 2149105269, i64 2149105317, i64 2149105380, i64 2149105429, i64 2149104372, i64 2149104397, i64 2149104423, i64 2149104429, i64 2149104466, i64 2149104472, i64 2149104522, i64 2149104568, i64 2149104601}
!36 = !{i64 2147915624, i64 2147916140, i64 2147916170, i64 2147916197, i64 2147916231, i64 2147916261}
!37 = !{i64 2152861893}
!38 = !{!"auto-init"}
!39 = !{i64 2149711354}
!40 = !{i64 2149736207}
!41 = !{i64 2148946450, i64 2148946497, i64 2148946503, i64 2148946540, i64 2148946558, i64 2148947898, i64 2148947946, i64 2148947994, i64 2148948057, i64 2148948106, i64 2148946636, i64 2148946661, i64 2148946687, i64 2148946693, i64 2148947564, i64 2148947604, i64 2148947622, i64 2148947654, i64 2148947682, i64 2148947736, i64 2148947756, i64 2148947853, i64 2148946716, i64 2148946730, i64 2148946736, i64 2148946786, i64 2148946832, i64 2148946865}
