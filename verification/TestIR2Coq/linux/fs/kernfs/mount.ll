; ModuleID = 'fs/kernfs/mount.c'
source_filename = "fs/kernfs/mount.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.75, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35, [48 x i8] }
%struct.anon.35 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
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
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.7, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.8 }
%union.anon.8 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.9, %union.anon.58, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.58 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.60 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.23, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.22, [0 x i64] }
%struct.anon.22 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%struct.request_queue = type opaque
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.23 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.24, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.25, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.24 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.25 = type { %struct.pte_t }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.75 = type { %struct.pipe_inode_info* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.6, i64, i32 }
%union.anon.6 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { {}*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.66, i32 }
%union.anon.66 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type { i32 (%struct.inode*, i32*, i32*, %struct.inode*)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)*, i32 (%struct.dentry*, i8*, %struct.dentry*)*, %struct.dentry* (%struct.dentry*)*, i32 (%struct.inode*)*, i32 (%struct.super_block*, i8*, i32*, i64*)*, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)*, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)*, i64 (%struct.inode*)*, i64 }
%struct.fid = type { %union.anon.67 }
%union.anon.67 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i16, i16, i32, i32, i32 }
%struct.iomap = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.76, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.76 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.kernfs_super_info = type { %struct.super_block*, %struct.kernfs_root*, i8*, %struct.list_head }
%struct.kernfs_fs_context = type { %struct.kernfs_root*, i8*, i64, i8 }

@kernfs_sops = dso_local constant { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* } { %struct.inode* (%struct.super_block*)* null, void (%struct.inode*)* null, void (%struct.inode*)* null, void (%struct.inode*, i32)* null, i32 (%struct.inode*, %struct.writeback_control*)* null, i32 (%struct.inode*)* @generic_delete_inode, void (%struct.inode*)* @kernfs_evict_inode, void (%struct.super_block*)* null, i32 (%struct.super_block*, i32)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.dentry*, %struct.kstatfs*)* @simple_statfs, i32 (%struct.super_block*, i32*, i8*)* null, void (%struct.super_block*)* null, i32 (%struct.seq_file*, %struct.dentry*)* @kernfs_sop_show_options, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* @kernfs_sop_show_path, i32 (%struct.seq_file*, %struct.dentry*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null }, align 8
@kernfs_rwsem = external dso_local global %struct.rw_semaphore, align 8
@.str = private unnamed_addr constant [18 x i8] c"kernfs_node_cache\00", align 1
@kernfs_node_cache = dso_local local_unnamed_addr global %struct.kmem_cache* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"kernfs_iattrs_cache\00", align 1
@kernfs_iattrs_cache = dso_local local_unnamed_addr global %struct.kmem_cache* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1
@find_next_ancestor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\012BUG in find_next_ancestor: called with parent == child\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@kernfs_xattr_handlers = external dso_local global [0 x %struct.xattr_handler*], align 8
@kernfs_export_ops = internal constant %struct.export_operations { i32 (%struct.inode*, i32*, i32*, %struct.inode*)* @kernfs_encode_fh, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @kernfs_fh_to_dentry, %struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @kernfs_fh_to_parent, i32 (%struct.dentry*, i8*, %struct.dentry*)* null, %struct.dentry* (%struct.dentry*)* @kernfs_get_parent_dentry, i32 (%struct.inode*)* null, i32 (%struct.super_block*, i8*, i32*, i64*)* null, i32 (%struct.inode*, i64, i64, %struct.iomap*, i1, i32*)* null, i32 (%struct.inode*, %struct.iomap*, i32, %struct.iattr*)* null, i64 (%struct.inode*)* null, i64 0 }, align 8
@kernfs_dops = external dso_local constant %struct.dentry_operations, align 64

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(%struct.inode* noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_evict_inode(%struct.inode* noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(%struct.dentry* noundef, %struct.kstatfs* noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_sop_show_options(%struct.seq_file* noundef %sf, %struct.dentry* nocapture noundef readonly %dentry) #1 {
entry:
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %dentry) #8
  %call1 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %call) #8
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call1, i64 0, i32 5
  %0 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %syscall_ops, align 8
  %tobool.not = icmp eq %struct.kernfs_syscall_ops* %0, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %show_options = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %0, i64 0, i32 0
  %1 = load i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.seq_file*, %struct.kernfs_root*)** %show_options, align 8
  %tobool2.not = icmp eq i32 (%struct.seq_file*, %struct.kernfs_root*)* %1, null
  br i1 %tobool2.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call4 = call i32 %1(%struct.seq_file* noundef %sf, %struct.kernfs_root* noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_sop_show_path(%struct.seq_file* noundef %sf, %struct.dentry* noundef %dentry) #1 {
entry:
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %dentry) #8
  %call1 = call fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* noundef %call) #8
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %call1, i64 0, i32 5
  %0 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %syscall_ops, align 8
  %tobool.not = icmp eq %struct.kernfs_syscall_ops* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %show_path = getelementptr inbounds %struct.kernfs_syscall_ops, %struct.kernfs_syscall_ops* %0, i64 0, i32 4
  %1 = load i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)** %show_path, align 8
  %tobool2.not = icmp eq i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* %1, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call4 = call i32 %1(%struct.seq_file* noundef %sf, %struct.kernfs_node* noundef %call, %struct.kernfs_root* noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call5 = call i32 @seq_dentry(%struct.seq_file* noundef %sf, %struct.dentry* noundef %dentry, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.kernfs_root* @kernfs_root_from_sb(%struct.super_block* nocapture noundef readonly %sb) local_unnamed_addr #2 {
entry:
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  %0 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %cmp = icmp eq %struct.super_operations* %0, bitcast ({ %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }* @kernfs_sops to %struct.super_operations*)
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %1 = bitcast i8** %s_fs_info to %struct.kernfs_super_info**
  %2 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %1, align 8
  %root = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %2, i64 0, i32 1
  %3 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.kernfs_root* [ %3, %if.then ], [ null, %entry ]
  ret %struct.kernfs_root* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @kernfs_node_dentry(%struct.kernfs_node* noundef %kn, %struct.super_block* nocapture noundef readonly %sb) local_unnamed_addr #1 {
entry:
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  %0 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %cmp.not = icmp eq %struct.super_operations* %0, bitcast ({ %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }* @kernfs_sops to %struct.super_operations*)
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !7

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/mount.c\22; .popsection; .long 14472b - 14470b; .short 201; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !8
  unreachable

do.end7:                                          ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %1 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %1) #8
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool8.not = icmp eq %struct.kernfs_node* %2, null
  br i1 %tobool8.not, label %cleanup86, label %if.end10

if.end10:                                         ; preds = %do.end7
  %call11 = call fastcc %struct.kernfs_node* @find_next_ancestor(%struct.kernfs_node* noundef %kn, %struct.kernfs_node* noundef null) #8
  %tobool12.not = icmp eq %struct.kernfs_node* %call11, null
  br i1 %tobool12.not, label %if.then27, label %do.body40, !prof !9

if.then27:                                        ; preds = %if.end10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/mount.c\22; .popsection; .long 14472b - 14470b; .short 210; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  br label %cleanup86.sink.split

do.body40:                                        ; preds = %if.end10, %cleanup
  %knparent.0 = phi %struct.kernfs_node* [ %call45, %cleanup ], [ %call11, %if.end10 ]
  %dentry.0 = phi %struct.dentry* [ %call79, %cleanup ], [ %1, %if.end10 ]
  %cmp41 = icmp eq %struct.kernfs_node* %knparent.0, %kn
  br i1 %cmp41, label %cleanup86, label %if.end44

if.end44:                                         ; preds = %do.body40
  %call45 = call fastcc %struct.kernfs_node* @find_next_ancestor(%struct.kernfs_node* noundef %kn, %struct.kernfs_node* noundef nonnull %knparent.0) #8
  %tobool47.not = icmp eq %struct.kernfs_node* %call45, null
  br i1 %tobool47.not, label %if.then62, label %cleanup, !prof !9

if.then62:                                        ; preds = %if.end44
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/kernfs/mount.c\22; .popsection; .long 14472b - 14470b; .short 222; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !11
  br label %cleanup86.sink.split

cleanup:                                          ; preds = %if.end44
  %name = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call45, i64 0, i32 3
  %3 = load i8*, i8** %name, align 8
  %call77 = call i64 @strlen(i8* noundef %3) #9
  %conv78 = trunc i64 %call77 to i32
  %call79 = call %struct.dentry* @lookup_positive_unlocked(i8* noundef %3, %struct.dentry* noundef %dentry.0, i32 noundef %conv78) #9
  call void @dput(%struct.dentry* noundef %dentry.0) #9
  %4 = bitcast %struct.dentry* %call79 to i8*
  %call80 = call fastcc i1 @IS_ERR(i8* noundef %4) #8
  br i1 %call80, label %cleanup86, label %do.body40

cleanup86.sink.split:                             ; preds = %if.then27, %if.then62
  %dentry.0.lcssa120.sink = phi %struct.dentry* [ %dentry.0, %if.then62 ], [ %1, %if.then27 ]
  call void @dput(%struct.dentry* noundef %dentry.0.lcssa120.sink) #9
  %call74 = call fastcc i8* @ERR_PTR(i64 noundef -22) #8
  %5 = bitcast i8* %call74 to %struct.dentry*
  br label %cleanup86

cleanup86:                                        ; preds = %do.body40, %cleanup, %cleanup86.sink.split, %do.end7
  %retval.2 = phi %struct.dentry* [ %1, %do.end7 ], [ %5, %cleanup86.sink.split ], [ %dentry.0, %do.body40 ], [ %call79, %cleanup ]
  ret %struct.dentry* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dget(%struct.dentry* noundef returned %dentry) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @find_next_ancestor(%struct.kernfs_node* noundef readonly %child, %struct.kernfs_node* noundef readnone %parent) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.kernfs_node* %child, %parent
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  %.b29 = load i1, i1* @find_next_ancestor.__already_done, align 1
  br i1 %.b29, label %return, label %if.then5, !prof !7

if.then5:                                         ; preds = %if.then
  store i1 true, i1* @find_next_ancestor.__already_done, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0)) #11
  br label %return

while.cond:                                       ; preds = %entry, %while.body
  %child.addr.0 = phi %struct.kernfs_node* [ %0, %while.body ], [ %child, %entry ]
  %parent15 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %child.addr.0, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent15, align 8
  %cmp16.not = icmp eq %struct.kernfs_node* %0, %parent
  br i1 %cmp16.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %tobool19.not = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool19.not, label %return, label %while.cond

return:                                           ; preds = %while.cond, %while.body, %if.then, %if.then5
  %retval.0 = phi %struct.kernfs_node* [ null, %if.then5 ], [ null, %if.then ], [ %child.addr.0, %while.cond ], [ null, %while.body ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @lookup_positive_unlocked(i8* noundef, %struct.dentry* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @kernfs_super_ns(%struct.super_block* nocapture noundef readonly %sb) local_unnamed_addr #2 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.kernfs_super_info**
  %1 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %0, align 8
  %ns = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %1, i64 0, i32 2
  %2 = load i8*, i8** %ns, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernfs_get_tree(%struct.fs_context* noundef %fc) local_unnamed_addr #1 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.kernfs_fs_context**
  %1 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %0, align 8
  %call = call fastcc i8* @kzalloc() #8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup21, label %if.end

if.end:                                           ; preds = %entry
  %root = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %1, i64 0, i32 0
  %2 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  %root1 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %root1 to %struct.kernfs_root**
  store %struct.kernfs_root* %2, %struct.kernfs_root** %3, align 8
  %ns_tag = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %1, i64 0, i32 1
  %4 = load i8*, i8** %ns_tag, align 8
  %ns = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %ns to i8**
  store i8* %4, i8** %5, align 8
  %node = getelementptr inbounds i8, i8* %call, i64 24
  %6 = bitcast i8* %node to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %6) #8
  %s_fs_info = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 12
  store i8* %call, i8** %s_fs_info, align 8
  %call2 = call %struct.super_block* @sget_fc(%struct.fs_context* noundef %fc, i32 (%struct.super_block*, %struct.fs_context*)* noundef nonnull @kernfs_test_super, i32 (%struct.super_block*, %struct.fs_context*)* noundef nonnull @kernfs_set_super) #9
  %7 = bitcast %struct.super_block* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %7) #8
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %7) #8
  %conv = trunc i64 %call5 to i32
  br label %cleanup21

if.end6:                                          ; preds = %if.end
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %call2, i64 0, i32 13
  %8 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %tobool7.not = icmp eq %struct.dentry* %8, null
  br i1 %tobool7.not, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.end6
  %s_fs_info10 = getelementptr inbounds %struct.super_block, %struct.super_block* %call2, i64 0, i32 27
  %9 = bitcast i8** %s_fs_info10 to %struct.kernfs_super_info**
  %10 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %9, align 8
  %new_sb_created = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %1, i64 0, i32 3
  store i8 1, i8* %new_sb_created, align 8
  %call11 = call fastcc i32 @kernfs_fill_super(%struct.super_block* noundef %call2, %struct.kernfs_fs_context* noundef %1) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %call2, i64 0, i32 10
  %11 = load i64, i64* %s_flags, align 16
  %or = or i64 %11, 1073741824
  store i64 %or, i64* %s_flags, align 16
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #9
  %node15 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %10, i64 0, i32 3
  %root16 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %10, i64 0, i32 1
  %12 = load %struct.kernfs_root*, %struct.kernfs_root** %root16, align 8
  %supers = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %12, i64 0, i32 6
  call fastcc void @list_add(%struct.list_head* noundef %node15, %struct.list_head* noundef %supers) #8
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #9
  %.pre = load %struct.dentry*, %struct.dentry** %s_root, align 8
  br label %if.end17

cleanup:                                          ; preds = %if.then8
  call void @deactivate_locked_super(%struct.super_block* noundef %call2) #9
  br label %cleanup21

if.end17:                                         ; preds = %cleanup.thread, %if.end6
  %13 = phi %struct.dentry* [ %.pre, %cleanup.thread ], [ %8, %if.end6 ]
  %call19 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %13) #8
  %root20 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  store %struct.dentry* %13, %struct.dentry** %root20, align 8
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup, %entry, %if.end17, %if.then4
  %retval.1 = phi i32 [ %conv, %if.then4 ], [ 0, %if.end17 ], [ %call11, %cleanup ], [ -12, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #9
  ret i8* %call.i.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.super_block* @sget_fc(%struct.fs_context* noundef, i32 (%struct.super_block*, %struct.fs_context*)* noundef, i32 (%struct.super_block*, %struct.fs_context*)* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @kernfs_test_super(%struct.super_block* nocapture noundef readonly %sb, %struct.fs_context* nocapture noundef readonly %fc) #2 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.kernfs_super_info**
  %1 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %0, align 8
  %s_fs_info1 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 12
  %2 = bitcast i8** %s_fs_info1 to %struct.kernfs_super_info**
  %3 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %2, align 8
  %root = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %1, i64 0, i32 1
  %4 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  %root2 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %3, i64 0, i32 1
  %5 = load %struct.kernfs_root*, %struct.kernfs_root** %root2, align 8
  %cmp = icmp eq %struct.kernfs_root* %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %ns = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %1, i64 0, i32 2
  %6 = load i8*, i8** %ns, align 8
  %ns3 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %3, i64 0, i32 2
  %7 = load i8*, i8** %ns3, align 8
  %cmp4 = icmp eq i8* %6, %7
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernfs_set_super(%struct.super_block* noundef %sb, %struct.fs_context* noundef %fc) #1 {
entry:
  %fs_private = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 3
  %0 = bitcast i8** %fs_private to %struct.kernfs_fs_context**
  %1 = load %struct.kernfs_fs_context*, %struct.kernfs_fs_context** %0, align 8
  %ns_tag = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %1, i64 0, i32 1
  store i8* null, i8** %ns_tag, align 8
  %call = call i32 @set_anon_super_fc(%struct.super_block* noundef %sb, %struct.fs_context* noundef %fc) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_fill_super(%struct.super_block* noundef %sb, %struct.kernfs_fs_context* nocapture noundef readonly %kfc) unnamed_addr #1 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.kernfs_super_info**
  %1 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %0, align 8
  %sb1 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %1, i64 0, i32 0
  store %struct.super_block* %sb, %struct.super_block** %sb1, align 8
  %s_iflags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 11
  %2 = load i64, i64* %s_iflags, align 8
  %or = or i64 %2, 6
  store i64 %or, i64* %s_iflags, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 3
  store i64 4096, i64* %s_blocksize, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 2
  store i8 12, i8* %s_blocksize_bits, align 4
  %magic = getelementptr inbounds %struct.kernfs_fs_context, %struct.kernfs_fs_context* %kfc, i64 0, i32 2
  %3 = load i64, i64* %magic, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 12
  store i64 %3, i64* %s_magic, align 32
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 6
  store %struct.super_operations* bitcast ({ %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }* @kernfs_sops to %struct.super_operations*), %struct.super_operations** %s_op, align 16
  %s_xattr = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 17
  store %struct.xattr_handler** getelementptr inbounds ([0 x %struct.xattr_handler*], [0 x %struct.xattr_handler*]* @kernfs_xattr_handlers, i64 0, i64 0), %struct.xattr_handler*** %s_xattr, align 32
  %root2 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %1, i64 0, i32 1
  %4 = load %struct.kernfs_root*, %struct.kernfs_root** %root2, align 8
  %flags = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %4, i64 0, i32 1
  %5 = load i32, i32* %flags, align 8
  %and = and i32 %5, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %s_export_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 9
  store %struct.export_operations* @kernfs_export_ops, %struct.export_operations** %s_export_op, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %s_time_gran = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 28
  store i32 1, i32* %s_time_gran, align 16
  %seeks = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 39, i32 3
  store i32 0, i32* %seeks, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #9
  %6 = load %struct.kernfs_root*, %struct.kernfs_root** %root2, align 8
  %kn = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %6, i64 0, i32 0
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %kn, align 8
  %call = call %struct.inode* @kernfs_get_inode(%struct.super_block* noundef %sb, %struct.kernfs_node* noundef %7) #9
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #9
  %tobool4.not = icmp eq %struct.inode* %call, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.dentry* @d_make_root(%struct.inode* noundef nonnull %call) #9
  %tobool8.not = icmp eq %struct.dentry* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  store %struct.dentry* %call7, %struct.dentry** %s_root, align 8
  %s_d_op = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 37
  store %struct.dentry_operations* @kernfs_dops, %struct.dentry_operations** %s_d_op, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %if.end ], [ -12, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(%struct.super_block* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #0

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_free_fs_context(%struct.fs_context* nocapture noundef %fc) local_unnamed_addr #1 {
entry:
  %s_fs_info = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 12
  %0 = load i8*, i8** %s_fs_info, align 8
  call void @kfree(i8* noundef %0) #9
  store i8* null, i8** %s_fs_info, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernfs_kill_sb(%struct.super_block* noundef %sb) local_unnamed_addr #1 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = load i8*, i8** %s_fs_info, align 8
  call void @down_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #9
  %node = getelementptr inbounds i8, i8* %0, i64 24
  %1 = bitcast i8* %node to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %1) #8
  call void @up_write(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #9
  call void @kill_anon_super(%struct.super_block* noundef %sb) #9
  call void @kfree(i8* noundef %0) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(%struct.super_block* noundef) local_unnamed_addr #0

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @kernfs_init() local_unnamed_addr #5 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #9
  store %struct.kmem_cache* %call, %struct.kmem_cache** @kernfs_node_cache, align 8
  %call1 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 88, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #9
  store %struct.kmem_cache* %call1, %struct.kmem_cache** @kernfs_iattrs_cache, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #2 {
entry:
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %tobool.not = icmp eq %struct.kernfs_node* %0, null
  %spec.select = select i1 %tobool.not, %struct.kernfs_node* %kn, %struct.kernfs_node* %0
  %root = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %spec.select, i64 0, i32 7, i32 0, i32 2
  %1 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  ret %struct.kernfs_root* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @d_really_is_negative(%struct.dentry* noundef %dentry) #8
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.kernfs_node* [ %1, %if.end ], [ null, %entry ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_really_is_negative(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %cmp = icmp eq %struct.inode* %0, null
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_dentry(%struct.seq_file* noundef, %struct.dentry* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(%struct.lockref* noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super_fc(%struct.super_block* noundef, %struct.fs_context* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @kernfs_get_inode(%struct.super_block* noundef, %struct.kernfs_node* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_make_root(%struct.inode* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @kernfs_encode_fh(%struct.inode* nocapture noundef readonly %inode, i32* nocapture noundef writeonly %fh, i32* nocapture noundef %max_len, %struct.inode* nocapture noundef readnone %parent) #7 {
entry:
  %0 = load i32, i32* %max_len, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %max_len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %1 = bitcast i8** %i_private to %struct.kernfs_node**
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %1, align 8
  store i32 2, i32* %max_len, align 4
  %id = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %2, i64 0, i32 9
  %3 = load i64, i64* %id, align 8
  %4 = bitcast i32* %fh to i64*
  store i64 %3, i64* %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 255, %if.then ], [ 254, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @kernfs_fh_to_dentry(%struct.super_block* noundef %sb, %struct.fid* nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 {
entry:
  %call = call fastcc %struct.dentry* @__kernfs_fh_to_dentry(%struct.super_block* noundef %sb, %struct.fid* noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, i1 noundef false) #8
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @kernfs_fh_to_parent(%struct.super_block* noundef %sb, %struct.fid* nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 {
entry:
  %call = call fastcc %struct.dentry* @__kernfs_fh_to_dentry(%struct.super_block* noundef %sb, %struct.fid* noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, i1 noundef true) #8
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @kernfs_get_parent_dentry(%struct.dentry* nocapture noundef readonly %child) #1 {
entry:
  %call = call fastcc %struct.kernfs_node* @kernfs_dentry_node(%struct.dentry* noundef %child) #8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %child, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %parent = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 2
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %parent, align 8
  %call1 = call %struct.inode* @kernfs_get_inode(%struct.super_block* noundef %0, %struct.kernfs_node* noundef %1) #9
  %call2 = call %struct.dentry* @d_obtain_alias(%struct.inode* noundef %call1) #9
  ret %struct.dentry* %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__kernfs_fh_to_dentry(%struct.super_block* noundef %sb, %struct.fid* nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type, i1 noundef %get_parent) unnamed_addr #1 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.kernfs_super_info**
  %1 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %0, align 8
  %cmp = icmp slt i32 %fh_len, 2
  br i1 %cmp, label %cleanup21, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %fh_type, label %cleanup21 [
    i32 254, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %2 = bitcast %struct.fid* %fid to i64*
  %3 = load i64, i64* %2, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end, %if.end
  %gen = getelementptr inbounds %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 1
  %4 = bitcast i16* %gen to i32*
  %5 = load i32, i32* %4, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw i64 %conv, 32
  %ino = getelementptr %struct.fid, %struct.fid* %fid, i64 0, i32 0, i32 0, i32 0
  %6 = load i32, i32* %ino, align 4
  %conv3 = zext i32 %6 to i64
  %or = or i64 %shl, %conv3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %id.0 = phi i64 [ %or, %sw.bb1 ], [ %3, %sw.bb ]
  %root = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %1, i64 0, i32 1
  %7 = load %struct.kernfs_root*, %struct.kernfs_root** %root, align 8
  %call = call %struct.kernfs_node* @kernfs_find_and_get_node_by_id(%struct.kernfs_root* noundef %7, i64 noundef %id.0) #9
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %sw.epilog
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -116) #8
  %8 = bitcast i8* %call5 to %struct.dentry*
  br label %cleanup21

if.end6:                                          ; preds = %sw.epilog
  br i1 %get_parent, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end6
  %call9 = call %struct.kernfs_node* @kernfs_get_parent(%struct.kernfs_node* noundef nonnull %call) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #9
  %tobool10.not = icmp eq %struct.kernfs_node* %call9, null
  br i1 %tobool10.not, label %cleanup.thread, label %if.end14

cleanup.thread:                                   ; preds = %if.then8
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef -116) #8
  %9 = bitcast i8* %call12 to %struct.dentry*
  br label %cleanup21

if.end14:                                         ; preds = %if.then8, %if.end6
  %kn.0 = phi %struct.kernfs_node* [ %call, %if.end6 ], [ %call9, %if.then8 ]
  %call15 = call %struct.inode* @kernfs_get_inode(%struct.super_block* noundef %sb, %struct.kernfs_node* noundef nonnull %kn.0) #9
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %kn.0) #9
  %tobool16.not = icmp eq %struct.inode* %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %call18 = call fastcc i8* @ERR_PTR(i64 noundef -116) #8
  %10 = bitcast i8* %call18 to %struct.dentry*
  br label %cleanup21

if.end19:                                         ; preds = %if.end14
  %call20 = call %struct.dentry* @d_obtain_alias(%struct.inode* noundef nonnull %call15) #9
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup.thread, %if.end, %entry, %if.end19, %if.then17, %if.then4
  %retval.1 = phi %struct.dentry* [ %call20, %if.end19 ], [ %10, %if.then17 ], [ %8, %if.then4 ], [ null, %entry ], [ null, %if.end ], [ %9, %cleanup.thread ]
  ret %struct.dentry* %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_find_and_get_node_by_id(%struct.kernfs_root* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_get_parent(%struct.kernfs_node* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(%struct.kernfs_node* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode* noundef) local_unnamed_addr #0

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

attributes #0 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2153913322}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153914929}
!11 = !{i64 2153916509}
