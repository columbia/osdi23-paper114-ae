; ModuleID = 'fs/utimes.c'
source_filename = "fs/utimes.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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
%struct.seqcount = type { i32 }
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
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
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
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.pt_regs = type { %union.anon.72, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.72 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.__kernel_timespec = type { i64, i64 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_utimes(%struct.path* nocapture noundef readonly %path, %struct.timespec64* noundef readonly %times) local_unnamed_addr #0 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  %delegated_inode = alloca %struct.inode*, align 8
  %0 = bitcast %struct.iattr* %newattrs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %3 = bitcast %struct.inode** %delegated_inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  %tobool.not = icmp eq %struct.timespec64* %times, null
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %times, i64 0, i32 1
  %4 = load i64, i64* %tv_nsec, align 8
  %call = call fastcc i1 @nsec_valid(i64 noundef %4) #7
  br i1 %call, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %tv_nsec2 = getelementptr %struct.timespec64, %struct.timespec64* %times, i64 1, i32 1
  %5 = load i64, i64* %tv_nsec2, align 8
  %call3 = call fastcc i1 @nsec_valid(i64 noundef %5) #7
  br i1 %call3, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp = icmp eq i64 %4, 1073741823
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %cmp9 = icmp eq i64 %5, 1073741823
  %spec.store.select = select i1 %cmp9, %struct.timespec64* null, %struct.timespec64* %times
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end, %entry
  %times.addr.0 = phi %struct.timespec64* [ %spec.store.select, %land.lhs.true ], [ %times, %if.end ], [ null, %entry ]
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %6 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call13 = call i32 @mnt_want_write(%struct.vfsmount* noundef %6) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end12
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 0
  %tobool17.not = icmp eq %struct.timespec64* %times.addr.0, null
  br i1 %tobool17.not, label %if.end53, label %if.then18

if.then18:                                        ; preds = %if.end16
  %tv_nsec20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %times.addr.0, i64 0, i32 1
  %7 = load i64, i64* %tv_nsec20, align 8
  switch i64 %7, label %if.then27 [
    i64 1073741822, label %if.then22
    i64 1073741823, label %if.end31
  ]

if.then22:                                        ; preds = %if.then18
  br label %if.end31

if.then27:                                        ; preds = %if.then18
  %ia_atime = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 5
  %8 = bitcast %struct.timespec64* %ia_atime to i8*
  %9 = bitcast %struct.timespec64* %times.addr.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %if.end31

if.end31:                                         ; preds = %if.then18, %if.then27, %if.then22
  %10 = phi i32 [ 112, %if.then18 ], [ 240, %if.then27 ], [ 96, %if.then22 ]
  %tv_nsec33 = getelementptr %struct.timespec64, %struct.timespec64* %times.addr.0, i64 1, i32 1
  %11 = load i64, i64* %tv_nsec33, align 8
  switch i64 %11, label %if.then42 [
    i64 1073741822, label %if.then35
    i64 1073741823, label %if.end47
  ]

if.then35:                                        ; preds = %if.end31
  %and37 = and i32 %10, 208
  br label %if.end47

if.then42:                                        ; preds = %if.end31
  %arrayidx32 = getelementptr %struct.timespec64, %struct.timespec64* %times.addr.0, i64 1
  %ia_mtime = getelementptr inbounds %struct.iattr, %struct.iattr* %newattrs, i64 0, i32 6
  %12 = bitcast %struct.timespec64* %ia_mtime to i8*
  %13 = bitcast %struct.timespec64* %arrayidx32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %12, i8* noundef align 8 dereferenceable(16) %13, i64 16, i1 false)
  %or45 = or i32 %10, 256
  br label %if.end47

if.end47:                                         ; preds = %if.end31, %if.then42, %if.then35
  %14 = phi i32 [ %10, %if.end31 ], [ %or45, %if.then42 ], [ %and37, %if.then35 ]
  %or49 = or i32 %14, 65536
  br label %if.end53

if.end53:                                         ; preds = %if.end16, %if.end47
  %storemerge = phi i32 [ %or49, %if.end47 ], [ 131184, %if.end16 ]
  store i32 %storemerge, i32* %ia_valid, align 8
  br label %retry_deleg

retry_deleg:                                      ; preds = %if.then59, %if.end53
  call fastcc void @inode_lock(%struct.inode* noundef %2) #7
  %15 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call55 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %15) #7
  %16 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call57 = call i32 @notify_change(%struct.user_namespace* noundef %call55, %struct.dentry* noundef %16, %struct.iattr* noundef nonnull %newattrs, %struct.inode** noundef nonnull %delegated_inode) #8
  call fastcc void @inode_unlock(%struct.inode* noundef %2) #7
  %17 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %tobool58.not = icmp eq %struct.inode* %17, null
  br i1 %tobool58.not, label %if.end64, label %if.then59

if.then59:                                        ; preds = %retry_deleg
  %call60 = call fastcc i32 @break_deleg_wait(%struct.inode** noundef nonnull %delegated_inode) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %retry_deleg, label %if.end64

if.end64:                                         ; preds = %if.then59, %retry_deleg
  %error.0 = phi i32 [ %call60, %if.then59 ], [ %call57, %retry_deleg ]
  %18 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end12, %if.then, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %if.then ], [ %call13, %if.end12 ], [ %error.0, %if.end64 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @nsec_valid(i64 noundef %nsec) unnamed_addr #3 {
entry:
  %0 = and i64 %nsec, -2
  %1 = icmp eq i64 %0, 1073741822
  %2 = icmp ult i64 %nsec, 1000000000
  %retval.0 = or i1 %2, %1
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(%struct.vfsmount* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef, %struct.inode** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #6, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg_wait(%struct.inode** nocapture noundef %delegated_inode) unnamed_addr #0 {
entry:
  %0 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %call = call fastcc i32 @break_deleg(%struct.inode* noundef %0) #7
  %1 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  call void @iput(%struct.inode* noundef %1) #8
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(%struct.vfsmount* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_utimes(i32 noundef %dfd, i8* noundef %filename, %struct.timespec64* noundef %times, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %filename, null
  %cmp1 = icmp ne i32 %dfd, -100
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @do_utimes_fd(i32 noundef %dfd, %struct.timespec64* noundef %times, i32 noundef %flags) #7
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @do_utimes_path(i32 noundef %dfd, i8* noundef %filename, %struct.timespec64* noundef %times, i32 noundef %flags) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0.in = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  %retval.0 = sext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_utimes_fd(i32 noundef %fd, %struct.timespec64* noundef %times, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #7
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool1.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %f_path = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %call5 = call i32 @vfs_utimes(%struct.path* noundef %f_path, %struct.timespec64* noundef %times) #7
  call fastcc void @fdput([2 x i64] %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %entry ], [ -9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_utimes_path(i32 noundef %dfd, i8* noundef %filename, %struct.timespec64* noundef %times, i32 noundef %flags) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %and = and i32 %flags, -4353
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and1 = lshr i32 %flags, 8
  %and1.lobit = and i32 %and1, 1
  %and5 = shl nuw nsw i32 %flags, 2
  %1 = and i32 %and5, 16384
  %2 = or i32 %and1.lobit, %1
  %3 = xor i32 %2, 1
  %call31 = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %3, %struct.path* noundef nonnull %path) #7
  %tobool10.not32 = icmp eq i32 %call31, 0
  br i1 %tobool10.not32, label %if.end12.lr.ph, label %cleanup

if.end12.lr.ph:                                   ; preds = %if.end
  %4 = or i32 %3, 32
  br label %if.end12

retry:                                            ; preds = %if.end12
  %call = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %4, %struct.path* noundef nonnull %path) #7
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end12.lr.ph, %retry
  %lookup_flags.233 = phi i32 [ %3, %if.end12.lr.ph ], [ %4, %retry ]
  %call13 = call i32 @vfs_utimes(%struct.path* noundef nonnull %path, %struct.timespec64* noundef %times) #7
  call void @path_put(%struct.path* noundef nonnull %path) #8
  %conv = sext i32 %call13 to i64
  %call14 = call fastcc i1 @retry_estale(i64 noundef %conv, i32 noundef %lookup_flags.233) #7
  br i1 %call14, label %retry, label %cleanup

cleanup:                                          ; preds = %retry, %if.end12, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %call31, %if.end ], [ %call, %retry ], [ %call13, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_utimensat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_utimensat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_utimensat(i64 noundef %dfd, i64 noundef %filename, i64 noundef %utimes, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %1 = inttoptr i64 %utimes to %struct.__kernel_timespec*
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_utimensat(i32 noundef %conv, i8* noundef %0, %struct.__kernel_timespec* noundef %1, i32 noundef %conv1) #7
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %tobool.not = icmp eq %struct.file_lock_context* %0, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_lease) #7
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @__break_lease(%struct.inode* noundef %inode, i32 noundef 1, i32 noundef 4) #8
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #6, !srcloc !10
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
declare dso_local i32 @__break_lease(%struct.inode* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #8
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #7
  ret [2 x i64] %call1
}

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
  call void @fput(%struct.file* noundef %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #3 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path) unnamed_addr #0 {
entry:
  %call = call i32 @user_path_at_empty(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path, i32* noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @retry_estale(i64 noundef %error, i32 noundef %flags) unnamed_addr #3 {
entry:
  %cmp = icmp eq i64 %error, -116
  %and = and i32 %flags, 32
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i1 %cmp, %tobool.not
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, i8* noundef, i32 noundef, %struct.path* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_utimensat(i32 noundef %dfd, i8* noundef %filename, %struct.__kernel_timespec* noundef %utimes, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tstimes = alloca [2 x %struct.timespec64], align 8
  %0 = bitcast [2 x %struct.timespec64]* %tstimes to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.__kernel_timespec* %utimes, null
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.timespec64], [2 x %struct.timespec64]* %tstimes, i64 0, i64 0
  %call = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %arrayidx, %struct.__kernel_timespec* noundef nonnull %utimes) #8
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx3 = getelementptr inbounds [2 x %struct.timespec64], [2 x %struct.timespec64]* %tstimes, i64 0, i64 1
  %arrayidx4 = getelementptr %struct.__kernel_timespec, %struct.__kernel_timespec* %utimes, i64 1
  %call5 = call i32 @get_timespec64(%struct.timespec64* noundef %arrayidx3, %struct.__kernel_timespec* noundef %arrayidx4) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tv_nsec = getelementptr inbounds [2 x %struct.timespec64], [2 x %struct.timespec64]* %tstimes, i64 0, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %cmp = icmp eq i64 %1, 1073741822
  %tv_nsec10 = getelementptr inbounds [2 x %struct.timespec64], [2 x %struct.timespec64]* %tstimes, i64 0, i64 1, i32 1
  %2 = load i64, i64* %tv_nsec10, align 8
  %cmp11 = icmp eq i64 %2, 1073741822
  %or.cond = select i1 %cmp, i1 %cmp11, i1 false
  br i1 %or.cond, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %arraydecay = getelementptr inbounds [2 x %struct.timespec64], [2 x %struct.timespec64]* %tstimes, i64 0, i64 0
  %cond = select i1 %tobool.not, %struct.timespec64* null, %struct.timespec64* %arraydecay
  %call16 = call i64 @do_utimes(i32 noundef %dfd, i8* noundef %filename, %struct.timespec64* noundef %cond, i32 noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %lor.lhs.false, %if.end14
  %retval.0 = phi i64 [ %call16, %if.end14 ], [ -14, %lor.lhs.false ], [ -14, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2149698015}
!9 = !{i64 2151794937}
!10 = !{i64 2148549205}
