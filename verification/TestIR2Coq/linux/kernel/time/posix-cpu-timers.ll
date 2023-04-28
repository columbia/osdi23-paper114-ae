; ModuleID = 'kernel/time/posix-cpu-timers.c'
source_filename = "kernel/time/posix-cpu-timers.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i64 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, %struct.k_clock*, i32, i32, i32, i64, i64, i32, i32, i64, %struct.signal_struct*, %union.anon.65, %struct.sigqueue*, %union.anon.66, %struct.callback_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.k_clock = type { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, {}*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, {}*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, {}*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.63, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.0 = type { i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.2, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.2 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
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
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
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
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.40, %struct.list_head, %struct.list_head, %union.anon.41 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.lockref = type { %union.anon.38 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.30, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.31, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.32, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.37, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.30 = type { i32 }
%union.anon.31 = type { %struct.callback_head }
%union.anon.32 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.page = type { i64, %union.anon.11, %union.anon.25, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.25 = type { %struct.atomic_t }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.26 }
%union.anon.26 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.27, %union.anon.28 }
%union.anon.27 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.28 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.37 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.35 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.33, %struct.qspinlock }
%union.anon.33 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.35 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { i32*, i32, i32, i32, i64, i32* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.42 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.48, %union.anon.49, i32 }
%struct.request_queue = type opaque
%union.anon.48 = type { %struct.list_head }
%union.anon.49 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.54 }
%struct.anon.54 = type { i32, i32, i32, i64, i64 }
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.62, i32, [12 x i8] }
%union.anon.62 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.64, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.64 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.task_io_accounting = type {}
%struct.rlimit = type { i64, i64 }
%struct.mm_struct = type { %struct.anon.1, [0 x i64] }
%struct.anon.1 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.65 = type { %struct.pid* }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, %struct.ucounts* }
%union.anon.66 = type { %struct.anon.68 }
%struct.anon.68 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, i32 (%struct.alarm*, i64)*, i32, i32, i8* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.cpu_timer = type { %struct.timerqueue_node, %struct.timerqueue_head*, %struct.pid*, %struct.list_head, i32 }
%struct.task_cputime = type { i64, i64, i64 }
%struct.anon.45 = type { i32, i32, %union.anon.46, i64 }
%union.anon.46 = type { %struct.__kernel_timespec* }
%struct.__kernel_timespec = type { i64, i64 }

@clock_posix_cpu = dso_local constant { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, i32 (%struct.k_itimer*)*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* } { i32 (i32, %struct.timespec64*)* @posix_cpu_clock_getres, i32 (i32, %struct.timespec64*)* @posix_cpu_clock_set, i32 (i32, %struct.timespec64*)* @posix_cpu_clock_get, i64 (i32)* null, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* @posix_cpu_timer_create, i32 (i32, i32, %struct.timespec64*)* @posix_cpu_nsleep, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* @posix_cpu_timer_set, i32 (%struct.k_itimer*)* @posix_cpu_timer_del, void (%struct.k_itimer*, %struct.itimerspec64*)* @posix_cpu_timer_get, void (%struct.k_itimer*)* @posix_cpu_timer_rearm, i64 (%struct.k_itimer*, i64)* null, i64 (%struct.k_itimer*, i64)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, i64, i1, i1)* null, void (%struct.k_itimer*)* null }, align 8
@clock_process = dso_local local_unnamed_addr constant { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, i32 (%struct.k_itimer*)*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* } { i32 (i32, %struct.timespec64*)* @process_cpu_clock_getres, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @process_cpu_clock_get, i64 (i32)* null, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* @process_cpu_timer_create, i32 (i32, i32, %struct.timespec64*)* @process_cpu_nsleep, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, %struct.itimerspec64*)* null, void (%struct.k_itimer*)* null, i64 (%struct.k_itimer*, i64)* null, i64 (%struct.k_itimer*, i64)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, i64, i1, i1)* null, void (%struct.k_itimer*)* null }, align 8
@clock_thread = dso_local local_unnamed_addr constant { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, i32 (%struct.k_itimer*)*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* } { i32 (i32, %struct.timespec64*)* @thread_cpu_clock_getres, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @thread_cpu_clock_get, i64 (i32)* null, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* @thread_cpu_timer_create, i32 (i32, i32, %struct.timespec64*)* null, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, %struct.itimerspec64*)* null, void (%struct.k_itimer*)* null, i64 (%struct.k_itimer*, i64)* null, i64 (%struct.k_itimer*, i64)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, i64, i1, i1)* null, void (%struct.k_itimer*)* null }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@print_fatal_signals = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"\016%s Watchdog Timeout (%s): %s[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@do_cpu_nanosleep.zero_it = internal global %struct.itimerspec64 zeroinitializer, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @posix_cputimers_group_init(%struct.posix_cputimers* noundef %pct, i64 noundef %cpu_limit) local_unnamed_addr #0 {
entry:
  call fastcc void @posix_cputimers_init(%struct.posix_cputimers* noundef %pct) #16
  %cmp.not = icmp eq i64 %cpu_limit, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mul = mul i64 %cpu_limit, 1000000000
  %nextevt = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 0, i32 0
  store i64 %mul, i64* %nextevt, align 8
  %timers_active = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 1
  store i32 1, i32* %timers_active, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @posix_cputimers_init(%struct.posix_cputimers* noundef %pct) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.posix_cputimers* %pct to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 80) #17
  %nextevt = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 0, i32 0
  store i64 -1, i64* %nextevt, align 8
  %nextevt3 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 1, i32 0
  store i64 -1, i64* %nextevt3, align 8
  %nextevt6 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 2, i32 0
  store i64 -1, i64* %nextevt6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_rlimit_cpu(%struct.task_struct* noundef %task, i64 noundef %rlim_new) local_unnamed_addr #0 {
entry:
  %nsecs = alloca i64, align 8
  %0 = bitcast i64* %nsecs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  %mul = mul i64 %rlim_new, 1000000000
  store i64 %mul, i64* %nsecs, align 8
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @set_process_cpu_timer(%struct.task_struct* noundef %task, i32 noundef 0, i64* noundef nonnull %nsecs, i64* noundef null) #16
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i5 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i5) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_process_cpu_timer(%struct.task_struct* noundef %tsk, i32 noundef %clkid, i64* nocapture noundef %newval, i64* noundef %oldval) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %clkid, 1
  br i1 %cmp, label %if.then, label %if.end16, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/posix-cpu-timers.c\22; .popsection; .long 14472b - 14470b; .short 1386; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !8
  br label %cleanup

if.end16:                                         ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %clkid to i64
  %nextevt17 = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 0, i64 %idxprom, i32 0
  %call = call fastcc i64 @cpu_clock_sample_group(i32 noundef %clkid, %struct.task_struct* noundef %tsk, i1 noundef true) #16
  %tobool18.not = icmp eq i64* %oldval, null
  br i1 %tobool18.not, label %if.end16.if.end30_crit_edge, label %if.then19

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  %.pre = load i64, i64* %newval, align 8
  br label %if.end30

if.then19:                                        ; preds = %if.end16
  %1 = load i64, i64* %oldval, align 8
  %tobool20.not = icmp eq i64 %1, 0
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.then19
  %cmp22.not = icmp ugt i64 %1, %call
  %sub = sub i64 %1, %call
  %.sink = select i1 %cmp22.not, i64 %sub, i64 4000000
  store i64 %.sink, i64* %oldval, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then19
  %2 = load i64, i64* %newval, align 8
  %tobool27.not = icmp eq i64 %2, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  %add = add i64 %2, %call
  store i64 %add, i64* %newval, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end16.if.end30_crit_edge, %if.end26, %if.then28
  %3 = phi i64 [ %.pre, %if.end16.if.end30_crit_edge ], [ 0, %if.end26 ], [ %add, %if.then28 ]
  %4 = load i64, i64* %nextevt17, align 8
  %cmp31 = icmp ult i64 %3, %4
  br i1 %cmp31, label %if.then33, label %cleanup

if.then33:                                        ; preds = %if.end30
  store i64 %3, i64* %nextevt17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then33, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @thread_group_sample_cputime(%struct.task_struct* nocapture noundef readonly %tsk, i64* nocapture noundef writeonly %samples) local_unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 1
  %1 = load i32, i32* %timers_active, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/posix-cpu-timers.c\22; .popsection; .long 14472b - 14470b; .short 272; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cputime_atomic = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 19, i32 0
  call fastcc void @proc_sample_cputime_atomic(%struct.task_cputime_atomic* noundef %cputime_atomic, i64* noundef %samples) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @proc_sample_cputime_atomic(%struct.task_cputime_atomic* noundef %at, i64* nocapture noundef writeonly %samples) unnamed_addr #2 {
entry:
  %counter.i = getelementptr inbounds %struct.task_cputime_atomic, %struct.task_cputime_atomic* %at, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %counter.i10 = getelementptr inbounds %struct.task_cputime_atomic, %struct.task_cputime_atomic* %at, i64 0, i32 1, i32 0
  %1 = load volatile i64, i64* %counter.i10, align 8
  %counter.i11 = getelementptr inbounds %struct.task_cputime_atomic, %struct.task_cputime_atomic* %at, i64 0, i32 2, i32 0
  %2 = load volatile i64, i64* %counter.i11, align 8
  call fastcc void @store_samples(i64* noundef %samples, i64 noundef %1, i64 noundef %0, i64 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @posix_cpu_timers_exit(%struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  %posix_cputimers = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 77
  call fastcc void @cleanup_timers(%struct.posix_cputimers* noundef %posix_cputimers) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cleanup_timers(%struct.posix_cputimers* noundef %pct) unnamed_addr #0 {
entry:
  %tqhead = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 0, i32 1
  call fastcc void @cleanup_timerqueue(%struct.timerqueue_head* noundef %tqhead) #16
  %tqhead3 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 1, i32 1
  call fastcc void @cleanup_timerqueue(%struct.timerqueue_head* noundef %tqhead3) #16
  %tqhead6 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 2, i32 1
  call fastcc void @cleanup_timerqueue(%struct.timerqueue_head* noundef %tqhead6) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @posix_cpu_timers_exit_group(%struct.task_struct* nocapture noundef readonly %tsk) local_unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %posix_cputimers = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20
  call fastcc void @cleanup_timers(%struct.posix_cputimers* noundef %posix_cputimers) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @run_posix_cpu_timers() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc i1 @fastpath_timer_check(%struct.task_struct* noundef %1) #16
  br i1 %call2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %entry
  call fastcc void @__run_posix_cpu_timers(%struct.task_struct* noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i1 @fastpath_timer_check(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %samples = alloca [3 x i64], align 8
  %samples12 = alloca [3 x i64], align 8
  %posix_cputimers = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 77
  %call = call fastcc i1 @expiry_cache_is_inactive(%struct.posix_cputimers* noundef %posix_cputimers) #16
  br i1 %call, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast [3 x i64]* %samples to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !11
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %samples, i64 0, i64 0
  call fastcc void @task_sample_cputime(%struct.task_struct* noundef %tsk, i64* noundef nonnull %arraydecay) #16
  %call2 = call fastcc i1 @task_cputimers_expired(i64* noundef nonnull %arraydecay, %struct.posix_cputimers* noundef %posix_cputimers) #16
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #18
  br i1 %call2, label %cleanup28, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %posix_cputimers5 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 20
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 20, i32 1
  %2 = load volatile i32, i32* %timers_active, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end21, label %do.end8

do.end8:                                          ; preds = %if.end4
  %expiry_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 20, i32 2
  %3 = load volatile i32, i32* %expiry_active, align 4
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.then11, label %if.end21

if.then11:                                        ; preds = %do.end8
  %4 = bitcast [3 x i64]* %samples12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !11
  %cputime_atomic = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 19, i32 0
  %arraydecay13 = getelementptr inbounds [3 x i64], [3 x i64]* %samples12, i64 0, i64 0
  call fastcc void @proc_sample_cputime_atomic(%struct.task_cputime_atomic* noundef %cputime_atomic, i64* noundef nonnull %arraydecay13) #16
  %call15 = call fastcc i1 @task_cputimers_expired(i64* noundef nonnull %arraydecay13, %struct.posix_cputimers* noundef %posix_cputimers5) #16
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #18
  br i1 %call15, label %cleanup28, label %if.end21

if.end21:                                         ; preds = %if.then11, %do.end8, %if.end4
  %call22 = call fastcc i32 @dl_task(%struct.task_struct* noundef %tsk) #16
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end27, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end21
  %dl_overrun = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_overrun, align 4
  %5 = and i8 %bf.load, 8
  %tobool25.not = icmp eq i8 %5, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup28

if.end27:                                         ; preds = %land.lhs.true24, %if.end21
  br label %cleanup28

cleanup28:                                        ; preds = %land.lhs.true24, %if.then11, %if.then, %if.end27
  %retval.3 = phi i1 [ false, %if.end27 ], [ true, %if.then11 ], [ true, %if.then ], [ true, %land.lhs.true24 ]
  ret i1 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__run_posix_cpu_timers(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  call fastcc void @handle_posix_cpu_timers(%struct.task_struct* noundef %tsk) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @cpu_clock_sample_group(i32 noundef %clkid, %struct.task_struct* noundef %p, i1 noundef %start) unnamed_addr #0 {
entry:
  %samples = alloca [3 x i64], align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %1 = bitcast [3 x i64]* %samples to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !11
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 1
  %2 = load volatile i32, i32* %timers_active, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %samples, i64 0, i64 0
  br i1 %start, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call fastcc void @thread_group_start_cputime(%struct.task_struct* noundef %p, i64* noundef nonnull %arraydecay) #16
  br label %if.end8

if.else:                                          ; preds = %if.then
  call fastcc void @__thread_group_cputime(%struct.task_struct* noundef %p, i64* noundef nonnull %arraydecay) #16
  br label %if.end8

if.else6:                                         ; preds = %entry
  %cputime_atomic = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 19, i32 0
  %arraydecay7 = getelementptr inbounds [3 x i64], [3 x i64]* %samples, i64 0, i64 0
  call fastcc void @proc_sample_cputime_atomic(%struct.task_cputime_atomic* noundef %cputime_atomic, i64* noundef nonnull %arraydecay7) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.else, %if.else6
  %idxprom = sext i32 %clkid to i64
  %arrayidx = getelementptr [3 x i64], [3 x i64]* %samples, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #18
  ret i64 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_cpu_clock_getres(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #0 {
entry:
  %call = call fastcc i32 @validate_clock_permissions(i32 noundef %which_clock) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 0
  store i64 0, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 1
  %and = and i32 %which_clock, 3
  %cmp = icmp eq i32 %and, 2
  %spec.store.select = select i1 %cmp, i64 1, i64 4000000
  store i64 %spec.store.select, i64* %tv_nsec, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_cpu_clock_set(i32 noundef %clock, %struct.timespec64* nocapture noundef readnone %tp) #0 {
entry:
  %call = call fastcc i32 @validate_clock_permissions(i32 noundef %clock) #16
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -1, i32 %call
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_cpu_clock_get(i32 noundef %clock, %struct.timespec64* nocapture noundef writeonly %tp) #0 {
entry:
  %and = and i32 %clock, 3
  call fastcc void @__rcu_read_lock() #17
  %call = call fastcc %struct.pid* @pid_for_clock(i32 noundef %clock, i1 noundef true) #16
  %call1 = call fastcc i32 @clock_pid_type(i32 noundef %clock) #16, !range !12
  %call2 = call %struct.task_struct* @pid_task(%struct.pid* noundef %call, i32 noundef %call1) #17
  %tobool.not = icmp eq %struct.task_struct* %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %clock, 4
  %cmp.not = icmp eq i32 %and3, 0
  br i1 %cmp.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i64 @cpu_clock_sample(i32 noundef %and, %struct.task_struct* noundef nonnull %call2) #16
  br label %if.end7

if.else:                                          ; preds = %if.end
  %call6 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %and, %struct.task_struct* noundef nonnull %call2, i1 noundef false) #16
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %t.0 = phi i64 [ %call5, %if.then4 ], [ %call6, %if.else ]
  call fastcc void @rcu_read_unlock() #16
  %call8 = call [2 x i64] @ns_to_timespec64(i64 noundef %t.0) #17
  %call8.fca.0.extract = extractvalue [2 x i64] %call8, 0
  %call8.fca.1.extract = extractvalue [2 x i64] %call8, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 0
  store i64 %call8.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx12 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 1
  store i64 %call8.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_cpu_timer_create(%struct.k_itimer* noundef %new_timer) #0 {
entry:
  call fastcc void @__rcu_read_lock() #17
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %new_timer, i64 0, i32 4
  %0 = load i32, i32* %it_clock, align 8
  %call = call fastcc %struct.pid* @pid_for_clock(i32 noundef %0, i1 noundef false) #16
  %tobool.not = icmp eq %struct.pid* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %new_timer, i64 0, i32 3
  store %struct.k_clock* bitcast ({ i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, i32 (%struct.k_itimer*)*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* }* @clock_posix_cpu to %struct.k_clock*), %struct.k_clock** %kclock, align 8
  %node = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %new_timer, i64 0, i32 15, i32 0, i32 0, i32 0
  call fastcc void @timerqueue_init(%struct.timerqueue_node* noundef %node) #16
  %call1 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef nonnull %call) #16
  %pid4 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %new_timer, i64 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %1 = bitcast %struct.rb_node** %pid4 to %struct.pid**
  store %struct.pid* %call, %struct.pid** %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  call fastcc void @rcu_read_unlock() #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_cpu_nsleep(i32 noundef %which_clock, i32 noundef %flags, %struct.timespec64* nocapture noundef readonly %rqtp) #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %restart_block1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 49
  %and = and i32 %which_clock, 4
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %shr = ashr i32 %which_clock, 3
  %cmp2 = icmp eq i32 %shr, -1
  br i1 %cmp2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %neg = xor i32 %shr, -1
  %call6 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %1) #16
  %cmp7 = icmp eq i32 %call6, %neg
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call8 = call fastcc i32 @do_cpu_nanosleep(i32 noundef %which_clock, i32 noundef %flags, %struct.timespec64* noundef %rqtp) #16
  %cmp9 = icmp eq i32 %call8, -516
  br i1 %cmp9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  %and11 = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.then10
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 49, i32 2
  %clockid = bitcast %union.anon.43* %2 to i32*
  store i32 %which_clock, i32* %clockid, align 8
  call fastcc void @set_restart_fn(%struct.restart_block* noundef %restart_block1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end13, %if.then10, %land.lhs.true, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %land.lhs.true ], [ -514, %if.then10 ], [ -516, %if.end13 ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_cpu_timer_set(%struct.k_itimer* noundef %timer, i32 noundef %timer_flags, %struct.itimerspec64* nocapture noundef readonly %new, %struct.itimerspec64* noundef writeonly %old) #0 {
entry:
  %flags = alloca i64, align 8
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 4
  %0 = load i32, i32* %it_clock, align 8
  %and = and i32 %0, 3
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15
  %cpu = bitcast %union.anon.66* %it to %struct.cpu_timer*
  %1 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  store i64 0, i64* %flags, align 8, !annotation !11
  call fastcc void @__rcu_read_lock() #17
  %call = call fastcc %struct.task_struct* @cpu_timer_task_rcu(%struct.k_itimer* noundef %timer) #16
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %.elt = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new, i64 0, i32 1, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %3 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new, i64 0, i32 1, i32 1
  %.unpack183 = load i64, i64* %3, align 8
  %4 = insertvalue [2 x i64] %2, i64 %.unpack183, 1
  %call1 = call fastcc i64 @timespec64_to_ktime([2 x i64] %4) #16
  %call3 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  %cmp = icmp eq %struct.sighand_struct* %call3, null
  br i1 %cmp, label %if.then6, label %if.end7, !prof !7

if.then6:                                         ; preds = %if.end
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 11
  %5 = load i64, i64* %it_interval, align 8
  %call8 = call fastcc i64 @cpu_timer_getexpires(%struct.cpu_timer* noundef %cpu) #16
  %firing = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15, i32 0, i32 0, i32 1, i32 1
  %6 = bitcast i64* %firing to i32*
  %7 = load i32, i32* %6, align 8
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.then19, !prof !13

if.then19:                                        ; preds = %if.end7
  store i32 -1, i32* %6, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end7
  %call23 = call fastcc i1 @cpu_timer_dequeue(%struct.cpu_timer* noundef %cpu) #16
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  %ret.0 = phi i32 [ 1, %if.then19 ], [ 0, %if.else ]
  %8 = load i32, i32* %it_clock, align 8
  %and26 = and i32 %8, 4
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %if.end24
  %call30 = call fastcc i64 @cpu_clock_sample(i32 noundef %and, %struct.task_struct* noundef nonnull %call) #16
  br label %if.end33

if.else31:                                        ; preds = %if.end24
  %call32 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %and, %struct.task_struct* noundef nonnull %call, i1 noundef true) #16
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then29
  %val.0 = phi i64 [ %call30, %if.then29 ], [ %call32, %if.else31 ]
  %tobool34.not = icmp eq %struct.itimerspec64* %old, null
  br i1 %tobool34.not, label %if.end55, label %if.then35

if.then35:                                        ; preds = %if.end33
  %cmp36 = icmp eq i64 %call8, 0
  br i1 %cmp36, label %if.then38, label %if.else41

if.then38:                                        ; preds = %if.then35
  %tv_sec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 1, i32 0
  store i64 0, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 1, i32 1
  store i64 0, i64* %tv_nsec, align 8
  br label %if.end55

if.else41:                                        ; preds = %if.then35
  %call42 = call fastcc i64 @bump_cpu_timer(%struct.k_itimer* noundef %timer, i64 noundef %val.0) #16
  %cmp43 = icmp ugt i64 %call42, %val.0
  br i1 %cmp43, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.else41
  %sub = sub i64 %call42, %val.0
  %call47 = call [2 x i64] @ns_to_timespec64(i64 noundef %sub) #17
  %call47.fca.0.extract = extractvalue [2 x i64] %call47, 0
  %call47.fca.1.extract = extractvalue [2 x i64] %call47, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 1, i32 0
  store i64 %call47.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx119 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 1, i32 1
  store i64 %call47.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx119, align 8
  br label %if.end55

if.else48:                                        ; preds = %if.else41
  %tv_nsec50 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 1, i32 1
  store i64 1, i64* %tv_nsec50, align 8
  %tv_sec52 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 1, i32 0
  store i64 0, i64* %tv_sec52, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then45, %if.else48, %if.then38, %if.end33
  br i1 %tobool11.not, label %if.end65, label %out.sink.split, !prof !13

if.end65:                                         ; preds = %if.end55
  %cmp66.not = icmp eq i64 %call1, 0
  %and68 = and i32 %timer_flags, 1
  %tobool69.not = icmp eq i32 %and68, 0
  %add = select i1 %tobool69.not, i64 %val.0, i64 0
  %spec.select = add i64 %add, %call1
  %new_expires.0 = select i1 %cmp66.not, i64 0, i64 %spec.select
  call fastcc void @cpu_timer_setexpires(%struct.cpu_timer* noundef %cpu, i64 noundef %new_expires.0) #16
  %cmp72.not = icmp eq i64 %new_expires.0, 0
  %cmp72.not.not = xor i1 %cmp72.not, true
  %cmp75 = icmp ult i64 %val.0, %new_expires.0
  %or.cond = select i1 %cmp72.not.not, i1 %cmp75, i1 false
  br i1 %or.cond, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end65
  call fastcc void @arm_timer(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef nonnull %call) #16
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end65
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  %.elt184 = getelementptr %struct.itimerspec64, %struct.itimerspec64* %new, i64 0, i32 0, i32 0
  %.unpack185 = load i64, i64* %.elt184, align 8
  %9 = insertvalue [2 x i64] undef, i64 %.unpack185, 0
  %10 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new, i64 0, i32 0, i32 1
  %.unpack187 = load i64, i64* %10, align 8
  %11 = insertvalue [2 x i64] %9, i64 %.unpack187, 1
  %call80 = call fastcc i64 @timespec64_to_ktime([2 x i64] %11) #16
  store i64 %call80, i64* %it_interval, align 8
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 9
  %12 = load i32, i32* %it_requeue_pending, align 8
  %add82 = add i32 %12, 2
  %and83 = and i32 %add82, -2
  store i32 %and83, i32* %it_requeue_pending, align 8
  %it_overrun_last = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 8
  store i64 0, i64* %it_overrun_last, align 8
  %it_overrun = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 7
  store i64 -1, i64* %it_overrun, align 8
  br i1 %cmp75, label %out, label %if.then87

if.then87:                                        ; preds = %if.end78
  br i1 %cmp72.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.then87
  call fastcc void @cpu_timer_fire(%struct.k_itimer* noundef %timer) #16
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.then87
  %call92 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  %tobool93.not = icmp eq %struct.sighand_struct* %call92, null
  br i1 %tobool93.not, label %out, label %if.end95

if.end95:                                         ; preds = %if.end91
  %call96 = call fastcc i1 @cpu_timer_queued(%struct.cpu_timer* noundef %cpu) #16
  br i1 %call96, label %out.sink.split, label %if.then97

if.then97:                                        ; preds = %if.end95
  call fastcc void @trigger_base_recalc_expires(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef nonnull %call) #16
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end95, %if.then97, %if.end55
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  br label %out

out:                                              ; preds = %out.sink.split, %if.end78, %if.end91
  call fastcc void @rcu_read_unlock() #16
  br i1 %tobool34.not, label %cleanup, label %if.then101

if.then101:                                       ; preds = %out
  %call104 = call [2 x i64] @ns_to_timespec64(i64 noundef %5) #17
  %call104.fca.0.extract = extractvalue [2 x i64] %call104, 0
  %call104.fca.1.extract = extractvalue [2 x i64] %call104, 1
  %tmp103.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 0, i32 0
  store i64 %call104.fca.0.extract, i64* %tmp103.sroa.0.0..sroa_idx, align 8
  %tmp103.sroa.4.0..sroa_idx116 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %old, i64 0, i32 0, i32 1
  store i64 %call104.fca.1.extract, i64* %tmp103.sroa.4.0..sroa_idx116, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then101, %if.then6, %if.then
  %retval.0 = phi i32 [ -3, %if.then6 ], [ -3, %if.then ], [ %ret.0, %if.then101 ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_cpu_timer_del(%struct.k_itimer* noundef %timer) #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %flags, align 8, !annotation !11
  call fastcc void @__rcu_read_lock() #17
  %call = call fastcc %struct.task_struct* @cpu_timer_task_rcu(%struct.k_itimer* noundef %timer) #16
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.then37, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  %cmp = icmp eq %struct.sighand_struct* %call1, null
  br i1 %cmp, label %if.then4, label %if.else, !prof !7

if.then4:                                         ; preds = %if.end
  %head = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15, i32 0, i32 0, i32 1
  %1 = bitcast %struct.hrtimer* %head to %struct.timerqueue_head**
  %2 = load %struct.timerqueue_head*, %struct.timerqueue_head** %1, align 8
  %tobool5.not = icmp eq %struct.timerqueue_head* %2, null
  br i1 %tobool5.not, label %lor.rhs, label %if.then20

lor.rhs:                                          ; preds = %if.then4
  %node = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15, i32 0, i32 0, i32 0
  %call6 = call fastcc i1 @timerqueue_node_queued(%struct.timerqueue_node* noundef %node) #16
  br i1 %call6, label %if.then20, label %if.then37, !prof !7

if.then20:                                        ; preds = %if.then4, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/posix-cpu-timers.c\22; .popsection; .long 14472b - 14470b; .short 488; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !14
  br label %if.then37

if.else:                                          ; preds = %if.end
  %firing = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15, i32 0, i32 0, i32 1, i32 1
  %3 = bitcast i64* %firing to i32*
  %4 = load i32, i32* %3, align 8
  %tobool31.not = icmp eq i32 %4, 0
  br i1 %tobool31.not, label %if.else33, label %if.end38.critedge

if.else33:                                        ; preds = %if.else
  call fastcc void @disarm_timer(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef nonnull %call) #16
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  br label %if.then37

if.then37:                                        ; preds = %lor.rhs, %if.then20, %entry, %if.else33
  call fastcc void @rcu_read_unlock() #16
  %pid = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = bitcast %struct.rb_node** %pid to %struct.pid**
  %6 = load %struct.pid*, %struct.pid** %5, align 8
  call void @put_pid(%struct.pid* noundef %6) #17
  br label %if.end38

if.end38.critedge:                                ; preds = %if.else
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  call fastcc void @rcu_read_unlock() #16
  br label %if.end38

if.end38:                                         ; preds = %if.end38.critedge, %if.then37
  %ret.156 = phi i32 [ 0, %if.then37 ], [ 1, %if.end38.critedge ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %ret.156
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @posix_cpu_timer_get(%struct.k_itimer* nocapture noundef readonly %timer, %struct.itimerspec64* nocapture noundef writeonly %itp) #0 {
entry:
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 4
  %0 = load i32, i32* %it_clock, align 8
  %and = and i32 %0, 3
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15
  %cpu = bitcast %union.anon.66* %it to %struct.cpu_timer*
  %call = call fastcc i64 @cpu_timer_getexpires(%struct.cpu_timer* noundef %cpu) #16
  call fastcc void @__rcu_read_lock() #17
  %call1 = call fastcc %struct.task_struct* @cpu_timer_task_rcu(%struct.k_itimer* noundef %timer) #16
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %it_interval2 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 11
  %1 = load i64, i64* %it_interval2, align 8
  %call3 = call [2 x i64] @ns_to_timespec64(i64 noundef %1) #17
  %call3.fca.0.extract = extractvalue [2 x i64] %call3, 0
  %call3.fca.1.extract = extractvalue [2 x i64] %call3, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %itp, i64 0, i32 0, i32 0
  store i64 %call3.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx25 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %itp, i64 0, i32 0, i32 1
  store i64 %call3.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx25, align 8
  %tobool4.not = icmp eq i64 %call, 0
  br i1 %tobool4.not, label %out, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load i32, i32* %it_clock, align 8
  %and8 = and i32 %2, 4
  %cmp.not = icmp eq i32 %and8, 0
  br i1 %cmp.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call10 = call fastcc i64 @cpu_clock_sample(i32 noundef %and, %struct.task_struct* noundef nonnull %call1) #16
  br label %if.end12

if.else:                                          ; preds = %if.end6
  %call11 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %and, %struct.task_struct* noundef nonnull %call1, i1 noundef false) #16
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %now.0 = phi i64 [ %call10, %if.then9 ], [ %call11, %if.else ]
  %cmp13 = icmp ugt i64 %call, %now.0
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.end12
  %sub = sub i64 %call, %now.0
  %call16 = call [2 x i64] @ns_to_timespec64(i64 noundef %sub) #17
  %call16.fca.0.extract = extractvalue [2 x i64] %call16, 0
  %call16.fca.1.extract = extractvalue [2 x i64] %call16, 1
  %tmp15.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %itp, i64 0, i32 1, i32 0
  store i64 %call16.fca.0.extract, i64* %tmp15.sroa.0.0..sroa_idx, align 8
  %tmp15.sroa.4.0..sroa_idx22 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %itp, i64 0, i32 1, i32 1
  store i64 %call16.fca.1.extract, i64* %tmp15.sroa.4.0..sroa_idx22, align 8
  br label %out

if.else17:                                        ; preds = %if.end12
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %itp, i64 0, i32 1, i32 1
  store i64 1, i64* %tv_nsec, align 8
  %tv_sec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %itp, i64 0, i32 1, i32 0
  store i64 0, i64* %tv_sec, align 8
  br label %out

out:                                              ; preds = %if.then14, %if.else17, %if.end, %entry
  call fastcc void @rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @posix_cpu_timer_rearm(%struct.k_itimer* noundef %timer) #0 {
entry:
  %flags = alloca i64, align 8
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 4
  %0 = load i32, i32* %it_clock, align 8
  %and = and i32 %0, 3
  %1 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  store i64 0, i64* %flags, align 8, !annotation !11
  call fastcc void @__rcu_read_lock() #17
  %call = call fastcc %struct.task_struct* @cpu_timer_task_rcu(%struct.k_itimer* noundef %timer) #16
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  %cmp = icmp eq %struct.sighand_struct* %call1, null
  br i1 %cmp, label %out, label %if.end5, !prof !7

if.end5:                                          ; preds = %if.end
  %2 = load i32, i32* %it_clock, align 8
  %and7 = and i32 %2, 4
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end5
  %call11 = call fastcc i64 @cpu_clock_sample(i32 noundef %and, %struct.task_struct* noundef nonnull %call) #16
  br label %if.end13

if.else:                                          ; preds = %if.end5
  %call12 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %and, %struct.task_struct* noundef nonnull %call, i1 noundef true) #16
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %now.0 = phi i64 [ %call11, %if.then10 ], [ %call12, %if.else ]
  %call14 = call fastcc i64 @bump_cpu_timer(%struct.k_itimer* noundef %timer, i64 noundef %now.0) #16
  call fastcc void @arm_timer(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef nonnull %call) #16
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #16
  br label %out

out:                                              ; preds = %if.end, %entry, %if.end13
  call fastcc void @rcu_read_unlock() #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @process_cpu_clock_getres(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #0 {
entry:
  %call = call fastcc i32 @make_process_cpuclock(i32 noundef 2) #16
  %call1 = call i32 @posix_cpu_clock_getres(i32 noundef %call, %struct.timespec64* noundef %tp) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @process_cpu_clock_get(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #0 {
entry:
  %call = call fastcc i32 @make_process_cpuclock(i32 noundef 2) #16
  %call1 = call i32 @posix_cpu_clock_get(i32 noundef %call, %struct.timespec64* noundef %tp) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @process_cpu_timer_create(%struct.k_itimer* noundef %timer) #0 {
entry:
  %call = call fastcc i32 @make_process_cpuclock(i32 noundef 2) #16
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 4
  store i32 %call, i32* %it_clock, align 8
  %call1 = call i32 @posix_cpu_timer_create(%struct.k_itimer* noundef %timer) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @process_cpu_nsleep(i32 noundef %which_clock, i32 noundef %flags, %struct.timespec64* nocapture noundef readonly %rqtp) #0 {
entry:
  %call = call fastcc i32 @make_process_cpuclock(i32 noundef 2) #16
  %call1 = call i32 @posix_cpu_nsleep(i32 noundef %call, i32 noundef %flags, %struct.timespec64* noundef %rqtp) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @thread_cpu_clock_getres(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #0 {
entry:
  %call = call fastcc i32 @make_thread_cpuclock() #16
  %call1 = call i32 @posix_cpu_clock_getres(i32 noundef %call, %struct.timespec64* noundef %tp) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @thread_cpu_clock_get(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #0 {
entry:
  %call = call fastcc i32 @make_thread_cpuclock() #16
  %call1 = call i32 @posix_cpu_clock_get(i32 noundef %call, %struct.timespec64* noundef %tp) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @thread_cpu_timer_create(%struct.k_itimer* noundef %timer) #0 {
entry:
  %call = call fastcc i32 @make_thread_cpuclock() #16
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 4
  store i32 %call, i32* %it_clock, align 8
  %call1 = call i32 @posix_cpu_timer_create(%struct.k_itimer* noundef %timer) #16
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #16
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !7

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #18, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #18, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call fastcc void @arch_local_irq_enable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #18, !srcloc !20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @store_samples(i64* nocapture noundef writeonly %samples, i64 noundef %stime, i64 noundef %utime, i64 noundef %rtime) unnamed_addr #6 {
entry:
  %add = add i64 %utime, %stime
  store i64 %add, i64* %samples, align 8
  %arrayidx1 = getelementptr i64, i64* %samples, i64 1
  store i64 %utime, i64* %arrayidx1, align 8
  %arrayidx2 = getelementptr i64, i64* %samples, i64 2
  store i64 %rtime, i64* %arrayidx2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cleanup_timerqueue(%struct.timerqueue_head* noundef %head) unnamed_addr #0 {
entry:
  %call8 = call fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* noundef %head) #16
  %tobool.not9 = icmp eq %struct.timerqueue_node* %call8, null
  br i1 %tobool.not9, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call10 = phi %struct.timerqueue_node* [ %call, %while.body ], [ %call8, %entry ]
  %call1 = call i1 @timerqueue_del(%struct.timerqueue_head* noundef %head, %struct.timerqueue_node* noundef nonnull %call10) #17
  %head2 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %call10, i64 1
  %0 = bitcast %struct.timerqueue_node* %head2 to %struct.timerqueue_head**
  store %struct.timerqueue_head* null, %struct.timerqueue_head** %0, align 8
  %call = call fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* noundef %head) #16
  %tobool.not = icmp eq %struct.timerqueue_node* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* nocapture noundef readonly %head) unnamed_addr #7 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 1
  %0 = bitcast %struct.rb_node** %rb_leftmost to %struct.timerqueue_node**
  %1 = load %struct.timerqueue_node*, %struct.timerqueue_node** %0, align 8
  ret %struct.timerqueue_node* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @timerqueue_del(%struct.timerqueue_head* noundef, %struct.timerqueue_node* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @expiry_cache_is_inactive(%struct.posix_cputimers* nocapture noundef readonly %pct) unnamed_addr #7 {
entry:
  %nextevt = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 0, i32 0
  %0 = load i64, i64* %nextevt, align 8
  %nextevt3 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 1, i32 0
  %1 = load i64, i64* %nextevt3, align 8
  %or.demorgan = and i64 %1, %0
  %nextevt7 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 2, i32 0
  %2 = load i64, i64* %nextevt7, align 8
  %or9.demorgan = and i64 %or.demorgan, %2
  %tobool.not = icmp eq i64 %or9.demorgan, -1
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_sample_cputime(%struct.task_struct* nocapture noundef readonly %p, i64* nocapture noundef writeonly %samples) unnamed_addr #8 {
entry:
  %stime = alloca i64, align 8
  %utime = alloca i64, align 8
  %0 = bitcast i64* %stime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %stime, align 8, !annotation !11
  %1 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  store i64 0, i64* %utime, align 8, !annotation !11
  call fastcc void @task_cputime(%struct.task_struct* noundef %p, i64* noundef nonnull %utime, i64* noundef nonnull %stime) #16
  %2 = load i64, i64* %stime, align 8
  %3 = load i64, i64* %utime, align 8
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 5
  %4 = load i64, i64* %sum_exec_runtime, align 8
  call fastcc void @store_samples(i64* noundef %samples, i64 noundef %2, i64 noundef %3, i64 noundef %4) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @task_cputimers_expired(i64* nocapture noundef readonly %samples, %struct.posix_cputimers* nocapture noundef readonly %pct) unnamed_addr #9 {
entry:
  %0 = load i64, i64* %samples, align 8
  %nextevt = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 0, i32 0
  %1 = load i64, i64* %nextevt, align 8
  %cmp3.not = icmp ult i64 %0, %1
  br i1 %cmp3.not, label %for.cond, label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr i64, i64* %samples, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8
  %nextevt.1 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 1, i32 0
  %3 = load i64, i64* %nextevt.1, align 8
  %cmp3.not.1 = icmp ult i64 %2, %3
  br i1 %cmp3.not.1, label %for.cond.1, label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i64, i64* %samples, i64 2
  %4 = load i64, i64* %arrayidx.2, align 8
  %nextevt.2 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 2, i32 0
  %5 = load i64, i64* %nextevt.2, align 8
  %cmp3.not.2 = icmp uge i64 %4, %5
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond, %entry
  %cmp.lcssa = phi i1 [ true, %entry ], [ true, %for.cond ], [ %cmp3.not.2, %for.cond.1 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dl_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #7 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @dl_prio(i32 noundef %0) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_cputime(%struct.task_struct* nocapture noundef readonly %t, i64* nocapture noundef writeonly %utime, i64* nocapture noundef writeonly %stime) unnamed_addr #10 {
entry:
  %utime1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 67
  %0 = load i64, i64* %utime1, align 8
  store i64 %0, i64* %utime, align 8
  %stime2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 68
  %1 = load i64, i64* %stime2, align 16
  store i64 %1, i64* %stime, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @dl_prio(i32 noundef %prio) unnamed_addr #11 {
entry:
  %prio.lobit = lshr i32 %prio, 31
  ret i32 %prio.lobit
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @handle_posix_cpu_timers(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %firing = alloca %struct.list_head, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %flags, align 8, !annotation !11
  %1 = bitcast %struct.list_head* %firing to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %firing, i64 0, i32 0
  store %struct.list_head* %firing, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %firing, i64 0, i32 1
  store %struct.list_head* %firing, %struct.list_head** %prev, align 8
  %call = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %tsk, i64* noundef nonnull %flags) #16
  %tobool.not = icmp eq %struct.sighand_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %2 = load volatile i64, i64* @jiffies, align 64
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  call fastcc void @check_thread_timers(%struct.task_struct* noundef %tsk, %struct.list_head* noundef nonnull %firing) #16
  call fastcc void @check_process_timers(%struct.task_struct* noundef %tsk, %struct.list_head* noundef nonnull %firing) #16
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %tsk, i64* noundef nonnull %flags) #16
  %3 = bitcast %struct.list_head* %firing to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.list_head*
  %cmp.not77 = icmp eq %struct.list_head* %firing, %5
  br i1 %cmp.not77, label %cleanup, label %for.body

for.body:                                         ; preds = %do.body, %if.end36
  %6 = phi %struct.list_head* [ %9, %if.end36 ], [ %5, %do.body ]
  %.pn.in.in78 = phi i8* [ %.pn80, %if.end36 ], [ %4, %do.body ]
  %.pn80.in = bitcast i8* %.pn.in.in78 to i8**
  %.pn80 = load i8*, i8** %.pn80.in, align 8
  %it_lock = getelementptr i8, i8* %.pn.in.in78, i64 -136
  %rlock.i = bitcast i8* %it_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @list_del_init(%struct.list_head* noundef %6) #16
  %firing27 = getelementptr i8, i8* %.pn.in.in78, i64 16
  %7 = bitcast i8* %firing27 to i32*
  %8 = load i32, i32* %7, align 8
  store i32 0, i32* %7, align 8
  %cmp31 = icmp sgt i32 %8, -1
  br i1 %cmp31, label %if.then35, label %if.end36, !prof !13

if.then35:                                        ; preds = %for.body
  %timer.079.in = getelementptr i8, i8* %.pn.in.in78, i64 -168
  %timer.079 = bitcast i8* %timer.079.in to %struct.k_itimer*
  call fastcc void @cpu_timer_fire(%struct.k_itimer* noundef %timer.079) #16
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %for.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  %9 = bitcast i8* %.pn80 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %firing, %9
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end36, %do.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) #17
  ret %struct.sighand_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_thread_timers(%struct.task_struct* noundef %tsk, %struct.list_head* noundef %firing) unnamed_addr #0 {
entry:
  %samples = alloca [3 x i64], align 8
  %posix_cputimers = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 77
  %0 = bitcast [3 x i64]* %samples to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !11
  %call = call fastcc i32 @dl_task(%struct.task_struct* noundef %tsk) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @check_dl_overrun(%struct.task_struct* noundef %tsk) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call fastcc i1 @expiry_cache_is_inactive(%struct.posix_cputimers* noundef %posix_cputimers) #16
  br i1 %call1, label %cleanup20, label %if.end3

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %samples, i64 0, i64 0
  call fastcc void @task_sample_cputime(%struct.task_struct* noundef %tsk, i64* noundef nonnull %arraydecay) #16
  call fastcc void @collect_posix_cputimers(%struct.posix_cputimers* noundef %posix_cputimers, i64* noundef nonnull %arraydecay, %struct.list_head* noundef %firing) #16
  %call5 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %tsk, i32 noundef 15) #16
  %cmp.not = icmp eq i64 %call5, -1
  br i1 %cmp.not, label %cleanup20, label %if.then6

if.then6:                                         ; preds = %if.end3
  %timeout = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 21, i32 1
  %1 = load i64, i64* %timeout, align 16
  %mul = mul i64 %1, 4000
  %call7 = call fastcc i64 @task_rlimit_max(%struct.task_struct* noundef %tsk, i32 noundef 15) #16
  %cmp8.not = icmp eq i64 %call7, -1
  br i1 %cmp8.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %call9 = call fastcc i1 @check_rlimit(i64 noundef %mul, i64 noundef %call7, i32 noundef 9, i1 noundef true, i1 noundef true) #16
  br i1 %call9, label %cleanup20, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.then6
  %call12 = call fastcc i1 @check_rlimit(i64 noundef %mul, i64 noundef %call5, i32 noundef 24, i1 noundef true, i1 noundef false) #16
  br i1 %call12, label %if.then13, label %cleanup20

if.then13:                                        ; preds = %if.end11
  %add = add i64 %call5, 1000000
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 49, i64 15, i32 0
  store i64 %add, i64* %rlim_cur, align 8
  br label %cleanup20

cleanup20:                                        ; preds = %if.end3, %if.end11, %if.then13, %land.lhs.true, %if.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_process_timers(%struct.task_struct* noundef %tsk, %struct.list_head* noundef %firing) unnamed_addr #0 {
entry:
  %samples = alloca [3 x i64], align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %posix_cputimers = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20
  %1 = bitcast [3 x i64]* %samples to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !11
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 1
  %2 = load volatile i32, i32* %timers_active, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %expiry_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 2
  %3 = load i32, i32* %expiry_active, align 4
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %cleanup42

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %expiry_active, align 4
  %cputime_atomic = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 19, i32 0
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %samples, i64 0, i64 0
  call fastcc void @proc_sample_cputime_atomic(%struct.task_cputime_atomic* noundef %cputime_atomic, i64* noundef nonnull %arraydecay) #16
  call fastcc void @collect_posix_cputimers(%struct.posix_cputimers* noundef %posix_cputimers, i64* noundef nonnull %arraydecay, %struct.list_head* noundef %firing) #16
  %arrayidx = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 18, i64 0
  %nextevt = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %posix_cputimers, i64 0, i32 0, i64 0, i32 0
  %4 = load i64, i64* %arraydecay, align 8
  call fastcc void @check_cpu_itimer(%struct.task_struct* noundef %tsk, %struct.cpu_itimer* noundef %arrayidx, i64* noundef %nextevt, i64 noundef %4, i32 noundef 27) #16
  %arrayidx7 = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 18, i64 1
  %nextevt10 = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 0, i64 1, i32 0
  %arrayidx11 = getelementptr inbounds [3 x i64], [3 x i64]* %samples, i64 0, i64 1
  %5 = load i64, i64* %arrayidx11, align 8
  call fastcc void @check_cpu_itimer(%struct.task_struct* noundef %tsk, %struct.cpu_itimer* noundef %arrayidx7, i64* noundef %nextevt10, i64 noundef %5, i32 noundef 26) #16
  %call = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %tsk, i32 noundef 0) #16
  %cmp.not = icmp eq i64 %call, -1
  br i1 %cmp.not, label %if.end37, label %if.then12

if.then12:                                        ; preds = %if.end
  %call13 = call fastcc i64 @task_rlimit_max(%struct.task_struct* noundef %tsk, i32 noundef 0) #16
  %mul = mul i64 %call, 1000000000
  %cmp16.not = icmp eq i64 %call13, -1
  br i1 %cmp16.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then12
  %mul15 = mul i64 %call13, 1000000000
  %call17 = call fastcc i1 @check_rlimit(i64 noundef %4, i64 noundef %mul15, i32 noundef 9, i1 noundef false, i1 noundef true) #16
  br i1 %call17, label %cleanup42, label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.then12
  %call20 = call fastcc i1 @check_rlimit(i64 noundef %4, i64 noundef %mul, i32 noundef 24, i1 noundef false, i1 noundef false) #16
  br i1 %call20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end19
  %add = add nuw i64 %call, 1
  %rlim_cur = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 0, i32 0
  store i64 %add, i64* %rlim_cur, align 8
  %add23 = add i64 %mul, 1000000000
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19
  %softns.0 = phi i64 [ %add23, %if.then21 ], [ %mul, %if.end19 ]
  %6 = load i64, i64* %nextevt, align 8
  %cmp28 = icmp ult i64 %softns.0, %6
  br i1 %cmp28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end24
  store i64 %softns.0, i64* %nextevt, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end24, %if.end
  %call38 = call fastcc i1 @expiry_cache_is_inactive(%struct.posix_cputimers* noundef %posix_cputimers) #16
  br i1 %call38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  call fastcc void @stop_process_timers(%struct.signal_struct* noundef %0) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37
  store i32 0, i32* %expiry_active, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end40
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_task_sighand(%struct.task_struct* nocapture noundef readonly %task, i64* nocapture noundef readonly %flags) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %1 = load i64, i64* %flags, align 8
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #12 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_timer_fire(%struct.k_itimer* noundef %timer) unnamed_addr #0 {
entry:
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15
  %cpu = bitcast %union.anon.66* %it to %struct.cpu_timer*
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 10
  %0 = load i32, i32* %it_sigev_notify, align 4
  %and = and i32 %0, -5
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @cpu_timer_setexpires(%struct.cpu_timer* noundef %cpu, i64 noundef 0) #16
  br label %if.end16

if.else:                                          ; preds = %entry
  %sigq = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 14
  %1 = load %struct.sigqueue*, %struct.sigqueue** %sigq, align 8
  %cmp1 = icmp eq %struct.sigqueue* %1, null
  br i1 %cmp1, label %if.then3, label %if.else4, !prof !7

if.then3:                                         ; preds = %if.else
  %2 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 13
  %it_process = bitcast %union.anon.65* %2 to %struct.task_struct**
  %3 = load %struct.task_struct*, %struct.task_struct** %it_process, align 8
  %call = call i32 @wake_up_process(%struct.task_struct* noundef %3) #17
  call fastcc void @cpu_timer_setexpires(%struct.cpu_timer* noundef %cpu, i64 noundef 0) #16
  br label %if.end16

if.else4:                                         ; preds = %if.else
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 11
  %4 = load i64, i64* %it_interval, align 8
  %tobool5.not = icmp eq i64 %4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %call7 = call i32 @posix_timer_event(%struct.k_itimer* noundef %timer, i32 noundef 0) #17
  call fastcc void @cpu_timer_setexpires(%struct.cpu_timer* noundef %cpu, i64 noundef 0) #16
  br label %if.end16

if.else8:                                         ; preds = %if.else4
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 9
  %5 = load i32, i32* %it_requeue_pending, align 8
  %inc = add i32 %5, 1
  store i32 %inc, i32* %it_requeue_pending, align 8
  %call9 = call i32 @posix_timer_event(%struct.k_itimer* noundef %timer, i32 noundef %inc) #17
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.else8
  call void @posix_cpu_timer_rearm(%struct.k_itimer* noundef %timer) #16
  %6 = load i32, i32* %it_requeue_pending, align 8
  %inc13 = add i32 %6, 1
  store i32 %inc13, i32* %it_requeue_pending, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then3, %if.else8, %if.then11, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_dl_overrun(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %dl_overrun = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_overrun, align 4
  %0 = and i8 %bf.load, 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bf.clear4 = and i8 %bf.load, -9
  store i8 %bf.clear4, i8* %dl_overrun, align 4
  %call = call i32 @__group_send_sig_info(i32 noundef 24, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %tsk) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @collect_posix_cputimers(%struct.posix_cputimers* nocapture noundef %pct, i64* nocapture noundef readonly %samples, %struct.list_head* noundef %firing) unnamed_addr #0 {
entry:
  %tqhead = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 0, i32 1
  %0 = load i64, i64* %samples, align 8
  %call = call fastcc i64 @collect_timerqueue(%struct.timerqueue_head* noundef %tqhead, %struct.list_head* noundef %firing, i64 noundef %0) #16
  %nextevt = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 0, i32 0
  store i64 %call, i64* %nextevt, align 8
  %tqhead.1 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 1, i32 1
  %arrayidx.1 = getelementptr i64, i64* %samples, i64 1
  %1 = load i64, i64* %arrayidx.1, align 8
  %call.1 = call fastcc i64 @collect_timerqueue(%struct.timerqueue_head* noundef %tqhead.1, %struct.list_head* noundef %firing, i64 noundef %1) #16
  %nextevt.1 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 1, i32 0
  store i64 %call.1, i64* %nextevt.1, align 8
  %tqhead.2 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 2, i32 1
  %arrayidx.2 = getelementptr i64, i64* %samples, i64 2
  %2 = load i64, i64* %arrayidx.2, align 8
  %call.2 = call fastcc i64 @collect_timerqueue(%struct.timerqueue_head* noundef %tqhead.2, %struct.list_head* noundef %firing, i64 noundef %2) #16
  %nextevt.2 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 2, i32 0
  store i64 %call.2, i64* %nextevt.2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task, i32 noundef %limit) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %limit to i64
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 %idxprom, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit_max(%struct.task_struct* nocapture noundef readonly %task, i32 noundef %limit) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %limit to i64
  %rlim_max = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 %idxprom, i32 1
  %1 = load volatile i64, i64* %rlim_max, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @check_rlimit(i64 noundef %time, i64 noundef %limit, i32 noundef %signo, i1 noundef %rt, i1 noundef %hard) unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %time, %limit
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @print_fatal_signals, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  %cond = select i1 %rt, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %cond5 = select i1 %hard, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 81, i64 0
  %call7 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %2) #16
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond5, i8* noundef %arraydecay, i32 noundef %call7) #20
  br label %if.end9

if.end9:                                          ; preds = %if.end, %do.end
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !10
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call11 = call i32 @__group_send_sig_info(i32 noundef %signo, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %4) #17
  br label %return

return:                                           ; preds = %entry, %if.end9
  %5 = xor i1 %cmp, true
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__group_send_sig_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @collect_timerqueue(%struct.timerqueue_head* nocapture noundef readonly %head, %struct.list_head* noundef %firing, i64 noundef %now) unnamed_addr #0 {
entry:
  %call19 = call fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* noundef %head) #16
  %tobool.not20 = icmp eq %struct.timerqueue_node* %call19, null
  br i1 %tobool.not20, label %cleanup6, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %call22 = phi %struct.timerqueue_node* [ %call, %cleanup ], [ %call19, %entry ]
  %i.021 = phi i32 [ %inc, %cleanup ], [ 0, %entry ]
  %0 = bitcast %struct.timerqueue_node* %call22 to %struct.cpu_timer*
  %call1 = call fastcc i64 @cpu_timer_getexpires(%struct.cpu_timer* noundef nonnull %0) #16
  %inc = add nuw nsw i32 %i.021, 1
  %cmp = icmp eq i32 %inc, 20
  %cmp2 = icmp ugt i64 %call1, %now
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %cleanup6, label %cleanup

cleanup:                                          ; preds = %while.body
  %firing3 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %call22, i64 2
  %1 = bitcast %struct.timerqueue_node* %firing3 to i32*
  store i32 1, i32* %1, align 8
  %call4 = call fastcc i1 @cpu_timer_dequeue(%struct.cpu_timer* noundef nonnull %0) #16
  %elist = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %call22, i64 1, i32 0, i32 2
  %2 = bitcast %struct.rb_node** %elist to %struct.list_head*
  call fastcc void @list_add_tail(%struct.list_head* noundef %2, %struct.list_head* noundef %firing) #16
  %call = call fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* noundef %head) #16
  %tobool.not = icmp eq %struct.timerqueue_node* %call, null
  br i1 %tobool.not, label %cleanup6, label %while.body

cleanup6:                                         ; preds = %cleanup, %while.body, %entry
  %retval.2 = phi i64 [ -1, %entry ], [ %call1, %while.body ], [ -1, %cleanup ]
  ret i64 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cpu_timer_getexpires(%struct.cpu_timer* nocapture noundef readonly %ctmr) unnamed_addr #7 {
entry:
  %expires = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %ctmr, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpu_timer_dequeue(%struct.cpu_timer* noundef %ctmr) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @cpu_timer_queued(%struct.cpu_timer* noundef %ctmr) #16
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %ctmr, i64 0, i32 1
  %0 = load %struct.timerqueue_head*, %struct.timerqueue_head** %head, align 8
  %node = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %ctmr, i64 0, i32 0
  %call1 = call i1 @timerqueue_del(%struct.timerqueue_head* noundef %0, %struct.timerqueue_node* noundef %node) #17
  store %struct.timerqueue_head* null, %struct.timerqueue_head** %head, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  ret i1 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #12 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @cpu_timer_queued(%struct.cpu_timer* nocapture noundef readonly %ctmr) unnamed_addr #7 {
entry:
  %head = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %ctmr, i64 0, i32 1
  %0 = load %struct.timerqueue_head*, %struct.timerqueue_head** %head, align 8
  %tobool = icmp ne %struct.timerqueue_head* %0, null
  ret i1 %tobool
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #12 {
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #7 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_cpu_itimer(%struct.task_struct* noundef %tsk, %struct.cpu_itimer* nocapture noundef %it, i64* nocapture noundef %expires, i64 noundef %cur_time, i32 noundef %signo) unnamed_addr #0 {
entry:
  %expires1 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %it, i64 0, i32 0
  %0 = load i64, i64* %expires1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end19, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp ugt i64 %0, %cur_time
  br i1 %cmp.not, label %land.lhs.true, label %if.end12

if.end12:                                         ; preds = %if.end
  %incr = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %it, i64 0, i32 1
  %1 = load i64, i64* %incr, align 8
  %tobool4.not = icmp eq i64 %1, 0
  %add = add i64 %1, %0
  %storemerge = select i1 %tobool4.not, i64 0, i64 %add
  store i64 %storemerge, i64* %expires1, align 8
  %call11 = call i32 @__group_send_sig_info(i32 noundef %signo, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %tsk) #17
  %.pr = load i64, i64* %expires1, align 8
  %tobool14.not = icmp eq i64 %.pr, 0
  br i1 %tobool14.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end, %if.end12
  %2 = phi i64 [ %.pr, %if.end12 ], [ %0, %if.end ]
  %3 = load i64, i64* %expires, align 8
  %cmp16 = icmp ult i64 %2, %3
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  store i64 %2, i64* %expires, align 8
  br label %if.end19

if.end19:                                         ; preds = %entry, %if.then17, %land.lhs.true, %if.end12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @stop_process_timers(%struct.signal_struct* noundef %sig) unnamed_addr #12 {
entry:
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 20, i32 1
  store volatile i32 0, i32* %timers_active, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_tgid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #7 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 1
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #18, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #12 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #12 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #12 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @cpu_timer_setexpires(%struct.cpu_timer* nocapture noundef writeonly %ctmr, i64 noundef %exp) unnamed_addr #6 {
entry:
  %expires = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %ctmr, i64 0, i32 0, i32 1
  store i64 %exp, i64* %expires, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_timer_event(%struct.k_itimer* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @thread_group_start_cputime(%struct.task_struct* noundef %tsk, i64* nocapture noundef writeonly %samples) unnamed_addr #0 {
entry:
  %sum = alloca %struct.task_cputime, align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cputimer1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 19
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 1
  %1 = load volatile i32, i32* %timers_active, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.task_cputime* %sum to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !11
  call void @thread_group_cputime(%struct.task_struct* noundef %tsk, %struct.task_cputime* noundef nonnull %sum) #17
  %cputime_atomic = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %cputimer1, i64 0, i32 0
  call fastcc void @update_gt_cputime(%struct.task_cputime_atomic* noundef %cputime_atomic, %struct.task_cputime* noundef nonnull %sum) #16
  store volatile i32 1, i32* %timers_active, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cputime_atomic13 = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %cputimer1, i64 0, i32 0
  call fastcc void @proc_sample_cputime_atomic(%struct.task_cputime_atomic* noundef %cputime_atomic13, i64* noundef %samples) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__thread_group_cputime(%struct.task_struct* noundef %tsk, i64* nocapture noundef writeonly %samples) unnamed_addr #0 {
entry:
  %ct = alloca %struct.task_cputime, align 8
  %0 = bitcast %struct.task_cputime* %ct to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !11
  call void @thread_group_cputime(%struct.task_struct* noundef %tsk, %struct.task_cputime* noundef nonnull %ct) #17
  %stime = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %ct, i64 0, i32 0
  %1 = load i64, i64* %stime, align 8
  %utime = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %ct, i64 0, i32 1
  %2 = load i64, i64* %utime, align 8
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %ct, i64 0, i32 2
  %3 = load i64, i64* %sum_exec_runtime, align 8
  call fastcc void @store_samples(i64* noundef %samples, i64 noundef %1, i64 noundef %2, i64 noundef %3) #16
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime(%struct.task_struct* noundef, %struct.task_cputime* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_gt_cputime(%struct.task_cputime_atomic* noundef %cputime_atomic, %struct.task_cputime* nocapture noundef readonly %sum) unnamed_addr #0 {
entry:
  %utime = getelementptr inbounds %struct.task_cputime_atomic, %struct.task_cputime_atomic* %cputime_atomic, i64 0, i32 0
  %utime1 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %sum, i64 0, i32 1
  %0 = load i64, i64* %utime1, align 8
  call fastcc void @__update_gt_cputime(%struct.atomic64_t* noundef %utime, i64 noundef %0) #16
  %stime = getelementptr inbounds %struct.task_cputime_atomic, %struct.task_cputime_atomic* %cputime_atomic, i64 0, i32 1
  %stime2 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %sum, i64 0, i32 0
  %1 = load i64, i64* %stime2, align 8
  call fastcc void @__update_gt_cputime(%struct.atomic64_t* noundef %stime, i64 noundef %1) #16
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime_atomic, %struct.task_cputime_atomic* %cputime_atomic, i64 0, i32 2
  %sum_exec_runtime3 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %sum, i64 0, i32 2
  %2 = load i64, i64* %sum_exec_runtime3, align 8
  call fastcc void @__update_gt_cputime(%struct.atomic64_t* noundef %sum_exec_runtime, i64 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__update_gt_cputime(%struct.atomic64_t* noundef %cputime, i64 noundef %sum_cputime) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.atomic64_t* %cputime to i8*
  %counter.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %cputime, i64 0, i32 0
  br label %retry

retry:                                            ; preds = %if.then, %entry
  %1 = load volatile i64, i64* %counter.i, align 8
  %cmp = icmp ult i64 %1, %sum_cputime
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %retry
  %call14.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %1, i64 noundef %sum_cputime) #17
  %cmp2.not = icmp eq i64 %call14.i.i, %1
  br i1 %cmp2.not, label %if.end4, label %retry

if.end4:                                          ; preds = %if.then, %retry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #18, !srcloc !26
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @validate_clock_permissions(i32 noundef %clock) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #17
  %call = call fastcc %struct.pid* @pid_for_clock(i32 noundef %clock, i1 noundef false) #16
  %tobool.not = icmp eq %struct.pid* %call, null
  %cond = select i1 %tobool.not, i32 -22, i32 0
  call fastcc void @rcu_read_unlock() #16
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @pid_for_clock(i32 noundef %clock, i1 noundef %gettime) unnamed_addr #0 {
entry:
  %and = and i32 %clock, 4
  %cmp.not = icmp eq i32 %and, 0
  %shr = ashr i32 %clock, 3
  %neg = xor i32 %shr, -1
  %and3 = and i32 %clock, 3
  %cmp4 = icmp eq i32 %and3, 3
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp5 = icmp eq i32 %shr, -1
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19
  %1 = inttoptr i64 %0 to %struct.task_struct*
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then6
  %call7 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %1) #16
  br label %cleanup

cond.false:                                       ; preds = %if.then6
  %call9 = call fastcc %struct.pid* @task_tgid(%struct.task_struct* noundef %1) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call %struct.pid* @find_vpid(i32 noundef %neg) #17
  %tobool12.not = icmp eq %struct.pid* %call11, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  br i1 %cmp.not, label %if.end25, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call17 = call %struct.task_struct* @pid_task(%struct.pid* noundef nonnull %call11, i32 noundef 0) #17
  %tobool18.not = icmp eq %struct.task_struct* %call17, null
  br i1 %tobool18.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then16
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !10
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call20 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef nonnull %call17, %struct.task_struct* noundef %3) #16
  %spec.select = select i1 %call20, %struct.pid* %call11, %struct.pid* null
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  br i1 %gettime, label %land.lhs.true27, label %if.end34

land.lhs.true27:                                  ; preds = %if.end25
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !10
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call29 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %5) #16
  %cmp30 = icmp eq %struct.pid* %call11, %call29
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %land.lhs.true27
  %call33 = call fastcc %struct.pid* @task_tgid(%struct.task_struct* noundef %5) #16
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true27, %if.end25
  %call35 = call fastcc i1 @pid_has_task(%struct.pid* noundef nonnull %call11) #16
  %cond39 = select i1 %call35, %struct.pid* %call11, %struct.pid* null
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true, %if.end10, %cond.true, %cond.false, %entry, %if.end34, %if.then31
  %retval.0 = phi %struct.pid* [ %call33, %if.then31 ], [ %cond39, %if.end34 ], [ null, %entry ], [ %call7, %cond.true ], [ %call9, %cond.false ], [ null, %if.end10 ], [ null, %if.then16 ], [ %spec.select, %land.lhs.true ]
  ret %struct.pid* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #7 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_vpid(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @same_thread_group(%struct.task_struct* nocapture noundef readonly %p1, %struct.task_struct* nocapture noundef readonly %p2) unnamed_addr #7 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p2, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %cmp = icmp eq %struct.signal_struct* %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @pid_has_task(%struct.pid* noundef %pid) unnamed_addr #2 {
entry:
  %arrayidx = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 3, i64 1
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %arrayidx) #16
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #2 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @clock_pid_type(i32 noundef %clock) unnamed_addr #11 {
entry:
  %and = lshr i32 %clock, 2
  %and.lobit = and i32 %and, 1
  %0 = xor i32 %and.lobit, 1
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @cpu_clock_sample(i32 noundef %clkid, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %0 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %utime, align 8, !annotation !11
  %1 = bitcast i64* %stime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  store i64 0, i64* %stime, align 8, !annotation !11
  %cmp = icmp eq i32 %clkid, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @task_sched_runtime(%struct.task_struct* noundef %p) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @task_cputime(%struct.task_struct* noundef %p, i64* noundef nonnull %utime, i64* noundef nonnull %stime) #16
  switch i32 %clkid, label %if.then4 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load i64, i64* %utime, align 8
  %3 = load i64, i64* %stime, align 8
  %add = add i64 %3, %2
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %4 = load i64, i64* %utime, align 8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/posix-cpu-timers.c\22; .popsection; .long 14472b - 14470b; .short 202; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %sw.bb1, %sw.bb, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ 0, %if.then4 ], [ %4, %sw.bb1 ], [ %add, %sw.bb ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @task_sched_runtime(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @timerqueue_init(%struct.timerqueue_node* noundef %node) unnamed_addr #6 {
entry:
  %0 = ptrtoint %struct.timerqueue_node* %node to i64
  %__rb_parent_color = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #17
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !7

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !13

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #17
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !30
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_cpu_nanosleep(i32 noundef %which_clock, i32 noundef %flags, %struct.timespec64* nocapture noundef readonly %rqtp) unnamed_addr #0 {
entry:
  %it = alloca %struct.itimerspec64, align 8
  %timer = alloca %struct.k_itimer, align 8
  %0 = bitcast %struct.itimerspec64* %it to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !11
  %1 = bitcast %struct.k_itimer* %timer to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %1, i8 0, i64 256, i1 false), !annotation !11
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 256) #17
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 4
  store i32 %which_clock, i32* %it_clock, align 8
  %it_overrun = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 7
  store i64 -1, i64* %it_overrun, align 8
  %call3 = call i32 @posix_cpu_timer_create(%struct.k_itimer* noundef nonnull %timer) #16
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !10
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %4 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 13
  %it_process = bitcast %union.anon.65* %4 to %struct.task_struct**
  store %struct.task_struct* %3, %struct.task_struct** %it_process, align 8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %cleanup68

if.then:                                          ; preds = %entry
  %call5 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 32) #17
  %it_value = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %it, i64 0, i32 1
  %5 = bitcast %struct.timespec64* %it_value to i8*
  %6 = bitcast %struct.timespec64* %rqtp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %5, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  %rlock.i = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %call7 = call i32 @posix_cpu_timer_set(%struct.k_itimer* noundef nonnull %timer, i32 noundef %flags, %struct.itimerspec64* noundef nonnull %it, %struct.itimerspec64* noundef null) #16
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %while.cond.preheader, label %if.then9

while.cond.preheader:                             ; preds = %if.then
  %call1292 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %3) #16
  %tobool13.not93 = icmp eq i32 %call1292, 0
  br i1 %tobool13.not93, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %it14 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15
  %cpu = bitcast %union.anon.66* %it14 to %struct.cpu_timer*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 1
  br label %while.body

if.then9:                                         ; preds = %if.then
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup68

while.body:                                       ; preds = %while.body.lr.ph, %do.body29
  %call15 = call fastcc i64 @cpu_timer_getexpires(%struct.cpu_timer* noundef %cpu) #16
  %tobool16.not = icmp eq i64 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %do.body29

if.then17:                                        ; preds = %while.body
  %call18 = call i32 @posix_cpu_timer_del(%struct.k_itimer* noundef nonnull %timer) #16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup68

do.body29:                                        ; preds = %while.body
  store volatile i32 1, i32* %__state, align 16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @schedule() #17
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %call12 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %3) #16
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %while.body, label %while.end

while.end:                                        ; preds = %do.body29, %while.cond.preheader
  %it39 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15
  %cpu40 = bitcast %union.anon.66* %it39 to %struct.cpu_timer*
  %call41 = call fastcc i64 @cpu_timer_getexpires(%struct.cpu_timer* noundef %cpu40) #16
  %call42 = call i32 @posix_cpu_timer_set(%struct.k_itimer* noundef nonnull %timer, i32 noundef 0, %struct.itimerspec64* noundef nonnull @do_cpu_nanosleep.zero_it, %struct.itimerspec64* noundef nonnull %it) #16
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end46.thread, label %if.end46

if.end46.thread:                                  ; preds = %while.end
  %call45 = call i32 @posix_cpu_timer_del(%struct.k_itimer* noundef nonnull %timer) #16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %while.end53

if.end46:                                         ; preds = %while.end
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %cmp94 = icmp eq i32 %call42, 1
  br i1 %cmp94, label %while.body49, label %while.end53

while.body49:                                     ; preds = %if.end46, %while.body49
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %call51 = call i32 @posix_cpu_timer_del(%struct.k_itimer* noundef nonnull %timer) #16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %cmp = icmp eq i32 %call51, 1
  br i1 %cmp, label %while.body49, label %while.end53

while.end53:                                      ; preds = %while.body49, %if.end46.thread, %if.end46
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %it_value, i64 0, i32 0
  %7 = load i64, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %it, i64 0, i32 1, i32 1
  %8 = load i64, i64* %tv_nsec, align 8
  %or = or i64 %8, %7
  %cmp56 = icmp eq i64 %or, 0
  br i1 %cmp56, label %cleanup68, label %if.end58

if.end58:                                         ; preds = %while.end53
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2
  %nanosleep = bitcast %union.anon.43* %9 to %struct.anon.45*
  %expires60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2, i32 0, i32 3
  %10 = bitcast i32* %expires60 to i64*
  store i64 %call41, i64* %10, align 8
  %type = getelementptr inbounds %struct.anon.45, %struct.anon.45* %nanosleep, i64 0, i32 1
  %11 = load i32, i32* %type, align 4
  %cmp62.not = icmp eq i32 %11, 0
  br i1 %cmp62.not, label %cleanup68, label %if.then63

if.then63:                                        ; preds = %if.end58
  %restart_block = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49
  %call65 = call i32 @nanosleep_copyout(%struct.restart_block* noundef %restart_block, %struct.timespec64* noundef %it_value) #17
  br label %cleanup68

cleanup68:                                        ; preds = %while.end53, %if.then17, %if.then9, %entry, %if.end58, %if.then63
  %retval.1 = phi i32 [ %call3, %entry ], [ %call65, %if.then63 ], [ -516, %if.end58 ], [ 0, %while.end53 ], [ 0, %if.then17 ], [ %call7, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_restart_fn(%struct.restart_block* nocapture noundef writeonly %restart) unnamed_addr #6 {
entry:
  %fn1 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 1
  store i64 (%struct.restart_block*)* @posix_cpu_nsleep_restart, i64 (%struct.restart_block*)** %fn1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @posix_cpu_nsleep_restart(%struct.restart_block* nocapture noundef readonly %restart_block) #0 {
entry:
  %t = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart_block, i64 0, i32 2
  %clockid = bitcast %union.anon.43* %0 to i32*
  %1 = load i32, i32* %clockid, align 8
  %2 = bitcast %struct.timespec64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #18
  %expires = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart_block, i64 0, i32 2, i32 0, i32 3
  %3 = bitcast i32* %expires to i64*
  %4 = load i64, i64* %3, align 8
  %call = call [2 x i64] @ns_to_timespec64(i64 noundef %4) #17
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %t, i64 0, i32 0
  store i64 %call.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx4 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %t, i64 0, i32 1
  store i64 %call.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx4, align 8
  %call2 = call fastcc i32 @do_cpu_nanosleep(i32 noundef %1, i32 noundef 1, %struct.timespec64* noundef nonnull %t) #16
  %conv = sext i32 %call2 to i64
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #18
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !13

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanosleep_copyout(%struct.restart_block* noundef, %struct.timespec64* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #16
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #16
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #11 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @cpu_timer_task_rcu(%struct.k_itimer* nocapture noundef readonly %timer) unnamed_addr #0 {
entry:
  %pid = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.rb_node** %pid to %struct.pid**
  %1 = load %struct.pid*, %struct.pid** %0, align 8
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 4
  %2 = load i32, i32* %it_clock, align 8
  %call = call fastcc i32 @clock_pid_type(i32 noundef %2) #16, !range !12
  %call1 = call %struct.task_struct* @pid_task(%struct.pid* noundef %1, i32 noundef %call) #17
  ret %struct.task_struct* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #11 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #16
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i64 @bump_cpu_timer(%struct.k_itimer* nocapture noundef %timer, i64 noundef %now) unnamed_addr #15 {
entry:
  %expires1 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %0 = load i64, i64* %expires1, align 8
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 11
  %1 = load i64, i64* %it_interval, align 8
  %tobool.not = icmp eq i64 %1, 0
  %cmp = icmp ugt i64 %0, %now
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %add = sub i64 %now, %0
  %sub = add i64 %add, %1
  %cmp656 = icmp ult i64 %1, %add
  br i1 %cmp656, label %for.body, label %for.body9.lr.ph

for.cond7.preheader:                              ; preds = %for.body
  %cmp860 = icmp sgt i32 %inc, -1
  br i1 %cmp860, label %for.body9.lr.ph, label %cleanup

for.body9.lr.ph:                                  ; preds = %if.end3, %for.cond7.preheader
  %i.0.lcssa70 = phi i32 [ %inc, %for.cond7.preheader ], [ 0, %if.end3 ]
  %incr.0.lcssa69 = phi i64 [ %shl, %for.cond7.preheader ], [ %1, %if.end3 ]
  %it_overrun = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 7
  %2 = zext i32 %i.0.lcssa70 to i64
  br label %for.body9

for.body:                                         ; preds = %if.end3, %for.body
  %i.058 = phi i32 [ %inc, %for.body ], [ 0, %if.end3 ]
  %incr.057 = phi i64 [ %shl, %for.body ], [ %1, %if.end3 ]
  %shl = shl i64 %incr.057, 1
  %inc = add i32 %i.058, 1
  %sub5 = sub i64 %sub, %shl
  %cmp6 = icmp ult i64 %shl, %sub5
  br i1 %cmp6, label %for.body, label %for.cond7.preheader

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc21
  %3 = phi i64 [ %0, %for.body9.lr.ph ], [ %5, %for.inc21 ]
  %indvars.iv = phi i64 [ %2, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc21 ]
  %incr.162 = phi i64 [ %incr.0.lcssa69, %for.body9.lr.ph ], [ %shr, %for.inc21 ]
  %delta.061 = phi i64 [ %sub, %for.body9.lr.ph ], [ %delta.1, %for.inc21 ]
  %cmp10 = icmp ult i64 %delta.061, %incr.162
  br i1 %cmp10, label %for.inc21, label %if.end12

if.end12:                                         ; preds = %for.body9
  %add17 = add i64 %3, %incr.162
  store i64 %add17, i64* %expires1, align 8
  %shl18 = shl nuw i64 1, %indvars.iv
  %4 = load i64, i64* %it_overrun, align 8
  %add19 = add i64 %4, %shl18
  store i64 %add19, i64* %it_overrun, align 8
  %sub20 = sub i64 %delta.061, %incr.162
  br label %for.inc21

for.inc21:                                        ; preds = %for.body9, %if.end12
  %5 = phi i64 [ %3, %for.body9 ], [ %add17, %if.end12 ]
  %delta.1 = phi i64 [ %delta.061, %for.body9 ], [ %sub20, %if.end12 ]
  %shr = lshr i64 %incr.162, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp8 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp8, label %for.body9, label %cleanup

cleanup:                                          ; preds = %for.inc21, %for.cond7.preheader, %entry
  %retval.0 = phi i64 [ %0, %entry ], [ %0, %for.cond7.preheader ], [ %5, %for.inc21 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arm_timer(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.posix_cputimer_base* @timer_base(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef %p) #16
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15
  %cpu = bitcast %union.anon.66* %it to %struct.cpu_timer*
  %call1 = call fastcc i64 @cpu_timer_getexpires(%struct.cpu_timer* noundef %cpu) #16
  %tqhead = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %call, i64 0, i32 1
  %call2 = call fastcc i1 @cpu_timer_enqueue(%struct.timerqueue_head* noundef %tqhead, %struct.cpu_timer* noundef %cpu) #16
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %nextevt = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %call, i64 0, i32 0
  %0 = load i64, i64* %nextevt, align 8
  %cmp = icmp ult i64 %call1, %0
  br i1 %cmp, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  store i64 %call1, i64* %nextevt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @trigger_base_recalc_expires(%struct.k_itimer* nocapture noundef readonly %timer, %struct.task_struct* noundef %tsk) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.posix_cputimer_base* @timer_base(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef %tsk) #16
  %nextevt = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %call, i64 0, i32 0
  store i64 0, i64* %nextevt, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #11 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !7
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.posix_cputimer_base* @timer_base(%struct.k_itimer* nocapture noundef readonly %timer, %struct.task_struct* noundef readonly %tsk) unnamed_addr #7 {
entry:
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 4
  %0 = load i32, i32* %it_clock, align 8
  %and = and i32 %0, 3
  %and2 = and i32 %0, 4
  %cmp.not = icmp eq i32 %and2, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = zext i32 %and to i64
  %add.ptr = getelementptr %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 77, i32 0, i64 %1
  br label %cleanup

if.else:                                          ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %3 = zext i32 %and to i64
  %add.ptr7 = getelementptr %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 20, i32 0, i64 %3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi %struct.posix_cputimer_base* [ %add.ptr, %if.then ], [ %add.ptr7, %if.else ]
  ret %struct.posix_cputimer_base* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpu_timer_enqueue(%struct.timerqueue_head* noundef %head, %struct.cpu_timer* noundef %ctmr) unnamed_addr #0 {
entry:
  %head1 = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %ctmr, i64 0, i32 1
  store %struct.timerqueue_head* %head, %struct.timerqueue_head** %head1, align 8
  %node = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %ctmr, i64 0, i32 0
  %call = call i1 @timerqueue_add(%struct.timerqueue_head* noundef %head, %struct.timerqueue_node* noundef %node) #17
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @timerqueue_add(%struct.timerqueue_head* noundef, %struct.timerqueue_node* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timerqueue_node_queued(%struct.timerqueue_node* noundef %node) unnamed_addr #7 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.timerqueue_node* %node to i64
  %cmp = icmp ne i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @disarm_timer(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 15
  %cpu = bitcast %union.anon.66* %it to %struct.cpu_timer*
  %call = call fastcc i1 @cpu_timer_dequeue(%struct.cpu_timer* noundef %cpu) #16
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.posix_cputimer_base* @timer_base(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef %p) #16
  %call2 = call fastcc i64 @cpu_timer_getexpires(%struct.cpu_timer* noundef %cpu) #16
  %nextevt = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %call1, i64 0, i32 0
  %0 = load i64, i64* %nextevt, align 8
  %cmp = icmp eq i64 %call2, %0
  br i1 %cmp, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  call fastcc void @trigger_base_recalc_expires(%struct.k_itimer* noundef %timer, %struct.task_struct* noundef %p) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @make_process_cpuclock(i32 noundef %clock) unnamed_addr #11 {
entry:
  %or = or i32 %clock, -8
  ret i32 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @make_thread_cpuclock() unnamed_addr #11 {
entry:
  %call = call fastcc i32 @make_process_cpuclock(i32 noundef 6) #16
  ret i32 %call
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #15 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2153395237}
!9 = !{i64 2153355168}
!10 = !{i64 1492894}
!11 = !{!"auto-init"}
!12 = !{i32 0, i32 2}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153365773}
!15 = !{i64 2149778927}
!16 = !{i64 2148898119, i64 2148898166, i64 2148898172, i64 2148898209, i64 2148898227, i64 2148899568, i64 2148899616, i64 2148899664, i64 2148899727, i64 2148899776, i64 2148898305, i64 2148898330, i64 2148898356, i64 2148898362, i64 2148899234, i64 2148899274, i64 2148899292, i64 2148899324, i64 2148899352, i64 2148899406, i64 2148899426, i64 2148899523, i64 2148898385, i64 2148898399, i64 2148898405, i64 2148898455, i64 2148898501, i64 2148898534}
!17 = !{i64 2147943978, i64 2147944011, i64 2147944064, i64 2147944123, i64 2147944157, i64 2147944212, i64 2147944241, i64 2147944261}
!18 = !{i64 2149807841}
!19 = !{i64 2149743764}
!20 = !{i64 2148888663, i64 2148888710, i64 2148888716, i64 2148888753, i64 2148888771, i64 2148890111, i64 2148890159, i64 2148890207, i64 2148890270, i64 2148890319, i64 2148888849, i64 2148888874, i64 2148888900, i64 2148888906, i64 2148889777, i64 2148889817, i64 2148889835, i64 2148889867, i64 2148889895, i64 2148889949, i64 2148889969, i64 2148890066, i64 2148888929, i64 2148888943, i64 2148888949, i64 2148888999, i64 2148889045, i64 2148889078}
!21 = !{i64 2153385878}
!22 = !{i64 2149804538}
!23 = !{i64 2148909835, i64 2148909882, i64 2148909888, i64 2148909925, i64 2148909943, i64 2148911254, i64 2148911302, i64 2148911350, i64 2148911413, i64 2148911462, i64 2148910021, i64 2148910046, i64 2148910072, i64 2148910078, i64 2148910920, i64 2148910960, i64 2148910978, i64 2148911010, i64 2148911038, i64 2148911092, i64 2148911112, i64 2148911209, i64 2148910101, i64 2148910115, i64 2148910121, i64 2148910171, i64 2148910217, i64 2148910250}
!24 = !{i64 2149789635}
!25 = !{i64 2149800977}
!26 = !{i64 2147962836, i64 2147962869, i64 2147962920, i64 2147962976, i64 2147963009, i64 2147963064, i64 2147963093, i64 2147963120}
!27 = !{i64 2149420515}
!28 = !{i64 2149420732}
!29 = !{i64 2153353086}
!30 = !{i64 2147854080, i64 2147854744, i64 2147854774, i64 2147854806, i64 2147854840, i64 2147854875, i64 2147854900}
