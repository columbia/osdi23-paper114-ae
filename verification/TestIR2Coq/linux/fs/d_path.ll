; ModuleID = 'fs/d_path.c'
source_filename = "fs/d_path.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kmem_cache = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.71, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.71 = type { %struct.callback_head }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.18 }
%union.anon.18 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.19, %union.anon.20 }
%union.anon.19 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.20 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.13, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.57, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.11 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.page = type { i64, %union.anon.16, %union.anon.35, %struct.atomic_t, [8 x i8] }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.35 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.58, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.58 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.13 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.14, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.15, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.14 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.15 = type { %struct.pte_t }
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.41 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.8, i32 }
%union.anon.8 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.atomic64_t = type { i64 }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1, [48 x i8] }
%struct.anon.1 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.2, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { i64 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.prepend_buffer = type { i8*, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.pt_regs = type { %union.anon.74, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.74 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c" (deleted)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"//deleted\00", align 1
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@rename_lock = external dso_local global %struct.seqlock_t, align 4
@names_cachep = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"(unreachable)\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__d_path(%struct.path* nocapture noundef readonly %path, %struct.path* nocapture noundef readonly %root, i8* noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.prepend_buffer, align 8
  %0 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %buf1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 0
  %idx.ext = sext i32 %buflen to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  store i8* %add.ptr, i8** %buf1, align 8
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  store i32 %buflen, i32* %len, align 8
  %call = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 0) #11
  %call2 = call fastcc i32 @prepend_path(%struct.path* noundef %path, %struct.path* noundef %root, %struct.prepend_buffer* noundef nonnull %b) #11
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %call4 = call fastcc i8* @extract_string(%struct.prepend_buffer* noundef nonnull %b) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call4, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @prepend_char(%struct.prepend_buffer* nocapture noundef %p, i8 noundef %c) unnamed_addr #3 {
entry:
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 1
  %0 = load i32, i32* %len, align 8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %len, align 8
  %buf = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr i8, i8* %1, i64 -1
  store i8* %incdec.ptr, i8** %buf, align 8
  store i8 %c, i8* %incdec.ptr, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 -1, i32* %len, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prepend_path(%struct.path* nocapture noundef readonly %path, %struct.path* nocapture noundef readonly %root, %struct.prepend_buffer* nocapture noundef %p) unnamed_addr #0 {
entry:
  %seq = alloca i32, align 4
  %m_seq = alloca i32, align 4
  %b = alloca %struct.prepend_buffer, align 8
  %0 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %1 = bitcast i32* %m_seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %m_seq, align 4
  %2 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10
  call fastcc void @__rcu_read_lock() #12
  %3 = bitcast %struct.prepend_buffer* %p to i8*
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  br label %restart_mnt

restart_mnt:                                      ; preds = %if.then12, %entry
  call fastcc void @read_seqbegin_or_lock(%struct.seqlock_t* noundef nonnull @mount_lock, i32* noundef nonnull %m_seq) #11
  store i32 0, i32* %seq, align 4
  call fastcc void @__rcu_read_lock() #12
  br label %restart

restart:                                          ; preds = %if.then4, %restart_mnt
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %3, i64 16, i1 false)
  call fastcc void @read_seqbegin_or_lock(%struct.seqlock_t* noundef nonnull @rename_lock, i32* noundef nonnull %seq) #11
  %4 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %5) #11
  %call1 = call fastcc i32 @__prepend_path(%struct.dentry* noundef %4, %struct.mount* noundef %call, %struct.path* noundef %root, %struct.prepend_buffer* noundef nonnull %b) #11
  %6 = load i32, i32* %seq, align 4
  %and = and i32 %6, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %restart
  call fastcc void @rcu_read_unlock() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %restart
  %call2 = call fastcc i32 @need_seqretry(%struct.seqlock_t* noundef nonnull @rename_lock, i32 noundef %6) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %seq, align 4
  br label %restart

if.end5:                                          ; preds = %if.end
  call fastcc void @done_seqretry(%struct.seqlock_t* noundef nonnull @rename_lock, i32 noundef %6) #11
  %7 = load i32, i32* %m_seq, align 4
  %and6 = and i32 %7, 1
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call fastcc void @rcu_read_unlock() #11
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %call10 = call fastcc i32 @need_seqretry(%struct.seqlock_t* noundef nonnull @mount_lock, i32 noundef %7) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  store i32 1, i32* %m_seq, align 4
  br label %restart_mnt

if.end13:                                         ; preds = %if.end9
  call fastcc void @done_seqretry(%struct.seqlock_t* noundef nonnull @mount_lock, i32 noundef %7) #11
  %cmp = icmp eq i32 %call1, 3
  br i1 %cmp, label %if.then16, label %if.end17, !prof !8

if.then16:                                        ; preds = %if.end13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %8 = load i32, i32* %len, align 8
  %len18 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 1
  %9 = load i32, i32* %len18, align 8
  %cmp19 = icmp eq i32 %8, %9
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  %call22 = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 47) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @extract_string(%struct.prepend_buffer* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 1
  %0 = load i32, i32* %len, align 8
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -36) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ %call, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @d_absolute_path(%struct.path* nocapture noundef readonly %path, i8* noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %root = alloca %struct.path, align 8
  %b = alloca %struct.prepend_buffer, align 8
  %0 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %1 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  %2 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %3 = bitcast i32* %2 to i64*, !annotation !7
  store i64 0, i64* %3, align 8, !annotation !7
  %buf1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 0
  %idx.ext = sext i32 %buflen to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  store i8* %add.ptr, i8** %buf1, align 8
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  store i32 %buflen, i32* %len, align 8
  %call = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 0) #11
  %call2 = call fastcc i32 @prepend_path(%struct.path* noundef %path, %struct.path* noundef nonnull %root, %struct.prepend_buffer* noundef nonnull %b) #11
  %cmp = icmp sgt i32 %call2, 1
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call fastcc i8* @extract_string(%struct.prepend_buffer* noundef nonnull %b) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call4, %if.then ], [ %call5, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @d_path(%struct.path* nocapture noundef readonly %path, i8* noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.prepend_buffer, align 8
  %root = alloca %struct.path, align 8
  %0 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %buf1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 0
  %idx.ext = sext i32 %buflen to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  store i8* %add.ptr, i8** %buf1, align 8
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  store i32 %buflen, i32* %len, align 8
  %3 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !7
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %4 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 8
  %5 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %tobool.not = icmp eq %struct.dentry_operations* %5, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %d_dname = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %5, i64 0, i32 9
  %6 = load i8* (%struct.dentry*, i8*, i32)*, i8* (%struct.dentry*, i8*, i32)** %d_dname, align 8
  %tobool4.not = icmp eq i8* (%struct.dentry*, i8*, i32)* %6, null
  br i1 %tobool4.not, label %if.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 3
  %7 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp eq %struct.dentry* %4, %7
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i64 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp9.not = icmp eq %struct.dentry* %4, %9
  br i1 %cmp9.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true5
  %call = call i8* %6(%struct.dentry* noundef %4, i8* noundef %buf, i32 noundef %buflen) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %entry
  call fastcc void @__rcu_read_lock() #12
  %10 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %11 = inttoptr i64 %10 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i64 0, i32 83
  %12 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call fastcc void @get_fs_root_rcu(%struct.fs_struct* noundef %12, %struct.path* noundef nonnull %root) #11
  %13 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call16 = call fastcc i32 @d_unlinked(%struct.dentry* noundef %13) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else, label %if.then20, !prof !9

if.then20:                                        ; preds = %if.end
  %call21 = call fastcc i1 @prepend(%struct.prepend_buffer* noundef nonnull %b, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 11) #11
  br label %if.end23

if.else:                                          ; preds = %if.end
  %call22 = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 0) #11
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %call24 = call fastcc i32 @prepend_path(%struct.path* noundef %path, %struct.path* noundef nonnull %root, %struct.prepend_buffer* noundef nonnull %b) #11
  call fastcc void @rcu_read_unlock() #11
  %call25 = call fastcc i8* @extract_string(%struct.prepend_buffer* noundef nonnull %b) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call25, %if.end23 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_root_rcu(%struct.fs_struct* noundef %fs, %struct.path* nocapture noundef writeonly %root) unnamed_addr #0 {
entry:
  %seq1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 2
  %sequence.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %seq1, i64 0, i32 0, i32 0
  %root4 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 5
  %0 = bitcast %struct.path* %root to i8*
  %1 = bitcast %struct.path* %root4 to i8*
  %seqcount.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %seq1, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %2 = load volatile i32, i32* %sequence.i, align 4
  %and14 = and i32 %2, 1
  %tobool.not15 = icmp eq i32 %and14, 0
  br i1 %tobool.not15, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #11
  %3 = load volatile i32, i32* %sequence.i, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %2, %do.body ], [ %3, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #10, !srcloc !11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %call7 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %.lcssa) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_unlinked(%struct.dentry* noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #11
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @prepend(%struct.prepend_buffer* nocapture noundef %p, i8* noundef %str, i32 noundef %namelen) unnamed_addr #0 {
entry:
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 1
  %0 = load i32, i32* %len, align 8
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i32 %0, %namelen
  br i1 %cmp2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.end
  %sub = sub i32 %namelen, %0
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr i8, i8* %str, i64 %idx.ext
  %buf = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %idx.ext636 = zext i32 %0 to i64
  %idx.neg = sub nsw i64 0, %idx.ext636
  %add.ptr7 = getelementptr i8, i8* %1, i64 %idx.neg
  store i8* %add.ptr7, i8** %buf, align 8
  %call = call fastcc i1 @prepend_copy(i8* noundef %add.ptr7, i8* noundef %add.ptr, i32 noundef %0) #11
  store i32 -1, i32* %len, align 8
  br label %return

if.end11:                                         ; preds = %if.end
  %sub13 = sub i32 %0, %namelen
  store i32 %sub13, i32* %len, align 8
  %buf14 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 0
  %2 = load i8*, i8** %buf14, align 8
  %idx.ext15 = sext i32 %namelen to i64
  %idx.neg16 = sub nsw i64 0, %idx.ext15
  %add.ptr17 = getelementptr i8, i8* %2, i64 %idx.neg16
  store i8* %add.ptr17, i8** %buf14, align 8
  %call19 = call fastcc i1 @prepend_copy(i8* noundef %add.ptr17, i8* noundef %str, i32 noundef %namelen) #11
  br label %return

return:                                           ; preds = %entry, %if.end11, %if.then3
  %retval.0 = phi i1 [ false, %if.then3 ], [ %call19, %if.end11 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @dynamic_dname(%struct.dentry* nocapture noundef readnone %dentry, i8* noundef %buffer, i32 noundef %buflen, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %temp = alloca [64 x i8], align 1
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(64) %1, i8 0, i64 64, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef nonnull %1, i64 noundef 64, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #10
  %add = add i32 %call, 1
  call void @llvm.va_end(i8* nonnull %0)
  %cmp = icmp ugt i32 %add, 64
  %cmp4 = icmp sgt i32 %add, %buflen
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -36) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv18 = zext i32 %add to i64
  %sub = sub i32 %buflen, %add
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr i8, i8* %buffer, i64 %idx.ext
  %call9 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef nonnull %1, i64 noundef %conv18) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call6, %if.then ], [ %call9, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @simple_dname(%struct.dentry* nocapture noundef readonly %dentry, i8* noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.prepend_buffer, align 8
  %0 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %buf = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 0
  %idx.ext = sext i32 %buflen to i64
  %add.ptr = getelementptr i8, i8* %buffer, i64 %idx.ext
  store i8* %add.ptr, i8** %buf, align 8
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  store i32 %buflen, i32* %len, align 8
  %call = call fastcc i1 @prepend(%struct.prepend_buffer* noundef nonnull %b, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 11) #11
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %3 = load i8*, i8** %name, align 8
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %5 = bitcast %union.anon* %4 to %struct.anon*
  %len2 = getelementptr inbounds %struct.anon, %struct.anon* %5, i64 0, i32 1
  %6 = load i32, i32* %len2, align 4
  %call3 = call fastcc i1 @prepend(%struct.prepend_buffer* noundef nonnull %b, i8* noundef %3, i32 noundef %6) #11
  %call4 = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 47) #11
  %call5 = call fastcc i8* @extract_string(%struct.prepend_buffer* noundef nonnull %b) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i8* %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @dentry_path_raw(%struct.dentry* noundef %dentry, i8* noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.prepend_buffer, align 8
  %0 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %buf1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 0
  %idx.ext = sext i32 %buflen to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  store i8* %add.ptr, i8** %buf1, align 8
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  store i32 %buflen, i32* %len, align 8
  %call = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 0) #11
  %call2 = call fastcc i8* @__dentry_path(%struct.dentry* noundef %dentry, %struct.prepend_buffer* noundef nonnull %b) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i8* %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__dentry_path(%struct.dentry* noundef %d, %struct.prepend_buffer* nocapture noundef readonly %p) unnamed_addr #0 {
entry:
  %b = alloca %struct.prepend_buffer, align 8
  %seq = alloca i32, align 4
  %0 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %seq, align 4
  call fastcc void @__rcu_read_lock() #12
  %2 = bitcast %struct.prepend_buffer* %p to i8*
  br label %restart

restart:                                          ; preds = %if.then6, %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  call fastcc void @read_seqbegin_or_lock(%struct.seqlock_t* noundef nonnull @rename_lock, i32* noundef nonnull %seq) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %restart
  %dentry.0 = phi %struct.dentry* [ %d, %restart ], [ %3, %while.body ]
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.0, i64 0, i32 3
  %3 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp.not = icmp eq %struct.dentry* %dentry.0, %3
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = bitcast %struct.dentry* %3 to i8*
  call fastcc void @prefetch(i8* noundef %4) #11
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.0, i64 0, i32 4
  %call = call fastcc i1 @prepend_name(%struct.prepend_buffer* noundef nonnull %b, %struct.qstr* noundef %d_name) #11
  br i1 %call, label %while.cond, label %while.end

while.end:                                        ; preds = %while.body, %while.cond
  %5 = load i32, i32* %seq, align 4
  %and = and i32 %5, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.end
  call fastcc void @rcu_read_unlock() #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %while.end
  %call4 = call fastcc i32 @need_seqretry(%struct.seqlock_t* noundef nonnull @rename_lock, i32 noundef %5) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i32 1, i32* %seq, align 4
  br label %restart

if.end7:                                          ; preds = %if.end3
  call fastcc void @done_seqretry(%struct.seqlock_t* noundef nonnull @rename_lock, i32 noundef %5) #11
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %6 = load i32, i32* %len, align 8
  %len8 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %p, i64 0, i32 1
  %7 = load i32, i32* %len8, align 8
  %cmp9 = icmp eq i32 %6, %7
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %call11 = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 47) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %call13 = call fastcc i8* @extract_string(%struct.prepend_buffer* noundef nonnull %b) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i8* %call13
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @dentry_path(%struct.dentry* noundef %dentry, i8* noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.prepend_buffer, align 8
  %0 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %buf1 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 0
  %idx.ext = sext i32 %buflen to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext
  store i8* %add.ptr, i8** %buf1, align 8
  %len = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  store i32 %buflen, i32* %len, align 8
  %call = call fastcc i32 @d_unlinked(%struct.dentry* noundef %dentry) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %call4 = call fastcc i1 @prepend(%struct.prepend_buffer* noundef nonnull %b, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 10) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = call fastcc i8* @__dentry_path(%struct.dentry* noundef %dentry, %struct.prepend_buffer* noundef nonnull %b) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i8* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getcwd(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_getcwd(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getcwd(i64 noundef %buf, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %buf to i8*
  %call = call fastcc i64 @__do_sys_getcwd(i8* noundef %0, i64 noundef %size) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_seqbegin_or_lock(%struct.seqlock_t* noundef %lock, i32* nocapture noundef %seq) unnamed_addr #0 {
entry:
  %0 = load i32, i32* %seq, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @read_seqbegin(%struct.seqlock_t* noundef %lock) #11
  store i32 %call, i32* %seq, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @read_seqlock_excl(%struct.seqlock_t* noundef %lock) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__prepend_path(%struct.dentry* noundef %dentry, %struct.mount* noundef %mnt, %struct.path* nocapture noundef readonly %root, %struct.prepend_buffer* nocapture noundef %p) unnamed_addr #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 1
  %mnt3 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %do.end16, %entry
  %mnt.addr.0.ph = phi %struct.mount* [ %4, %do.end16 ], [ %mnt, %entry ]
  %dentry.addr.0.ph = phi %struct.dentry* [ %5, %do.end16 ], [ %dentry, %entry ]
  %mnt2 = getelementptr inbounds %struct.mount, %struct.mount* %mnt.addr.0.ph, i64 0, i32 3
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %mnt.addr.0.ph, i64 0, i32 3, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end37
  %dentry.addr.0 = phi %struct.dentry* [ %2, %if.end37 ], [ %dentry.addr.0.ph, %while.cond.outer ]
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %cmp.not = icmp eq %struct.dentry* %dentry.addr.0, %0
  br i1 %cmp.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %while.cond
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt3, align 8
  %cmp4.not = icmp eq %struct.vfsmount* %mnt2, %1
  br i1 %cmp4.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond, %lor.rhs
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.addr.0, i64 0, i32 3
  %2 = load volatile %struct.dentry*, %struct.dentry** %d_parent, align 8
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp6 = icmp eq %struct.dentry* %dentry.addr.0, %3
  br i1 %cmp6, label %if.then, label %if.end26

if.then:                                          ; preds = %while.body
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt.addr.0.ph, i64 0, i32 1
  %4 = load volatile %struct.mount*, %struct.mount** %mnt_parent, align 8
  %cmp11.not = icmp eq %struct.mount* %mnt.addr.0.ph, %4
  br i1 %cmp11.not, label %do.end20, label %do.end16, !prof !8

do.end16:                                         ; preds = %if.then
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %mnt.addr.0.ph, i64 0, i32 2
  %5 = load volatile %struct.dentry*, %struct.dentry** %mnt_mountpoint, align 8
  br label %while.cond.outer

do.end20:                                         ; preds = %if.then
  %mnt_ns22 = getelementptr inbounds %struct.mount, %struct.mount* %mnt.addr.0.ph, i64 0, i32 16
  %6 = load volatile %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns22, align 8
  %7 = bitcast %struct.mnt_namespace* %6 to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %7) #11
  br i1 %call, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end20
  %call23 = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef %6) #11
  br i1 %call23, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true, %do.end20
  br label %return

if.end26:                                         ; preds = %while.body
  %cmp27 = icmp eq %struct.dentry* %dentry.addr.0, %2
  br i1 %cmp27, label %return, label %if.end37, !prof !8

if.end37:                                         ; preds = %if.end26
  %8 = bitcast %struct.dentry* %2 to i8*
  call fastcc void @prefetch(i8* noundef %8) #11
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.addr.0, i64 0, i32 4
  %call38 = call fastcc i1 @prepend_name(%struct.prepend_buffer* noundef %p, %struct.qstr* noundef %d_name) #11
  br i1 %call38, label %while.cond, label %return

return:                                           ; preds = %if.end26, %if.end37, %lor.rhs, %land.lhs.true, %if.else
  %retval.3 = phi i32 [ 1, %land.lhs.true ], [ 2, %if.else ], [ 3, %if.end26 ], [ 0, %if.end37 ], [ 0, %lor.rhs ]
  ret i32 %retval.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef readnone %mnt) unnamed_addr #5 {
entry:
  %add.ptr2 = getelementptr %struct.vfsmount, %struct.vfsmount* %mnt, i64 -1
  %0 = bitcast %struct.vfsmount* %add.ptr2 to %struct.mount*
  ret %struct.mount* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @need_seqretry(%struct.seqlock_t* noundef %lock, i32 noundef %seq) unnamed_addr #0 {
entry:
  %and = and i32 %seq, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = call fastcc i32 @read_seqretry(%struct.seqlock_t* noundef %lock, i32 noundef %seq) #11
  %tobool1 = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @done_seqretry(%struct.seqlock_t* noundef %lock, i32 noundef %seq) unnamed_addr #0 {
entry:
  %and = and i32 %seq, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @read_sequnlock_excl(%struct.seqlock_t* noundef %lock) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqbegin(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %sequence.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %sequence.i, align 4
  %and6 = and i32 %0, 1
  %tobool.not7 = icmp eq i32 %and6, 0
  br i1 %tobool.not7, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #11
  %1 = load volatile i32, i32* %sequence.i, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #10, !srcloc !12
  ret i32 %.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_seqlock_excl(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #7

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
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
define internal fastcc i1 @is_anon_ns(%struct.mnt_namespace* nocapture noundef readonly %ns) unnamed_addr #4 {
entry:
  %seq = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 6
  %0 = load i64, i64* %seq, align 8
  %cmp = icmp eq i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch(i8* noundef %ptr) unnamed_addr #0 {
entry:
  call void asm sideeffect "prfm pldl1keep, ${0:a}\0A", "r"(i8* %ptr) #10, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @prepend_name(%struct.prepend_buffer* nocapture noundef %p, %struct.qstr* noundef %name) unnamed_addr #0 {
entry:
  %name1 = getelementptr inbounds %struct.qstr, %struct.qstr* %name, i64 0, i32 1
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(i8** elementtype(i8*) %name1) #10, !srcloc !17
  %1 = inttoptr i64 %0 to i8*
  %2 = bitcast %struct.qstr* %name to %struct.anon*
  %len = getelementptr inbounds %struct.anon, %struct.anon* %2, i64 0, i32 1
  %3 = load volatile i32, i32* %len, align 4
  %call6 = call fastcc i1 @prepend(%struct.prepend_buffer* noundef %p, i8* noundef %1, i32 noundef %3) #11
  br i1 %call6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call7 = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef %p, i8 noundef 47) #11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %call7, %land.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqretry(%struct.seqlock_t* noundef %sl, i32 noundef %start) unnamed_addr #0 {
entry:
  %seqcount.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0
  %call1 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %start) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #10, !srcloc !18
  %call = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #9 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_sequnlock_excl(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_unhashed(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_hash = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 2
  %call = call fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* noundef %d_hash) #11
  %conv = zext i1 %call to i32
  ret i32 %conv
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
define internal fastcc i1 @prepend_copy(i8* noundef %dst, i8* noundef %src, i32 noundef %len) unnamed_addr #0 {
entry:
  %conv = sext i32 %len to i64
  %call = call i64 @copy_from_kernel_nofault(i8* noundef %dst, i8* noundef %src, i64 noundef %conv) #12
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %call5 = call i8* @memset(i8* noundef %dst, i32 noundef 120, i64 noundef %conv) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_from_kernel_nofault(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getcwd(i8* noundef %buf, i64 noundef %size) unnamed_addr #0 {
entry:
  %pwd = alloca %struct.path, align 8
  %root = alloca %struct.path, align 8
  %b = alloca %struct.prepend_buffer, align 8
  %0 = bitcast %struct.path* %pwd to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #12
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 83
  %5 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call fastcc void @get_fs_root_and_pwd_rcu(%struct.fs_struct* noundef %5, %struct.path* noundef nonnull %root, %struct.path* noundef nonnull %pwd) #11
  %dentry = getelementptr inbounds %struct.path, %struct.path* %pwd, i64 0, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call2 = call fastcc i32 @d_unlinked(%struct.dentry* noundef %6) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then6, !prof !9

if.then6:                                         ; preds = %if.end
  call fastcc void @rcu_read_unlock() #11
  br label %if.end55

if.else:                                          ; preds = %if.end
  %7 = bitcast %struct.prepend_buffer* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #10
  %8 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  %9 = bitcast i32* %8 to i64*, !annotation !7
  store i64 0, i64* %9, align 8, !annotation !7
  %buf7 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 0
  %add.ptr = getelementptr i8, i8* %call, i64 4096
  store i8* %add.ptr, i8** %buf7, align 8
  %len8 = getelementptr inbounds %struct.prepend_buffer, %struct.prepend_buffer* %b, i64 0, i32 1
  store i32 4096, i32* %len8, align 8
  %call9 = call fastcc i1 @prepend_char(%struct.prepend_buffer* noundef nonnull %b, i8 noundef 0) #11
  %call10 = call fastcc i32 @prepend_path(%struct.path* noundef nonnull %pwd, %struct.path* noundef nonnull %root, %struct.prepend_buffer* noundef nonnull %b) #11
  %cmp = icmp sgt i32 %call10, 0
  br i1 %cmp, label %if.then19, label %if.end21, !prof !8

if.then19:                                        ; preds = %if.else
  %call20 = call fastcc i1 @prepend(%struct.prepend_buffer* noundef nonnull %b, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 13) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else
  call fastcc void @rcu_read_unlock() #11
  %10 = load i32, i32* %len8, align 8
  %sub = sub i32 4096, %10
  %cmp23 = icmp ugt i32 %10, 4096
  br i1 %cmp23, label %if.end54, label %if.else33, !prof !8

if.else33:                                        ; preds = %if.end21
  %conv34 = zext i32 %sub to i64
  %cmp35 = icmp ugt i64 %conv34, %size
  br i1 %cmp35, label %if.end54, label %if.else45, !prof !8

if.else45:                                        ; preds = %if.else33
  %11 = load i8*, i8** %buf7, align 8
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf, i8* noundef %11, i64 noundef %conv34) #12
  %tobool49.not = icmp eq i64 %call2.i, 0
  %sub. = select i1 %tobool49.not, i32 %sub, i32 -14
  br label %if.end54

if.end54:                                         ; preds = %if.else45, %if.else33, %if.end21
  %error.0 = phi i32 [ -36, %if.end21 ], [ -34, %if.else33 ], [ %sub., %if.else45 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #10
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then6
  %error.1 = phi i32 [ -2, %if.then6 ], [ %error.0, %if.end54 ]
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %12, i8* noundef nonnull %call) #12
  %conv56 = sext i32 %error.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end55
  %retval.0 = phi i64 [ %conv56, %if.end55 ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_root_and_pwd_rcu(%struct.fs_struct* noundef %fs, %struct.path* nocapture noundef writeonly %root, %struct.path* nocapture noundef writeonly %pwd) unnamed_addr #0 {
entry:
  %seq1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 2
  %sequence.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %seq1, i64 0, i32 0, i32 0
  %root4 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 5
  %0 = bitcast %struct.path* %root to i8*
  %1 = bitcast %struct.path* %root4 to i8*
  %pwd5 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 6
  %2 = bitcast %struct.path* %pwd to i8*
  %3 = bitcast %struct.path* %pwd5 to i8*
  %seqcount.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %seq1, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %4 = load volatile i32, i32* %sequence.i, align 4
  %and16 = and i32 %4, 1
  %tobool.not17 = icmp eq i32 %and16, 0
  br i1 %tobool.not17, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #11
  %5 = load volatile i32, i32* %sequence.i, align 4
  %and = and i32 %5, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %4, %do.body ], [ %5, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #10, !srcloc !23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %3, i64 16, i1 false)
  %call8 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %.lcssa) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end, label %do.body

do.end:                                           ; preds = %while.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #11
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #12
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #10, !srcloc !24
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #10, !srcloc !25
  call void asm sideeffect "hint #20", "~{memory}"() #10, !srcloc !26
  ret i8* %2
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 1414704}
!11 = !{i64 2154790889}
!12 = !{i64 2150157732}
!13 = !{i64 1937435}
!14 = !{i64 2149603439}
!15 = !{i64 2148096224, i64 2148096257, i64 2148096310, i64 2148096369, i64 2148096403, i64 2148096458, i64 2148096487, i64 2148096507}
!16 = !{i64 1934760}
!17 = !{i64 2154773111}
!18 = !{i64 2150142529}
!19 = !{i64 2149610720}
!20 = !{i64 2149402950}
!21 = !{i64 2149837137}
!22 = !{i64 2149837354}
!23 = !{i64 2154794603}
!24 = !{i64 3982785, i64 3982868, i64 3983092, i64 3983312, i64 3983335}
!25 = !{i64 3987487, i64 3987511}
!26 = !{i64 2151540271}
