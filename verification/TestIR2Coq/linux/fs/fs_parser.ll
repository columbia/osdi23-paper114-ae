; ModuleID = 'fs/fs_parser.c'
source_filename = "fs/fs_parser.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.constant_table = type { i8*, i32 }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.module = type opaque
%struct.fs_parameter_spec = type { i8*, {}*, i8, i16, i8* }
%struct.fs_parameter = type { i8*, i8, %union.anon, i64, i32 }
%union.anon = type { i8* }
%struct.fs_parse_result = type { i8, %union.anon.66 }
%union.anon.66 = type { i64 }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.61, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.17 }
%union.anon.17 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.12, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.11, [0 x i64] }
%struct.anon.11 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.52, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.10 = type { i32 }
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
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.37, %union.anon.38, i32 }
%struct.request_queue = type opaque
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.51, i32, [12 x i8] }
%union.anon.51 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.15, %union.anon.31, %struct.atomic_t, [8 x i8] }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.31 = type { %struct.atomic_t }
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
%struct.pgprot_t = type { i64 }
%struct.anon.12 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.13, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.14, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.13 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.14 = type { %struct.pte_t }
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
%struct.seq_file = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.61 = type { %struct.pipe_inode_info* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.7, i32 }
%union.anon.7 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.lock_class_key = type {}
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.lockref = type { %union.anon.62 }
%union.anon.62 = type { i64 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.user_namespace = type opaque
%struct.net = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.5 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.5 = type { %struct.callback_head }
%struct.filename = type { i8*, i8*, i32, %struct.audit_names*, [0 x i8] }
%struct.audit_names = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Deprecated parameter '%s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected value for '%s'\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: not usable as path\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: Lookup failure for '%s'\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: Non-blockdev passed as '%s'\00", align 1
@bool_names = internal constant [7 x %struct.constant_table] [%struct.constant_table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i32 0 }, %struct.constant_table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct.constant_table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 0 }, %struct.constant_table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 0 }, %struct.constant_table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 1 }, %struct.constant_table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 1 }, %struct.constant_table zeroinitializer], align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Bad value for '%s'\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lookup_constant(%struct.constant_table* noundef %tbl, i8* noundef %name, i32 noundef %not_found) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.constant_table* @__lookup_constant(%struct.constant_table* noundef %tbl, i8* noundef %name) #4
  %tobool.not = icmp eq %struct.constant_table* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %value = getelementptr inbounds %struct.constant_table, %struct.constant_table* %call, i64 0, i32 1
  %0 = load i32, i32* %value, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ %not_found, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.constant_table* @__lookup_constant(%struct.constant_table* noundef readonly %tbl, i8* noundef %name) unnamed_addr #0 {
entry:
  %name16 = getelementptr inbounds %struct.constant_table, %struct.constant_table* %tbl, i64 0, i32 0
  %0 = load i8*, i8** %name16, align 8
  %tobool.not7 = icmp eq i8* %0, null
  br i1 %tobool.not7, label %return, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8* [ %2, %for.inc ], [ %0, %entry ]
  %tbl.addr.08 = phi %struct.constant_table* [ %incdec.ptr, %for.inc ], [ %tbl, %entry ]
  %call = call i32 @strcmp(i8* noundef %name, i8* noundef nonnull %1) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.constant_table, %struct.constant_table* %tbl.addr.08, i64 1
  %name1 = getelementptr inbounds %struct.constant_table, %struct.constant_table* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %return, label %for.body

return:                                           ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi %struct.constant_table* [ null, %entry ], [ null, %for.inc ], [ %tbl.addr.08, %for.body ]
  ret %struct.constant_table* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__fs_parse(%struct.p_log* noundef %log, %struct.fs_parameter_spec* noundef %desc, %struct.fs_parameter* noundef %param, %struct.fs_parse_result* noundef %result) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %uint_64 = getelementptr %union.anon.66, %union.anon.66* %0, i64 0, i32 0
  store i64 0, i64* %uint_64, align 8
  %negated = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 0
  %call = call fastcc %struct.fs_parameter_spec* @fs_lookup_key(%struct.fs_parameter_spec* noundef %desc, %struct.fs_parameter* noundef %param, i8* noundef %negated) #4
  %tobool.not = icmp eq %struct.fs_parameter_spec* %call, null
  br i1 %tobool.not, label %cleanup23, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %call, i64 0, i32 3
  %1 = load i16, i16* %flags, align 2
  %2 = and i16 %1, 8
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %log3 = getelementptr inbounds %struct.p_log, %struct.p_log* %log, i64 0, i32 1
  %3 = load %struct.fc_log*, %struct.fc_log** %log3, align 8
  %prefix = getelementptr inbounds %struct.p_log, %struct.p_log* %log, i64 0, i32 0
  %4 = load i8*, i8** %prefix, align 8
  %key = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %5 = load i8*, i8** %key, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %3, i8* noundef %4, i8 noundef 119, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef %5) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %call5 = call fastcc i1 @is_flag(%struct.fs_parameter_spec* noundef nonnull %call) #4
  br i1 %call5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 1
  br i1 %cmp.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.then6
  %log9 = getelementptr inbounds %struct.p_log, %struct.p_log* %log, i64 0, i32 1
  %6 = load %struct.fc_log*, %struct.fc_log** %log9, align 8
  %prefix10 = getelementptr inbounds %struct.p_log, %struct.p_log* %log, i64 0, i32 0
  %7 = load i8*, i8** %prefix10, align 8
  %key11 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %8 = load i8*, i8** %key11, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %6, i8* noundef %7, i8 noundef 101, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef %8) #5
  br label %cleanup23

if.end12:                                         ; preds = %if.then6
  %9 = load i8, i8* %negated, align 8, !range !7
  %boolean = bitcast %union.anon.66* %0 to i8*
  %10 = xor i8 %9, 1
  store i8 %10, i8* %boolean, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end4
  %type15 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %call, i64 0, i32 1
  %type16 = bitcast {}** %type15 to i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)**
  %11 = load i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)** %type16, align 8
  %call17 = call i32 %11(%struct.p_log* noundef %log, %struct.fs_parameter_spec* noundef nonnull %call, %struct.fs_parameter* noundef %param, %struct.fs_parse_result* noundef %result) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %cleanup23

if.end21:                                         ; preds = %if.else, %if.end12
  %opt = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %call, i64 0, i32 2
  %12 = load i8, i8* %opt, align 8
  %conv22 = zext i8 %12 to i32
  br label %cleanup23

cleanup23:                                        ; preds = %entry, %if.else, %if.end21, %if.then8
  %retval.1 = phi i32 [ -22, %if.then8 ], [ %conv22, %if.end21 ], [ %call17, %if.else ], [ -519, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fs_parameter_spec* @fs_lookup_key(%struct.fs_parameter_spec* noundef readonly %desc, %struct.fs_parameter* nocapture noundef readonly %param, i8* nocapture noundef writeonly %negated) unnamed_addr #0 {
entry:
  %key = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %0 = load i8*, i8** %key, align 8
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp = icmp eq i8 %bf.load, 1
  store i8 0, i8* %negated, align 1
  %name176 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %desc, i64 0, i32 0
  %1 = load i8*, i8** %name176, align 8
  %tobool.not77 = icmp eq i8* %1, null
  br i1 %tobool.not77, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i8* [ %4, %for.inc ], [ %1, %entry ]
  %other.080 = phi %struct.fs_parameter_spec* [ %other.1, %for.inc ], [ null, %entry ]
  %p.078 = phi %struct.fs_parameter_spec* [ %incdec.ptr, %for.inc ], [ %desc, %entry ]
  %call = call i32 @strcmp(i8* noundef nonnull %2, i8* noundef %0) #5
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call4 = call fastcc i1 @is_flag(%struct.fs_parameter_spec* noundef %p.078) #4
  %3 = xor i1 %cmp, %call4
  br i1 %3, label %for.inc, label %cleanup, !prof !8

for.inc:                                          ; preds = %if.end, %for.body
  %other.1 = phi %struct.fs_parameter_spec* [ %other.080, %for.body ], [ %p.078, %if.end ]
  %incdec.ptr = getelementptr %struct.fs_parameter_spec, %struct.fs_parameter_spec* %p.078, i64 1
  %name1 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %incdec.ptr, i64 0, i32 0
  %4 = load i8*, i8** %name1, align 8
  %tobool.not = icmp eq i8* %4, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %other.0.lcssa = phi %struct.fs_parameter_spec* [ null, %entry ], [ %other.1, %for.inc ]
  br i1 %cmp, label %if.then15, label %cleanup

if.then15:                                        ; preds = %for.end
  %5 = load i8, i8* %0, align 1
  %cmp17 = icmp eq i8 %5, 110
  br i1 %cmp17, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.then15
  %arrayidx19 = getelementptr i8, i8* %0, i64 1
  %6 = load i8, i8* %arrayidx19, align 1
  %cmp21 = icmp eq i8 %6, 111
  br i1 %cmp21, label %land.lhs.true23, label %cleanup

land.lhs.true23:                                  ; preds = %land.lhs.true
  %arrayidx24 = getelementptr i8, i8* %0, i64 2
  %7 = load i8, i8* %arrayidx24, align 1
  %tobool26.not = icmp eq i8 %7, 0
  br i1 %tobool26.not, label %cleanup, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %land.lhs.true23
  %8 = load i8*, i8** %name176, align 8
  %tobool30.not82 = icmp eq i8* %8, null
  br i1 %tobool30.not82, label %cleanup, label %for.body31

for.body31:                                       ; preds = %for.cond28.preheader, %for.inc42
  %9 = phi i8* [ %12, %for.inc42 ], [ %8, %for.cond28.preheader ]
  %p.183 = phi %struct.fs_parameter_spec* [ %incdec.ptr43, %for.inc42 ], [ %desc, %for.cond28.preheader ]
  %call33 = call i32 @strcmp(i8* noundef nonnull %9, i8* noundef %arrayidx24) #5
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.end37, label %for.inc42

if.end37:                                         ; preds = %for.body31
  %flags = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %p.183, i64 0, i32 3
  %10 = load i16, i16* %flags, align 2
  %11 = and i16 %10, 2
  %tobool39.not = icmp eq i16 %11, 0
  br i1 %tobool39.not, label %for.inc42, label %if.end41

if.end41:                                         ; preds = %if.end37
  store i8 1, i8* %negated, align 1
  br label %cleanup

for.inc42:                                        ; preds = %if.end37, %for.body31
  %incdec.ptr43 = getelementptr %struct.fs_parameter_spec, %struct.fs_parameter_spec* %p.183, i64 1
  %name29 = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %incdec.ptr43, i64 0, i32 0
  %12 = load i8*, i8** %name29, align 8
  %tobool30.not = icmp eq i8* %12, null
  br i1 %tobool30.not, label %cleanup, label %for.body31

cleanup:                                          ; preds = %if.end, %for.inc42, %for.cond28.preheader, %for.end, %land.lhs.true23, %land.lhs.true, %if.then15, %if.end41
  %retval.0 = phi %struct.fs_parameter_spec* [ %p.183, %if.end41 ], [ %other.0.lcssa, %if.then15 ], [ %other.0.lcssa, %land.lhs.true ], [ %other.0.lcssa, %land.lhs.true23 ], [ %other.0.lcssa, %for.end ], [ %other.0.lcssa, %for.cond28.preheader ], [ %other.0.lcssa, %for.inc42 ], [ %p.078, %if.end ]
  ret %struct.fs_parameter_spec* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(%struct.fc_log* noundef, i8* noundef, i8 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_flag(%struct.fs_parameter_spec* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %p, i64 0, i32 1
  %type1 = bitcast {}** %type to i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)**
  %0 = load i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)** %type1, align 8
  %cmp = icmp eq i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_lookup_param(%struct.fs_context* nocapture noundef readonly %fc, %struct.fs_parameter* nocapture noundef readonly %param, i1 noundef %want_bdev, %struct.path* noundef %_path) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load52 = load i8, i8* %type, align 8
  switch i8 %bf.load52, label %sw.default [
    i8 2, label %sw.bb
    i8 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %0 = load i8*, i8** %string, align 8
  %call = call %struct.filename* @getname_kernel(i8* noundef %0) #5
  %1 = bitcast %struct.filename* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #4
  br i1 %call1, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %1) #4
  %conv = trunc i64 %call2 to i32
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2
  %name = bitcast %union.anon* %2 to %struct.filename**
  %3 = load %struct.filename*, %struct.filename** %name, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %log4 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %4 = load %struct.fc_log*, %struct.fc_log** %log4, align 8
  %key = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %5 = load i8*, i8** %key, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %4, i8* noundef null, i8 noundef 101, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %5) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %sw.bb3
  %f.0 = phi %struct.filename* [ %3, %sw.bb3 ], [ %call, %sw.bb ]
  %put_f.0.off0 = phi i1 [ false, %sw.bb3 ], [ true, %sw.bb ]
  %dirfd = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 4
  %6 = load i32, i32* %dirfd, align 8
  %call5 = call i32 @filename_lookup(i32 noundef %6, %struct.filename* noundef %f.0, i32 noundef 0, %struct.path* noundef %_path, %struct.path* noundef null) #5
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %out.sink.split, label %if.end12

if.end12:                                         ; preds = %sw.epilog
  br i1 %want_bdev, label %land.lhs.true, label %out

land.lhs.true:                                    ; preds = %if.end12
  %dentry = getelementptr inbounds %struct.path, %struct.path* %_path, i64 0, i32 1
  %7 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call14 = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %7) #4
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call14, i64 0, i32 0
  %8 = load i16, i16* %i_mode, align 8
  %9 = and i16 %8, -4096
  %cmp16 = icmp eq i16 %9, 24576
  br i1 %cmp16, label %out, label %if.then18

if.then18:                                        ; preds = %land.lhs.true
  call void @path_put(%struct.path* noundef %_path) #5
  store %struct.dentry* null, %struct.dentry** %dentry, align 8
  %mnt = getelementptr inbounds %struct.path, %struct.path* %_path, i64 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  br label %out.sink.split

out.sink.split:                                   ; preds = %sw.epilog, %if.then18
  %.sink53 = phi i8* [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %if.then18 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %sw.epilog ]
  %ret.0.ph = phi i32 [ -15, %if.then18 ], [ %call5, %sw.epilog ]
  %log21 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 9, i32 1
  %10 = load %struct.fc_log*, %struct.fc_log** %log21, align 8
  %key22 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %11 = load i8*, i8** %key22, align 8
  %name23 = getelementptr inbounds %struct.filename, %struct.filename* %f.0, i64 0, i32 0
  %12 = load i8*, i8** %name23, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %10, i8* noundef null, i8 noundef 101, i8* noundef %.sink53, i8* noundef %11, i8* noundef %12) #5
  br label %out

out:                                              ; preds = %out.sink.split, %if.end12, %land.lhs.true
  %ret.0 = phi i32 [ %call5, %land.lhs.true ], [ %call5, %if.end12 ], [ %ret.0.ph, %out.sink.split ]
  br i1 %put_f.0.off0, label %if.then26, label %cleanup

if.then26:                                        ; preds = %out
  call void @putname(%struct.filename* noundef %f.0) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then26, %sw.default, %if.then
  %retval.0 = phi i32 [ -22, %sw.default ], [ %conv, %if.then ], [ %ret.0, %if.then26 ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname_kernel(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filename_lookup(i32 noundef, %struct.filename* noundef, i32 noundef, %struct.path* noundef, %struct.path* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_backing_inode(%struct.dentry* nocapture noundef readonly %upper) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %upper, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(%struct.filename* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_param_is_bool(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter_spec* nocapture noundef readnone %p, %struct.fs_parameter* nocapture noundef readonly %param, %struct.fs_parse_result* nocapture noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %0 = load i8*, i8** %string, align 8
  %call1 = call i32 @lookup_constant(%struct.constant_table* noundef getelementptr inbounds ([7 x %struct.constant_table], [7 x %struct.constant_table]* @bool_names, i64 0, i64 0), i8* noundef %0, i32 noundef -1) #4
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool = icmp ne i32 %call1, 0
  %1 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %boolean = bitcast %union.anon.66* %1 to i8*
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %boolean, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then3 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fs_param_bad_value(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter* nocapture noundef readonly %param) unnamed_addr #0 {
entry:
  %log1 = getelementptr inbounds %struct.p_log, %struct.p_log* %log, i64 0, i32 1
  %0 = load %struct.fc_log*, %struct.fc_log** %log1, align 8
  %prefix = getelementptr inbounds %struct.p_log, %struct.p_log* %log, i64 0, i32 0
  %1 = load i8*, i8** %prefix, align 8
  %key = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 0
  %2 = load i8*, i8** %key, align 8
  call void (%struct.fc_log*, i8*, i8, i8*, ...) @logfc(%struct.fc_log* noundef %0, i8* noundef %1, i8 noundef 101, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef %2) #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_param_is_u32(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter_spec* nocapture noundef readonly %p, %struct.fs_parameter* nocapture noundef readonly %param, %struct.fs_parse_result* noundef %result) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %p, i64 0, i32 4
  %0 = load i8*, i8** %data, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %2 = load i8*, i8** %string, align 8
  %3 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %uint_32 = bitcast %union.anon.66* %3 to i32*
  %call = call i32 @kstrtouint(i8* noundef %2, i32 noundef %conv, i32* noundef %uint_32) #5
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then, label %cleanup

if.then:                                          ; preds = %lor.lhs.false, %entry
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_param_is_s32(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter_spec* nocapture noundef readnone %p, %struct.fs_parameter* nocapture noundef readonly %param, %struct.fs_parse_result* noundef %result) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %0 = load i8*, i8** %string, align 8
  %1 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %int_32 = bitcast %union.anon.66* %1 to i32*
  %call = call i32 @kstrtoint(i8* noundef %0, i32 noundef 0, i32* noundef %int_32) #5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false, %entry
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_param_is_u64(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter_spec* nocapture noundef readnone %p, %struct.fs_parameter* nocapture noundef readonly %param, %struct.fs_parse_result* noundef %result) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %0 = load i8*, i8** %string, align 8
  %uint_64 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1, i32 0
  %call = call i32 @kstrtoull(i8* noundef %0, i32 noundef 0, i64* noundef %uint_64) #5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false, %entry
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_param_is_enum(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter_spec* nocapture noundef readonly %p, %struct.fs_parameter* nocapture noundef readonly %param, %struct.fs_parse_result* nocapture noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.fs_parameter_spec, %struct.fs_parameter_spec* %p, i64 0, i32 4
  %0 = bitcast i8** %data to %struct.constant_table**
  %1 = load %struct.constant_table*, %struct.constant_table** %0, align 8
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %2 = load i8*, i8** %string, align 8
  %call1 = call fastcc %struct.constant_table* @__lookup_constant(%struct.constant_table* noundef %1, i8* noundef %2) #4
  %tobool.not = icmp eq %struct.constant_table* %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %value = getelementptr inbounds %struct.constant_table, %struct.constant_table* %call1, i64 0, i32 1
  %3 = load i32, i32* %value, align 8
  %4 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %uint_32 = bitcast %union.anon.66* %4 to i32*
  store i32 %3, i32* %uint_32, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end4 ], [ -22, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_param_is_string(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter_spec* nocapture noundef readnone %p, %struct.fs_parameter* nocapture noundef readonly %param, %struct.fs_parse_result* nocapture noundef readnone %result) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %0 = load i8*, i8** %string, align 8
  %1 = load i8, i8* %0, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false, %entry
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_param_is_blob(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter_spec* nocapture noundef readnone %p, %struct.fs_parameter* nocapture noundef readonly %param, %struct.fs_parse_result* nocapture noundef readnone %result) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load = load i8, i8* %type, align 8
  %cmp.not = icmp eq i8 %bf.load, 3
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fs_param_is_fd(%struct.p_log* nocapture noundef readonly %log, %struct.fs_parameter_spec* nocapture noundef readnone %p, %struct.fs_parameter* nocapture noundef readonly %param, %struct.fs_parse_result* noundef %result) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 1
  %bf.load18 = load i8, i8* %type, align 8
  switch i8 %bf.load18, label %sw.epilog [
    i8 2, label %sw.bb
    i8 5, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %string = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 2, i32 0
  %0 = load i8*, i8** %string, align 8
  %1 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %uint_32 = bitcast %union.anon.66* %1 to i32*
  %call = call i32 @kstrtouint(i8* noundef %0, i32 noundef 0, i32* noundef %uint_32) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.epilog, label %if.end

if.end:                                           ; preds = %sw.bb
  %2 = load i32, i32* %uint_32, align 8
  %cmp2 = icmp sgt i32 %2, -1
  br i1 %cmp2, label %return, label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %dirfd = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %param, i64 0, i32 4
  %3 = load i32, i32* %dirfd, align 8
  %4 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %result, i64 0, i32 1
  %uint_326 = bitcast %union.anon.66* %4 to i32*
  store i32 %3, i32* %uint_326, align 8
  %cmp8 = icmp sgt i32 %3, -1
  br i1 %cmp8, label %return, label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb5, %if.end, %sw.bb
  call fastcc void @fs_param_bad_value(%struct.p_log* noundef %log, %struct.fs_parameter* noundef %param) #4
  br label %return

return:                                           ; preds = %sw.bb5, %if.end, %sw.epilog
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 0, %if.end ], [ 0, %sw.bb5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @fs_param_is_blockdev(%struct.p_log* nocapture noundef readnone %log, %struct.fs_parameter_spec* nocapture noundef readnone %p, %struct.fs_parameter* nocapture noundef readnone %param, %struct.fs_parse_result* nocapture noundef readnone %result) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @fs_param_is_path(%struct.p_log* nocapture noundef readnone %log, %struct.fs_parameter_spec* nocapture noundef readnone %p, %struct.fs_parameter* nocapture noundef readnone %param, %struct.fs_parse_result* nocapture noundef readnone %result) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i8 0, i8 2}
!8 = !{!"branch_weights", i32 1, i32 2000}
