; ModuleID = 'kernel/rcu/srcutree.c'
source_filename = "kernel/rcu/srcutree.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_srcutree__255_1387_srcu_bootup_announceearly:\09\09\09"
module asm ".long\09srcu_bootup_announce - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.cpumask = type { [4 x i64] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.lockdep_map = type {}
%struct.rcu_synchronize = type { %struct.callback_head, %struct.completion }
%struct.rcu_cblist = type { %struct.callback_head*, %struct.callback_head**, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.64, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.14, i32 }
%union.anon.14 = type { %struct.kuid_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.41, %struct.list_head, %struct.list_head, %union.anon.42 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.lockref = type { %union.anon.39 }
%union.anon.39 = type { i64 }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.31, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.32, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.33, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.38, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.31 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.32 = type { %struct.callback_head }
%union.anon.33 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.page = type { i64, %union.anon.15, %union.anon.29, %struct.atomic_t, [8 x i8] }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.29 = type { %struct.atomic_t }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.30 }
%union.anon.30 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.38 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.36 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.34, %struct.qspinlock }
%union.anon.34 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.36 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
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
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.63, i32, [12 x i8] }
%union.anon.63 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.65, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.65 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

@__param_str_exp_holdoff = internal constant [21 x i8] c"srcutree.exp_holdoff\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@exp_holdoff = internal global i64 25000, align 8
@__param_exp_holdoff = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_exp_holdoff, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @exp_holdoff to i8*) } }, section "__param", align 8
@__UNIQUE_ID_exp_holdofftype218 = internal constant [36 x i8] c"srcutree.parmtype=exp_holdoff:ulong\00", section ".modinfo", align 1
@__param_str_counter_wrap_check = internal constant [28 x i8] c"srcutree.counter_wrap_check\00", align 1
@counter_wrap_check = internal global i64 4611686018427387903, align 8
@__param_counter_wrap_check = internal constant %struct.kernel_param { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__param_str_counter_wrap_check, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @counter_wrap_check to i8*) } }, section "__param", align 8
@__UNIQUE_ID_counter_wrap_checktype219 = internal constant [43 x i8] c"srcutree.parmtype=counter_wrap_check:ulong\00", section ".modinfo", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str = private unnamed_addr constant [44 x i8] c"\016rcu: %s: Active srcu_struct %p state: %d\0A\00", align 1
@__func__.cleanup_srcu_struct = private unnamed_addr constant [20 x i8] c"cleanup_srcu_struct\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\011rcu: %s%s Tree SRCU g%ld per-CPU(idx=%d):\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\01c %d(%ld,%ld %c)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"C.\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\01c T(%ld,%ld)\0A\00", align 1
@__UNIQUE_ID___addressable_srcu_bootup_announce256 = internal global i8* bitcast (i32 ()* @srcu_bootup_announce to i8*), section ".discard.addressable", align 8
@srcu_init_done = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@srcu_boot_list = internal global %struct.list_head { %struct.list_head* @srcu_boot_list, %struct.list_head* @srcu_boot_list }, align 8
@rcu_gp_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@init_srcu_struct_fields.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"&ssp->srcu_cb_mutex\00", align 1
@init_srcu_struct_fields.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"&ssp->srcu_gp_mutex\00", align 1
@init_srcu_struct_fields.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"&ssp->srcu_barrier_mutex\00", align 1
@rcu_num_nodes = external dso_local local_unnamed_addr global i32, align 4
@rcu_num_lvls = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@num_rcu_lvl = external dso_local local_unnamed_addr global [0 x i32], align 4
@rcu_scheduler_active = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\016rcu: Hierarchical SRCU implementation.\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"\016rcu: \09Non-default auto-expedite holdoff of %lu ns.\0A\00", align 1
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_srcu_bootup_announce256 to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_counter_wrap_checktype219, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_exp_holdofftype218, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_counter_wrap_check to i8*), i8* bitcast (%struct.kernel_param* @__param_exp_holdoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @init_srcu_struct(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #0 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %call2 = call fastcc i32 @init_srcu_struct_fields(%struct.srcu_struct* noundef %ssp, i1 noundef false) #15
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @init_srcu_struct_fields(%struct.srcu_struct* noundef %ssp, i1 noundef %is_static) unnamed_addr #0 {
entry:
  %srcu_cb_mutex = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 2
  call void @__mutex_init(%struct.mutex* noundef %srcu_cb_mutex, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_srcu_struct_fields.__key) #16
  %srcu_gp_mutex = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 4
  call void @__mutex_init(%struct.mutex* noundef %srcu_gp_mutex, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_srcu_struct_fields.__key.6) #16
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 5
  store i32 0, i32* %srcu_idx, align 8
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  store i64 0, i64* %srcu_gp_seq, align 8
  %srcu_barrier_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 11
  store i64 0, i64* %srcu_barrier_seq, align 8
  %srcu_barrier_mutex = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 12
  call void @__mutex_init(%struct.mutex* noundef %srcu_barrier_mutex, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_srcu_struct_fields.__key.8) #16
  %counter.i = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 14, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 15, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry12 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 15, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry12) #15
  %func = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 15, i32 0, i32 2
  store void (%struct.work_struct*)* @process_srcu, void (%struct.work_struct*)** %func, align 8
  %timer = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 15, i32 1
  call void @init_timer_key(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #16
  br i1 %is_static, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %sda18.phi.trans.insert = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %.pre = load %struct.srcu_data*, %struct.srcu_data** %sda18.phi.trans.insert, align 8
  br label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @__alloc_percpu(i64 noundef 384, i64 noundef 64) #16
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %0 = bitcast %struct.srcu_data** %sda to i8**
  store i8* %call, i8** %0, align 8
  %1 = bitcast i8* %call to %struct.srcu_data*
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %2 = phi %struct.srcu_data* [ %.pre, %entry.if.end_crit_edge ], [ %1, %if.then ]
  %tobool19.not = icmp eq %struct.srcu_data* %2, null
  br i1 %tobool19.not, label %return, label %if.end21

if.end21:                                         ; preds = %if.end
  call fastcc void @init_srcu_struct_nodes(%struct.srcu_struct* noundef %ssp) #15
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 8
  store i64 0, i64* %srcu_gp_seq_needed_exp, align 8
  %call22 = call i64 @ktime_get_mono_fast_ns() #16
  %srcu_last_gp_end = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 9
  store i64 %call22, i64* %srcu_last_gp_end, align 8
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 7
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %srcu_gp_seq_needed, i64 0) #17, !srcloc !8
  br label %return

return:                                           ; preds = %if.end, %if.end21
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cleanup_srcu_struct(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @srcu_get_delay(%struct.srcu_struct* noundef %ssp) #15
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 371; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !10
  br label %cleanup153

if.end18:                                         ; preds = %entry
  %call20 = call fastcc i1 @srcu_readers_active(%struct.srcu_struct* noundef %ssp) #15
  br i1 %call20, label %if.then33, label %if.end45, !prof !9

if.then33:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 373; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !11
  br label %cleanup153

if.end45:                                         ; preds = %if.end18
  %work = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 15
  %call46 = call i1 @flush_delayed_work(%struct.delayed_work* noundef %work) #16
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end45
  %cpu.0 = phi i32 [ -1, %if.end45 ], [ %call47, %for.body ]
  %call47 = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call47, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %2 = ptrtoint %struct.srcu_data* %1 to i64
  %idxprom = sext i32 %call47 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.srcu_data*
  %delay_work = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 8
  %call51 = call i32 @del_timer_sync(%struct.timer_list* noundef %delay_work) #16
  %work52 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 9
  %call53 = call i1 @flush_work(%struct.work_struct* noundef %work52) #16
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 4
  %call55 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %srcu_cblist) #15
  %tobool56.not = icmp eq i64 %call55, 0
  br i1 %tobool56.not, label %for.cond, label %if.then69, !prof !12

if.then69:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 381; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !13
  br label %cleanup153

for.end:                                          ; preds = %for.cond
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %5 = load volatile i64, i64* %srcu_gp_seq, align 8
  %call87 = call fastcc i32 @rcu_seq_state(i64 noundef %5) #15
  %cmp88.not = icmp eq i32 %call87, 0
  br i1 %cmp88.not, label %lor.lhs.false, label %if.then102, !prof !12

if.then102:                                       ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 384; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !14
  br label %do.end141

lor.lhs.false:                                    ; preds = %for.end
  %call114 = call fastcc i1 @srcu_readers_active(%struct.srcu_struct* noundef %ssp) #15
  br i1 %call114, label %if.then127, label %if.end150, !prof !9

if.then127:                                       ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 385; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !15
  br label %do.end141

do.end141:                                        ; preds = %if.then127, %if.then102
  %6 = load volatile i64, i64* %srcu_gp_seq, align 8
  %call148 = call fastcc i32 @rcu_seq_state(i64 noundef %6) #15, !range !16
  %call149 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cleanup_srcu_struct, i64 0, i64 0), %struct.srcu_struct* noundef %ssp, i32 noundef %call148) #19
  br label %cleanup153

if.end150:                                        ; preds = %lor.lhs.false
  %7 = bitcast %struct.srcu_data** %sda to i8**
  %8 = load i8*, i8** %7, align 8
  call void @free_percpu(i8* noundef %8) #16
  store %struct.srcu_data* null, %struct.srcu_data** %sda, align 8
  br label %cleanup153

cleanup153:                                       ; preds = %if.then69, %if.then33, %if.then, %if.end150, %do.end141
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @srcu_get_delay(%struct.srcu_struct* noundef %ssp) unnamed_addr #2 {
entry:
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %0 = load volatile i64, i64* %srcu_gp_seq, align 8
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 8
  %1 = load volatile i64, i64* %srcu_gp_seq_needed_exp, align 8
  %2 = xor i64 %0, -1
  %3 = add i64 %1, %2
  %sub.lobit.not = lshr i64 %3, 63
  ret i64 %sub.lobit.not
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i1 @srcu_readers_active(%struct.srcu_struct* nocapture noundef readonly %ssp) unnamed_addr #3 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call43 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp44 = icmp ult i32 %call43, %0
  br i1 %cmp44, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %1 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %2 = ptrtoint %struct.srcu_data* %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call46 = phi i32 [ %call43, %for.body.lr.ph ], [ %call, %for.body ]
  %sum.045 = phi i64 [ 0, %for.body.lr.ph ], [ %sub26, %for.body ]
  %idxprom = sext i32 %call46 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.srcu_data*
  %arrayidx6 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 0, i64 0
  %5 = load volatile i64, i64* %arrayidx6, align 64
  %arrayidx13 = getelementptr %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 0, i64 1
  %6 = load volatile i64, i64* %arrayidx13, align 8
  %arrayidx19 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 1, i64 0
  %7 = load volatile i64, i64* %arrayidx19, align 16
  %arrayidx25 = getelementptr %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 1, i64 1
  %8 = load volatile i64, i64* %arrayidx25, align 8
  %.neg42 = add i64 %5, %sum.045
  %add7 = add i64 %.neg42, %6
  %9 = add i64 %7, %8
  %sub26 = sub i64 %add7, %9
  %call = call i32 @cpumask_next(i32 noundef %call46, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %phi.cmp = icmp ne i64 %sub26, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %sum.0.lcssa = phi i1 [ false, %entry ], [ %phi.cmp, %for.end.loopexit ]
  ret i1 %sum.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_delayed_work(%struct.delayed_work* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_work(%struct.work_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #2 {
entry:
  %len = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 3
  %0 = load volatile i64, i64* %len, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rcu_seq_state(i64 noundef %s) unnamed_addr #6 {
entry:
  %0 = trunc i64 %s to i32
  %conv = and i32 %0, 3
  ret i32 %conv
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__srcu_read_lock(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #0 {
entry:
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 5
  %0 = load volatile i32, i32* %srcu_idx, align 8
  %and = and i32 %0, 1
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %1 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %2 = zext i32 %and to i64
  %arrayidx = getelementptr %struct.srcu_data, %struct.srcu_data* %1, i64 0, i32 0, i64 %2
  %3 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, %3
  %4 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %4) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 1, i64* elementtype(i64) %0) #17, !srcloc !20
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #8 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #20, !srcloc !21
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__srcu_read_unlock(%struct.srcu_struct* nocapture noundef readonly %ssp, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %0 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr %struct.srcu_data, %struct.srcu_data* %0, i64 0, i32 1, i64 %idxprom
  %1 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %2) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @call_srcu(%struct.srcu_struct* noundef %ssp, %struct.callback_head* noundef %rhp, void (%struct.callback_head*)* noundef %func) local_unnamed_addr #0 {
entry:
  call fastcc void @__call_srcu(%struct.srcu_struct* noundef %ssp, %struct.callback_head* noundef %rhp, void (%struct.callback_head*)* noundef %func, i1 noundef true) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__call_srcu(%struct.srcu_struct* noundef %ssp, %struct.callback_head* noundef %rhp, void (%struct.callback_head*)* noundef %func, i1 noundef %do_norm) unnamed_addr #0 {
entry:
  %func46 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp, i64 0, i32 1
  store void (%struct.callback_head*)* %func, void (%struct.callback_head*)** %func46, align 8
  %call48 = call fastcc i64 @srcu_gp_start_if_needed(%struct.srcu_struct* noundef %ssp, %struct.callback_head* noundef %rhp, i1 noundef %do_norm) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @synchronize_srcu_expedited(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #0 {
entry:
  %call = call i1 @rcu_gp_is_normal() #16
  call fastcc void @__synchronize_srcu(%struct.srcu_struct* noundef %ssp, i1 noundef %call) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__synchronize_srcu(%struct.srcu_struct* noundef %ssp, i1 noundef %do_norm) unnamed_addr #0 {
entry:
  %rcu = alloca %struct.rcu_synchronize, align 8
  %0 = bitcast %struct.rcu_synchronize* %rcu to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !25
  %1 = load i32, i32* @rcu_scheduler_active, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cleanup, label %do.end6

do.end6:                                          ; preds = %entry
  call fastcc void @check_init_srcu_struct(%struct.srcu_struct* noundef %ssp) #15
  %completion = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %rcu, i64 0, i32 1
  call fastcc void @init_completion(%struct.completion* noundef %completion) #15
  %head = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %rcu, i64 0, i32 0
  call fastcc void @__call_srcu(%struct.srcu_struct* noundef %ssp, %struct.callback_head* noundef nonnull %head, void (%struct.callback_head*)* noundef nonnull @wakeme_after_rcu, i1 noundef %do_norm) #15
  call void @wait_for_completion(%struct.completion* noundef %completion) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end6
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_gp_is_normal() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @synchronize_srcu(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @srcu_might_be_idle(%struct.srcu_struct* noundef %ssp) #15
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i1 @rcu_gp_is_expedited() #16
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @synchronize_srcu_expedited(%struct.srcu_struct* noundef %ssp) #15
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call fastcc void @__synchronize_srcu(%struct.srcu_struct* noundef %ssp, i1 noundef true) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @srcu_might_be_idle(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  call fastcc void @check_init_srcu_struct(%struct.srcu_struct* noundef %ssp) #15
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %0 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %1 = ptrtoint %struct.srcu_data* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to %struct.srcu_data*
  %rlock.i = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 3, i32 0, i32 0
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #15
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 4
  %call17 = call i1 @rcu_segcblist_pend_cbs(%struct.rcu_segcblist* noundef %srcu_cblist) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call7) #16
  br i1 %call17, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call20 = call i64 @ktime_get_mono_fast_ns() #16
  %srcu_last_gp_end = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 9
  %3 = load volatile i64, i64* %srcu_last_gp_end, align 8
  %4 = load i64, i64* @exp_holdoff, align 8
  %cmp25 = icmp eq i64 %4, 0
  br i1 %cmp25, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %sub = sub i64 %call20, %3
  %cmp27 = icmp sgt i64 %sub, -1
  br i1 %cmp27, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = add i64 %3, %4
  %sub30 = sub i64 %call20, %5
  %cmp31 = icmp slt i64 %sub30, 0
  br i1 %cmp31, label %cleanup, label %if.end34

if.end34:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %call35 = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !27
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 7
  %6 = load volatile i64, i64* %srcu_gp_seq_needed, align 8
  %sub40 = sub i64 %call35, %6
  %cmp41 = icmp slt i64 %sub40, 0
  br i1 %cmp41, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.end34
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %call46 = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  %cmp47.not = icmp eq i64 %call35, %call46
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end44, %if.end34, %if.end, %land.lhs.true
  %retval.0 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ false, %if.end34 ], [ %cmp47.not, %if.end44 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_gp_is_expedited() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_state_synchronize_srcu(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %call = call fastcc i64 @rcu_seq_snap(i64* noundef %srcu_gp_seq) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rcu_seq_snap(i64* noundef %sp) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %sp, align 8
  %add1 = add i64 %0, 7
  %and = and i64 %add1, -4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @start_poll_synchronize_srcu(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @srcu_gp_start_if_needed(%struct.srcu_struct* noundef %ssp, %struct.callback_head* noundef null, i1 noundef true) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @srcu_gp_start_if_needed(%struct.srcu_struct* noundef %ssp, %struct.callback_head* noundef %rhp, i1 noundef %do_norm) unnamed_addr #0 {
entry:
  call fastcc void @check_init_srcu_struct(%struct.srcu_struct* noundef %ssp) #15
  %call = call fastcc i32 @srcu_read_lock(%struct.srcu_struct* noundef %ssp) #15
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %0 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %1 = ptrtoint %struct.srcu_data* %0 to i64
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call2, %1
  %2 = inttoptr i64 %add to %struct.srcu_data*
  %rlock.i = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 3, i32 0, i32 0
  %call8 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #15
  %tobool.not = icmp eq %struct.callback_head* %rhp, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 4
  call void @rcu_segcblist_enqueue(%struct.rcu_segcblist* noundef %srcu_cblist, %struct.callback_head* noundef nonnull %rhp) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %srcu_cblist18 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 4
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %call19 = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  call void @rcu_segcblist_advance(%struct.rcu_segcblist* noundef %srcu_cblist18, i64 noundef %call19) #16
  %call21 = call fastcc i64 @rcu_seq_snap(i64* noundef %srcu_gp_seq) #15, !range !31
  %call23 = call i1 @rcu_segcblist_accelerate(%struct.rcu_segcblist* noundef %srcu_cblist18, i64 noundef %call21) #16
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 5
  %3 = load i64, i64* %srcu_gp_seq_needed, align 64
  %sub = sub i64 %3, %call21
  %cmp24 = icmp slt i64 %sub, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  store i64 %call21, i64* %srcu_gp_seq_needed, align 64
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  br i1 %do_norm, label %if.end35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 6
  %4 = load i64, i64* %srcu_gp_seq_needed_exp, align 8
  %sub30 = sub i64 %4, %call21
  %cmp31 = icmp slt i64 %sub30, 0
  br i1 %cmp31, label %if.end35.thread, label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.end28
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call8) #16
  br i1 %cmp24, label %if.then38, label %if.end43

if.end35.thread:                                  ; preds = %land.lhs.true
  store i64 %call21, i64* %srcu_gp_seq_needed_exp, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call8) #16
  br i1 %cmp24, label %if.then38, label %if.then41

if.then38:                                        ; preds = %if.end35.thread, %if.end35
  call fastcc void @srcu_funnel_gp_start(%struct.srcu_struct* noundef %ssp, %struct.srcu_data* noundef %2, i64 noundef %call21, i1 noundef %do_norm) #15
  br label %if.end43

if.then41:                                        ; preds = %if.end35.thread
  %mynode = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 11
  %5 = load %struct.srcu_node*, %struct.srcu_node** %mynode, align 16
  call fastcc void @srcu_funnel_exp_start(%struct.srcu_struct* noundef %ssp, %struct.srcu_node* noundef %5, i64 noundef %call21) #15
  br label %if.end43

if.end43:                                         ; preds = %if.end35, %if.then41, %if.then38
  call fastcc void @srcu_read_unlock(%struct.srcu_struct* noundef %ssp, i32 noundef %call) #15
  ret i64 %call21
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @poll_state_synchronize_srcu(%struct.srcu_struct* noundef %ssp, i64 noundef %cookie) local_unnamed_addr #0 {
entry:
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %call = call fastcc i1 @rcu_seq_done(i64* noundef %srcu_gp_seq, i64 noundef %cookie) #15
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_seq_done(i64* noundef %sp, i64 noundef %s) unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* %sp, align 8
  %sub = sub i64 %0, %s
  %cmp = icmp sgt i64 %sub, -1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @srcu_barrier(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #0 {
entry:
  %srcu_barrier_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 11
  %call = call fastcc i64 @rcu_seq_snap(i64* noundef %srcu_barrier_seq) #15
  call fastcc void @check_init_srcu_struct(%struct.srcu_struct* noundef %ssp) #15
  %srcu_barrier_mutex = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 12
  call void @mutex_lock(%struct.mutex* noundef %srcu_barrier_mutex) #16
  %call2 = call fastcc i1 @rcu_seq_done(i64* noundef %srcu_barrier_seq, i64 noundef %call) #15
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !33
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @rcu_seq_start(i64* noundef %srcu_barrier_seq) #15
  %srcu_barrier_completion = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 13
  call fastcc void @init_completion(%struct.completion* noundef %srcu_barrier_completion) #15
  %srcu_barrier_cpu_cnt = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 14
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %srcu_barrier_cpu_cnt, i64 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  %call562 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp63 = icmp ult i32 %call562, %0
  br i1 %cmp63, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %if.end
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %if.end21
  %call564 = phi i32 [ %call562, %do.body.lr.ph ], [ %call5, %if.end21 ]
  %1 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %2 = ptrtoint %struct.srcu_data* %1 to i64
  %idxprom = sext i32 %call564 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.srcu_data*
  %rlock.i = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %srcu_barrier_cpu_cnt) #16
  %srcu_barrier_head = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 10
  %func = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 10, i32 1
  store void (%struct.callback_head*)* @srcu_barrier_cb, void (%struct.callback_head*)** %func, align 8
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 4
  %call17 = call i1 @rcu_segcblist_entrain(%struct.rcu_segcblist* noundef %srcu_cblist, %struct.callback_head* noundef %srcu_barrier_head) #16
  br i1 %call17, label %if.end21, label %if.then18

if.then18:                                        ; preds = %do.body
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %srcu_barrier_cpu_cnt) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.body
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %call5 = call i32 @cpumask_next(i32 noundef %call564, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call5, %5
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %if.end21, %if.end
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %srcu_barrier_cpu_cnt) #16
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end
  call void @complete(%struct.completion* noundef %srcu_barrier_completion) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end
  call void @wait_for_completion(%struct.completion* noundef %srcu_barrier_completion) #16
  call fastcc void @rcu_seq_end(i64* noundef %srcu_barrier_seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then
  call void @mutex_unlock(%struct.mutex* noundef %srcu_barrier_mutex) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_init_srcu_struct(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 7
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(i64* elementtype(i64) %srcu_gp_seq_needed) #17, !srcloc !34
  %call1 = call fastcc i32 @rcu_seq_state(i64 noundef %0) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %do.body4

do.body4:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 3, i32 0, i32 0
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #15
  %1 = load i64, i64* %srcu_gp_seq_needed, align 8
  %call18 = call fastcc i32 @rcu_seq_state(i64 noundef %1) #15
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup.sink.split, label %if.end22

if.end22:                                         ; preds = %do.body4
  %call23 = call fastcc i32 @init_srcu_struct_fields(%struct.srcu_struct* noundef %ssp, i1 noundef true) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body4, %if.end22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call7) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_seq_start(i64* noundef %sp) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %sp, align 8
  %add = add i64 %0, 1
  store volatile i64 %add, i64* %sp, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  %1 = load i64, i64* %sp, align 8
  %call = call fastcc i32 @rcu_seq_state(i64 noundef %1) #15
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu.h\22; .popsection; .long 14472b - 14470b; .short 59; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @srcu_barrier_cb(%struct.callback_head* nocapture noundef readonly %rhp) #0 {
entry:
  %ssp1 = getelementptr %struct.callback_head, %struct.callback_head* %rhp, i64 2, i32 1
  %0 = bitcast void (%struct.callback_head*)** %ssp1 to %struct.srcu_struct**
  %1 = load %struct.srcu_struct*, %struct.srcu_struct** %0, align 8
  %srcu_barrier_cpu_cnt = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %1, i64 0, i32 14
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %srcu_barrier_cpu_cnt) #16
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %srcu_barrier_completion = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %1, i64 0, i32 13
  call void @complete(%struct.completion* noundef %srcu_barrier_completion) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_segcblist_entrain(%struct.rcu_segcblist* noundef, %struct.callback_head* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_seq_end(i64* noundef %sp) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !37
  %0 = load i64, i64* %sp, align 8
  %call = call fastcc i32 @rcu_seq_state(i64 noundef %0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu.h\22; .popsection; .long 14472b - 14470b; .short 72; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call18 = call fastcc i64 @rcu_seq_endval(i64* noundef %sp) #15
  store volatile i64 %call18, i64* %sp, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @srcu_batches_completed(%struct.srcu_struct* noundef %ssp) local_unnamed_addr #2 {
entry:
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 5
  %0 = load volatile i32, i32* %srcu_idx, align 8
  %conv = zext i32 %0 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local void @srcutorture_get_gp_data(i32 noundef %test_type, %struct.srcu_struct* noundef %ssp, i32* nocapture noundef writeonly %flags, i64* nocapture noundef writeonly %gp_seq) local_unnamed_addr #2 {
entry:
  %cmp.not = icmp eq i32 %test_type, 5
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %flags, align 4
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %call = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  store i64 %call, i64* %gp_seq, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @rcu_seq_current(i64* noundef %sp) unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* %sp, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @srcu_torture_stats_print(%struct.srcu_struct* noundef %ssp, i8* noundef %tt, i8* noundef %tf) local_unnamed_addr #0 {
entry:
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 5
  %0 = load i32, i32* %srcu_idx, align 8
  %and = and i32 %0, 1
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %call = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* noundef %tt, i8* noundef %tf, i64 noundef %call, i32 noundef %and) #19
  %call282 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp83 = icmp ult i32 %call282, %1
  br i1 %cmp83, label %for.body.lr.ph, label %do.end45

for.body.lr.ph:                                   ; preds = %entry
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %2 = xor i32 %and, 1
  %3 = zext i32 %2 to i64
  %4 = zext i32 %and to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call286 = phi i32 [ %call282, %for.body.lr.ph ], [ %call2, %for.body ]
  %s0.085 = phi i64 [ 0, %for.body.lr.ph ], [ %add41, %for.body ]
  %s1.084 = phi i64 [ 0, %for.body.lr.ph ], [ %add42, %for.body ]
  %5 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %6 = ptrtoint %struct.srcu_data* %5 to i64
  %idxprom = sext i32 %call286 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  %add = add i64 %7, %6
  %8 = inttoptr i64 %add to %struct.srcu_data*
  %arrayidx10 = getelementptr %struct.srcu_data, %struct.srcu_data* %8, i64 0, i32 1, i64 %3
  %9 = load i64, i64* %arrayidx10, align 8
  %arrayidx16 = getelementptr %struct.srcu_data, %struct.srcu_data* %8, i64 0, i32 1, i64 %4
  %10 = load i64, i64* %arrayidx16, align 8
  call void asm sideeffect "dmb ishld", "~{memory}"() #17, !srcloc !39
  %arrayidx24 = getelementptr %struct.srcu_data, %struct.srcu_data* %8, i64 0, i32 0, i64 %3
  %11 = load i64, i64* %arrayidx24, align 8
  %arrayidx30 = getelementptr %struct.srcu_data, %struct.srcu_data* %8, i64 0, i32 0, i64 %4
  %12 = load i64, i64* %arrayidx30, align 8
  %sub = sub i64 %11, %9
  %sub32 = sub i64 %12, %10
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %8, i64 0, i32 4
  %call37 = call fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %srcu_cblist) #15
  %idxprom38 = zext i1 %call37 to i64
  %arrayidx39 = getelementptr [3 x i8], [3 x i8]* @.str.3, i64 0, i64 %idxprom38
  %13 = load i8, i8* %arrayidx39, align 1
  %conv = zext i8 %13 to i32
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef %call286, i64 noundef %sub, i64 noundef %sub32, i32 noundef %conv) #19
  %add41 = add i64 %sub, %s0.085
  %add42 = add i64 %sub32, %s1.084
  %call2 = call i32 @cpumask_next(i32 noundef %call286, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %14 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %14
  br i1 %cmp, label %for.body, label %do.end45

do.end45:                                         ; preds = %for.body, %entry
  %s1.0.lcssa = phi i64 [ 0, %entry ], [ %add42, %for.body ]
  %s0.0.lcssa = phi i64 [ 0, %entry ], [ %add41, %for.body ]
  %call47 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 noundef %s0.0.lcssa, i64 noundef %s1.0.lcssa) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #2 {
entry:
  %head = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 0
  %0 = load volatile %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  ret i1 %tobool.not
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @srcu_bootup_announce() #9 section ".init.text" {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)) #19
  %0 = load i64, i64* @exp_holdoff, align 8
  %cmp.not = icmp eq i64 %0, 25000
  br i1 %cmp.not, label %if.end, label %do.end2

do.end2:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i64 noundef %0) #19
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @srcu_init() local_unnamed_addr #9 section ".init.text" {
entry:
  store i1 true, i1* @srcu_init_done, align 1
  %call9 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @srcu_boot_list) #15
  %tobool.not10 = icmp eq i32 %call9, 0
  br i1 %tobool.not10, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %0 = load i8*, i8** bitcast (%struct.list_head* @srcu_boot_list to i8**), align 8
  %work = getelementptr i8, i8* %0, i64 -8
  %work1 = bitcast i8* %work to %struct.work_struct*
  %1 = bitcast i8* %0 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %1) #15
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rcu_gp_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %2, %struct.work_struct* noundef %work1) #15
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @srcu_boot_list) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #15
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @process_srcu(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr5 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -58
  %0 = bitcast %struct.work_struct* %add.ptr5 to %struct.srcu_struct*
  call fastcc void @srcu_advance_state(%struct.srcu_struct* noundef %0) #15
  %call = call fastcc i64 @srcu_get_delay(%struct.srcu_struct* noundef %0) #15, !range !40
  call fastcc void @srcu_reschedule(%struct.srcu_struct* noundef %0, i64 noundef %call) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_srcu_struct_nodes(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  %levelspread = alloca i64, align 8, !annotation !25
  %tmpcast = bitcast i64* %levelspread to [2 x i32]*, !annotation !25
  %0 = bitcast i64* %levelspread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %levelspread, align 8, !annotation !25
  call void @rcu_init_geometry() #16
  %arrayidx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 1, i64 0
  store %struct.srcu_node* %arrayidx, %struct.srcu_node** %arrayidx2, align 8
  %1 = load i32, i32* @rcu_num_lvls, align 4
  %cmp238 = icmp sgt i32 %1, 1
  br i1 %cmp238, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %2 = phi %struct.srcu_node* [ %add.ptr, %for.body ], [ %arrayidx, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %3 = add nsw i64 %indvars.iv, -1
  %arrayidx7 = getelementptr [0 x i32], [0 x i32]* @num_rcu_lvl, i64 0, i64 %3
  %4 = load i32, i32* %arrayidx7, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr %struct.srcu_node, %struct.srcu_node* %2, i64 %idx.ext
  %arrayidx10 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 1, i64 %indvars.iv
  store %struct.srcu_node* %add.ptr, %struct.srcu_node** %arrayidx10, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, i32* @rcu_num_lvls, align 4
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %arraydecay = bitcast i64* %levelspread to i32*
  call fastcc void @rcu_init_levelspread(i32* noundef nonnull %arraydecay) #15
  %7 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom15242 = sext i32 %7 to i64
  %arrayidx16243 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 0, i64 %idxprom15242
  %cmp17244 = icmp ult %struct.srcu_node* %arrayidx, %arrayidx16243
  br i1 %cmp17244, label %do.body, label %if.end80

do.body:                                          ; preds = %for.end, %for.inc68
  %level.0247 = phi i32 [ %level.2, %for.inc68 ], [ 0, %for.end ]
  %snp.0245 = phi %struct.srcu_node* [ %incdec.ptr, %for.inc68 ], [ %arrayidx, %for.end ]
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %arrayidx35 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 1, i64 0
  store i64 0, i64* %arrayidx35, align 8
  %arrayidx37 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 2, i64 0
  store i64 0, i64* %arrayidx37, align 8
  %arrayidx35.1 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 1, i64 1
  store i64 0, i64* %arrayidx35.1, align 8
  %arrayidx37.1 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 2, i64 1
  store i64 0, i64* %arrayidx37.1, align 8
  %arrayidx35.2 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 1, i64 2
  store i64 0, i64* %arrayidx35.2, align 8
  %arrayidx37.2 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 2, i64 2
  store i64 0, i64* %arrayidx37.2, align 8
  %arrayidx35.3 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 1, i64 3
  store i64 0, i64* %arrayidx35.3, align 8
  %arrayidx37.3 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 2, i64 3
  store i64 0, i64* %arrayidx37.3, align 8
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 3
  store i64 0, i64* %srcu_gp_seq_needed_exp, align 8
  %grplo = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 5
  store i32 -1, i32* %grplo, align 8
  %grphi = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 6
  store i32 -1, i32* %grphi, align 4
  %cmp43 = icmp eq %struct.srcu_node* %snp.0245, %arrayidx
  br i1 %cmp43, label %for.inc68, label %if.end46

if.end46:                                         ; preds = %do.body
  %add = add i32 %level.0247, 1
  %idxprom48 = sext i32 %add to i64
  %arrayidx49 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 1, i64 %idxprom48
  %8 = load %struct.srcu_node*, %struct.srcu_node** %arrayidx49, align 8
  %cmp50 = icmp eq %struct.srcu_node* %snp.0245, %8
  %spec.select = select i1 %cmp50, i32 %add, i32 %level.0247
  %sub56 = add i32 %spec.select, -1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 1, i64 %idxprom57
  %9 = load %struct.srcu_node*, %struct.srcu_node** %arrayidx58, align 8
  %idxprom60 = sext i32 %spec.select to i64
  %arrayidx61 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 1, i64 %idxprom60
  %10 = load %struct.srcu_node*, %struct.srcu_node** %arrayidx61, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.srcu_node* %snp.0245 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.srcu_node* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 96
  %arrayidx64 = getelementptr [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %idxprom57
  %11 = load i32, i32* %arrayidx64, align 4
  %conv65 = sext i32 %11 to i64
  %div = sdiv i64 %sub.ptr.div, %conv65
  %add.ptr66 = getelementptr %struct.srcu_node, %struct.srcu_node* %9, i64 %div
  br label %for.inc68

for.inc68:                                        ; preds = %do.body, %if.end46
  %add.ptr66.sink = phi %struct.srcu_node* [ %add.ptr66, %if.end46 ], [ null, %do.body ]
  %level.2 = phi i32 [ %spec.select, %if.end46 ], [ %level.0247, %do.body ]
  %12 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 0, i32 4
  store %struct.srcu_node* %add.ptr66.sink, %struct.srcu_node** %12, align 8
  %incdec.ptr = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0245, i64 1
  %13 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 0, i64 %idxprom15
  %cmp17 = icmp ult %struct.srcu_node* %incdec.ptr, %arrayidx16
  br i1 %cmp17, label %do.body, label %if.end80

if.end80:                                         ; preds = %for.inc68, %for.end
  %14 = load i32, i32* @rcu_num_lvls, align 4
  %sub89 = add i32 %14, -1
  %idxprom91 = sext i32 %sub89 to i64
  %arrayidx92 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 1, i64 %idxprom91
  %15 = load %struct.srcu_node*, %struct.srcu_node** %arrayidx92, align 8
  %call94250 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %16 = load i32, i32* @nr_cpu_ids, align 4
  %cmp95251 = icmp ult i32 %call94250, %16
  br i1 %cmp95251, label %do.body98.lr.ph, label %for.end154

do.body98.lr.ph:                                  ; preds = %if.end80
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %arrayidx120 = getelementptr [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %idxprom91
  br label %do.body98

do.body98:                                        ; preds = %do.body98.lr.ph, %for.end138
  %call94252 = phi i32 [ %call94250, %do.body98.lr.ph ], [ %call94, %for.end138 ]
  %17 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %18 = ptrtoint %struct.srcu_data* %17 to i64
  %idxprom103 = sext i32 %call94252 to i64
  %arrayidx104 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom103
  %19 = load i64, i64* %arrayidx104, align 8
  %add105 = add i64 %19, %18
  %20 = inttoptr i64 %add105 to %struct.srcu_data*
  %.compoundliteral110.sroa.0.0..sroa_idx = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral110.sroa.0.0..sroa_idx, align 64
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 4
  call void @rcu_segcblist_init(%struct.rcu_segcblist* noundef %srcu_cblist) #16
  %srcu_cblist_invoking = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 7
  store i8 0, i8* %srcu_cblist_invoking, align 16
  %21 = load i64, i64* %srcu_gp_seq, align 8
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 5
  store i64 %21, i64* %srcu_gp_seq_needed, align 64
  %22 = load i64, i64* %srcu_gp_seq, align 8
  %srcu_gp_seq_needed_exp118 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 6
  store i64 %22, i64* %srcu_gp_seq_needed_exp118, align 8
  %23 = load i32, i32* %arrayidx120, align 4
  %div121 = sdiv i32 %call94252, %23
  %idxprom122 = sext i32 %div121 to i64
  %arrayidx123 = getelementptr %struct.srcu_node, %struct.srcu_node* %15, i64 %idxprom122
  %mynode = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 11
  store %struct.srcu_node* %arrayidx123, %struct.srcu_node** %mynode, align 16
  %cmp126.not248 = icmp eq %struct.srcu_node* %arrayidx123, null
  br i1 %cmp126.not248, label %for.end138, label %for.body128

for.body128:                                      ; preds = %do.body98, %if.end134
  %snp.1249 = phi %struct.srcu_node* [ %25, %if.end134 ], [ %arrayidx123, %do.body98 ]
  %grplo129 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.1249, i64 0, i32 5
  %24 = load i32, i32* %grplo129, align 8
  %cmp130 = icmp slt i32 %24, 0
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %for.body128
  store i32 %call94252, i32* %grplo129, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %for.body128
  %grphi135 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.1249, i64 0, i32 6
  store i32 %call94252, i32* %grphi135, align 4
  %srcu_parent137 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.1249, i64 0, i32 4
  %25 = load %struct.srcu_node*, %struct.srcu_node** %srcu_parent137, align 8
  %cmp126.not = icmp eq %struct.srcu_node* %25, null
  br i1 %cmp126.not, label %for.end138, label %for.body128

for.end138:                                       ; preds = %if.end134, %do.body98
  %cpu139 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 13
  store i32 %call94252, i32* %cpu139, align 64
  %.compoundliteral142.sroa.0.0..sroa_idx = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 9, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral142.sroa.0.0..sroa_idx, align 64
  %entry145 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 9, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry145) #15
  %func = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 9, i32 2
  store void (%struct.work_struct*)* @srcu_invoke_callbacks, void (%struct.work_struct*)** %func, align 8
  %delay_work = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 8
  call void @init_timer_key(%struct.timer_list* noundef %delay_work, void (%struct.timer_list*)* noundef nonnull @srcu_delay_timer, i32 noundef 0, i8* noundef null, %struct.lock_class_key* noundef null) #16
  %ssp149 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 14
  store %struct.srcu_struct* %ssp, %struct.srcu_struct** %ssp149, align 8
  %26 = load %struct.srcu_node*, %struct.srcu_node** %mynode, align 16
  %grplo151 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %26, i64 0, i32 5
  %27 = load i32, i32* %grplo151, align 8
  %sub152 = sub i32 %call94252, %27
  %shl = shl nuw i32 1, %sub152
  %conv153 = sext i32 %shl to i64
  %grpmask = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %20, i64 0, i32 12
  store i64 %conv153, i64* %grpmask, align 8
  %call94 = call i32 @cpumask_next(i32 noundef %call94252, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %28 = load i32, i32* @nr_cpu_ids, align 4
  %cmp95 = icmp ult i32 %call94, %28
  br i1 %cmp95, label %do.body98, label %for.end154

for.end154:                                       ; preds = %for.end138, %if.end80
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_advance_state(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  %srcu_gp_mutex = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 4
  call void @mutex_lock(%struct.mutex* noundef %srcu_gp_mutex) #16
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(i64* elementtype(i64) %srcu_gp_seq) #17, !srcloc !41
  %call1 = call fastcc i32 @rcu_seq_state(i64 noundef %0) #15
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %do.body2, label %do.end51

do.body2:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %1 = load i64, i64* %srcu_gp_seq, align 8
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 7
  %2 = load i64, i64* %srcu_gp_seq_needed, align 8
  %sub = sub i64 %1, %2
  %cmp9 = icmp sgt i64 %sub, -1
  br i1 %cmp9, label %if.then10, label %do.end34

if.then10:                                        ; preds = %do.body2
  %call12 = call fastcc i32 @rcu_seq_state(i64 noundef %1) #15
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %if.then20, !prof !12

if.then20:                                        ; preds = %if.then10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 1193; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then10
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  call void @mutex_unlock(%struct.mutex* noundef %srcu_gp_mutex) #16
  br label %cleanup

do.end34:                                         ; preds = %do.body2
  %3 = load volatile i64, i64* %srcu_gp_seq, align 8
  %call37 = call fastcc i32 @rcu_seq_state(i64 noundef %3) #15
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.end41.thread, label %if.then45

if.end41.thread:                                  ; preds = %do.end34
  call fastcc void @srcu_gp_start(%struct.srcu_struct* noundef %ssp) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %do.end51

if.then45:                                        ; preds = %do.end34
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  call void @mutex_unlock(%struct.mutex* noundef %srcu_gp_mutex) #16
  br label %cleanup

do.end51:                                         ; preds = %if.end41.thread, %entry
  %4 = load volatile i64, i64* %srcu_gp_seq, align 8
  %call54 = call fastcc i32 @rcu_seq_state(i64 noundef %4) #15
  %cmp55 = icmp eq i32 %call54, 1
  br i1 %cmp55, label %if.then57, label %do.end74

if.then57:                                        ; preds = %do.end51
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 5
  %5 = load i32, i32* %srcu_idx, align 8
  %and = and i32 %5, 1
  %xor = xor i32 %and, 1
  %call58 = call fastcc i1 @try_check_zero(%struct.srcu_struct* noundef %ssp, i32 noundef %xor, i32 noundef 1) #15
  br i1 %call58, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.then57
  call void @mutex_unlock(%struct.mutex* noundef %srcu_gp_mutex) #16
  br label %cleanup

if.end61:                                         ; preds = %if.then57
  call fastcc void @srcu_flip(%struct.srcu_struct* noundef %ssp) #15
  %rlock.i125 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i125) #16
  call fastcc void @rcu_seq_set_state(i64* noundef %srcu_gp_seq, i32 noundef 2) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i125) #16
  br label %do.end74

do.end74:                                         ; preds = %do.end51, %if.end61
  %6 = load volatile i64, i64* %srcu_gp_seq, align 8
  %call77 = call fastcc i32 @rcu_seq_state(i64 noundef %6) #15
  %cmp78 = icmp eq i32 %call77, 2
  br i1 %cmp78, label %if.then80, label %cleanup

if.then80:                                        ; preds = %do.end74
  %srcu_idx81 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 5
  %7 = load i32, i32* %srcu_idx81, align 8
  %and82 = and i32 %7, 1
  %xor83 = xor i32 %and82, 1
  %call84 = call fastcc i1 @try_check_zero(%struct.srcu_struct* noundef %ssp, i32 noundef %xor83, i32 noundef 2) #15
  br i1 %call84, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.then80
  call void @mutex_unlock(%struct.mutex* noundef %srcu_gp_mutex) #16
  br label %cleanup

if.end87:                                         ; preds = %if.then80
  call fastcc void @srcu_gp_end(%struct.srcu_struct* noundef %ssp) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.end87, %if.then85, %if.then59, %if.then45, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_reschedule(%struct.srcu_struct* noundef %ssp, i64 noundef %delay) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %0 = load i64, i64* %srcu_gp_seq, align 8
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 7
  %1 = load i64, i64* %srcu_gp_seq_needed, align 8
  %sub = sub i64 %0, %1
  %cmp = icmp sgt i64 %sub, -1
  %call = call fastcc i32 @rcu_seq_state(i64 noundef %0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end, label %if.end.thread, !prof !12

if.end.thread:                                    ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 1302; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !43
  br label %if.then31

if.end:                                           ; preds = %if.then
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %if.end33

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then26, label %if.then31

if.then26:                                        ; preds = %if.else
  call fastcc void @srcu_gp_start(%struct.srcu_struct* noundef %ssp) #15
  br label %if.then31

if.then31:                                        ; preds = %if.else, %if.end.thread, %if.then26
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rcu_gp_wq, align 8
  %work = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 15
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %2, %struct.delayed_work* noundef %work, i64 noundef %delay) #15
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_gp_start(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %0 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %1 = ptrtoint %struct.srcu_data* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to %struct.srcu_data*
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %3 = load i64, i64* %srcu_gp_seq, align 8
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 7
  %4 = load i64, i64* %srcu_gp_seq_needed, align 8
  %sub = sub i64 %3, %4
  %cmp = icmp sgt i64 %sub, -1
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 441; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rlock.i = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %2, i64 0, i32 4
  %call27 = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  call void @rcu_segcblist_advance(%struct.rcu_segcblist* noundef %srcu_cblist, i64 noundef %call27) #16
  %call30 = call fastcc i64 @rcu_seq_snap(i64* noundef %srcu_gp_seq) #15, !range !31
  %call31 = call i1 @rcu_segcblist_accelerate(%struct.rcu_segcblist* noundef %srcu_cblist, i64 noundef %call30) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !45
  call fastcc void @rcu_seq_start(i64* noundef %srcu_gp_seq) #15
  %5 = load i64, i64* %srcu_gp_seq, align 8
  %call35 = call fastcc i32 @rcu_seq_state(i64 noundef %5) #15
  %cmp37.not = icmp eq i32 %call35, 1
  br i1 %cmp37.not, label %if.end52, label %if.then51, !prof !12

if.then51:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 451; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !46
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @try_check_zero(%struct.srcu_struct* noundef %ssp, i32 noundef %idx, i32 noundef %trycount) unnamed_addr #0 {
entry:
  %call5 = call fastcc i1 @srcu_readers_active_idx_check(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) #15
  br i1 %call5, label %return, label %if.end

if.end:                                           ; preds = %entry, %if.end3
  %trycount.addr.06 = phi i32 [ %dec, %if.end3 ], [ %trycount, %entry ]
  %dec = add i32 %trycount.addr.06, -1
  %call1 = call fastcc i64 @srcu_get_delay(%struct.srcu_struct* noundef %ssp) #15
  %tobool.not = icmp eq i64 %call1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %add = add i32 %dec, %lnot.ext
  %cmp = icmp slt i32 %add, 1
  br i1 %cmp, label %return.loopexit, label %if.end3

if.end3:                                          ; preds = %if.end
  call void @__const_udelay(i64 noundef 21475) #16
  %call = call fastcc i1 @srcu_readers_active_idx_check(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) #15
  br i1 %call, label %return.loopexit, label %if.end

return.loopexit:                                  ; preds = %if.end, %if.end3
  %0 = xor i1 %cmp, true
  br label %return

return:                                           ; preds = %return.loopexit, %entry
  %call.lcssa = phi i1 [ true, %entry ], [ %0, %return.loopexit ]
  ret i1 %call.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_flip(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !47
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 5
  %0 = load i32, i32* %srcu_idx, align 8
  %add = add i32 %0, 1
  store volatile i32 %add, i32* %srcu_idx, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !48
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_seq_set_state(i64* noundef %sp, i32 noundef %newstate) unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %newstate, 4
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu.h\22; .popsection; .long 14472b - 14470b; .short 50; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, i64* %sp, align 8
  %and17 = and i64 %0, -4
  %1 = zext i32 %newstate to i64
  %add = add i64 %and17, %1
  store volatile i64 %add, i64* %sp, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_gp_end(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  %srcu_cb_mutex = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %srcu_cb_mutex) #16
  %rlock.i = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %0 = load i64, i64* %srcu_gp_seq, align 8
  %call = call fastcc i32 @rcu_seq_state(i64 noundef %0) #15
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 528; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call17 = call fastcc i64 @srcu_get_delay(%struct.srcu_struct* noundef %ssp) #15
  %call23 = call i64 @ktime_get_mono_fast_ns() #16
  %srcu_last_gp_end = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 9
  store volatile i64 %call23, i64* %srcu_last_gp_end, align 8
  call fastcc void @rcu_seq_end(i64* noundef %srcu_gp_seq) #15
  %call30 = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 8
  %1 = load i64, i64* %srcu_gp_seq_needed_exp, align 8
  %sub = sub i64 %1, %call30
  %cmp31 = icmp slt i64 %sub, 0
  br i1 %cmp31, label %do.body38, label %if.end44

do.body38:                                        ; preds = %if.end
  store volatile i64 %call30, i64* %srcu_gp_seq_needed_exp, align 8
  br label %if.end44

if.end44:                                         ; preds = %do.body38, %if.end
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %srcu_gp_mutex = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 4
  call void @mutex_unlock(%struct.mutex* noundef %srcu_gp_mutex) #16
  %arrayidx = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 0, i64 0
  %2 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom262 = sext i32 %2 to i64
  %arrayidx49263 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 0, i64 %idxprom262
  %cmp50264 = icmp ult %struct.srcu_node* %arrayidx, %arrayidx49263
  br i1 %cmp50264, label %do.body52.lr.ph, label %for.end154

do.body52.lr.ph:                                  ; preds = %if.end44
  %call46 = call fastcc i64 @rcu_seq_ctr(i64 noundef %call30) #15
  %conv47 = and i64 %call46, 3
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %add136.neg = add i64 %call30, -100
  br label %do.body52

do.body52:                                        ; preds = %do.body52.lr.ph, %for.inc153
  %snp.0265 = phi %struct.srcu_node* [ %arrayidx, %do.body52.lr.ph ], [ %incdec.ptr, %for.inc153 ]
  %rlock.i252 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0265, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i252) #16
  %3 = load i32, i32* @rcu_num_lvls, align 4
  %sub59 = add i32 %3, -1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 1, i64 %idxprom60
  %4 = load %struct.srcu_node*, %struct.srcu_node** %arrayidx61, align 8
  %cmp62.not = icmp ult %struct.srcu_node* %snp.0265, %4
  br i1 %cmp62.not, label %if.end71, label %if.then65

if.then65:                                        ; preds = %do.body52
  %arrayidx67 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0265, i64 0, i32 1, i64 %conv47
  %5 = load i64, i64* %arrayidx67, align 8
  %cmp68 = icmp eq i64 %5, %call30
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %do.body52
  %cbs.0.off0 = phi i1 [ %cmp68, %if.then65 ], [ false, %do.body52 ]
  %arrayidx74 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0265, i64 0, i32 1, i64 %conv47
  store i64 %call30, i64* %arrayidx74, align 8
  call fastcc void @rcu_seq_set_state(i64* noundef %arrayidx74, i32 noundef 1) #15
  %srcu_gp_seq_needed_exp78 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0265, i64 0, i32 3
  %6 = load i64, i64* %srcu_gp_seq_needed_exp78, align 8
  %sub79 = sub i64 %6, %call30
  %cmp80 = icmp slt i64 %sub79, 0
  br i1 %cmp80, label %do.body87, label %if.end93

do.body87:                                        ; preds = %if.end71
  store volatile i64 %call30, i64* %srcu_gp_seq_needed_exp78, align 8
  br label %if.end93

if.end93:                                         ; preds = %do.body87, %if.end71
  %arrayidx95 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0265, i64 0, i32 2, i64 %conv47
  %7 = load i64, i64* %arrayidx95, align 8
  store i64 0, i64* %arrayidx95, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i252) #16
  br i1 %cbs.0.off0, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end93
  call fastcc void @srcu_schedule_cbs_snp(%struct.srcu_struct* noundef %ssp, %struct.srcu_node* noundef %snp.0265, i64 noundef %7, i64 noundef %call17) #15
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end93
  %8 = load i64, i64* @counter_wrap_check, align 8
  %and = and i64 %8, %call30
  %tobool103.not = icmp ne i64 %and, 0
  %brmerge = select i1 %tobool103.not, i1 true, i1 %cmp62.not
  br i1 %brmerge, label %for.inc153, label %if.then106

if.then106:                                       ; preds = %if.end102
  %grplo = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0265, i64 0, i32 5
  %9 = load i32, i32* %grplo, align 8
  %grphi = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0265, i64 0, i32 6
  %10 = load i32, i32* %grphi, align 4
  %cmp108.not260 = icmp sgt i32 %9, %10
  br i1 %cmp108.not260, label %for.inc153, label %do.body111

do.body111:                                       ; preds = %if.then106, %if.end150
  %cpu.0261 = phi i32 [ %inc, %if.end150 ], [ %9, %if.then106 ]
  %11 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %12 = ptrtoint %struct.srcu_data* %11 to i64
  %idxprom116 = sext i32 %cpu.0261 to i64
  %arrayidx117 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom116
  %13 = load i64, i64* %arrayidx117, align 8
  %add = add i64 %13, %12
  %14 = inttoptr i64 %add to %struct.srcu_data*
  %rlock.i254 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %14, i64 0, i32 3, i32 0, i32 0
  %call126 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i254) #15
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %14, i64 0, i32 5
  %15 = load i64, i64* %srcu_gp_seq_needed, align 64
  %sub137 = sub i64 %add136.neg, %15
  %cmp138 = icmp sgt i64 %sub137, -1
  br i1 %cmp138, label %if.then140, label %if.end142

if.then140:                                       ; preds = %do.body111
  store i64 %call30, i64* %srcu_gp_seq_needed, align 64
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %do.body111
  %srcu_gp_seq_needed_exp143 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %14, i64 0, i32 6
  %16 = load i64, i64* %srcu_gp_seq_needed_exp143, align 8
  %sub145 = sub i64 %add136.neg, %16
  %cmp146 = icmp sgt i64 %sub145, -1
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %if.end142
  store i64 %call30, i64* %srcu_gp_seq_needed_exp143, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end142
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i254, i64 noundef %call126) #16
  %inc = add i32 %cpu.0261, 1
  %17 = load i32, i32* %grphi, align 4
  %cmp108.not = icmp sgt i32 %inc, %17
  br i1 %cmp108.not, label %for.inc153, label %do.body111

for.inc153:                                       ; preds = %if.end150, %if.then106, %if.end102
  %incdec.ptr = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0265, i64 1
  %18 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx49 = getelementptr %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 0, i64 %idxprom
  %cmp50 = icmp ult %struct.srcu_node* %incdec.ptr, %arrayidx49
  br i1 %cmp50, label %do.body52, label %for.end154

for.end154:                                       ; preds = %for.inc153, %if.end44
  call void @mutex_unlock(%struct.mutex* noundef %srcu_cb_mutex) #16
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %call164 = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  %call165 = call fastcc i32 @rcu_seq_state(i64 noundef %call164) #15
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %land.lhs.true167, label %if.else

land.lhs.true167:                                 ; preds = %for.end154
  %srcu_gp_seq_needed168 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 7
  %19 = load i64, i64* %srcu_gp_seq_needed168, align 8
  %sub169 = sub i64 %call164, %19
  %cmp170 = icmp slt i64 %sub169, 0
  br i1 %cmp170, label %if.then172, label %if.else

if.then172:                                       ; preds = %land.lhs.true167
  call fastcc void @srcu_gp_start(%struct.srcu_struct* noundef %ssp) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  call fastcc void @srcu_reschedule(%struct.srcu_struct* noundef %ssp, i64 noundef 0) #15
  br label %if.end175

if.else:                                          ; preds = %land.lhs.true167, %for.end154
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %if.end175

if.end175:                                        ; preds = %if.else, %if.then172
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_advance(%struct.rcu_segcblist* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_segcblist_accelerate(%struct.rcu_segcblist* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !51
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !52
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !53
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @srcu_readers_active_idx_check(%struct.srcu_struct* nocapture noundef readonly %ssp, i32 noundef %idx) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @srcu_readers_unlock_idx(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !55
  %call1 = call fastcc i64 @srcu_readers_lock_idx(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) #15
  %cmp = icmp eq i64 %call1, %call
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @srcu_readers_unlock_idx(%struct.srcu_struct* nocapture noundef readonly %ssp, i32 noundef %idx) unnamed_addr #3 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call17 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp18 = icmp ult i32 %call17, %0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %1 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %2 = ptrtoint %struct.srcu_data* %1 to i64
  %idxprom6 = sext i32 %idx to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call20 = phi i32 [ %call17, %for.body.lr.ph ], [ %call, %for.body ]
  %sum.019 = phi i64 [ 0, %for.body.lr.ph ], [ %add8, %for.body ]
  %idxprom = sext i32 %call20 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.srcu_data*
  %arrayidx7 = getelementptr %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 1, i64 %idxprom6
  %5 = load volatile i64, i64* %arrayidx7, align 8
  %add8 = add i64 %5, %sum.019
  %call = call i32 @cpumask_next(i32 noundef %call20, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %sum.0.lcssa = phi i64 [ 0, %entry ], [ %add8, %for.body ]
  ret i64 %sum.0.lcssa
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @srcu_readers_lock_idx(%struct.srcu_struct* nocapture noundef readonly %ssp, i32 noundef %idx) unnamed_addr #3 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call17 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp18 = icmp ult i32 %call17, %0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  %1 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %2 = ptrtoint %struct.srcu_data* %1 to i64
  %idxprom6 = sext i32 %idx to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call20 = phi i32 [ %call17, %for.body.lr.ph ], [ %call, %for.body ]
  %sum.019 = phi i64 [ 0, %for.body.lr.ph ], [ %add8, %for.body ]
  %idxprom = sext i32 %call20 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.srcu_data*
  %arrayidx7 = getelementptr %struct.srcu_data, %struct.srcu_data* %4, i64 0, i32 0, i64 %idxprom6
  %5 = load volatile i64, i64* %arrayidx7, align 8
  %add8 = add i64 %5, %sum.019
  %call = call i32 @cpumask_next(i32 noundef %call20, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %sum.0.lcssa = phi i64 [ 0, %entry ], [ %add8, %for.body ]
  ret i64 %sum.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @rcu_seq_ctr(i64 noundef %s) unnamed_addr #6 {
entry:
  %shr = lshr i64 %s, 2
  ret i64 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_schedule_cbs_snp(%struct.srcu_struct* nocapture noundef readonly %ssp, %struct.srcu_node* nocapture noundef readonly %snp, i64 noundef %mask, i64 noundef %delay) unnamed_addr #0 {
entry:
  %grplo = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp, i64 0, i32 5
  %0 = load i32, i32* %grplo, align 8
  %grphi = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp, i64 0, i32 6
  %1 = load i32, i32* %grphi, align 4
  %cmp.not11 = icmp sgt i32 %0, %1
  br i1 %cmp.not11, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sda = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %8, %for.inc.for.body_crit_edge ]
  %3 = phi i32 [ %0, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %cpu.012 = phi i32 [ %0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sub = sub i32 %cpu.012, %3
  %shl = shl nuw i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %conv, %mask
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  %4 = load %struct.srcu_data*, %struct.srcu_data** %sda, align 8
  %5 = ptrtoint %struct.srcu_data* %4 to i64
  %idxprom = sext i32 %cpu.012 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %5
  %7 = inttoptr i64 %add to %struct.srcu_data*
  call fastcc void @srcu_schedule_cbs_sdp(%struct.srcu_data* noundef %7, i64 noundef %delay) #15
  %.pre14 = load i32, i32* %grphi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.body
  %8 = phi i32 [ %2, %for.body ], [ %.pre14, %do.body ]
  %inc = add i32 %cpu.012, 1
  %cmp.not = icmp sgt i32 %inc, %8
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i32, i32* %grplo, align 8
  br label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !56
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_schedule_cbs_sdp(%struct.srcu_data* noundef %sdp, i64 noundef %delay) unnamed_addr #0 {
entry:
  call fastcc void @srcu_queue_delayed_work_on(%struct.srcu_data* noundef %sdp, i64 noundef %delay) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_queue_delayed_work_on(%struct.srcu_data* noundef %sdp, i64 noundef %delay) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %delay, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cpu = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %sdp, i64 0, i32 13
  %0 = load i32, i32* %cpu, align 64
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rcu_gp_wq, align 8
  %work = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %sdp, i64 0, i32 9
  %call = call i1 @queue_work_on(i32 noundef %0, %struct.workqueue_struct* noundef %1, %struct.work_struct* noundef %work) #16
  br label %return

if.end:                                           ; preds = %entry
  %delay_work = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %sdp, i64 0, i32 8
  %2 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %2, 1
  %call1 = call i32 @timer_reduce(%struct.timer_list* noundef %delay_work, i64 noundef %add) #16
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #15
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #17, !srcloc !57
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #17, !srcloc !58
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #15
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #17, !srcloc !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !60
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #17, !srcloc !61
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_init_geometry() local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @rcu_init_levelspread(i32* nocapture noundef writeonly %levelspread) unnamed_addr #12 {
entry:
  store i32 -2147483648, i32* %levelspread, align 4
  %arrayidx.1 = getelementptr i32, i32* %levelspread, i64 1
  store i32 -2147483648, i32* %arrayidx.1, align 4
  %0 = load i32, i32* @rcu_num_lvls, align 4
  %i.23 = add i32 %0, -1
  %cmp134 = icmp sgt i32 %i.23, -1
  br i1 %cmp134, label %for.body14.preheader, label %if.end

for.body14.preheader:                             ; preds = %entry
  %1 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.body14

for.body14:                                       ; preds = %for.body14.preheader, %for.body14
  %i.26 = phi i32 [ %i.2, %for.body14 ], [ %i.23, %for.body14.preheader ]
  %cprv.05 = phi i32 [ %2, %for.body14 ], [ %1, %for.body14.preheader ]
  %idxprom151 = zext i32 %i.26 to i64
  %arrayidx16 = getelementptr [0 x i32], [0 x i32]* @num_rcu_lvl, i64 0, i64 %idxprom151
  %2 = load i32, i32* %arrayidx16, align 4
  %add = add i32 %cprv.05, -1
  %sub17 = add i32 %add, %2
  %div = sdiv i32 %sub17, %2
  %arrayidx19 = getelementptr i32, i32* %levelspread, i64 %idxprom151
  store i32 %div, i32* %arrayidx19, align 4
  %i.2 = add nsw i32 %i.26, -1
  %cmp13 = icmp sgt i32 %i.26, 0
  br i1 %cmp13, label %for.body14, label %if.end

if.end:                                           ; preds = %for.body14, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_init(%struct.rcu_segcblist* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @srcu_invoke_callbacks(%struct.work_struct* noundef %work) #0 {
entry:
  %ready_cbs = alloca %struct.rcu_cblist, align 8
  %0 = bitcast %struct.rcu_cblist* %ready_cbs to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !25
  %add.ptr86 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -8
  %1 = bitcast %struct.work_struct* %add.ptr86 to %struct.srcu_data*
  %ssp1 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 2, i32 1
  %2 = bitcast %struct.list_head* %ssp1 to %struct.srcu_struct**
  %3 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  call void @rcu_cblist_init(%struct.rcu_cblist* noundef nonnull %ready_cbs) #16
  %lock = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -6
  %rlock.i = bitcast %struct.work_struct* %lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %srcu_cblist = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -6, i32 1
  %4 = bitcast %struct.list_head* %srcu_cblist to %struct.rcu_segcblist*
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %3, i64 0, i32 6
  %call = call fastcc i64 @rcu_seq_current(i64* noundef %srcu_gp_seq) #15
  call void @rcu_segcblist_advance(%struct.rcu_segcblist* noundef %4, i64 noundef %call) #16
  %srcu_cblist_invoking = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2, i32 1, i32 1
  %5 = bitcast %struct.list_head** %srcu_cblist_invoking to i8*
  %6 = load i8, i8* %5, align 16, !range !62
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call9 = call i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef %4) #16
  br i1 %call9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i8 1, i8* %5, align 16
  call void @rcu_segcblist_extract_done_cbs(%struct.rcu_segcblist* noundef %4, %struct.rcu_cblist* noundef nonnull %ready_cbs) #16
  %len13 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %ready_cbs, i64 0, i32 2
  %7 = load i64, i64* %len13, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %call15 = call %struct.callback_head* @rcu_cblist_dequeue(%struct.rcu_cblist* noundef nonnull %ready_cbs) #16
  %cmp.not91 = icmp eq %struct.callback_head* %call15, null
  br i1 %cmp.not91, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %rhp.092 = phi %struct.callback_head* [ %call16, %for.body ], [ %call15, %if.end ]
  call fastcc void @local_bh_disable() #15
  %func = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp.092, i64 0, i32 1
  %8 = load void (%struct.callback_head*)*, void (%struct.callback_head*)** %func, align 8
  call void %8(%struct.callback_head* noundef nonnull %rhp.092) #16
  call fastcc void @local_bh_enable() #15
  %call16 = call %struct.callback_head* @rcu_cblist_dequeue(%struct.rcu_cblist* noundef nonnull %ready_cbs) #16
  %cmp.not = icmp eq %struct.callback_head* %call16, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %9 = load i64, i64* %len13, align 8
  %tobool18.not = icmp eq i64 %9, 0
  br i1 %tobool18.not, label %if.end27, label %if.then26, !prof !12

if.then26:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 1275; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !63
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.end
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  %sub = sub i64 0, %7
  call void @rcu_segcblist_add_len(%struct.rcu_segcblist* noundef %4, i64 noundef %sub) #16
  %call46 = call fastcc i64 @rcu_seq_snap(i64* noundef %srcu_gp_seq) #15, !range !31
  %call47 = call i1 @rcu_segcblist_accelerate(%struct.rcu_segcblist* noundef %4, i64 noundef %call46) #16
  store i8 0, i8* %5, align 16
  %call50 = call i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef %4) #16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #16
  br i1 %call50, label %if.then53, label %cleanup

if.then53:                                        ; preds = %if.end27
  call fastcc void @srcu_schedule_cbs_sdp(%struct.srcu_data* noundef %1, i64 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then53, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @srcu_delay_timer(%struct.timer_list* noundef %t) #0 {
entry:
  %add.ptr = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -6, i32 2
  %cpu = getelementptr inbounds void (%struct.timer_list*)*, void (%struct.timer_list*)** %add.ptr, i64 40
  %0 = bitcast void (%struct.timer_list*)** %cpu to i32*
  %1 = load i32, i32* %0, align 64
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rcu_gp_wq, align 8
  %work = getelementptr inbounds void (%struct.timer_list*)*, void (%struct.timer_list*)** %add.ptr, i64 32
  %3 = bitcast void (%struct.timer_list*)** %work to %struct.work_struct*
  %call = call i1 @queue_work_on(i32 noundef %1, %struct.workqueue_struct* noundef %2, %struct.work_struct* noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_cblist_init(%struct.rcu_cblist* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_extract_done_cbs(%struct.rcu_segcblist* noundef, %struct.rcu_cblist* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.callback_head* @rcu_cblist_dequeue(%struct.rcu_cblist* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_disable() unnamed_addr #0 {
__here:
  call fastcc void @__preempt_count_add() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_enable() #0 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  call void @__local_bh_enable_ip(i64 noundef ptrtoint (i8* blockaddress(@local_bh_enable, %__here) to i64), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_add_len(%struct.rcu_segcblist* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !65
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.6* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeme_after_rcu(%struct.callback_head* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_segcblist_pend_cbs(%struct.rcu_segcblist* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @srcu_read_lock(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  %call = call i32 @__srcu_read_lock(%struct.srcu_struct* noundef %ssp) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_enqueue(%struct.rcu_segcblist* noundef, %struct.callback_head* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_funnel_gp_start(%struct.srcu_struct* noundef %ssp, %struct.srcu_data* noundef %sdp, i64 noundef %s, i1 noundef %do_norm) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @rcu_seq_ctr(i64 noundef %s) #15
  %conv = and i64 %call, 3
  %mynode = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %sdp, i64 0, i32 11
  %snp.0271 = load %struct.srcu_node*, %struct.srcu_node** %mynode, align 8
  %cmp.not272 = icmp eq %struct.srcu_node* %snp.0271, null
  br i1 %cmp.not272, label %do.body84, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %grpmask58 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %sdp, i64 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end80
  %snp.0273 = phi %struct.srcu_node* [ %snp.0271, %for.body.lr.ph ], [ %snp.0, %if.end80 ]
  %call2 = call fastcc i1 @rcu_seq_done(i64* noundef %srcu_gp_seq, i64 noundef %s) #15
  br i1 %call2, label %land.lhs.true, label %do.body8

land.lhs.true:                                    ; preds = %for.body
  %0 = load %struct.srcu_node*, %struct.srcu_node** %mynode, align 16
  %cmp5.not = icmp eq %struct.srcu_node* %snp.0273, %0
  br i1 %cmp5.not, label %do.body8, label %cleanup

do.body8:                                         ; preds = %for.body, %land.lhs.true
  %rlock.i = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0273, i64 0, i32 0, i32 0, i32 0
  %call12 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #15
  %arrayidx = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0273, i64 0, i32 1, i64 %conv
  %1 = load i64, i64* %arrayidx, align 8
  %sub = sub i64 %1, %s
  %cmp20 = icmp sgt i64 %sub, -1
  br i1 %cmp20, label %if.then22, label %if.end50

if.then22:                                        ; preds = %do.body8
  %2 = load %struct.srcu_node*, %struct.srcu_node** %mynode, align 16
  %cmp27 = icmp eq %struct.srcu_node* %snp.0273, %2
  %cmp30 = icmp eq i64 %1, %s
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then22
  %3 = load i64, i64* %grpmask58, align 8
  %arrayidx34 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0273, i64 0, i32 2, i64 %conv
  %4 = load i64, i64* %arrayidx34, align 8
  %or = or i64 %4, %3
  store i64 %or, i64* %arrayidx34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call12) #16
  %5 = load %struct.srcu_node*, %struct.srcu_node** %mynode, align 16
  %cmp38 = icmp ne %struct.srcu_node* %snp.0273, %5
  %or.cond263 = select i1 %cmp38, i1 true, i1 %cmp30
  br i1 %or.cond263, label %if.end46, label %if.then43

if.then43:                                        ; preds = %if.end35
  %6 = zext i1 %do_norm to i64
  call fastcc void @srcu_schedule_cbs_sdp(%struct.srcu_data* noundef %sdp, i64 noundef %6) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  br i1 %do_norm, label %cleanup, label %if.then48

if.then48:                                        ; preds = %if.end46
  call fastcc void @srcu_funnel_exp_start(%struct.srcu_struct* noundef %ssp, %struct.srcu_node* noundef nonnull %snp.0273, i64 noundef %s) #15
  br label %cleanup

if.end50:                                         ; preds = %do.body8
  store i64 %s, i64* %arrayidx, align 8
  %7 = load %struct.srcu_node*, %struct.srcu_node** %mynode, align 16
  %cmp55 = icmp eq %struct.srcu_node* %snp.0273, %7
  br i1 %cmp55, label %if.then57, label %if.end63

if.then57:                                        ; preds = %if.end50
  %8 = load i64, i64* %grpmask58, align 8
  %arrayidx61 = getelementptr %struct.srcu_node, %struct.srcu_node* %snp.0273, i64 0, i32 2, i64 %conv
  %9 = load i64, i64* %arrayidx61, align 8
  %or62 = or i64 %9, %8
  store i64 %or62, i64* %arrayidx61, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.end50
  br i1 %do_norm, label %if.end80, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %if.end63
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0273, i64 0, i32 3
  %10 = load i64, i64* %srcu_gp_seq_needed_exp, align 8
  %sub66 = sub i64 %10, %s
  %cmp67 = icmp slt i64 %sub66, 0
  br i1 %cmp67, label %do.body74, label %if.end80

do.body74:                                        ; preds = %land.lhs.true65
  store volatile i64 %s, i64* %srcu_gp_seq_needed_exp, align 8
  br label %if.end80

if.end80:                                         ; preds = %do.body74, %land.lhs.true65, %if.end63
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call12) #16
  %srcu_parent = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.0273, i64 0, i32 4
  %snp.0 = load %struct.srcu_node*, %struct.srcu_node** %srcu_parent, align 8
  %cmp.not = icmp eq %struct.srcu_node* %snp.0, null
  br i1 %cmp.not, label %do.body84, label %for.body

do.body84:                                        ; preds = %if.end80, %entry
  %rlock.i266 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 3, i32 0, i32 0
  %call92 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i266) #15
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 7
  %11 = load i64, i64* %srcu_gp_seq_needed, align 8
  %sub102 = sub i64 %11, %s
  %cmp103 = icmp slt i64 %sub102, 0
  br i1 %cmp103, label %do.body106, label %if.end114

do.body106:                                       ; preds = %do.body84
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %srcu_gp_seq_needed, i64 %s) #17, !srcloc !66
  br label %if.end114

if.end114:                                        ; preds = %do.body106, %do.body84
  br i1 %do_norm, label %if.end132, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.end114
  %srcu_gp_seq_needed_exp117 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 8
  %12 = load i64, i64* %srcu_gp_seq_needed_exp117, align 8
  %sub118 = sub i64 %12, %s
  %cmp119 = icmp slt i64 %sub118, 0
  br i1 %cmp119, label %do.body126, label %if.end132

do.body126:                                       ; preds = %land.lhs.true116
  store volatile i64 %s, i64* %srcu_gp_seq_needed_exp117, align 8
  br label %if.end132

if.end132:                                        ; preds = %do.body126, %land.lhs.true116, %if.end114
  %srcu_gp_seq133 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  %call134 = call fastcc i1 @rcu_seq_done(i64* noundef %srcu_gp_seq133, i64 noundef %s) #15
  br i1 %call134, label %if.end186, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %if.end132
  %13 = load i64, i64* %srcu_gp_seq133, align 8
  %call137 = call fastcc i32 @rcu_seq_state(i64 noundef %13) #15
  %cmp138 = icmp eq i32 %call137, 0
  br i1 %cmp138, label %if.then140, label %if.end186

if.then140:                                       ; preds = %land.lhs.true135
  %14 = load i64, i64* %srcu_gp_seq_needed, align 8
  %sub143 = sub i64 %13, %14
  %cmp144 = icmp sgt i64 %sub143, -1
  br i1 %cmp144, label %if.then154, label %if.end155, !prof !9

if.then154:                                       ; preds = %if.then140
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/srcutree.c\22; .popsection; .long 14472b - 14470b; .short 679; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !67
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.then140
  call fastcc void @srcu_gp_start(%struct.srcu_struct* noundef %ssp) #15
  %.b262 = load i1, i1* @srcu_init_done, align 1
  br i1 %.b262, label %if.then172, label %if.else, !prof !12

if.then172:                                       ; preds = %if.end155
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rcu_gp_wq, align 8
  %work = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 15
  %call173 = call fastcc i64 @srcu_get_delay(%struct.srcu_struct* noundef %ssp) #15, !range !40
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %15, %struct.delayed_work* noundef %work, i64 noundef %call173) #15
  br label %if.end186

if.else:                                          ; preds = %if.end155
  %entry177 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 15, i32 0, i32 1
  %call178 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry177) #15
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end186, label %if.then180

if.then180:                                       ; preds = %if.else
  call fastcc void @list_add(%struct.list_head* noundef %entry177) #15
  br label %if.end186

if.end186:                                        ; preds = %if.then172, %if.then180, %if.else, %land.lhs.true135, %if.end132
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i266, i64 noundef %call92) #16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end46, %if.then48, %if.end186, %if.then43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_funnel_exp_start(%struct.srcu_struct* noundef %ssp, %struct.srcu_node* noundef %snp, i64 noundef %s) unnamed_addr #0 {
entry:
  %cmp.not96 = icmp eq %struct.srcu_node* %snp, null
  br i1 %cmp.not96, label %do.body38, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %do.body29
  %snp.addr.097 = phi %struct.srcu_node* [ %snp, %for.body.lr.ph ], [ %2, %do.body29 ]
  %call = call fastcc i1 @rcu_seq_done(i64* noundef %srcu_gp_seq, i64 noundef %s) #15
  br i1 %call, label %cleanup, label %do.end

do.end:                                           ; preds = %for.body
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.addr.097, i64 0, i32 3
  %0 = load volatile i64, i64* %srcu_gp_seq_needed_exp, align 8
  %sub = sub i64 %0, %s
  %cmp1 = icmp sgt i64 %sub, -1
  br i1 %cmp1, label %cleanup, label %do.body4

do.body4:                                         ; preds = %do.end
  %rlock.i = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.addr.097, i64 0, i32 0, i32 0, i32 0
  %call8 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #15
  %1 = load i64, i64* %srcu_gp_seq_needed_exp, align 8
  %sub19 = sub i64 %1, %s
  %cmp20 = icmp sgt i64 %sub19, -1
  br i1 %cmp20, label %if.then22, label %do.body29

if.then22:                                        ; preds = %do.body4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call8) #16
  br label %cleanup

do.body29:                                        ; preds = %do.body4
  store volatile i64 %s, i64* %srcu_gp_seq_needed_exp, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call8) #16
  %srcu_parent = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %snp.addr.097, i64 0, i32 4
  %2 = load %struct.srcu_node*, %struct.srcu_node** %srcu_parent, align 8
  %cmp.not = icmp eq %struct.srcu_node* %2, null
  br i1 %cmp.not, label %do.body38, label %for.body

do.body38:                                        ; preds = %do.body29, %entry
  %rlock.i94 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 3, i32 0, i32 0
  %call46 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i94) #15
  %srcu_gp_seq_needed_exp56 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %ssp, i64 0, i32 8
  %3 = load i64, i64* %srcu_gp_seq_needed_exp56, align 8
  %sub57 = sub i64 %3, %s
  %cmp58 = icmp slt i64 %sub57, 0
  br i1 %cmp58, label %do.body65, label %if.end71

do.body65:                                        ; preds = %do.body38
  store volatile i64 %s, i64* %srcu_gp_seq_needed_exp56, align 8
  br label %if.end71

if.end71:                                         ; preds = %do.body65, %do.body38
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i94, i64 noundef %call46) #16
  br label %cleanup

cleanup:                                          ; preds = %for.body, %do.end, %if.end71, %if.then22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_read_unlock(%struct.srcu_struct* nocapture noundef readonly %ssp, i32 noundef %idx) unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %idx, 2
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/srcu.h\22; .popsection; .long 14472b - 14470b; .short 188; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !68
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @__srcu_read_unlock(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #10 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @srcu_boot_list, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @srcu_boot_list, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @srcu_boot_list, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !69
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !70
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @arch_local_irq_enable() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #17, !srcloc !73
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !74
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rcu_seq_endval(i64* nocapture noundef readonly %sp) unnamed_addr #14 {
entry:
  %0 = load i64, i64* %sp, align 8
  %or = or i64 %0, 3
  %add = add i64 %or, 1
  ret i64 %add
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind readonly }
attributes #21 = { nounwind readnone }

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
!8 = !{i64 2152536711}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152578966}
!11 = !{i64 2152580581}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2152583152}
!14 = !{i64 2152588453}
!15 = !{i64 2152590068}
!16 = !{i32 0, i32 4}
!17 = !{i64 2152601614}
!18 = !{i64 2152602596}
!19 = !{i64 2152602646}
!20 = !{i64 2148929522, i64 2148929563, i64 2148929619, i64 2148929671}
!21 = !{i64 2148903576, i64 2148903623, i64 2148903629, i64 2148903666, i64 2148903684, i64 2148904611, i64 2148904659, i64 2148904707, i64 2148904770, i64 2148904819, i64 2148903762, i64 2148903787, i64 2148903813, i64 2148903819, i64 2148903856, i64 2148903862, i64 2148903912, i64 2148903958, i64 2148903991}
!22 = !{i64 2152602812}
!23 = !{i64 2152608087}
!24 = !{i64 2152609089}
!25 = !{!"auto-init"}
!26 = !{i64 2152672553}
!27 = !{i64 2152662283}
!28 = !{i64 2152666324}
!29 = !{i64 2152672838}
!30 = !{i64 2152452781}
!31 = !{i64 0, i64 -3}
!32 = !{i64 2152673157}
!33 = !{i64 2152675427}
!34 = !{i64 2152541637}
!35 = !{i64 2152444721}
!36 = !{i64 2152446105}
!37 = !{i64 2152446826}
!38 = !{i64 2152448206}
!39 = !{i64 2152705236}
!40 = !{i64 0, i64 2}
!41 = !{i64 2152680146}
!42 = !{i64 2152684390}
!43 = !{i64 2152698964}
!44 = !{i64 2152611465}
!45 = !{i64 2152612037}
!46 = !{i64 2152613434}
!47 = !{i64 2152651114}
!48 = !{i64 2152653083}
!49 = !{i64 2152440845}
!50 = !{i64 2152617939}
!51 = !{i64 2149482205}
!52 = !{i64 2147904817, i64 2147904850, i64 2147904903, i64 2147904962, i64 2147904996, i64 2147905051, i64 2147905080, i64 2147905100}
!53 = !{i64 2149489486}
!54 = !{i64 2149436346}
!55 = !{i64 2152553114}
!56 = !{i64 2149467204}
!57 = !{i64 2149376167, i64 2149376214, i64 2149376220, i64 2149376257, i64 2149376275, i64 2149377586, i64 2149377634, i64 2149377682, i64 2149377745, i64 2149377794, i64 2149376353, i64 2149376378, i64 2149376404, i64 2149376410, i64 2149377252, i64 2149377292, i64 2149377310, i64 2149377342, i64 2149377370, i64 2149377424, i64 2149377444, i64 2149377541, i64 2149376433, i64 2149376447, i64 2149376453, i64 2149376503, i64 2149376549, i64 2149376582}
!58 = !{i64 2149378346, i64 2149378393, i64 2149378399, i64 2149378436, i64 2149378454, i64 2149379397, i64 2149379445, i64 2149379493, i64 2149379556, i64 2149379605, i64 2149378532, i64 2149378557, i64 2149378583, i64 2149378589, i64 2149378626, i64 2149378632, i64 2149378682, i64 2149378728, i64 2149378761}
!59 = !{i64 2149370464, i64 2149370511, i64 2149370517, i64 2149370554, i64 2149370572, i64 2149371913, i64 2149371961, i64 2149372009, i64 2149372072, i64 2149372121, i64 2149370650, i64 2149370675, i64 2149370701, i64 2149370707, i64 2149371579, i64 2149371619, i64 2149371637, i64 2149371669, i64 2149371697, i64 2149371751, i64 2149371771, i64 2149371868, i64 2149370730, i64 2149370744, i64 2149370750, i64 2149370800, i64 2149370846, i64 2149370879}
!60 = !{i64 2149493047}
!61 = !{i64 2149382180, i64 2149382227, i64 2149382233, i64 2149382270, i64 2149382288, i64 2149383599, i64 2149383647, i64 2149383695, i64 2149383758, i64 2149383807, i64 2149382366, i64 2149382391, i64 2149382417, i64 2149382423, i64 2149383265, i64 2149383305, i64 2149383323, i64 2149383355, i64 2149383383, i64 2149383437, i64 2149383457, i64 2149383554, i64 2149382446, i64 2149382460, i64 2149382466, i64 2149382516, i64 2149382562, i64 2149382595}
!62 = !{i8 0, i8 2}
!63 = !{i64 2152696798}
!64 = !{i64 2149385955}
!65 = !{i64 177438}
!66 = !{i64 2152643021}
!67 = !{i64 2152650402}
!68 = !{i64 2150980630}
!69 = !{i64 2149471497}
!70 = !{i64 2147808955, i64 2147809471, i64 2147809501, i64 2147809528, i64 2147809562, i64 2147809592}
!71 = !{i64 2147818676, i64 2147819192, i64 2147819222, i64 2147819249, i64 2147819283, i64 2147819313}
!72 = !{i64 2149496350}
!73 = !{i64 2149356947, i64 2149356994, i64 2149357000, i64 2149357037, i64 2149357055, i64 2149358395, i64 2149358443, i64 2149358491, i64 2149358554, i64 2149358603, i64 2149357133, i64 2149357158, i64 2149357184, i64 2149357190, i64 2149358061, i64 2149358101, i64 2149358119, i64 2149358151, i64 2149358179, i64 2149358233, i64 2149358253, i64 2149358350, i64 2149357213, i64 2149357227, i64 2149357233, i64 2149357283, i64 2149357329, i64 2149357362}
!74 = !{i64 2147819528, i64 2147820176, i64 2147820206, i64 2147820238, i64 2147820272, i64 2147820308, i64 2147820333}
