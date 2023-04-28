; ModuleID = 'kernel/time/alarmtimer.c'
source_filename = "kernel/time/alarmtimer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_alarmtimer__254_939_alarmtimer_init6:\09\09\09"
module asm ".long\09alarmtimer_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.alarm_base = type { %struct.spinlock, %struct.timerqueue_head, i64 ()*, void (%struct.timespec64*)*, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.timespec64 = type { i64, i64 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, %struct.k_clock*, i32, i32, i32, i64, i64, i32, i32, i64, %struct.signal_struct*, %union.anon.66, %struct.sigqueue*, %union.anon.67, %struct.callback_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.k_clock = type { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, {}*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, {}*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, {}*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.64, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.6, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.6 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.file = type { %union.anon.7, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.qstr = type { %union.anon.8, i8* }
%union.anon.8 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.41, %struct.list_head, %struct.list_head, %union.anon.42 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.lockref = type { %union.anon.39 }
%union.anon.39 = type { i64 }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { i32*, i32, i32, i32, i64, i32* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.43 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.pid_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type { %struct.user_namespace*, %struct.ucounts*, %struct.ns_common, %struct.timens_offsets, %struct.page*, i8 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.cgroup_namespace = type opaque
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.49, %union.anon.50, i32 }
%struct.request_queue = type opaque
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.55 }
%struct.anon.55 = type { i32, i32, i32, i64, i64 }
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.63, i32, [12 x i8] }
%union.anon.63 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.65, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.65 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.task_io_accounting = type {}
%struct.rlimit = type { i64, i64 }
%struct.mm_struct = type { %struct.anon.5, [0 x i64] }
%struct.anon.5 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
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
%union.anon.66 = type { %struct.pid* }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, %struct.ucounts* }
%union.anon.67 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, i32 (%struct.alarm*, i64)*, i32, i32, i8* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i64)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.38, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.38 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.platform_device_id = type opaque

@alarm_bases = internal global [2 x %struct.alarm_base] zeroinitializer, align 8
@alarm_clock = dso_local local_unnamed_addr constant { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, i32 (%struct.k_itimer*)*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* } { i32 (i32, %struct.timespec64*)* @alarm_clock_getres, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @alarm_clock_get_timespec, i64 (i32)* @alarm_clock_get_ktime, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* @alarm_timer_create, i32 (i32, i32, %struct.timespec64*)* @alarm_timer_nsleep, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* @common_timer_set, i32 (%struct.k_itimer*)* @common_timer_del, void (%struct.k_itimer*, %struct.itimerspec64*)* @common_timer_get, void (%struct.k_itimer*)* @alarm_timer_rearm, i64 (%struct.k_itimer*, i64)* @alarm_timer_forward, i64 (%struct.k_itimer*, i64)* @alarm_timer_remaining, i32 (%struct.k_itimer*)* @alarm_timer_try_to_cancel, void (%struct.k_itimer*, i64, i1, i1)* @alarm_timer_arm, void (%struct.k_itimer*)* @alarm_timer_wait_running }, align 8
@__UNIQUE_ID___addressable_alarmtimer_init255 = internal global i8* bitcast (i32 ()* @alarmtimer_init to i8*), section ".discard.addressable", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@alarmtimer_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* null, i32 (%struct.platform_device*)* null, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i64)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i64)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @alarmtimer_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"alarmtimer\00", align 1
@alarmtimer_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @alarmtimer_suspend, i32 (%struct.device*)* @alarmtimer_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_alarmtimer_init255 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @alarm_expires_remaining(%struct.alarm* nocapture noundef readonly %alarm) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 3
  %0 = load i32, i32* %type, align 8
  %idxprom = zext i32 %0 to i64
  %expires = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 0, i32 1
  %1 = load i64, i64* %expires, align 8
  %get_ktime = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 2
  %2 = load i64 ()*, i64 ()** %get_ktime, align 8
  %call = call i64 %2() #8
  %sub = sub i64 %1, %call
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @alarm_init(%struct.alarm* noundef %alarm, i32 noundef %type, i32 (%struct.alarm*, i64)* noundef %function) local_unnamed_addr #0 {
entry:
  %timer = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 1
  %idxprom = zext i32 %type to i64
  %base_clockid = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 4
  %0 = load i32, i32* %base_clockid, align 8
  call void @hrtimer_init(%struct.hrtimer* noundef %timer, i32 noundef %0, i32 noundef 0) #8
  call fastcc void @__alarm_init(%struct.alarm* noundef %alarm, i32 noundef %type, i32 (%struct.alarm*, i64)* noundef %function) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(%struct.hrtimer* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__alarm_init(%struct.alarm* noundef %alarm, i32 noundef %type, i32 (%struct.alarm*, i64)* noundef %function) unnamed_addr #2 {
entry:
  %node = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 0
  call fastcc void @timerqueue_init(%struct.timerqueue_node* noundef %node) #9
  %function1 = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 1, i32 2
  store i32 (%struct.hrtimer*)* @alarmtimer_fired, i32 (%struct.hrtimer*)** %function1, align 8
  %function2 = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 2
  store i32 (%struct.alarm*, i64)* %function, i32 (%struct.alarm*, i64)** %function2, align 8
  %type3 = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 3
  store i32 %type, i32* %type3, align 8
  %state = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 4
  store i32 0, i32* %state, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @alarm_start(%struct.alarm* noundef %alarm, i64 noundef %start) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 3
  %0 = load i32, i32* %type, align 8
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom
  %rlock.i = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %arrayidx, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  %expires = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 0, i32 1
  store i64 %start, i64* %expires, align 8
  call fastcc void @alarmtimer_enqueue(%struct.alarm_base* noundef %arrayidx, %struct.alarm* noundef %alarm) #9
  %timer = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 1
  %1 = load i64, i64* %expires, align 8
  call fastcc void @hrtimer_start(%struct.hrtimer* noundef %timer, i64 noundef %1) #9
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #8
  %get_ktime = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 2
  %2 = load i64 ()*, i64 ()** %get_ktime, align 8
  %call8 = call i64 %2() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @alarmtimer_enqueue(%struct.alarm_base* noundef %base, %struct.alarm* noundef %alarm) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 4
  %0 = load i32, i32* %state, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %timerqueue = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %base, i64 0, i32 1
  %node = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 0
  %call = call i1 @timerqueue_del(%struct.timerqueue_head* noundef %timerqueue, %struct.timerqueue_node* noundef %node) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %timerqueue1 = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %base, i64 0, i32 1
  %node2 = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 0
  %call3 = call i1 @timerqueue_add(%struct.timerqueue_head* noundef %timerqueue1, %struct.timerqueue_node* noundef %node2) #8
  %1 = load i32, i32* %state, align 4
  %or = or i32 %1, 1
  store i32 %or, i32* %state, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start(%struct.hrtimer* noundef %timer, i64 noundef %tim) unnamed_addr #0 {
entry:
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %tim, i64 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @alarm_start_relative(%struct.alarm* noundef %alarm, i64 noundef %start) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 3
  %0 = load i32, i32* %type, align 8
  %idxprom = zext i32 %0 to i64
  %get_ktime = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 2
  %1 = load i64 ()*, i64 ()** %get_ktime, align 8
  %call = call i64 %1() #8
  %call1 = call i64 @ktime_add_safe(i64 noundef %start, i64 noundef %call) #8
  call void @alarm_start(%struct.alarm* noundef %alarm, i64 noundef %call1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @alarm_restart(%struct.alarm* noundef %alarm) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 3
  %0 = load i32, i32* %type, align 8
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom
  %rlock.i = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %arrayidx, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  %timer = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 1
  %expires = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 0, i32 1
  %1 = load i64, i64* %expires, align 8
  call fastcc void @hrtimer_set_expires(%struct.hrtimer* noundef %timer, i64 noundef %1) #9
  call fastcc void @hrtimer_restart(%struct.hrtimer* noundef %timer) #9
  call fastcc void @alarmtimer_enqueue(%struct.alarm_base* noundef %arrayidx, %struct.alarm* noundef %alarm) #9
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @hrtimer_set_expires(%struct.hrtimer* nocapture noundef writeonly %timer, i64 noundef %time) unnamed_addr #2 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  store i64 %time, i64* %expires, align 8
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  store i64 %time, i64* %_softexpires, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_restart(%struct.hrtimer* noundef %timer) unnamed_addr #0 {
entry:
  call fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @alarm_try_to_cancel(%struct.alarm* noundef %alarm) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 3
  %0 = load i32, i32* %type, align 8
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom
  %rlock.i = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %arrayidx, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  %timer = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 1
  %call5 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %timer) #8
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @alarmtimer_dequeue(%struct.alarm_base* noundef %arrayidx, %struct.alarm* noundef %alarm) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #8
  %get_ktime = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 2
  %1 = load i64 ()*, i64 ()** %get_ktime, align 8
  %call9 = call i64 %1() #8
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @alarmtimer_dequeue(%struct.alarm_base* noundef %base, %struct.alarm* noundef %alarm) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 4
  %0 = load i32, i32* %state, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %timerqueue = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %base, i64 0, i32 1
  %node = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 0
  %call = call i1 @timerqueue_del(%struct.timerqueue_head* noundef %timerqueue, %struct.timerqueue_node* noundef %node) #8
  %1 = load i32, i32* %state, align 4
  %and2 = and i32 %1, -2
  store i32 %and2, i32* %state, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @alarm_cancel(%struct.alarm* noundef %alarm) local_unnamed_addr #0 {
entry:
  %call7 = call i32 @alarm_try_to_cancel(%struct.alarm* noundef %alarm) #9
  %cmp8 = icmp sgt i32 %call7, -1
  br i1 %cmp8, label %return, label %cleanup

cleanup:                                          ; preds = %entry, %cleanup
  call fastcc void @hrtimer_cancel_wait_running() #9
  %call = call i32 @alarm_try_to_cancel(%struct.alarm* noundef %alarm) #9
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %return, label %cleanup

return:                                           ; preds = %cleanup, %entry
  %call.lcssa = phi i32 [ %call7, %entry ], [ %call, %cleanup ]
  ret i32 %call.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_cancel_wait_running() unnamed_addr #0 {
entry:
  call fastcc void @cpu_relax() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @alarm_forward(%struct.alarm* nocapture noundef %alarm, i64 noundef %now, i64 noundef %interval) local_unnamed_addr #0 {
entry:
  %expires = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  %sub = sub i64 %now, %0
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %cleanup21, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp slt i64 %sub, %interval
  br i1 %cmp1.not, label %if.end15, label %if.then3, !prof !8

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i64 @ktime_divns(i64 noundef %sub, i64 noundef %interval) #9
  %1 = load i64, i64* %expires, align 8
  %mul = mul i64 %call4, %interval
  %add = add i64 %1, %mul
  store i64 %add, i64* %expires, align 8
  %cmp11 = icmp sgt i64 %add, %now
  %inc = add i64 %call4, 1
  br i1 %cmp11, label %cleanup21, label %if.end15

if.end15:                                         ; preds = %if.then3, %if.end
  %2 = phi i64 [ %add, %if.then3 ], [ %0, %if.end ]
  %overrun.1 = phi i64 [ %inc, %if.then3 ], [ 1, %if.end ]
  %call18 = call i64 @ktime_add_safe(i64 noundef %2, i64 noundef %interval) #8
  store i64 %call18, i64* %expires, align 8
  br label %cleanup21

cleanup21:                                        ; preds = %entry, %if.then3, %if.end15
  %retval.1 = phi i64 [ %overrun.1, %if.end15 ], [ %call4, %if.then3 ], [ 0, %entry ]
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %div, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/ktime.h\22; .popsection; .long 14472b - 14470b; .short 154; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %div14 = sdiv i64 %kt, %div
  ret i64 %div14
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @alarm_forward_now(%struct.alarm* nocapture noundef %alarm, i64 noundef %interval) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.alarm, %struct.alarm* %alarm, i64 0, i32 3
  %0 = load i32, i32* %type, align 8
  %idxprom = zext i32 %0 to i64
  %get_ktime = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 2
  %1 = load i64 ()*, i64 ()** %get_ktime, align 8
  %call = call i64 %1() #8
  %call1 = call i64 @alarm_forward(%struct.alarm* noundef %alarm, i64 noundef %call, i64 noundef %interval) #9
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @alarm_clock_getres(i32 noundef %which_clock, %struct.timespec64* nocapture noundef readnone %tp) #3 {
entry:
  ret i32 -22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @alarm_clock_get_timespec(i32 noundef %which_clock, %struct.timespec64* nocapture noundef readnone %tp) #3 {
entry:
  ret i32 -22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @alarm_clock_get_ktime(i32 noundef %which_clock) #3 {
entry:
  ret i64 -22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @alarm_timer_create(%struct.k_itimer* nocapture noundef readnone %new_timer) #3 {
entry:
  ret i32 -95
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readnone
define internal i32 @alarm_timer_nsleep(i32 noundef %which_clock, i32 noundef %flags, %struct.timespec64* nocapture noundef readnone %tsreq) #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !11
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @common_timer_set(%struct.k_itimer* noundef, i32 noundef, %struct.itimerspec64* noundef, %struct.itimerspec64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @common_timer_del(%struct.k_itimer* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @common_timer_get(%struct.k_itimer* noundef, %struct.itimerspec64* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @alarm_timer_rearm(%struct.k_itimer* noundef %timr) #0 {
entry:
  %alarmtimer = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 11
  %0 = load i64, i64* %it_interval, align 8
  %call = call i64 @alarm_forward_now(%struct.alarm* noundef %alarmtimer, i64 noundef %0) #9
  %it_overrun = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 7
  %1 = load i64, i64* %it_overrun, align 8
  %add = add i64 %1, %call
  store i64 %add, i64* %it_overrun, align 8
  %expires = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %2 = load i64, i64* %expires, align 8
  call void @alarm_start(%struct.alarm* noundef %alarmtimer, i64 noundef %2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @alarm_timer_forward(%struct.k_itimer* nocapture noundef %timr, i64 noundef %now) #0 {
entry:
  %alarmtimer = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 11
  %0 = load i64, i64* %it_interval, align 8
  %call = call i64 @alarm_forward(%struct.alarm* noundef %alarmtimer, i64 noundef %0, i64 noundef %now) #9
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i64 @alarm_timer_remaining(%struct.k_itimer* nocapture noundef readonly %timr, i64 noundef %now) #5 {
entry:
  %expires = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  %sub = sub i64 %0, %now
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @alarm_timer_try_to_cancel(%struct.k_itimer* noundef %timr) #0 {
entry:
  %alarmtimer = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0
  %call = call i32 @alarm_try_to_cancel(%struct.alarm* noundef %alarmtimer) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @alarm_timer_arm(%struct.k_itimer* noundef %timr, i64 noundef %expires, i1 noundef %absolute, i1 noundef %sigev_none) #0 {
entry:
  %alarmtimer = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0
  br i1 %absolute, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0, i32 3
  %0 = load i32, i32* %type, align 8
  %idxprom = zext i32 %0 to i64
  %get_ktime = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 2
  %1 = load i64 ()*, i64 ()** %get_ktime, align 8
  %call = call i64 %1() #8
  %call3 = call i64 @ktime_add_safe(i64 noundef %expires, i64 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %expires.addr.0 = phi i64 [ %expires, %entry ], [ %call3, %if.then ]
  br i1 %sigev_none, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %expires6 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0, i32 0, i32 1
  store i64 %expires.addr.0, i64* %expires6, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @alarm_start(%struct.alarm* noundef %alarmtimer, i64 noundef %expires.addr.0) #9
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @alarm_timer_wait_running(%struct.k_itimer* nocapture noundef readnone %timr) #0 {
entry:
  call fastcc void @hrtimer_cancel_wait_running() #9
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @alarmtimer_init() #6 section ".init.text" {
entry:
  store i32 0, i32* getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 0, i32 4), align 8
  store i64 ()* @ktime_get_real, i64 ()** getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 0, i32 2), align 8
  store void (%struct.timespec64*)* @ktime_get_real_ts64, void (%struct.timespec64*)** getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 0, i32 3), align 8
  store i32 7, i32* getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 1, i32 4), align 8
  store i64 ()* @ktime_get_boottime, i64 ()** getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 1, i32 2), align 8
  store void (%struct.timespec64*)* @get_boottime_timespec, void (%struct.timespec64*)** getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 1, i32 3), align 8
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 0, i32 1)) #9
  store i32 0, i32* getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 1, i32 1)) #9
  store i32 0, i32* getelementptr inbounds ([2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %call7 = call i32 @__platform_driver_register(%struct.platform_driver* noundef nonnull @alarmtimer_driver, %struct.module* noundef null) #8
  ret i32 %call7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @timerqueue_init(%struct.timerqueue_node* noundef %node) unnamed_addr #2 {
entry:
  %0 = ptrtoint %struct.timerqueue_node* %node to i64
  %__rb_parent_color = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @alarmtimer_fired(%struct.hrtimer* noundef %timer) #0 {
entry:
  %add.ptr = getelementptr %struct.hrtimer, %struct.hrtimer* %timer, i64 -1, i32 1
  %0 = bitcast i64* %add.ptr to %struct.alarm*
  %type = getelementptr inbounds i64, i64* %add.ptr, i64 13
  %1 = bitcast i64* %type to i32*
  %2 = load i32, i32* %1, align 8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom
  %rlock.i = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %arrayidx, i64 0, i32 0, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  call fastcc void @alarmtimer_dequeue(%struct.alarm_base* noundef %arrayidx, %struct.alarm* noundef %0) #9
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call4) #8
  %function = getelementptr inbounds i64, i64* %add.ptr, i64 12
  %3 = bitcast i64* %function to i32 (%struct.alarm*, i64)**
  %4 = load i32 (%struct.alarm*, i64)*, i32 (%struct.alarm*, i64)** %3, align 8
  %tobool.not = icmp eq i32 (%struct.alarm*, i64)* %4, null
  br i1 %tobool.not, label %do.body14.thread, label %do.body14

do.body14.thread:                                 ; preds = %entry
  %call2261 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  br label %if.end31

do.body14:                                        ; preds = %entry
  %get_ktime = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 2
  %5 = load i64 ()*, i64 ()** %get_ktime, align 8
  %call11 = call i64 %5() #8
  %call12 = call i32 %4(%struct.alarm* noundef %0, i64 noundef %call11) #8
  %phi.cmp = icmp eq i32 %call12, 0
  %call22 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #9
  br i1 %phi.cmp, label %if.end31, label %if.then29

if.then29:                                        ; preds = %do.body14
  %timer30 = getelementptr inbounds i64, i64* %add.ptr, i64 4
  %6 = bitcast i64* %timer30 to %struct.hrtimer*
  %7 = getelementptr inbounds i64, i64* %add.ptr, i64 3
  %8 = load i64, i64* %7, align 8
  call fastcc void @hrtimer_set_expires(%struct.hrtimer* noundef %6, i64 noundef %8) #9
  call fastcc void @alarmtimer_enqueue(%struct.alarm_base* noundef %arrayidx, %struct.alarm* noundef %0) #9
  br label %if.end31

if.end31:                                         ; preds = %do.body14.thread, %if.then29, %do.body14
  %call2262 = phi i64 [ %call22, %if.then29 ], [ %call22, %do.body14 ], [ %call2261, %do.body14.thread ]
  %ret.0 = phi i32 [ 1, %if.then29 ], [ 0, %do.body14 ], [ 0, %do.body14.thread ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2262) #8
  %get_ktime33 = getelementptr [2 x %struct.alarm_base], [2 x %struct.alarm_base]* @alarm_bases, i64 0, i64 %idxprom, i32 2
  %9 = load i64 ()*, i64 ()** %get_ktime33, align 8
  %call34 = call i64 %9() #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #9
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #10, !srcloc !12
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #10, !srcloc !13
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #9
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @timerqueue_del(%struct.timerqueue_head* noundef, %struct.timerqueue_node* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @timerqueue_add(%struct.timerqueue_head* noundef, %struct.timerqueue_node* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #10, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* noundef %timer) #9
  %call1 = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer) #9
  %sub = sub i64 %call1, %call
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %call, i64 noundef %sub, i32 noundef 0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #5 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %0 = load i64, i64* %_softexpires, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_expires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #5 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #10, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @ktime_get_real() #0 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 0) #8
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(%struct.timespec64* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @ktime_get_boottime() #0 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @get_boottime_timespec(%struct.timespec64* nocapture noundef writeonly %tp) #0 {
entry:
  call fastcc void @ktime_get_boottime_ts64(%struct.timespec64* noundef %tp) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @timerqueue_init_head(%struct.timerqueue_head* nocapture noundef writeonly %head) unnamed_addr #2 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 0, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.2.0..sroa_idx2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(%struct.platform_driver* noundef, %struct.module* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ktime_get_boottime_ts64(%struct.timespec64* nocapture noundef writeonly %ts) unnamed_addr #0 {
entry:
  %call = call i64 @ktime_get_boottime() #9
  %call1 = call [2 x i64] @ns_to_timespec64(i64 noundef %call) #8
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @alarmtimer_suspend(%struct.device* nocapture noundef readnone %dev) #3 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @alarmtimer_resume(%struct.device* nocapture noundef readnone %dev) #3 {
entry:
  ret i32 0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149597422}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149140424}
!11 = !{i64 1425936}
!12 = !{i64 2149265406, i64 2149265453, i64 2149265459, i64 2149265496, i64 2149265514, i64 2149266825, i64 2149266873, i64 2149266921, i64 2149266984, i64 2149267033, i64 2149265592, i64 2149265617, i64 2149265643, i64 2149265649, i64 2149266491, i64 2149266531, i64 2149266549, i64 2149266581, i64 2149266609, i64 2149266663, i64 2149266683, i64 2149266780, i64 2149265672, i64 2149265686, i64 2149265692, i64 2149265742, i64 2149265788, i64 2149265821}
!13 = !{i64 2149267585, i64 2149267632, i64 2149267638, i64 2149267675, i64 2149267693, i64 2149268636, i64 2149268684, i64 2149268732, i64 2149268795, i64 2149268844, i64 2149267771, i64 2149267796, i64 2149267822, i64 2149267828, i64 2149267865, i64 2149267871, i64 2149267921, i64 2149267967, i64 2149268000}
!14 = !{i64 2149255642, i64 2149255689, i64 2149255695, i64 2149255732, i64 2149255750, i64 2149261152, i64 2149261200, i64 2149261248, i64 2149261311, i64 2149261360, i64 2149255828, i64 2149255853, i64 2149255879, i64 2149255885, i64 2149260818, i64 2149260858, i64 2149260876, i64 2149260908, i64 2149260936, i64 2149260990, i64 2149261010, i64 2149261107, i64 2149255908, i64 2149255922, i64 2149255928, i64 2149255978, i64 2149256024, i64 2149256057}
!15 = !{i64 2147897678, i64 2147897711, i64 2147897764, i64 2147897823, i64 2147897857, i64 2147897912, i64 2147897941, i64 2147897961}
!16 = !{i64 2149623265}
!17 = !{i64 2149566564}
!18 = !{i64 2149271419, i64 2149271466, i64 2149271472, i64 2149271509, i64 2149271527, i64 2149272838, i64 2149272886, i64 2149272934, i64 2149272997, i64 2149273046, i64 2149271605, i64 2149271630, i64 2149271656, i64 2149271662, i64 2149272504, i64 2149272544, i64 2149272562, i64 2149272594, i64 2149272622, i64 2149272676, i64 2149272696, i64 2149272793, i64 2149271685, i64 2149271699, i64 2149271705, i64 2149271755, i64 2149271801, i64 2149271834}
!19 = !{i64 1826362}
