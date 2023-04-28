; ModuleID = 'fs/init.c'
source_filename = "fs/init.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.52, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.53, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.54, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.64, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.64 = type { %struct.callback_head }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.14 }
%union.anon.14 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.9, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.8, [0 x i64] }
%struct.anon.8 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.7, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.7 = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
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
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.35, %union.anon.36, i32 }
%struct.request_queue = type opaque
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.12, %union.anon.28, %struct.atomic_t, [8 x i8] }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.28 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.51, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.51 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.9 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.10, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.11, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.10 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.11 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.55, %struct.qspinlock }
%union.anon.55 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.52 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.53 = type { %struct.callback_head }
%union.anon.54 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.4, i32 }
%union.anon.4 = type { %struct.kuid_t }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { i64 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.filename = type { i8*, i8*, i32, %struct.audit_names*, [0 x i8] }
%struct.audit_names = type opaque

@init_user_ns = external dso_local global %struct.user_namespace, align 1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_mount(i8* noundef %dev_name, i8* noundef %dir_name, i8* noundef %type_page, i64 noundef %flags, i8* noundef %data_page) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %dir_name, i32 noundef 1, %struct.path* noundef nonnull %path) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @path_mount(i8* noundef %dev_name, %struct.path* noundef nonnull %path, i8* noundef %type_page, i64 noundef %flags, i8* noundef %data_page) #8
  call void @path_put(%struct.path* noundef nonnull %path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(i8* noundef, i32 noundef, %struct.path* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_mount(i8* noundef, %struct.path* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_umount(i8* noundef %name, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 129, i32 128
  %call = call i32 @kern_path(i8* noundef %name, i32 noundef %spec.select, %struct.path* noundef nonnull %path) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %entry
  %call4 = call i32 @path_umount(%struct.path* noundef nonnull %path, i32 noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_umount(%struct.path* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_chdir(i8* noundef %filename) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %filename, i32 noundef 3, %struct.path* noundef nonnull %path) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @path_permission(%struct.path* noundef nonnull %path, i32 noundef 65) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 83
  %3 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call void @set_fs_pwd(%struct.fs_struct* noundef %3, %struct.path* noundef nonnull %path) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  call void @path_put(%struct.path* noundef nonnull %path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi i32 [ %call1, %if.end5 ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @path_permission(%struct.path* nocapture noundef readonly %path, i32 noundef %mask) unnamed_addr #4 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #9
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call1 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %1) #9
  %call2 = call i32 @inode_permission(%struct.user_namespace* noundef %call, %struct.inode* noundef %call1, i32 noundef %mask) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(%struct.fs_struct* noundef, %struct.path* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_chroot(i8* noundef %filename) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %filename, i32 noundef 3, %struct.path* noundef nonnull %path) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @path_permission(%struct.path* noundef nonnull %path, i32 noundef 65) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %dput_and_out

if.end4:                                          ; preds = %if.end
  %call6 = call i1 @ns_capable(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 18) #8
  br i1 %call6, label %if.end8, label %dput_and_out

if.end8:                                          ; preds = %if.end4
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 83
  %3 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call void @set_fs_root(%struct.fs_struct* noundef %3, %struct.path* noundef nonnull %path) #8
  br label %dput_and_out

dput_and_out:                                     ; preds = %if.end4, %if.end, %if.end8
  %error.0 = phi i32 [ %call1, %if.end ], [ 0, %if.end8 ], [ -1, %if.end4 ]
  call void @path_put(%struct.path* noundef nonnull %path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %dput_and_out
  %retval.0 = phi i32 [ %error.0, %dput_and_out ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(%struct.fs_struct* noundef, %struct.path* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_chown(i8* noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %and = lshr i32 %flags, 8
  %and.lobit = and i32 %and, 1
  %0 = xor i32 %and.lobit, 1
  %1 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %filename, i32 noundef %0, %struct.path* noundef nonnull %path) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call2 = call i32 @mnt_want_write(%struct.vfsmount* noundef %2) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @chown_common(%struct.path* noundef nonnull %path, i32 noundef %user, i32 noundef %group) #8
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %3) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %error.0 = phi i32 [ %call2, %if.end ], [ %call5, %if.then4 ]
  call void @path_put(%struct.path* noundef nonnull %path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  %retval.0 = phi i32 [ %error.0, %if.end7 ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chown_common(%struct.path* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(%struct.vfsmount* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_chmod(i8* noundef %filename, i16 noundef %mode) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %filename, i32 noundef 1, %struct.path* noundef nonnull %path) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @chmod_common(%struct.path* noundef nonnull %path, i16 noundef %mode) #8
  call void @path_put(%struct.path* noundef nonnull %path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chmod_common(%struct.path* noundef, i16 noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_eaccess(i8* noundef %filename) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %filename, i32 noundef 1, %struct.path* noundef nonnull %path) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @path_permission(%struct.path* noundef nonnull %path, i32 noundef 16) #9
  call void @path_put(%struct.path* noundef nonnull %path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_stat(i8* noundef %filename, %struct.kstat* noundef %stat, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %and = lshr i32 %flags, 8
  %and.lobit = and i32 %and, 1
  %0 = xor i32 %and.lobit, 1
  %1 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %filename, i32 noundef %0, %struct.path* noundef nonnull %path) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %flags, 2048
  %call2 = call i32 @vfs_getattr(%struct.path* noundef nonnull %path, %struct.kstat* noundef %stat, i32 noundef 2047, i32 noundef %or) #8
  call void @path_put(%struct.path* noundef nonnull %path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(%struct.path* noundef, %struct.kstat* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_mknod(i8* noundef %filename, i16 noundef %mode, i32 noundef %dev) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = and i16 %mode, -4096
  switch i16 %1, label %cleanup [
    i16 4096, label %if.end16
    i16 -16384, label %if.end16
    i16 24576, label %if.end16.fold.split
    i16 8192, label %if.end16.fold.split55
  ]

if.end16.fold.split:                              ; preds = %entry
  br label %if.end16

if.end16.fold.split55:                            ; preds = %entry
  br label %if.end16

if.end16:                                         ; preds = %entry, %entry, %if.end16.fold.split55, %if.end16.fold.split
  %dev.addr.0 = phi i32 [ 0, %entry ], [ 0, %entry ], [ %dev, %if.end16.fold.split ], [ %dev, %if.end16.fold.split55 ]
  %call = call %struct.dentry* @kern_path_create(i32 noundef -100, i8* noundef %filename, %struct.path* noundef nonnull %path, i32 noundef 0) #8
  %2 = bitcast %struct.dentry* %call to i8*
  %call17 = call fastcc i1 @IS_ERR(i8* noundef %2) #9
  br i1 %call17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end16
  %call19 = call fastcc i64 @PTR_ERR(i8* noundef %2) #9
  %conv20 = trunc i64 %call19 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %dentry22 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry22, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 5
  %4 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %4, i64 0, i32 6
  %5 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i64 0, i32 10
  %6 = load i64, i64* %s_flags, align 16
  %and23 = and i64 %6, 65536
  %tobool.not = icmp eq i64 %and23, 0
  br i1 %tobool.not, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @current_umask() #8
  %7 = trunc i32 %call25 to i16
  %8 = xor i16 %7, -1
  %conv28 = and i16 %8, %mode
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end21
  %mode.addr.0 = phi i16 [ %mode, %if.end21 ], [ %conv28, %if.then24 ]
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %9 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call33 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %9) #9
  %10 = load %struct.dentry*, %struct.dentry** %dentry22, align 8
  %d_inode35 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i64 0, i32 5
  %11 = load %struct.inode*, %struct.inode** %d_inode35, align 8
  %and1.i = and i32 %dev.addr.0, 255
  %shr2.i = lshr i32 %dev.addr.0, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %12 = shl i32 %dev.addr.0, 12
  %shl.i = and i32 %12, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %call37 = call i32 @vfs_mknod(%struct.user_namespace* noundef %call33, %struct.inode* noundef %11, %struct.dentry* noundef %call, i16 noundef %mode.addr.0, i32 noundef %or4.i) #8
  call void @done_path_create(%struct.path* noundef nonnull %path, %struct.dentry* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end29, %if.then18
  %retval.0 = phi i32 [ %conv20, %if.then18 ], [ %call37, %if.end29 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @kern_path_create(i32 noundef, i8* noundef, %struct.path* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.dentry* noundef, i16 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #4 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #7, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @done_path_create(%struct.path* noundef, %struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_link(i8* noundef %oldname, i8* noundef %newname) local_unnamed_addr #0 section ".init.text" {
entry:
  %old_path = alloca %struct.path, align 8
  %new_path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %old_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = bitcast %struct.path* %new_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %oldname, i32 noundef 0, %struct.path* noundef nonnull %old_path) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.dentry* @kern_path_create(i32 noundef -100, i8* noundef %newname, %struct.path* noundef nonnull %new_path, i32 noundef 0) #8
  %2 = bitcast %struct.dentry* %call1 to i8*
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %2) #9
  %conv = trunc i64 %call2 to i32
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #9
  br i1 %call3, label %out, label %if.end5

if.end5:                                          ; preds = %if.end
  %mnt = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 0
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt6 = getelementptr inbounds %struct.path, %struct.path* %new_path, i64 0, i32 0
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt6, align 8
  %cmp.not = icmp eq %struct.vfsmount* %3, %4
  br i1 %cmp.not, label %if.end9, label %out_dput

if.end9:                                          ; preds = %if.end5
  %call11 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %3) #9
  %call12 = call i32 @may_linkat(%struct.user_namespace* noundef %call11, %struct.path* noundef nonnull %old_path) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %out_dput, !prof !10

if.end18:                                         ; preds = %if.end9
  %dentry = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 1
  %5 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %dentry24 = getelementptr inbounds %struct.path, %struct.path* %new_path, i64 0, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry24, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 5
  %7 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call25 = call i32 @vfs_link(%struct.dentry* noundef %5, %struct.user_namespace* noundef %call11, %struct.inode* noundef %7, %struct.dentry* noundef %call1, %struct.inode** noundef null) #8
  br label %out_dput

out_dput:                                         ; preds = %if.end9, %if.end5, %if.end18
  %error.0 = phi i32 [ -18, %if.end5 ], [ %call12, %if.end9 ], [ %call25, %if.end18 ]
  call void @done_path_create(%struct.path* noundef nonnull %new_path, %struct.dentry* noundef %call1) #8
  br label %out

out:                                              ; preds = %if.end, %out_dput
  %error.1 = phi i32 [ %conv, %if.end ], [ %error.0, %out_dput ]
  call void @path_put(%struct.path* noundef nonnull %old_path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.1, %out ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_linkat(%struct.user_namespace* noundef, %struct.path* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_link(%struct.dentry* noundef, %struct.user_namespace* noundef, %struct.inode* noundef, %struct.dentry* noundef, %struct.inode** noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_symlink(i8* noundef %oldname, i8* noundef %newname) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call %struct.dentry* @kern_path_create(i32 noundef -100, i8* noundef %newname, %struct.path* noundef nonnull %path, i32 noundef 0) #8
  %1 = bitcast %struct.dentry* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #9
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %1) #9
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call5 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %2) #9
  %dentry6 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry6, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 5
  %4 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call7 = call i32 @vfs_symlink(%struct.user_namespace* noundef %call5, %struct.inode* noundef %4, %struct.dentry* noundef %call, i8* noundef %oldname) #8
  call void @done_path_create(%struct.path* noundef nonnull %path, %struct.dentry* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call7, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_symlink(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.dentry* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_unlink(i8* noundef %pathname) local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call %struct.filename* @getname_kernel(i8* noundef %pathname) #8
  %call1 = call i32 @do_unlinkat(i32 noundef -100, %struct.filename* noundef %call) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unlinkat(i32 noundef, %struct.filename* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname_kernel(i8* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_mkdir(i8* noundef %pathname, i16 noundef %mode) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call %struct.dentry* @kern_path_create(i32 noundef -100, i8* noundef %pathname, %struct.path* noundef nonnull %path, i32 noundef 2) #8
  %1 = bitcast %struct.dentry* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #9
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %1) #9
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry3 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry3, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 6
  %4 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 10
  %5 = load i64, i64* %s_flags, align 16
  %and = and i64 %5, 65536
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @current_umask() #8
  %6 = trunc i32 %call5 to i16
  %7 = xor i16 %6, -1
  %conv8 = and i16 %7, %mode
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %mode.addr.0 = phi i16 [ %mode, %if.end ], [ %conv8, %if.then4 ]
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call13 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %8) #9
  %9 = load %struct.dentry*, %struct.dentry** %dentry3, align 8
  %d_inode15 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i64 0, i32 5
  %10 = load %struct.inode*, %struct.inode** %d_inode15, align 8
  %call16 = call i32 @vfs_mkdir(%struct.user_namespace* noundef %call13, %struct.inode* noundef %10, %struct.dentry* noundef %call, i16 noundef %mode.addr.0) #8
  call void @done_path_create(%struct.path* noundef nonnull %path, %struct.dentry* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call16, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.dentry* noundef, i16 noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_rmdir(i8* noundef %pathname) local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call %struct.filename* @getname_kernel(i8* noundef %pathname) #8
  %call1 = call i32 @do_rmdir(i32 noundef -100, %struct.filename* noundef %call) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_rmdir(i32 noundef, %struct.filename* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_utimes(i8* noundef %filename, %struct.timespec64* noundef %ts) local_unnamed_addr #0 section ".init.text" {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call i32 @kern_path(i8* noundef %filename, i32 noundef 0, %struct.path* noundef nonnull %path) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @vfs_utimes(%struct.path* noundef nonnull %path, %struct.timespec64* noundef %ts) #8
  call void @path_put(%struct.path* noundef nonnull %path) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_utimes(%struct.path* noundef, %struct.timespec64* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @init_dup(%struct.file* noundef %file) local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call i32 @get_unused_fd_flags(i32 noundef 0) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.file* @get_file(%struct.file* noundef %file) #9
  call void @fd_install(i32 noundef %call, %struct.file* noundef %file) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @get_file(%struct.file* noundef returned %f) unnamed_addr #4 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #8
  ret %struct.file* %f
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #7, !srcloc !11
  ret void
}

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 1254003}
!9 = !{i64 2149692087}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147815819, i64 2147816333, i64 2147816363, i64 2147816389, i64 2147816421, i64 2147816450}
