; ModuleID = 'fs/xattr.c'
source_filename = "fs/xattr.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.72, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
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
%struct.uid_gid_map = type { i32, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21, [48 x i8] }
%struct.anon.21 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.22, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.ctl_table*, i32, i32, i32 }
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
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.posix_acl_entry = type { i16, i16, %union.anon.68 }
%union.anon.68 = type { %struct.kuid_t }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.6, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.8, %union.anon.9 }
%union.anon.8 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.9 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.60, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.11, [0 x i64] }
%struct.anon.11 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.40, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.25, %union.anon.26, i32 }
%struct.request_queue = type opaque
%union.anon.25 = type { %struct.list_head }
%union.anon.26 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.27 }
%struct.anon.27 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.39, i32, [12 x i8] }
%union.anon.39 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.40 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.41, %union.anon.58, %struct.atomic_t, [8 x i8] }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.58 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.59, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.59 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.60 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.55, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.56, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.55 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.56 = type { %struct.pte_t }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.24 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.24 = type { %struct.callback_head }
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
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.72 = type { %struct.pipe_inode_info* }
%struct.pt_regs = type { %union.anon.73, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.73 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.simple_xattr = type { %struct.list_head, i8*, i64, [0 x i8] }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"security.capability\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"system.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"trusted.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"user.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"system.posix_acl_access\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"system.posix_acl_default\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @xattr_supported_namespace(%struct.inode* noundef %inode, i8* noundef %prefix) local_unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_xattr = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 17
  %1 = load %struct.xattr_handler**, %struct.xattr_handler*** %s_xattr, align 32
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 1
  %2 = load i16, i16* %i_opflags, align 2
  %3 = and i16 %2, 8
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = call i1 @is_bad_inode(%struct.inode* noundef %inode) #10
  %. = select i1 %call, i32 -5, i32 -95, !prof !7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = call i64 @strlen(i8* noundef %prefix) #10
  %tobool7.not = icmp eq %struct.xattr_handler** %1, null
  br i1 %tobool7.not, label %cleanup, label %for.cond

for.cond:                                         ; preds = %if.end5, %for.body
  %handler.0.in = phi %struct.xattr_handler** [ %handlers.0, %for.body ], [ %1, %if.end5 ]
  %handler.0 = load %struct.xattr_handler*, %struct.xattr_handler** %handler.0.in, align 8
  %cmp.not = icmp eq %struct.xattr_handler* %handler.0, null
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %handlers.0 = getelementptr %struct.xattr_handler*, %struct.xattr_handler** %handler.0.in, i64 1
  %call10 = call fastcc i8* @xattr_prefix(%struct.xattr_handler* noundef nonnull %handler.0) #11
  %call11 = call i32 @strncmp(i8* noundef %call10, i8* noundef %prefix, i64 noundef %call6) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %for.body, %if.end5, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ -95, %if.end5 ], [ -95, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_bad_inode(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @xattr_prefix(%struct.xattr_handler* nocapture noundef readonly %handler) unnamed_addr #3 {
entry:
  %prefix = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %handler, i64 0, i32 1
  %0 = load i8*, i8** %prefix, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %name = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %handler, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %1, %cond.false ], [ %0, %entry ]
  ret i8* %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__vfs_setxattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call fastcc %struct.xattr_handler* @xattr_resolve_name(%struct.inode* noundef %inode, i8** noundef nonnull %name.addr) #11
  %0 = bitcast %struct.xattr_handler* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #11
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %set = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %call, i64 0, i32 5
  %1 = load i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)** %set, align 8
  %tobool.not = icmp eq i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp = icmp eq i64 %size, 0
  %spec.select = select i1 %cmp, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %value
  %2 = load i8*, i8** %name.addr, align 8
  %call9 = call i32 %1(%struct.xattr_handler* noundef %call, %struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i8* noundef %2, i8* noundef %spec.select, i64 noundef %size, i32 noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call9, %if.end4 ], [ -95, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.xattr_handler* @xattr_resolve_name(%struct.inode* noundef %inode, i8** nocapture noundef %name) unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_xattr = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 17
  %1 = load %struct.xattr_handler**, %struct.xattr_handler*** %s_xattr, align 32
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 1
  %2 = load i16, i16* %i_opflags, align 2
  %3 = and i16 %2, 8
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = call i1 @is_bad_inode(%struct.inode* noundef %inode) #10
  br i1 %call, label %if.then4, label %if.end, !prof !7

if.then4:                                         ; preds = %if.then
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -5) #11
  %4 = bitcast i8* %call5 to %struct.xattr_handler*
  br label %cleanup32

if.end:                                           ; preds = %if.then
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -95) #11
  %5 = bitcast i8* %call6 to %struct.xattr_handler*
  br label %cleanup32

if.end7:                                          ; preds = %entry
  %tobool8.not = icmp eq %struct.xattr_handler** %1, null
  br i1 %tobool8.not, label %if.end30, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %handler.055 = load %struct.xattr_handler*, %struct.xattr_handler** %1, align 8
  %cmp.not56 = icmp eq %struct.xattr_handler* %handler.055, null
  br i1 %cmp.not56, label %if.end30, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = load i8*, i8** %name, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %handler.058 = phi %struct.xattr_handler* [ %handler.055, %for.body.lr.ph ], [ %handler.0, %for.inc ]
  %.pn = phi %struct.xattr_handler** [ %1, %for.body.lr.ph ], [ %handlers.057, %for.inc ]
  %handlers.057 = getelementptr %struct.xattr_handler*, %struct.xattr_handler** %.pn, i64 1
  %call11 = call fastcc i8* @xattr_prefix(%struct.xattr_handler* noundef nonnull %handler.058) #11
  %call12 = call fastcc i8* @strcmp_prefix(i8* noundef %6, i8* noundef %call11) #11
  %tobool13.not = icmp eq i8* %call12, null
  br i1 %tobool13.not, label %for.inc, label %if.then14

if.then14:                                        ; preds = %for.body
  %prefix = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %handler.058, i64 0, i32 1
  %7 = load i8*, i8** %prefix, align 8
  %tobool15.not = icmp eq i8* %7, null
  %8 = load i8, i8* %call12, align 1
  %tobool18.not = icmp eq i8 %8, 0
  %xor48 = xor i1 %tobool15.not, %tobool18.not
  br i1 %xor48, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.then14
  br i1 %tobool18.not, label %if.end25, label %for.inc

if.end25:                                         ; preds = %if.then22
  %call26 = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  %9 = bitcast i8* %call26 to %struct.xattr_handler*
  br label %cleanup32

if.end27:                                         ; preds = %if.then14
  store i8* %call12, i8** %name, align 8
  br label %cleanup32

for.inc:                                          ; preds = %if.then22, %for.body
  %handler.0 = load %struct.xattr_handler*, %struct.xattr_handler** %handlers.057, align 8
  %cmp.not = icmp eq %struct.xattr_handler* %handler.0, null
  br i1 %cmp.not, label %if.end30, label %for.body

if.end30:                                         ; preds = %for.inc, %for.cond.preheader, %if.end7
  %call31 = call fastcc i8* @ERR_PTR(i64 noundef -95) #11
  %10 = bitcast i8* %call31 to %struct.xattr_handler*
  br label %cleanup32

cleanup32:                                        ; preds = %if.end27, %if.end25, %if.end30, %if.end, %if.then4
  %retval.2 = phi %struct.xattr_handler* [ %10, %if.end30 ], [ %4, %if.then4 ], [ %5, %if.end ], [ %handler.058, %if.end27 ], [ %9, %if.end25 ]
  ret %struct.xattr_handler* %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__vfs_setxattr_noperm(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 noundef 9) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 4
  %1 = load i32, i32* %i_flags, align 4
  %and = and i32 %1, -4097
  store i32 %and, i32* %i_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 1
  %2 = load i16, i16* %i_opflags, align 2
  %3 = and i16 %2, 8
  %tobool3.not = icmp eq i16 %3, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @__vfs_setxattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.inode* noundef %0, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #11
  switch i32 %call5, label %cleanup [
    i32 0, label %if.end18.thread
    i32 -11, label %if.end18.thread62
  ]

if.end18.thread:                                  ; preds = %if.then4
  call fastcc void @fsnotify_xattr(%struct.dentry* noundef %dentry) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call9 = call i1 @is_bad_inode(%struct.inode* noundef %0) #10
  br i1 %call9, label %cleanup, label %if.end18.thread62, !prof !7

if.end18.thread62:                                ; preds = %if.then4, %if.else
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end18.thread62, %if.end18.thread, %if.else
  %retval.0 = phi i32 [ -5, %if.else ], [ 0, %if.end18.thread ], [ -95, %if.end18.thread62 ], [ %call5, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_xattr(%struct.dentry* noundef %dentry) unnamed_addr #5 {
entry:
  call fastcc void @fsnotify_dentry(%struct.dentry* noundef %dentry) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__vfs_setxattr_locked(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags, %struct.inode** noundef %delegated_inode) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @xattr_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %0, i8* noundef %name, i32 noundef 2) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @security_inode_setxattr(%struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @try_break_deleg(%struct.inode* noundef %0, %struct.inode** noundef %delegated_inode) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @__vfs_setxattr_noperm(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %if.end4, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call1, %if.end ], [ %call5, %if.end4 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xattr_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i8* noundef %name, i32 noundef %mask) unnamed_addr #0 {
entry:
  %and = and i32 %mask, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %0 = load i32, i32* %i_flags, align 4
  %1 = and i32 %0, 12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %call = call fastcc i1 @HAS_UNMAPPED_ID(%struct.inode* noundef %inode) #11
  br i1 %call, label %return, label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %call10 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 noundef 9) #10
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %call13 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 noundef 7) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false12
  %call17 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end16
  %call20 = call i1 @capable(i32 noundef 21) #10
  %cond = select i1 %tobool.not, i32 -61, i32 -1
  %spec.select = select i1 %call20, i32 0, i32 %cond
  br label %return

if.end25:                                         ; preds = %if.end16
  %call26 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef 5) #10
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end58

if.then28:                                        ; preds = %if.end25
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %3 = load i16, i16* %i_mode, align 8
  %4 = and i16 %3, -4096
  switch i16 %4, label %if.then36 [
    i16 -32768, label %if.end40
    i16 16384, label %if.end40
  ]

if.then36:                                        ; preds = %if.then28
  %cond39 = select i1 %tobool.not, i32 -61, i32 -1
  br label %return

if.end40:                                         ; preds = %if.then28, %if.then28
  %5 = and i16 %3, -3584
  %6 = icmp ne i16 %5, 16896
  %brmerge = or i1 %tobool.not, %6
  br i1 %brmerge, label %if.end58, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end40
  %call55 = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode) #10
  br i1 %call55, label %if.end58, label %return

if.end58:                                         ; preds = %if.end40, %land.lhs.true54, %if.end25
  %call59 = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #10
  br label %return

return:                                           ; preds = %if.then19, %land.lhs.true54, %if.end9, %lor.lhs.false12, %if.end, %if.then, %if.end58, %if.then36
  %retval.0 = phi i32 [ %call59, %if.end58 ], [ %cond39, %if.then36 ], [ -1, %if.then ], [ -1, %if.end ], [ 0, %lor.lhs.false12 ], [ 0, %if.end9 ], [ -1, %land.lhs.true54 ], [ %spec.select, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_inode_setxattr(%struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call i32 @cap_inode_setxattr(%struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_break_deleg(%struct.inode* noundef %inode, %struct.inode** noundef writeonly %delegated_inode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @break_deleg(%struct.inode* noundef %inode, i32 noundef 2049) #11
  %cmp = icmp eq i32 %call, -11
  %tobool = icmp ne %struct.inode** %delegated_inode, null
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.inode* %inode, %struct.inode** %delegated_inode, align 8
  call void @ihold(%struct.inode* noundef %inode) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_setxattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %value.addr = alloca i8*, align 8
  %delegated_inode = alloca %struct.inode*, align 8
  store i8* %value, i8** %value.addr, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %1 = bitcast %struct.inode** %delegated_inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %call1 = call i32 @cap_convert_nscap(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8** noundef nonnull %value.addr, i64 noundef %size) #10
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %conv34 = zext i32 %call1 to i64
  br label %if.end4

if.end4:                                          ; preds = %if.end, %land.lhs.true, %entry
  %size.addr.0 = phi i64 [ %conv34, %if.end ], [ %size, %land.lhs.true ], [ 0, %entry ]
  br label %retry_deleg

retry_deleg:                                      ; preds = %if.then7, %if.end4
  call fastcc void @inode_lock(%struct.inode* noundef %0) #11
  %2 = load i8*, i8** %value.addr, align 8
  %call5 = call i32 @__vfs_setxattr_locked(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %2, i64 noundef %size.addr.0, i32 noundef %flags, %struct.inode** noundef nonnull %delegated_inode) #11
  call fastcc void @inode_unlock(%struct.inode* noundef %0) #11
  %3 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %tobool6.not = icmp eq %struct.inode* %3, null
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %retry_deleg
  %call8 = call fastcc i32 @break_deleg_wait(%struct.inode** noundef nonnull %delegated_inode) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %retry_deleg, label %if.end12

if.end12:                                         ; preds = %if.then7, %retry_deleg
  %error.0 = phi i32 [ %call8, %if.then7 ], [ %call5, %retry_deleg ]
  %4 = load i8*, i8** %value.addr, align 8
  %cmp13.not = icmp eq i8* %4, %value
  br i1 %cmp13.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @kfree(i8* noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then15, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %error.0, %if.then15 ], [ %error.0, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_convert_nscap(%struct.user_namespace* noundef, %struct.dentry* noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg_wait(%struct.inode** nocapture noundef %delegated_inode) unnamed_addr #0 {
entry:
  %0 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %call = call fastcc i32 @break_deleg(%struct.inode* noundef %0, i32 noundef 1) #11
  %1 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  call void @iput(%struct.inode* noundef %1) #10
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_getxattr_alloc(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, i8** nocapture noundef %xattr_value, i64 noundef %xattr_size, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %1 = load i8*, i8** %xattr_value, align 8
  %call = call fastcc i32 @xattr_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %0, i8* noundef %name, i32 noundef 4) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.xattr_handler* @xattr_resolve_name(%struct.inode* noundef %0, i8** noundef nonnull %name.addr) #11
  %2 = bitcast %struct.xattr_handler* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %2) #11
  br i1 %call2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %2) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %get = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %call1, i64 0, i32 4
  %3 = load i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)** %get, align 8
  %tobool6.not = icmp eq i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* %3, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %4 = load i8*, i8** %name.addr, align 8
  %call10 = call i32 %3(%struct.xattr_handler* noundef %call1, %struct.dentry* noundef %dentry, %struct.inode* noundef %0, i8* noundef %4, i8* noundef null, i64 noundef 0) #10
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %conv13 = sext i32 %call10 to i64
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %tobool15.not = icmp eq i8* %1, null
  %conv1666 = zext i32 %call10 to i64
  %cmp17 = icmp ugt i64 %conv1666, %xattr_size
  %or.cond = select i1 %tobool15.not, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end14
  %5 = load i8*, i8** %xattr_value, align 8
  %add = add nuw i32 %call10, 1
  %conv20 = sext i32 %add to i64
  %call21 = call i8* @krealloc(i8* noundef %5, i64 noundef %conv20, i32 noundef %flags) #10
  %tobool22.not = icmp eq i8* %call21, null
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then19
  %call27 = call i8* @memset(i8* noundef nonnull %call21, i32 noundef 0, i64 noundef %conv20) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end14, %if.end24
  %value.0 = phi i8* [ %call21, %if.end24 ], [ %1, %if.end14 ]
  %6 = load i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)** %get, align 8
  %call31 = call i32 %6(%struct.xattr_handler* noundef %call1, %struct.dentry* noundef %dentry, %struct.inode* noundef %0, i8* noundef %4, i8* noundef nonnull %value.0, i64 noundef %conv1666) #10
  store i8* %value.0, i8** %xattr_value, align 8
  %conv32 = sext i32 %call31 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end5, %if.end28, %if.then12, %if.then3, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %call4, %if.then3 ], [ %conv13, %if.then12 ], [ %conv32, %if.end28 ], [ -95, %if.end5 ], [ -12, %if.then19 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @krealloc(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__vfs_getxattr(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i8* noundef %name, i8* noundef %value, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call fastcc %struct.xattr_handler* @xattr_resolve_name(%struct.inode* noundef %inode, i8** noundef nonnull %name.addr) #11
  %0 = bitcast %struct.xattr_handler* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %get = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %call, i64 0, i32 4
  %1 = load i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)** %get, align 8
  %tobool.not = icmp eq i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %name.addr, align 8
  %call6 = call i32 %1(%struct.xattr_handler* noundef %call, %struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i8* noundef %2, i8* noundef %value, i64 noundef %size) #10
  %conv = sext i32 %call6 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i64 [ %call2, %if.then ], [ %conv, %if.end4 ], [ -95, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_getxattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, i8* noundef %value, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @xattr_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %0, i8* noundef %name, i32 noundef 4) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup18

if.end:                                           ; preds = %entry
  %call6 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 noundef 9) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %nolsm

if.then8:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, i8* %name, i64 9
  %call9 = call fastcc i64 @xattr_getsecurity(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %0, i8* noundef %add.ptr, i8* noundef %value, i64 noundef %size) #11
  %conv10 = trunc i64 %call9 to i32
  %cmp = icmp eq i32 %conv10, -95
  %sext = shl i64 %call9, 32
  %conv14 = ashr exact i64 %sext, 32
  br i1 %cmp, label %nolsm, label %cleanup18

nolsm:                                            ; preds = %if.end, %if.then8
  %call17 = call i64 @__vfs_getxattr(%struct.dentry* noundef %dentry, %struct.inode* noundef %0, i8* noundef %name, i8* noundef %value, i64 noundef %size) #11
  br label %cleanup18

cleanup18:                                        ; preds = %if.then8, %nolsm, %if.then
  %retval.1 = phi i64 [ %conv, %if.then ], [ %call17, %nolsm ], [ %conv14, %if.then8 ]
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @xattr_getsecurity(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i8* noundef %name, i8* noundef %value, i64 noundef %size) unnamed_addr #0 {
entry:
  %buffer = alloca i8*, align 8
  %0 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %buffer, align 8
  %tobool = icmp ne i8* %value, null
  %tobool1 = icmp ne i64 %size, 0
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @security_inode_getsecurity(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i8* noundef %name, i8** noundef nonnull %buffer, i1 noundef false) #11
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @security_inode_getsecurity(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i8* noundef %name, i8** noundef nonnull %buffer, i1 noundef true) #11
  %conv3 = sext i32 %call2 to i64
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp ugt i64 %conv3, %size
  br i1 %cmp7, label %out, label %if.end10

if.end10:                                         ; preds = %if.end6
  %1 = load i8*, i8** %buffer, align 8
  %call11 = call i8* @memcpy(i8* noundef nonnull %value, i8* noundef %1, i64 noundef %conv3) #10
  br label %out

out:                                              ; preds = %if.end6, %if.end10
  %len.0 = phi i64 [ %conv3, %if.end10 ], [ -34, %if.end6 ]
  %2 = load i8*, i8** %buffer, align 8
  call void @kfree(i8* noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %out, %if.end
  %retval.0 = phi i64 [ %conv3, %if.end ], [ %len.0, %out ], [ %conv, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vfs_listxattr(%struct.dentry* noundef %dentry, i8* noundef %list, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #11
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  %0 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %listxattr = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %0, i64 0, i32 15
  %1 = load i64 (%struct.dentry*, i8*, i64)*, i64 (%struct.dentry*, i8*, i64)** %listxattr, align 8
  %tobool2.not = icmp eq i64 (%struct.dentry*, i8*, i64)* %1, null
  br i1 %tobool2.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 1
  %2 = load i16, i16* %i_opflags, align 2
  %3 = and i16 %2, 8
  %tobool4.not = icmp eq i16 %3, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call8 = call i64 %1(%struct.dentry* noundef %dentry, i8* noundef %list, i64 noundef %size) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then5
  %error.0 = phi i64 [ %call8, %if.then5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i64 %error.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #3 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__vfs_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #11
  %call1 = call fastcc %struct.xattr_handler* @xattr_resolve_name(%struct.inode* noundef %call, i8** noundef nonnull %name.addr) #11
  %0 = bitcast %struct.xattr_handler* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %0) #11
  %conv = trunc i64 %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %set = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %call1, i64 0, i32 5
  %1 = load i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)** %set, align 8
  %tobool.not = icmp eq i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %2 = load i8*, i8** %name.addr, align 8
  %call7 = call i32 %1(%struct.xattr_handler* noundef %call1, %struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.inode* noundef %call, i8* noundef %2, i8* noundef null, i64 noundef 0, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call7, %if.end5 ], [ -95, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__vfs_removexattr_locked(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, %struct.inode** noundef %delegated_inode) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @xattr_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %0, i8* noundef %name, i32 noundef 2) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @security_inode_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @try_break_deleg(%struct.inode* noundef %0, %struct.inode** noundef %delegated_inode) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @__vfs_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end8
  call fastcc void @fsnotify_xattr(%struct.dentry* noundef %dentry) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then11, %if.end8, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call1, %if.end ], [ %call5, %if.end4 ], [ %call9, %if.end8 ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_inode_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call i32 @cap_inode_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %delegated_inode = alloca %struct.inode*, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %1 = bitcast %struct.inode** %delegated_inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  br label %retry_deleg

retry_deleg:                                      ; preds = %if.then, %entry
  call fastcc void @inode_lock(%struct.inode* noundef %0) #11
  %call = call i32 @__vfs_removexattr_locked(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef %name, %struct.inode** noundef nonnull %delegated_inode) #11
  call fastcc void @inode_unlock(%struct.inode* noundef %0) #11
  %2 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %tobool.not = icmp eq %struct.inode* %2, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %retry_deleg
  %call1 = call fastcc i32 @break_deleg_wait(%struct.inode** noundef nonnull %delegated_inode) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %retry_deleg, label %if.end4

if.end4:                                          ; preds = %if.then, %retry_deleg
  %error.0 = phi i32 [ %call1, %if.then ], [ %call, %retry_deleg ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
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
  %call = call fastcc i64 @__se_sys_setxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setxattr(i64 noundef %pathname, i64 noundef %name, i64 noundef %value, i64 noundef %size, i64 noundef %flags) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %name to i8*
  %2 = inttoptr i64 %value to i8*
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_setxattr(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %size, i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_lsetxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
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
  %call = call fastcc i64 @__se_sys_lsetxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_lsetxattr(i64 noundef %pathname, i64 noundef %name, i64 noundef %value, i64 noundef %size, i64 noundef %flags) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %name to i8*
  %2 = inttoptr i64 %value to i8*
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_lsetxattr(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %size, i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fsetxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
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
  %call = call fastcc i64 @__se_sys_fsetxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fsetxattr(i64 noundef %fd, i64 noundef %name, i64 noundef %value, i64 noundef %size, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %name to i8*
  %1 = inttoptr i64 %value to i8*
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_fsetxattr(i32 noundef %conv, i8* noundef %0, i8* noundef %1, i64 noundef %size, i32 noundef %conv1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_getxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getxattr(i64 noundef %pathname, i64 noundef %name, i64 noundef %value, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %name to i8*
  %2 = inttoptr i64 %value to i8*
  %call = call fastcc i64 @__do_sys_getxattr(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %size) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_lgetxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_lgetxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_lgetxattr(i64 noundef %pathname, i64 noundef %name, i64 noundef %value, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %name to i8*
  %2 = inttoptr i64 %value to i8*
  %call = call fastcc i64 @__do_sys_lgetxattr(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %size) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fgetxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_fgetxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fgetxattr(i64 noundef %fd, i64 noundef %name, i64 noundef %value, i64 noundef %size) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %name to i8*
  %1 = inttoptr i64 %value to i8*
  %call = call fastcc i64 @__do_sys_fgetxattr(i32 noundef %conv, i8* noundef %0, i8* noundef %1, i64 noundef %size) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_listxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_listxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_listxattr(i64 noundef %pathname, i64 noundef %list, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %list to i8*
  %call = call fastcc i64 @__do_sys_listxattr(i8* noundef %0, i8* noundef %1, i64 noundef %size) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_llistxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_llistxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_llistxattr(i64 noundef %pathname, i64 noundef %list, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %list to i8*
  %call = call fastcc i64 @__do_sys_llistxattr(i8* noundef %0, i8* noundef %1, i64 noundef %size) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_flistxattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_flistxattr(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_flistxattr(i64 noundef %fd, i64 noundef %list, i64 noundef %size) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %list to i8*
  %call = call fastcc i64 @__do_sys_flistxattr(i32 noundef %conv, i8* noundef %0, i64 noundef %size) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_removexattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_removexattr(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_removexattr(i64 noundef %pathname, i64 noundef %name) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %name to i8*
  %call = call fastcc i64 @__do_sys_removexattr(i8* noundef %0, i8* noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_lremovexattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_lremovexattr(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_lremovexattr(i64 noundef %pathname, i64 noundef %name) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %1 = inttoptr i64 %name to i8*
  %call = call fastcc i64 @__do_sys_lremovexattr(i8* noundef %0, i8* noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fremovexattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_fremovexattr(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fremovexattr(i64 noundef %fd, i64 noundef %name) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %0 = inttoptr i64 %name to i8*
  %call = call fastcc i64 @__do_sys_fremovexattr(i32 noundef %conv, i8* noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @generic_listxattr(%struct.dentry* noundef %dentry, i8* noundef %buffer, i64 noundef %buffer_size) local_unnamed_addr #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_xattr = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 17
  %1 = load %struct.xattr_handler**, %struct.xattr_handler*** %s_xattr, align 32
  %tobool.not = icmp eq i8* %buffer, null
  %tobool1.not = icmp eq %struct.xattr_handler** %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.end48, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %handler.098 = load %struct.xattr_handler*, %struct.xattr_handler** %1, align 8
  %cmp.not99 = icmp eq %struct.xattr_handler* %handler.098, null
  br i1 %cmp.not99, label %if.end48, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %handler.0102 = phi %struct.xattr_handler* [ %handler.0, %for.inc ], [ %handler.098, %for.cond.preheader ]
  %handlers.0101.pn = phi %struct.xattr_handler** [ %handlers.0101, %for.inc ], [ %1, %for.cond.preheader ]
  %size.0100 = phi i32 [ %size.1, %for.inc ], [ 0, %for.cond.preheader ]
  %handlers.0101 = getelementptr %struct.xattr_handler*, %struct.xattr_handler** %handlers.0101.pn, i64 1
  %name = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %handler.0102, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool3.not = icmp eq i8* %2, null
  br i1 %tobool3.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %list = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %handler.0102, i64 0, i32 3
  %3 = load i1 (%struct.dentry*)*, i1 (%struct.dentry*)** %list, align 8
  %tobool4.not = icmp eq i1 (%struct.dentry*)* %3, null
  br i1 %tobool4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = call i1 %3(%struct.dentry* noundef %dentry) #10
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.pre104 = load i8*, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false
  %4 = phi i8* [ %.pre104, %land.lhs.true.if.end_crit_edge ], [ %2, %lor.lhs.false ]
  %call8 = call i64 @strlen(i8* noundef %4) #10
  %5 = trunc i64 %call8 to i32
  %6 = add i32 %size.0100, 1
  %conv10 = add i32 %6, %5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.end
  %size.1 = phi i32 [ %conv10, %if.end ], [ %size.0100, %land.lhs.true ], [ %size.0100, %for.body ]
  %handler.0 = load %struct.xattr_handler*, %struct.xattr_handler** %handlers.0101, align 8
  %cmp.not = icmp eq %struct.xattr_handler* %handler.0, null
  br i1 %cmp.not, label %if.end48, label %for.body

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %cleanup.thread, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %if.else
  %handler.190 = load %struct.xattr_handler*, %struct.xattr_handler** %1, align 8
  %cmp17.not91 = icmp eq %struct.xattr_handler* %handler.190, null
  br i1 %cmp17.not91, label %cleanup.thread, label %for.body19

for.body19:                                       ; preds = %for.cond16.preheader, %for.inc42
  %handler.196 = phi %struct.xattr_handler* [ %handler.1, %for.inc42 ], [ %handler.190, %for.cond16.preheader ]
  %handlers.195.pn = phi %struct.xattr_handler** [ %handlers.195, %for.inc42 ], [ %1, %for.cond16.preheader ]
  %buf.093 = phi i8* [ %buf.1, %for.inc42 ], [ %buffer, %for.cond16.preheader ]
  %buffer_size.addr.092 = phi i64 [ %buffer_size.addr.1, %for.inc42 ], [ %buffer_size, %for.cond16.preheader ]
  %handlers.195 = getelementptr %struct.xattr_handler*, %struct.xattr_handler** %handlers.195.pn, i64 1
  %name20 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %handler.196, i64 0, i32 0
  %7 = load i8*, i8** %name20, align 8
  %tobool21.not = icmp eq i8* %7, null
  br i1 %tobool21.not, label %for.inc42, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %for.body19
  %list23 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %handler.196, i64 0, i32 3
  %8 = load i1 (%struct.dentry*)*, i1 (%struct.dentry*)** %list23, align 8
  %tobool24.not = icmp eq i1 (%struct.dentry*)* %8, null
  br i1 %tobool24.not, label %if.end29, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %lor.lhs.false22
  %call27 = call i1 %8(%struct.dentry* noundef %dentry) #10
  br i1 %call27, label %land.lhs.true25.if.end29_crit_edge, label %for.inc42

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  %.pre = load i8*, i8** %name20, align 8
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %lor.lhs.false22
  %9 = phi i8* [ %.pre, %land.lhs.true25.if.end29_crit_edge ], [ %7, %lor.lhs.false22 ]
  %call31 = call i64 @strlen(i8* noundef %9) #10
  %add32 = add i64 %call31, 1
  %cmp33 = icmp ult i64 %buffer_size.addr.092, %add32
  br i1 %cmp33, label %cleanup50, label %if.end36

if.end36:                                         ; preds = %if.end29
  %10 = load i8*, i8** %name20, align 8
  %call39 = call i8* @memcpy(i8* noundef %buf.093, i8* noundef %10, i64 noundef %add32) #10
  %add.ptr = getelementptr i8, i8* %buf.093, i64 %add32
  %sub = sub i64 %buffer_size.addr.092, %add32
  br label %for.inc42

for.inc42:                                        ; preds = %for.body19, %land.lhs.true25, %if.end36
  %buffer_size.addr.1 = phi i64 [ %sub, %if.end36 ], [ %buffer_size.addr.092, %land.lhs.true25 ], [ %buffer_size.addr.092, %for.body19 ]
  %buf.1 = phi i8* [ %add.ptr, %if.end36 ], [ %buf.093, %land.lhs.true25 ], [ %buf.093, %for.body19 ]
  %handler.1 = load %struct.xattr_handler*, %struct.xattr_handler** %handlers.195, align 8
  %cmp17.not = icmp eq %struct.xattr_handler* %handler.1, null
  br i1 %cmp17.not, label %cleanup.thread, label %for.body19

cleanup.thread:                                   ; preds = %for.inc42, %for.cond16.preheader, %if.else
  %buf.2 = phi i8* [ %buffer, %if.else ], [ %buffer, %for.cond16.preheader ], [ %buf.1, %for.inc42 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %buf.2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %buffer to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv46 = trunc i64 %sub.ptr.sub to i32
  br label %if.end48

if.end48:                                         ; preds = %for.inc, %for.cond.preheader, %cleanup.thread, %if.then
  %size.3 = phi i32 [ 0, %if.then ], [ %conv46, %cleanup.thread ], [ 0, %for.cond.preheader ], [ %size.1, %for.inc ]
  %conv49 = zext i32 %size.3 to i64
  br label %cleanup50

cleanup50:                                        ; preds = %if.end29, %if.end48
  %retval.1 = phi i64 [ %conv49, %if.end48 ], [ -34, %if.end29 ]
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @xattr_full_name(%struct.xattr_handler* nocapture noundef readonly %handler, i8* noundef readnone %name) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @xattr_prefix(%struct.xattr_handler* noundef %handler) #11
  %call1 = call i64 @strlen(i8* noundef %call) #10
  %idx.neg = sub i64 0, %call1
  %add.ptr = getelementptr i8, i8* %name, i64 %idx.neg
  ret i8* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.simple_xattr* @simple_xattr_alloc(i8* noundef %value, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %size, -33
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add nuw i64 %size, 32
  %call = call fastcc i8* @kvmalloc(i64 noundef %add, i32 noundef 3264) #11
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %0 = bitcast i8* %call to %struct.simple_xattr*
  %size3 = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %size3 to i64*
  store i64 %size, i64* %1, align 8
  %value4 = getelementptr inbounds i8, i8* %call, i64 32
  %call5 = call i8* @memcpy(i8* noundef %value4, i8* noundef %value, i64 noundef %size) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi %struct.simple_xattr* [ %0, %if.end2 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.simple_xattr* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef -1) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_xattr_get(%struct.simple_xattrs* noundef %xattrs, i8* noundef %name, i8* noundef %buffer, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %head = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 0
  %0 = bitcast %struct.simple_xattrs* %xattrs to %struct.simple_xattr**
  %xattr.039 = load %struct.simple_xattr*, %struct.simple_xattr** %0, align 8
  %list40 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.039, i64 0, i32 0
  %cmp.not41 = icmp eq %struct.list_head* %list40, %head
  br i1 %cmp.not41, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %xattr.042 = phi %struct.simple_xattr* [ %xattr.0, %for.inc ], [ %xattr.039, %entry ]
  %name2 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.042, i64 0, i32 1
  %1 = load i8*, i8** %name2, align 8
  %call = call i32 @strcmp(i8* noundef %name, i8* noundef %1) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %size3 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.042, i64 0, i32 2
  %2 = load i64, i64* %size3, align 8
  %conv = trunc i64 %2 to i32
  %tobool4.not = icmp eq i8* %buffer, null
  br i1 %tobool4.not, label %for.end, label %if.then5

if.then5:                                         ; preds = %if.end
  %cmp7 = icmp ugt i64 %2, %size
  br i1 %cmp7, label %for.end, label %if.else

if.else:                                          ; preds = %if.then5
  %arraydecay = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.042, i64 0, i32 3, i64 0
  %call11 = call i8* @memcpy(i8* noundef nonnull %buffer, i8* noundef %arraydecay, i64 noundef %2) #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %3 = bitcast %struct.simple_xattr* %xattr.042 to %struct.simple_xattr**
  %xattr.0 = load %struct.simple_xattr*, %struct.simple_xattr** %3, align 8
  %list = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, %head
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.then5, %if.end, %if.else
  %ret.0 = phi i32 [ %conv, %if.else ], [ %conv, %if.end ], [ -34, %if.then5 ], [ -61, %entry ], [ -61, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @simple_xattr_set(%struct.simple_xattrs* noundef %xattrs, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags, i64* noundef writeonly %removed_size) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64* %removed_size, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -1, i64* %removed_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i8* %value, null
  br i1 %tobool1.not, label %if.end12, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call %struct.simple_xattr* @simple_xattr_alloc(i8* noundef nonnull %value, i64 noundef %size) #11
  %tobool3.not = icmp eq %struct.simple_xattr* %call, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2
  %call6 = call noalias i8* @kstrdup(i8* noundef %name, i32 noundef 3264) #10
  %name7 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %call, i64 0, i32 1
  store i8* %call6, i8** %name7, align 8
  %tobool9.not = icmp eq i8* %call6, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  %0 = bitcast %struct.simple_xattr* %call to i8*
  call void @kvfree(i8* noundef nonnull %0) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5, %if.end
  %new_xattr.0 = phi %struct.simple_xattr* [ %call, %if.end5 ], [ null, %if.end ]
  %rlock.i = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %head = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 0
  %1 = bitcast %struct.simple_xattrs* %xattrs to %struct.simple_xattr**
  %xattr.099 = load %struct.simple_xattr*, %struct.simple_xattr** %1, align 8
  %list100 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.099, i64 0, i32 0
  %cmp.not101 = icmp eq %struct.list_head* %list100, %head
  br i1 %cmp.not101, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end12
  %name14111 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.099, i64 0, i32 1
  %2 = load i8*, i8** %name14111, align 8
  %call15112 = call i32 @strcmp(i8* noundef %name, i8* noundef %2) #10
  %tobool16.not113 = icmp eq i32 %call15112, 0
  br i1 %tobool16.not113, label %if.then17, label %for.inc

for.body:                                         ; preds = %for.inc
  %name14 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.0, i64 0, i32 1
  %3 = load i8*, i8** %name14, align 8
  %call15 = call i32 @strcmp(i8* noundef %name, i8* noundef %3) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body, %for.body.preheader
  %list103.lcssa = phi %struct.list_head* [ %list100, %for.body.preheader ], [ %list, %for.body ]
  %xattr.0102.lcssa = phi %struct.simple_xattr* [ %xattr.099, %for.body.preheader ], [ %xattr.0, %for.body ]
  %and = and i32 %flags, 1
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %out

if.else:                                          ; preds = %if.then17
  %tobool20.not = icmp eq %struct.simple_xattr* %new_xattr.0, null
  br i1 %tobool20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %if.else
  %list23 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %new_xattr.0, i64 0, i32 0
  call fastcc void @list_replace(%struct.list_head* noundef %list103.lcssa, %struct.list_head* noundef %list23) #11
  br i1 %tobool.not, label %out, label %out.sink.split

if.else28:                                        ; preds = %if.else
  call fastcc void @list_del(%struct.list_head* noundef %list103.lcssa) #11
  br i1 %tobool.not, label %out, label %out.sink.split

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %xattr.0102114 = phi %struct.simple_xattr* [ %xattr.0, %for.body ], [ %xattr.099, %for.body.preheader ]
  %4 = bitcast %struct.simple_xattr* %xattr.0102114 to %struct.simple_xattr**
  %xattr.0 = load %struct.simple_xattr*, %struct.simple_xattr** %4, align 8
  %list = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, %head
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end12
  %and45 = and i32 %flags, 2
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %out.thread, label %out

out.thread:                                       ; preds = %for.end
  %list49 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %new_xattr.0, i64 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %list49, %struct.list_head* noundef %head) #11
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %cleanup

out.sink.split:                                   ; preds = %if.else28, %if.then21
  %size32 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.0102.lcssa, i64 0, i32 2
  %5 = load i64, i64* %size32, align 8
  store i64 %5, i64* %removed_size, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %for.end, %if.then17, %if.else28, %if.then21
  %err.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.else28 ], [ -17, %if.then17 ], [ -61, %for.end ], [ 0, %out.sink.split ]
  %xattr.1 = phi %struct.simple_xattr* [ %xattr.0102.lcssa, %if.then21 ], [ %xattr.0102.lcssa, %if.else28 ], [ %new_xattr.0, %if.then17 ], [ %new_xattr.0, %for.end ], [ %xattr.0102.lcssa, %out.sink.split ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  %tobool53.not = icmp eq %struct.simple_xattr* %xattr.1, null
  br i1 %tobool53.not, label %cleanup, label %if.then54

if.then54:                                        ; preds = %out
  %name55 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.1, i64 0, i32 1
  %6 = load i8*, i8** %name55, align 8
  call void @kfree(i8* noundef %6) #10
  %7 = bitcast %struct.simple_xattr* %xattr.1 to i8*
  call void @kvfree(i8* noundef nonnull %7) #10
  br label %cleanup

cleanup:                                          ; preds = %out.thread, %out, %if.then54, %if.then2, %if.then10
  %retval.0 = phi i32 [ -12, %if.then10 ], [ -12, %if.then2 ], [ %err.0, %if.then54 ], [ %err.0, %out ], [ 0, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_replace(%struct.list_head* nocapture noundef readonly %old, %struct.list_head* noundef %new) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %old, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %old, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev3, align 8
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev4, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #11
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_xattr_list(%struct.inode* nocapture noundef readnone %inode, %struct.simple_xattrs* noundef %xattrs, i8* noundef %buffer, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %remaining_size = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %call = call i1 @capable(i32 noundef 21) #10
  %0 = bitcast i64* %remaining_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 %size, i64* %remaining_size, align 8
  %rlock.i = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %head = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 0
  %1 = bitcast %struct.simple_xattrs* %xattrs to %struct.simple_xattr**
  %xattr.032 = load %struct.simple_xattr*, %struct.simple_xattr** %1, align 8
  %list33 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.032, i64 0, i32 0
  %cmp.not34 = icmp eq %struct.list_head* %list33, %head
  br i1 %cmp.not34, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %xattr.035 = phi %struct.simple_xattr* [ %xattr.0, %for.inc ], [ %xattr.032, %entry ]
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.035, i64 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %call2 = call fastcc i1 @xattr_is_trusted(i8* noundef %2) #11
  br i1 %call2, label %for.inc, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %name3 = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.035, i64 0, i32 1
  %3 = load i8*, i8** %name3, align 8
  %call4 = call fastcc i32 @xattr_list_one(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %remaining_size, i8* noundef %3) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %for.end.loopexit

for.inc:                                          ; preds = %if.end, %land.lhs.true
  %4 = bitcast %struct.simple_xattr* %xattr.035 to %struct.simple_xattr**
  %xattr.0 = load %struct.simple_xattr*, %struct.simple_xattr** %4, align 8
  %list = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %xattr.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, %head
  br i1 %cmp.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %if.end, %for.inc
  %err.2.ph = phi i32 [ 0, %for.inc ], [ %call4, %if.end ]
  %.pre = load i64, i64* %remaining_size, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %5 = phi i64 [ %size, %entry ], [ %.pre, %for.end.loopexit ]
  %err.2 = phi i32 [ 0, %entry ], [ %err.2.ph, %for.end.loopexit ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  %tobool17.not = icmp eq i32 %err.2, 0
  %conv = sext i32 %err.2 to i64
  %sub = sub i64 %size, %5
  %spec.select = select i1 %tobool17.not, i64 %sub, i64 %conv
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i64 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @xattr_is_trusted(i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8) #10
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xattr_list_one(i8** nocapture noundef %buffer, i64* nocapture noundef %remaining_size, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %name) #10
  %add = add i64 %call, 1
  %0 = load i8*, i8** %buffer, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %remaining_size, align 8
  %cmp = icmp ult i64 %1, %add
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call2 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %name, i64 noundef %add) #10
  %2 = load i8*, i8** %buffer, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %add
  store i8* %add.ptr, i8** %buffer, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %3 = load i64, i64* %remaining_size, align 8
  %sub = sub i64 %3, %add
  store i64 %sub, i64* %remaining_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -34, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @simple_xattr_list_add(%struct.simple_xattrs* noundef %xattrs, %struct.simple_xattr* noundef %new_xattr) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %list = getelementptr inbounds %struct.simple_xattr, %struct.simple_xattr* %new_xattr, i64 0, i32 0
  %head = getelementptr inbounds %struct.simple_xattrs, %struct.simple_xattrs* %xattrs, i64 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #11
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i8* @strcmp_prefix(i8* noundef readonly %a, i8* nocapture noundef readonly %a_prefix) unnamed_addr #8 {
entry:
  %0 = load i8, i8* %a_prefix, align 1
  %tobool.not12 = icmp eq i8 %0, 0
  br i1 %tobool.not12, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %1 = phi i8 [ %3, %while.body ], [ %0, %entry ]
  %a_prefix.addr.014 = phi i8* [ %incdec.ptr4, %while.body ], [ %a_prefix, %entry ]
  %a.addr.013 = phi i8* [ %incdec.ptr, %while.body ], [ %a, %entry ]
  %2 = load i8, i8* %a.addr.013, align 1
  %cmp = icmp eq i8 %2, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, i8* %a.addr.013, i64 1
  %incdec.ptr4 = getelementptr i8, i8* %a_prefix.addr.014, i64 1
  %3 = load i8, i8* %incdec.ptr4, align 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %cond = phi i8* [ %a, %entry ], [ %incdec.ptr, %while.body ], [ null, %land.rhs ]
  ret i8* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_dentry(%struct.dentry* noundef %dentry) unnamed_addr #5 {
entry:
  call fastcc void @fsnotify_parent(%struct.dentry* noundef %dentry) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_parent(%struct.dentry* noundef readonly %dentry) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #11
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @HAS_UNMAPPED_ID(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #11
  %coerce.val.ii = zext i32 %call to i64
  %call2 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #11
  br i1 %call2, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call4 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %inode) #11
  %coerce.val.ii7 = zext i32 %call4 to i64
  %call8 = call fastcc i1 @gid_valid(i64 %coerce.val.ii7) #11
  %lnot = xor i1 %call8, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @inode_owner_or_capable(%struct.user_namespace* noundef, %struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #11
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_gid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %0 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kgid_into_mnt(i64 %coerce.val.ii) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_into_mnt(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_setxattr(%struct.dentry* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg(%struct.inode* noundef %inode, i32 noundef %mode) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %tobool.not = icmp eq %struct.file_lock_context* %0, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_lease) #11
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @__break_lease(%struct.inode* noundef %inode, i32 noundef %mode, i32 noundef 4) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #12, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.list_head*
  %cmp = icmp eq %struct.list_head* %1, %head
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp2 = icmp eq %struct.list_head* %2, %head
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(%struct.inode* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_inode_getsecurity(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i8* noundef %name, i8** noundef %buffer, i1 noundef %alloc) unnamed_addr #0 {
entry:
  %call = call i32 @cap_inode_getsecurity(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i8* noundef %name, i8** noundef %buffer, i1 noundef %alloc) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_getsecurity(%struct.user_namespace* noundef, %struct.inode* noundef, i8* noundef, i8** noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_removexattr(%struct.user_namespace* noundef, %struct.dentry* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @path_setxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags, i32 noundef 1) #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @path_setxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags, i32 noundef %lookup_flags) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !10
  %call21 = call fastcc i32 @user_path_at(i8* noundef %pathname, i32 noundef %lookup_flags, %struct.path* noundef nonnull %path) #11
  %tobool.not22 = icmp eq i32 %call21, 0
  br i1 %tobool.not22, label %if.end.lr.ph, label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = or i32 %lookup_flags, 32
  br label %if.end

retry:                                            ; preds = %if.end8
  %call = call fastcc i32 @user_path_at(i8* noundef %pathname, i32 noundef %1, %struct.path* noundef nonnull %path) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.end.lr.ph, %retry
  %lookup_flags.addr.023 = phi i32 [ %lookup_flags, %if.end.lr.ph ], [ %1, %retry ]
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call1 = call i32 @mnt_want_write(%struct.vfsmount* noundef %2) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call5 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %3) #11
  %4 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call6 = call fastcc i64 @setxattr(%struct.user_namespace* noundef %call5, %struct.dentry* noundef %4, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #11
  %conv = trunc i64 %call6 to i32
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %5) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %error.0 = phi i32 [ %call1, %if.end ], [ %conv, %if.then3 ]
  call void @path_put(%struct.path* noundef nonnull %path) #10
  %conv9 = sext i32 %error.0 to i64
  %call10 = call fastcc i1 @retry_estale(i64 noundef %conv9, i32 noundef %lookup_flags.addr.023) #11
  br i1 %call10, label %retry, label %cleanup

cleanup:                                          ; preds = %retry, %if.end8, %entry
  %retval.0 = phi i32 [ %call21, %entry ], [ %error.0, %if.end8 ], [ %call, %retry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_path_at(i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path) unnamed_addr #0 {
entry:
  %call = call i32 @user_path_at_empty(i32 noundef -100, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path, i32* noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(%struct.vfsmount* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @setxattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %d, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %kname = alloca [256 x i8], align 1
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %kname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false), !annotation !10
  %tobool.not = icmp ult i32 %flags, 4
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call i64 @strncpy_from_user(i8* noundef nonnull %0, i8* noundef %name, i64 noundef 256) #10
  %conv = trunc i64 %call to i32
  %cmp = icmp eq i32 %conv, 0
  %sext.mask = and i64 %call, 4294967295
  %cmp3 = icmp eq i64 %sext.mask, 256
  %or.cond = or i1 %cmp, %cmp3
  %spec.store.select = select i1 %or.cond, i32 -34, i32 %conv
  %cmp7 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %conv10 = sext i32 %spec.store.select to i64
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %tobool12.not = icmp eq i64 %size, 0
  br i1 %tobool12.not, label %if.end37, label %if.then13

if.then13:                                        ; preds = %if.end11
  %cmp14 = icmp ugt i64 %size, 65536
  br i1 %cmp14, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then13
  %call18 = call fastcc i8* @kvmalloc(i64 noundef %size, i32 noundef 3264) #11
  %tobool19.not = icmp eq i8* %call18, null
  br i1 %tobool19.not, label %cleanup, label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.end17
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %call18, i8* noundef %value, i64 noundef %size) #10
  %tobool23.not = icmp eq i64 %call2.i, 0
  br i1 %tobool23.not, label %if.end25, label %out

if.end25:                                         ; preds = %copy_from_user.exit
  %call27 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #10
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.end37, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end25
  %call32 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)) #10
  br label %if.end37

if.end37:                                         ; preds = %lor.lhs.false30, %if.end25, %if.end11
  %kvalue.0 = phi i8* [ null, %if.end11 ], [ %call18, %lor.lhs.false30 ], [ %call18, %if.end25 ]
  %call39 = call i32 @vfs_setxattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %d, i8* noundef nonnull %0, i8* noundef %kvalue.0, i64 noundef %size, i32 noundef %flags) #11
  %phi.cast = sext i32 %call39 to i64
  br label %out

out:                                              ; preds = %copy_from_user.exit, %if.end37
  %error.0 = phi i64 [ %phi.cast, %if.end37 ], [ -14, %copy_from_user.exit ]
  %kvalue.1 = phi i8* [ %kvalue.0, %if.end37 ], [ %call18, %copy_from_user.exit ]
  call void @kvfree(i8* noundef %kvalue.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then13, %entry, %out, %if.then9
  %retval.0 = phi i64 [ %conv10, %if.then9 ], [ %error.0, %out ], [ -22, %entry ], [ -7, %if.then13 ], [ -12, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #12, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(%struct.vfsmount* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @retry_estale(i64 noundef %error, i32 noundef %flags) unnamed_addr #4 {
entry:
  %cmp = icmp eq i64 %error, -116
  %and = and i32 %flags, 32
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i1 %cmp, %tobool.not
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, i8* noundef, i32 noundef, %struct.path* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strncpy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #11
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !12

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #12, !srcloc !13
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_lsetxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @path_setxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags, i32 noundef 0) #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fsetxattr(i32 noundef %fd, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #11
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i32 @mnt_want_write_file(%struct.file* noundef nonnull %0) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %call7 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef nonnull %0) #11
  %dentry = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call9 = call fastcc i64 @setxattr(%struct.user_namespace* noundef %call7, %struct.dentry* noundef %1, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %flags) #11
  %conv10 = trunc i64 %call9 to i32
  call void @mnt_drop_write_file(%struct.file* noundef nonnull %0) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end
  %error.0 = phi i32 [ %call3, %if.end ], [ %conv10, %if.then5 ]
  call fastcc void @fdput([2 x i64] %call) #11
  %conv13 = sext i32 %error.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi i64 [ %conv13, %if.end12 ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #10
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #11
  ret [2 x i64] %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #11
  ret %struct.user_namespace* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #0 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #4 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @path_getxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef 1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @path_getxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef %lookup_flags) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !10
  %call14 = call fastcc i32 @user_path_at(i8* noundef %pathname, i32 noundef %lookup_flags, %struct.path* noundef nonnull %path) #11
  %tobool.not15 = icmp eq i32 %call14, 0
  br i1 %tobool.not15, label %if.end.lr.ph, label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = or i32 %lookup_flags, 32
  br label %if.end

retry:                                            ; preds = %if.end
  %call = call fastcc i32 @user_path_at(i8* noundef %pathname, i32 noundef %1, %struct.path* noundef nonnull %path) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %retry, %entry
  %call.lcssa = phi i32 [ %call14, %entry ], [ %call, %retry ]
  %conv = sext i32 %call.lcssa to i64
  br label %cleanup

if.end:                                           ; preds = %if.end.lr.ph, %retry
  %lookup_flags.addr.016 = phi i32 [ %lookup_flags, %if.end.lr.ph ], [ %1, %retry ]
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call1 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %2) #11
  %3 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call2 = call fastcc i64 @getxattr(%struct.user_namespace* noundef %call1, %struct.dentry* noundef %3, i8* noundef %name, i8* noundef %value, i64 noundef %size) #11
  call void @path_put(%struct.path* noundef nonnull %path) #10
  %call3 = call fastcc i1 @retry_estale(i64 noundef %call2, i32 noundef %lookup_flags.addr.016) #11
  br i1 %call3, label %retry, label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @getxattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %d, i8* noundef %name, i8* noundef %value, i64 noundef %size) unnamed_addr #0 {
entry:
  %kname = alloca [256 x i8], align 1
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %kname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false), !annotation !10
  %call = call i64 @strncpy_from_user(i8* noundef nonnull %0, i8* noundef %name, i64 noundef 256) #10
  %1 = and i64 %call, -257
  %2 = icmp eq i64 %1, 0
  %spec.store.select41 = select i1 %2, i64 -34, i64 %call
  %cmp2 = icmp slt i64 %spec.store.select41, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end4
  %3 = icmp ult i64 %size, 65536
  %spec.store.select = select i1 %3, i64 %size, i64 65536
  %call9 = call fastcc i8* @kvzalloc(i64 noundef %spec.store.select) #11
  %tobool10.not = icmp eq i8* %call9, null
  br i1 %tobool10.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end4
  %size.addr.0 = phi i64 [ %spec.store.select, %if.then5 ], [ 0, %if.end4 ]
  %kvalue.0 = phi i8* [ %call9, %if.then5 ], [ null, %if.end4 ]
  %call15 = call i64 @vfs_getxattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %d, i8* noundef nonnull %0, i8* noundef %kvalue.0, i64 noundef %size.addr.0) #11
  %cmp16 = icmp sgt i64 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %call19 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #10
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.end26, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.then17
  %call23 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)) #10
  br label %if.end26

if.end26:                                         ; preds = %lor.lhs.false21, %if.then17
  %tobool27.not = icmp eq i64 %size.addr.0, 0
  br i1 %tobool27.not, label %if.end37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end26
  %cmp11.i.i = icmp ugt i64 %call15, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !7

check_copy_size.exit.i:                           ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !16
  br label %if.end37

if.then.i:                                        ; preds = %land.lhs.true
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %value, i8* noundef %kvalue.0, i64 noundef %call15) #10
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i64 %call15, i64 -14
  br label %if.end37

if.else:                                          ; preds = %if.end13
  %cmp32 = icmp eq i64 %call15, -34
  %cmp34 = icmp ugt i64 %size.addr.0, 65535
  %or.cond40 = and i1 %cmp34, %cmp32
  %spec.store.select42 = select i1 %or.cond40, i64 -7, i64 %call15
  br label %if.end37

if.end37:                                         ; preds = %if.then.i, %check_copy_size.exit.i, %if.else, %if.end26
  %error.0 = phi i64 [ %call15, %if.end26 ], [ %spec.store.select42, %if.else ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  call void @kvfree(i8* noundef %kvalue.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry, %if.end37
  %retval.0 = phi i64 [ %error.0, %if.end37 ], [ %spec.store.select41, %entry ], [ -12, %if.then5 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kvmalloc(i64 noundef %size, i32 noundef 3520) #11
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #11
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #10
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_lgetxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @path_getxattr(i8* noundef %pathname, i8* noundef %name, i8* noundef %value, i64 noundef %size, i32 noundef 0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fgetxattr(i32 noundef %fd, i8* noundef %name, i8* noundef %value, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #11
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef nonnull %0) #11
  %dentry = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call5 = call fastcc i64 @getxattr(%struct.user_namespace* noundef %call3, %struct.dentry* noundef %1, i8* noundef %name, i8* noundef %value, i64 noundef %size) #11
  call fastcc void @fdput([2 x i64] %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call5, %if.end ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_listxattr(i8* noundef %pathname, i8* noundef %list, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @path_listxattr(i8* noundef %pathname, i8* noundef %list, i64 noundef %size, i32 noundef 1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @path_listxattr(i8* noundef %pathname, i8* noundef %list, i64 noundef %size, i32 noundef %lookup_flags) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !10
  %call13 = call fastcc i32 @user_path_at(i8* noundef %pathname, i32 noundef %lookup_flags, %struct.path* noundef nonnull %path) #11
  %tobool.not14 = icmp eq i32 %call13, 0
  br i1 %tobool.not14, label %if.end.lr.ph, label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = or i32 %lookup_flags, 32
  br label %if.end

retry:                                            ; preds = %if.end
  %call = call fastcc i32 @user_path_at(i8* noundef %pathname, i32 noundef %1, %struct.path* noundef nonnull %path) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %retry, %entry
  %call.lcssa = phi i32 [ %call13, %entry ], [ %call, %retry ]
  %conv = sext i32 %call.lcssa to i64
  br label %cleanup

if.end:                                           ; preds = %if.end.lr.ph, %retry
  %lookup_flags.addr.015 = phi i32 [ %lookup_flags, %if.end.lr.ph ], [ %1, %retry ]
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call1 = call fastcc i64 @listxattr(%struct.dentry* noundef %2, i8* noundef %list, i64 noundef %size) #11
  call void @path_put(%struct.path* noundef nonnull %path) #10
  %call2 = call fastcc i1 @retry_estale(i64 noundef %call1, i32 noundef %lookup_flags.addr.015) #11
  br i1 %call2, label %retry, label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %call1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @listxattr(%struct.dentry* noundef %d, i8* noundef %list, i64 noundef %size) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.end5.thread, label %if.then

if.then:                                          ; preds = %entry
  %0 = icmp ult i64 %size, 65536
  %spec.store.select = select i1 %0, i64 %size, i64 65536
  %call = call fastcc i8* @kvmalloc(i64 noundef %spec.store.select, i32 noundef 3264) #11
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then
  %call6 = call i64 @vfs_listxattr(%struct.dentry* noundef %d, i8* noundef nonnull %call, i64 noundef %spec.store.select) #11
  %cmp7 = icmp sgt i64 %call6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

if.end5.thread:                                   ; preds = %entry
  %call637 = call i64 @vfs_listxattr(%struct.dentry* noundef %d, i8* noundef null, i64 noundef 0) #11
  %cmp738 = icmp sgt i64 %call637, 0
  br i1 %cmp738, label %if.end19, label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %cmp11.i.i = icmp ugt i64 %call6, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !7

check_copy_size.exit.i:                           ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !16
  br label %if.end19

if.then.i:                                        ; preds = %land.lhs.true
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %list, i8* noundef nonnull %call, i64 noundef %call6) #10
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i64 %call6, i64 -14
  br label %if.end19

if.else:                                          ; preds = %if.end5.thread, %if.end5
  %call644 = phi i64 [ %call637, %if.end5.thread ], [ %call6, %if.end5 ]
  %klist.042 = phi i8* [ null, %if.end5.thread ], [ %call, %if.end5 ]
  %size.addr.040 = phi i64 [ 0, %if.end5.thread ], [ %spec.store.select, %if.end5 ]
  %cmp14 = icmp eq i64 %call644, -34
  %cmp16 = icmp ugt i64 %size.addr.040, 65535
  %or.cond = and i1 %cmp14, %cmp16
  %spec.store.select21 = select i1 %or.cond, i64 -7, i64 %call644
  br label %if.end19

if.end19:                                         ; preds = %if.then.i, %check_copy_size.exit.i, %if.end5.thread, %if.else
  %klist.041 = phi i8* [ %klist.042, %if.else ], [ null, %if.end5.thread ], [ %call, %check_copy_size.exit.i ], [ %call, %if.then.i ]
  %error.0 = phi i64 [ %spec.store.select21, %if.else ], [ %call637, %if.end5.thread ], [ -14, %check_copy_size.exit.i ], [ %phi.sel, %if.then.i ]
  call void @kvfree(i8* noundef %klist.041) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19
  %retval.0 = phi i64 [ %error.0, %if.end19 ], [ -12, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_llistxattr(i8* noundef %pathname, i8* noundef %list, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @path_listxattr(i8* noundef %pathname, i8* noundef %list, i64 noundef %size, i32 noundef 0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_flistxattr(i32 noundef %fd, i8* noundef %list, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #11
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %dentry = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call3 = call fastcc i64 @listxattr(%struct.dentry* noundef %1, i8* noundef %list, i64 noundef %size) #11
  call fastcc void @fdput([2 x i64] %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call3, %if.end ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_removexattr(i8* noundef %pathname, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @path_removexattr(i8* noundef %pathname, i8* noundef %name, i32 noundef 1) #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @path_removexattr(i8* noundef %pathname, i8* noundef %name, i32 noundef %lookup_flags) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !10
  %call21 = call fastcc i32 @user_path_at(i8* noundef %pathname, i32 noundef %lookup_flags, %struct.path* noundef nonnull %path) #11
  %tobool.not22 = icmp eq i32 %call21, 0
  br i1 %tobool.not22, label %if.end.lr.ph, label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = or i32 %lookup_flags, 32
  br label %if.end

retry:                                            ; preds = %if.end8
  %call = call fastcc i32 @user_path_at(i8* noundef %pathname, i32 noundef %1, %struct.path* noundef nonnull %path) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.end.lr.ph, %retry
  %lookup_flags.addr.023 = phi i32 [ %lookup_flags, %if.end.lr.ph ], [ %1, %retry ]
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call1 = call i32 @mnt_want_write(%struct.vfsmount* noundef %2) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call5 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %3) #11
  %4 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call6 = call fastcc i64 @removexattr(%struct.user_namespace* noundef %call5, %struct.dentry* noundef %4, i8* noundef %name) #11
  %conv = trunc i64 %call6 to i32
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %5) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %error.0 = phi i32 [ %call1, %if.end ], [ %conv, %if.then3 ]
  call void @path_put(%struct.path* noundef nonnull %path) #10
  %conv9 = sext i32 %error.0 to i64
  %call10 = call fastcc i1 @retry_estale(i64 noundef %conv9, i32 noundef %lookup_flags.addr.023) #11
  br i1 %call10, label %retry, label %cleanup

cleanup:                                          ; preds = %retry, %if.end8, %entry
  %retval.0 = phi i32 [ %call21, %entry ], [ %error.0, %if.end8 ], [ %call, %retry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %d, i8* noundef %name) unnamed_addr #0 {
entry:
  %kname = alloca [256 x i8], align 1
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %kname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false), !annotation !10
  %call = call i64 @strncpy_from_user(i8* noundef nonnull %0, i8* noundef %name, i64 noundef 256) #10
  %conv = trunc i64 %call to i32
  %cmp = icmp eq i32 %conv, 0
  %sext.mask = and i64 %call, 4294967295
  %cmp3 = icmp eq i64 %sext.mask, 256
  %or.cond = or i1 %cmp, %cmp3
  %spec.store.select = select i1 %or.cond, i32 -34, i32 %conv
  %cmp5 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp5, label %cleanup, label %if.end9

if.end9:                                          ; preds = %entry
  %call11 = call i32 @vfs_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %d, i8* noundef nonnull %0) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0.in = phi i32 [ %call11, %if.end9 ], [ %spec.store.select, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_lremovexattr(i8* noundef %pathname, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @path_removexattr(i8* noundef %pathname, i8* noundef %name, i32 noundef 0) #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fremovexattr(i32 noundef %fd, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #11
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i32 @mnt_want_write_file(%struct.file* noundef nonnull %0) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %call7 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef nonnull %0) #11
  %dentry = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call9 = call fastcc i64 @removexattr(%struct.user_namespace* noundef %call7, %struct.dentry* noundef %1, i8* noundef %name) #11
  %conv10 = trunc i64 %call9 to i32
  call void @mnt_drop_write_file(%struct.file* noundef nonnull %0) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end
  %error.0 = phi i32 [ %call3, %if.end ], [ %conv10, %if.then5 ]
  call fastcc void @fdput([2 x i64] %call) #11
  %conv13 = sext i32 %error.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi i64 [ %conv13, %if.end12 ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !18
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !20
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
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

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
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
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2151806947}
!9 = !{i64 2148728498}
!10 = !{!"auto-init"}
!11 = !{i64 2151722390}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 3939093, i64 3939176, i64 3939400, i64 3939620, i64 3939643}
!14 = !{i64 3943795, i64 3943819}
!15 = !{i64 2151496579}
!16 = !{i64 2148885384}
!17 = !{i64 2149559747}
!18 = !{i64 2148052532, i64 2148052565, i64 2148052618, i64 2148052677, i64 2148052711, i64 2148052766, i64 2148052795, i64 2148052815}
!19 = !{i64 2149567028}
!20 = !{i64 2149359258}
