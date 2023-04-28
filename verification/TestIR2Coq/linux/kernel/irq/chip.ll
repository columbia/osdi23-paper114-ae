; ModuleID = 'kernel/irq/chip.c'
source_filename = "kernel/irq/chip.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.60, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.1, [0 x i64] }
%struct.anon.1 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.2, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.2 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
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
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.37, %struct.list_head, %struct.list_head, %union.anon.38 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.lockref = type { %union.anon.35 }
%union.anon.35 = type { i64 }
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.27, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.28, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.29, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.34, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.27 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.28 = type { %struct.callback_head }
%union.anon.29 = type { %struct.file_operations* }
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
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.34 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.32 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.30, %struct.qspinlock }
%union.anon.30 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.32 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.45, %union.anon.46, i32 }
%struct.request_queue = type opaque
%union.anon.45 = type { %struct.list_head }
%union.anon.46 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.59, i32, [12 x i8] }
%union.anon.59 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.61, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.61 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.proc_dir_entry = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.62, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.62 = type { %struct.kernfs_elem_dir }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.66 }
%struct.msi_msg = type { %union.anon.63, %union.anon.64, %union.anon.65 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i32 }
%union.anon.65 = type { i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { %union.anon.68, %struct.anon.69, %union.anon.70 }
%union.anon.68 = type { i32 }
%struct.anon.69 = type { i16, i16, i32 }
%union.anon.70 = type { i8* }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kernel_stat = type { i64, [10 x i32] }

@chained_action = dso_local global %struct.irqaction { i32 (i32, i8*)* @bad_chained_irq, i8* null, i8* null, %struct.irqaction* null, i32 (i32, i8*)* null, %struct.task_struct* null, %struct.irqaction* null, i32 0, i32 0, i64 0, i64 0, i8* null, %struct.proc_dir_entry* null, [32 x i8] undef }, align 64
@no_irq_chip = external dso_local global %struct.irq_chip, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@handle_percpu_devid_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [36 x i8] c"\013Spurious%s percpu IRQ%u on CPU%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" and unmasked\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@bad_chained_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Chained irq %d should not call an action\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @bad_chained_irq(i32 noundef %irq, i8* nocapture noundef readnone %dev_id) #0 {
entry:
  %.b39 = load i1, i1* @bad_chained_irq.__already_done, align 1
  br i1 %.b39, label %if.end27, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  store i1 true, i1* @bad_chained_irq.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 noundef %irq) #12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/chip.c\22; .popsection; .long 14472b - 14470b; .short 24; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !9
  br label %if.end27

if.end27:                                         ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_chip(i32 noundef %irq, %struct.irq_chip* noundef %chip) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !10
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #14
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.irq_chip* %chip, null
  %spec.store.select = select i1 %tobool1.not, %struct.irq_chip* @no_irq_chip, %struct.irq_chip* %chip
  %chip4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1, i32 4
  store %struct.irq_chip* %spec.store.select, %struct.irq_chip** %chip4, align 8
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef %flags, i32 noundef %check) unnamed_addr #0 {
entry:
  %call = call %struct.irq_desc* @__irq_get_desc_lock(i32 noundef %irq, i64* noundef %flags, i1 noundef false, i32 noundef %check) #12
  ret %struct.irq_desc* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef %desc, i64 noundef %flags) unnamed_addr #0 {
entry:
  call void @__irq_put_desc_unlock(%struct.irq_desc* noundef %desc, i64 noundef %flags, i1 noundef false) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_irq_type(i32 noundef %irq, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !10
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 1) #14
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i32 %type to i64
  %call1 = call i32 @__irq_set_trigger(%struct.irq_desc* noundef nonnull %call, i64 noundef %conv) #12
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef %flags, i32 noundef %check) unnamed_addr #0 {
entry:
  %call = call %struct.irq_desc* @__irq_get_desc_lock(i32 noundef %irq, i64* noundef %flags, i1 noundef true, i32 noundef %check) #12
  ret %struct.irq_desc* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_set_trigger(%struct.irq_desc* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef %desc, i64 noundef %flags) unnamed_addr #0 {
entry:
  call void @__irq_put_desc_unlock(%struct.irq_desc* noundef %desc, i64 noundef %flags, i1 noundef true) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_handler_data(i32 noundef %irq, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !10
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #14
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %handler_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 0, i32 1
  store i8* %data, i8** %handler_data, align 8
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_msi_desc_off(i32 noundef %irq_base, i32 noundef %irq_offset, %struct.msi_desc* noundef %entry1) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !10
  %add = add i32 %irq_offset, %irq_base
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %add, i64* noundef nonnull %flags, i32 noundef 1) #14
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %msi_desc = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 0, i32 2
  store %struct.msi_desc* %entry1, %struct.msi_desc** %msi_desc, align 16
  %tobool2 = icmp eq %struct.msi_desc* %entry1, null
  %tobool3 = icmp ne i32 %irq_offset, 0
  %or.cond = or i1 %tobool3, %tobool2
  br i1 %or.cond, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %entry1, i64 0, i32 1
  store i32 %irq_base, i32* %irq, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_msi_desc(i32 noundef %irq, %struct.msi_desc* noundef %entry1) local_unnamed_addr #0 {
entry:
  %call = call i32 @irq_set_msi_desc_off(i32 noundef %irq, i32 noundef 0, %struct.msi_desc* noundef %entry1) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_chip_data(i32 noundef %irq, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !10
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #14
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %chip_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1, i32 7
  store i8* %data, i8** %chip_data, align 16
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_data* @irq_get_irq_data(i32 noundef %irq) local_unnamed_addr #0 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %cond = select i1 %tobool.not, %struct.irq_data* null, %struct.irq_data* %irq_data
  ret %struct.irq_data* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_startup(%struct.irq_desc* noundef %desc, i1 noundef %resend, i1 noundef %force) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #14
  %call2 = call fastcc %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* noundef %call) #14
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  store i32 0, i32* %depth, align 8
  %call3 = call fastcc i1 @irqd_is_started(%struct.irq_data* noundef %call) #14
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @irq_enable(%struct.irq_desc* noundef %desc) #14
  br label %if.end20

if.else:                                          ; preds = %entry
  %call4 = call fastcc i32 @__irq_startup_managed(%struct.irq_desc* noundef %desc, %struct.cpumask* noundef %call2, i1 noundef %force) #14
  switch i32 %call4, label %if.end20 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.else
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %flags = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 35
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 1024
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %sw.bb
  %call7 = call i32 @irq_setup_affinity(%struct.irq_desc* noundef %desc) #12
  br label %if.end

if.end:                                           ; preds = %if.then6, %sw.bb
  %call8 = call fastcc i32 @__irq_startup(%struct.irq_desc* noundef %desc) #14
  %2 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %flags10 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %2, i64 0, i32 35
  %3 = load i64, i64* %flags10, align 8
  %and11 = and i64 %3, 1024
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end
  %call14 = call i32 @irq_setup_affinity(%struct.irq_desc* noundef %desc) #12
  br label %if.end20

sw.bb16:                                          ; preds = %if.else
  %call17 = call i32 @irq_do_set_affinity(%struct.irq_data* noundef %call, %struct.cpumask* noundef %call2, i1 noundef false) #12
  %call18 = call fastcc i32 @__irq_startup(%struct.irq_desc* noundef %desc) #14
  br label %if.end20

sw.bb19:                                          ; preds = %if.else
  call fastcc void @irqd_set_managed_shutdown(%struct.irq_data* noundef %call) #14
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16, %if.else, %if.then13, %if.end, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.else ], [ %call18, %sw.bb16 ], [ %call8, %if.end ], [ %call8, %if.then13 ]
  br i1 %resend, label %if.then22, label %cleanup

if.then22:                                        ; preds = %if.end20
  %call23 = call i32 @check_irq_resend(%struct.irq_desc* noundef %desc, i1 noundef false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then22, %sw.bb19
  %retval.0 = phi i32 [ 0, %sw.bb19 ], [ %ret.0, %if.then22 ], [ %ret.0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef readnone %desc) unnamed_addr #3 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  ret %struct.irq_data* %irq_data
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 3, i64 0
  ret %struct.cpumask* %arraydecay
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_started(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 4194304
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_enable(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @unmask_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end8

if.else:                                          ; preds = %entry
  call fastcc void @irq_state_clr_disabled(%struct.irq_desc* noundef %desc) #14
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_enable = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 4
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_enable, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.else7, label %if.then2

if.then2:                                         ; preds = %if.else
  call void %1(%struct.irq_data* noundef %irq_data) #12
  call fastcc void @irq_state_clr_masked(%struct.irq_desc* noundef %desc) #14
  br label %if.end8

if.else7:                                         ; preds = %if.else
  call void @unmask_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.else7, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__irq_startup_managed(%struct.irq_desc* noundef %desc, %struct.cpumask* noundef readonly %aff, i1 noundef %force) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #14
  %call1 = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %call) #14
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @irqd_clr_managed_shutdown(%struct.irq_data* noundef %call) #14
  %call2 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %aff, %struct.cpumask* noundef nonnull @__cpu_online_mask) #15
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %call2, %0
  br i1 %cmp.not, label %if.end23, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %force, label %if.then11, label %cleanup, !prof !11

if.then11:                                        ; preds = %if.then3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/chip.c\22; .popsection; .long 14472b - 14470b; .short 210; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !12
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %call25 = call i32 @irq_domain_activate_irq(%struct.irq_data* noundef %call, i1 noundef false) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %if.then39, !prof !8

if.then39:                                        ; preds = %if.end23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/chip.c\22; .popsection; .long 14472b - 14470b; .short 224; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then39, %if.then3, %if.then11, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 2, %if.then11 ], [ 2, %if.then3 ], [ 2, %if.then39 ], [ 1, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_setup_affinity(%struct.irq_desc* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__irq_startup(%struct.irq_desc* noundef %desc) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #14
  %call1 = call fastcc i1 @irqd_is_activated(%struct.irq_data* noundef %call) #14
  br i1 %call1, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/chip.c\22; .popsection; .long 14472b - 14470b; .short 242; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_startup = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 2
  %1 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %irq_startup, align 8
  %tobool16.not = icmp eq i32 (%struct.irq_data*)* %1, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  %call20 = call i32 %1(%struct.irq_data* noundef %call) #12
  call fastcc void @irq_state_clr_disabled(%struct.irq_desc* noundef %desc) #14
  call fastcc void @irq_state_clr_masked(%struct.irq_desc* noundef %desc) #14
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @irq_enable(%struct.irq_desc* noundef %desc) #14
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %ret.0 = phi i32 [ %call20, %if.then17 ], [ 0, %if.else ]
  call fastcc void @irq_state_set_started(%struct.irq_desc* noundef %desc) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_do_set_affinity(%struct.irq_data* noundef, %struct.cpumask* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_managed_shutdown(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 8388608
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_irq_resend(%struct.irq_desc* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_activate(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #14
  %call1 = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %call) #14
  br i1 %call1, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @irq_domain_activate_irq(%struct.irq_data* noundef %call, i1 noundef false) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 2097152
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_activate_irq(%struct.irq_data* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_activate_and_startup(%struct.irq_desc* noundef %desc, i1 noundef %resend) local_unnamed_addr #0 {
entry:
  %call = call i32 @irq_activate(%struct.irq_desc* noundef %desc) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/chip.c\22; .popsection; .long 14472b - 14470b; .short 300; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !15
  br label %return

if.end17:                                         ; preds = %entry
  %call19 = call i32 @irq_startup(%struct.irq_desc* noundef %desc, i1 noundef %resend, i1 noundef true) #14
  br label %return

return:                                           ; preds = %if.then, %if.end17
  %retval.0 = phi i32 [ %call19, %if.end17 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_shutdown(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_is_started(%struct.irq_data* noundef %irq_data) #14
  br i1 %call, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  store i32 1, i32* %depth, align 8
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_shutdown = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 3
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_shutdown, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void %1(%struct.irq_data* noundef %irq_data) #12
  call fastcc void @irq_state_set_disabled(%struct.irq_desc* noundef %desc) #14
  call fastcc void @irq_state_set_masked(%struct.irq_desc* noundef %desc) #14
  br label %if.end

if.else:                                          ; preds = %if.then
  call fastcc void @__irq_disable(%struct.irq_desc* noundef %desc, i1 noundef true) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  call fastcc void @irq_state_clr_started(%struct.irq_desc* noundef %desc) #14
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_state_set_disabled(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 65536) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_state_set_masked(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 131072) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__irq_disable(%struct.irq_desc* noundef %desc, i1 noundef %mask) unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %mask, label %if.then1, label %if.end14

if.then1:                                         ; preds = %if.then
  call void @mask_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end14

if.else:                                          ; preds = %entry
  call fastcc void @irq_state_set_disabled(%struct.irq_desc* noundef %desc) #14
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_disable = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 5
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_disable, align 8
  %tobool3.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool3.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.else
  call void %1(%struct.irq_data* noundef %irq_data) #12
  call fastcc void @irq_state_set_masked(%struct.irq_desc* noundef %desc) #14
  br label %if.end14

if.else9:                                         ; preds = %if.else
  br i1 %mask, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.else9
  call void @mask_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %if.then11, %if.else9, %if.then, %if.then1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_state_clr_started(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 4194304) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_shutdown_and_deactivate(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  call void @irq_shutdown(%struct.irq_desc* noundef %desc) #14
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void @irq_domain_deactivate_irq(%struct.irq_data* noundef %irq_data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_deactivate_irq(%struct.irq_data* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_irq_disabled(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unmask_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_irq_masked(%struct.irq_data* noundef %irq_data) #14
  br i1 %call, label %if.end, label %if.end7

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 9
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  call void %1(%struct.irq_data* noundef %irq_data) #12
  call fastcc void @irq_state_clr_masked(%struct.irq_desc* noundef %desc) #14
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_state_clr_disabled(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 65536) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_state_clr_masked(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 131072) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_disable(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @irq_settings_disable_unlazy(%struct.irq_desc* noundef %desc) #14
  call fastcc void @__irq_disable(%struct.irq_desc* noundef %desc, i1 noundef %call) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_disable_unlazy(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 524288
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_percpu_enable(%struct.irq_desc* noundef %desc, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_enable = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 4
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_enable, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 9
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.sink = phi void (%struct.irq_data*)* [ %2, %if.else ], [ %1, %entry ]
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %.sink(%struct.irq_data* noundef %irq_data) #12
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 16
  %3 = load %struct.cpumask*, %struct.cpumask** %percpu_enabled, align 32
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_percpu_disable(%struct.irq_desc* noundef %desc, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_disable = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 5
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_disable, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 7
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.sink = phi void (%struct.irq_data*)* [ %2, %if.else ], [ %1, %entry ]
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %.sink(%struct.irq_data* noundef %irq_data) #12
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 16
  %3 = load %struct.cpumask*, %struct.cpumask** %percpu_enabled, align 32
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mask_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_irq_masked(%struct.irq_data* noundef %irq_data) #14
  br i1 %call, label %if.end7, label %if.end

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 7
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  call void %1(%struct.irq_data* noundef %irq_data) #12
  call fastcc void @irq_state_set_masked(%struct.irq_desc* noundef %desc) #14
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_irq_masked(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 131072
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unmask_threaded_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %chip1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip1, align 8
  %flags = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 35
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 10
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  call void %2(%struct.irq_data* noundef %irq_data) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @unmask_irq(%struct.irq_desc* noundef %desc) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_nested_irq(i32 noundef %irq) local_unnamed_addr #0 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #12
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #14
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, -193
  store i32 %and, i32* %core_internal_state__do_not_mess_with_it, align 4
  %action4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 4
  %1 = load %struct.irqaction*, %struct.irqaction** %action4, align 8
  %tobool.not = icmp eq %struct.irqaction* %1, null
  br i1 %tobool.not, label %if.then, label %lor.rhs, !prof !11

lor.rhs:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call5 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call5, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry, %lor.rhs
  %or = or i32 %and, 512
  store i32 %or, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %out_unlock

if.end:                                           ; preds = %lor.rhs
  call fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %call) #14
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 262144) #14
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #14
  %action.044 = load %struct.irqaction*, %struct.irqaction** %action4, align 8
  %tobool12.not45 = icmp eq %struct.irqaction* %action.044, null
  br i1 %tobool12.not45, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %action.047 = phi %struct.irqaction* [ %action.0, %for.body ], [ %action.044, %if.end ]
  %action_ret.046 = phi i32 [ %or15, %for.body ], [ 0, %if.end ]
  %thread_fn = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.047, i64 0, i32 4
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn, align 32
  %irq13 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.047, i64 0, i32 7
  %3 = load i32, i32* %irq13, align 8
  %dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.047, i64 0, i32 1
  %4 = load i8*, i8** %dev_id, align 8
  %call14 = call i32 %2(i32 noundef %3, i8* noundef %4) #12
  %or15 = or i32 %call14, %action_ret.046
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.047, i64 0, i32 3
  %action.0 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %tobool12.not = icmp eq %struct.irqaction* %action.0, null
  br i1 %tobool12.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %action_ret.0.lcssa = phi i32 [ 0, %if.end ], [ %or15, %for.body ]
  %call16 = call fastcc i1 @irq_settings_no_debug(%struct.irq_desc* noundef %call) #14
  br i1 %call16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %for.end
  call void @note_interrupt(%struct.irq_desc* noundef %call, i32 noundef %action_ret.0.lcssa) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.end
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 262144) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.end18, %if.then
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #6 {
entry:
  call fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %tot_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 9
  %0 = load i32, i32* %tot_count, align 64
  %inc = add i32 %0, 1
  store i32 %inc, i32* %tot_count, align 64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %mask) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, %mask
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_enable() #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_no_debug(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 2097152
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @note_interrupt(%struct.irq_desc* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clear(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %mask) unnamed_addr #5 {
entry:
  %neg = xor i32 %mask, -1
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, %neg
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_simple_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  %call = call fastcc i1 @irq_may_run(%struct.irq_desc* noundef %desc) #14
  br i1 %call, label %if.end, label %out_unlock

if.end:                                           ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, -193
  store i32 %and, i32* %core_internal_state__do_not_mess_with_it, align 4
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %1 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool.not = icmp eq %struct.irqaction* %1, null
  br i1 %tobool.not, label %if.then4, label %lor.rhs, !prof !11

lor.rhs:                                          ; preds = %if.end
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call1 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call1, label %if.then4, label %if.end6, !prof !11

if.then4:                                         ; preds = %if.end, %lor.rhs
  %or = or i32 %and, 512
  store i32 %or, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %out_unlock

if.end6:                                          ; preds = %lor.rhs
  call fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %call7 = call i32 @handle_irq_event(%struct.irq_desc* noundef %desc) #12
  br label %out_unlock

out_unlock:                                       ; preds = %entry, %if.end6, %if.then4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @irq_may_run(%struct.irq_desc* noundef %desc) unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_has_set(%struct.irq_data* noundef %irq_data) #14
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc i1 @irq_check_poll(%struct.irq_desc* noundef %desc) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call4, %if.end ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_irq_event(%struct.irq_desc* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_untracked_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %flags = alloca i32, align 4
  %0 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %flags, align 4
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  %call = call fastcc i1 @irq_may_run(%struct.irq_desc* noundef %desc) #14
  br i1 %call, label %if.end, label %out_unlock

if.end:                                           ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %1 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %1, -193
  store i32 %and, i32* %core_internal_state__do_not_mess_with_it, align 4
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %2 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool.not = icmp eq %struct.irqaction* %2, null
  br i1 %tobool.not, label %if.then4, label %lor.rhs, !prof !11

lor.rhs:                                          ; preds = %if.end
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call1 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call1, label %if.then4, label %if.end6, !prof !11

if.then4:                                         ; preds = %if.end, %lor.rhs
  %or = or i32 %and, 512
  store i32 %or, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %out_unlock

if.end6:                                          ; preds = %lor.rhs
  %and8 = and i32 %1, -705
  store i32 %and8, i32* %core_internal_state__do_not_mess_with_it, align 4
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 262144) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  %call11 = call i32 @__handle_irq_event_percpu(%struct.irq_desc* noundef %desc, i32* noundef nonnull %flags) #12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 262144) #14
  br label %out_unlock

out_unlock:                                       ; preds = %entry, %if.end6, %if.then4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__handle_irq_event_percpu(%struct.irq_desc* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_level_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @mask_ack_irq(%struct.irq_desc* noundef %desc) #14
  %call = call fastcc i1 @irq_may_run(%struct.irq_desc* noundef %desc) #14
  br i1 %call, label %if.end, label %out_unlock

if.end:                                           ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, -193
  store i32 %and, i32* %core_internal_state__do_not_mess_with_it, align 4
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %1 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool.not = icmp eq %struct.irqaction* %1, null
  br i1 %tobool.not, label %if.then4, label %lor.rhs, !prof !11

lor.rhs:                                          ; preds = %if.end
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call1 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call1, label %if.then4, label %if.end6, !prof !11

if.then4:                                         ; preds = %if.end, %lor.rhs
  %or = or i32 %and, 512
  store i32 %or, i32* %core_internal_state__do_not_mess_with_it, align 4
  br label %out_unlock

if.end6:                                          ; preds = %lor.rhs
  call fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %call7 = call i32 @handle_irq_event(%struct.irq_desc* noundef %desc) #12
  call fastcc void @cond_unmask_irq(%struct.irq_desc* noundef %desc) #14
  br label %out_unlock

out_unlock:                                       ; preds = %entry, %if.end6, %if.then4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mask_ack_irq(%struct.irq_desc* noundef %desc) unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_mask_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 8
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask_ack, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.irq_data* noundef %irq_data) #12
  call fastcc void @irq_state_set_masked(%struct.irq_desc* noundef %desc) #14
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @mask_irq(%struct.irq_desc* noundef %desc) #14
  %2 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %2, i64 0, i32 6
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack, align 8
  %tobool7.not = icmp eq void (%struct.irq_data*)* %3, null
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.else
  call void %3(%struct.irq_data* noundef %irq_data) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cond_unmask_irq(%struct.irq_desc* noundef %desc) unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call fastcc i1 @irqd_irq_masked(%struct.irq_data* noundef %irq_data) #14
  br i1 %call2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %threads_oneshot = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 20
  %0 = load i64, i64* %threads_oneshot, align 64
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @unmask_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_fasteoi_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %chip1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip1, align 8
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  %call = call fastcc i1 @irq_may_run(%struct.irq_desc* noundef %desc) #14
  br i1 %call, label %if.end, label %out

if.end:                                           ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %1 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %1, -193
  store i32 %and, i32* %core_internal_state__do_not_mess_with_it, align 4
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %2 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool.not = icmp eq %struct.irqaction* %2, null
  br i1 %tobool.not, label %if.then6, label %lor.rhs, !prof !11

lor.rhs:                                          ; preds = %if.end
  %call3 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call3, label %if.then6, label %if.end8, !prof !11

if.then6:                                         ; preds = %if.end, %lor.rhs
  %or = or i32 %and, 512
  store i32 %or, i32* %core_internal_state__do_not_mess_with_it, align 4
  call void @mask_irq(%struct.irq_desc* noundef %desc) #14
  br label %out

if.end8:                                          ; preds = %lor.rhs
  call fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %3 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and10 = and i32 %3, 32
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @mask_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8
  %call14 = call i32 @handle_irq_event(%struct.irq_desc* noundef %desc) #12
  call fastcc void @cond_unmask_eoi_irq(%struct.irq_desc* noundef %desc, %struct.irq_chip* noundef %0) #14
  br label %cleanup

out:                                              ; preds = %entry, %if.then6
  %flags = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 35
  %4 = load i64, i64* %flags, align 8
  %and16 = and i64 %4, 2
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %cleanup

if.then18:                                        ; preds = %out
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 10
  %5 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  call void %5(%struct.irq_data* noundef %irq_data) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then18, %if.end13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cond_unmask_eoi_irq(%struct.irq_desc* noundef %desc, %struct.irq_chip* nocapture noundef readonly %chip) unnamed_addr #0 {
entry:
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 10
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #12
  br label %if.end15

if.end:                                           ; preds = %entry
  %irq_data1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data1) #14
  br i1 %call, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call fastcc i1 @irqd_irq_masked(%struct.irq_data* noundef %irq_data1) #14
  br i1 %call3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %threads_oneshot = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 20
  %2 = load i64, i64* %threads_oneshot, align 64
  %tobool5.not = icmp eq i64 %2, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true4
  %irq_eoi7 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 10
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi7, align 8
  call void %3(%struct.irq_data* noundef %irq_data1) #12
  call void @unmask_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %flags = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 35
  %4 = load i64, i64* %flags, align 8
  %and9 = and i64 %4, 64
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.else
  %irq_eoi12 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 10
  %5 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi12, align 8
  call void %5(%struct.irq_data* noundef %irq_data1) #12
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11, %if.then, %if.then6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_fasteoi_nmi(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %desc) #14
  %action1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %0 = load %struct.irqaction*, %struct.irqaction** %action1, align 8
  %call2 = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %desc) #14
  call fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %0, i64 0, i32 0
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %0, i64 0, i32 1
  %2 = load i8*, i8** %dev_id, align 8
  %call3 = call i32 %1(i32 noundef %call2, i8* noundef %2) #12
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call, i64 0, i32 10
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %3(%struct.irq_data* noundef %irq_data) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  ret %struct.irq_chip* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_get_irq(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %irq, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #6 {
entry:
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 2
  %0 = load i32*, i32** %kstat_irqs, align 8
  %1 = ptrtoint i32* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %add7 = add i32 %3, 1
  store i32 %add7, i32* %2, align 4
  %call21 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add22 = add i64 %call21, ptrtoint (%struct.kernel_stat* @kstat to i64)
  %4 = inttoptr i64 %add22 to i64*
  %5 = load i64, i64* %4, align 8
  %add23 = add i64 %5, 1
  store i64 %add23, i64* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_edge_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, -193
  store i32 %and, i32* %core_internal_state__do_not_mess_with_it, align 4
  %call = call fastcc i1 @irq_may_run(%struct.irq_desc* noundef %desc) #14
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %or = or i32 %1, 512
  store i32 %or, i32* %core_internal_state__do_not_mess_with_it, align 4
  call fastcc void @mask_ack_irq(%struct.irq_desc* noundef %desc) #14
  br label %out_unlock

if.end:                                           ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call2 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call2, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %2 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool.not = icmp eq %struct.irqaction* %2, null
  br i1 %tobool.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %or5 = or i32 %3, 512
  store i32 %or5, i32* %core_internal_state__do_not_mess_with_it, align 4
  call fastcc void @mask_ack_irq(%struct.irq_desc* noundef %desc) #14
  br label %out_unlock

if.end6:                                          ; preds = %lor.lhs.false
  call fastcc void @kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %4 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %4, i64 0, i32 6
  %5 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack, align 8
  call void %5(%struct.irq_data* noundef %irq_data) #12
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end6
  %6 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool10.not = icmp eq %struct.irqaction* %6, null
  br i1 %tobool10.not, label %if.then14, label %if.end15, !prof !11

if.then14:                                        ; preds = %do.body
  call void @mask_irq(%struct.irq_desc* noundef %desc) #14
  br label %out_unlock

if.end15:                                         ; preds = %do.body
  %7 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and17 = and i32 %7, 512
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end34, label %if.then26, !prof !8

if.then26:                                        ; preds = %if.end15
  %call28 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call28, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26
  %call30 = call fastcc i1 @irqd_irq_masked(%struct.irq_data* noundef %irq_data) #14
  br i1 %call30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %land.lhs.true
  call void @unmask_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %land.lhs.true, %if.then32, %if.end15
  %call35 = call i32 @handle_irq_event(%struct.irq_desc* noundef %desc) #12
  %8 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and37 = and i32 %8, 512
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %out_unlock, label %land.rhs

land.rhs:                                         ; preds = %if.end34
  %call40 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call40, label %out_unlock, label %do.body

out_unlock:                                       ; preds = %if.end34, %land.rhs, %if.then14, %if.then3, %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_percpu_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %desc) #14
  call fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %irq_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call, i64 0, i32 6
  %0 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %0(%struct.irq_data* noundef %irq_data) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @handle_irq_event_percpu(%struct.irq_desc* noundef %desc) #12
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call, i64 0, i32 10
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool3.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %irq_data6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data6) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_irq_event_percpu(%struct.irq_desc* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_percpu_devid_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %desc) #14
  %action1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %0 = load %struct.irqaction*, %struct.irqaction** %action1, align 8
  %call2 = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %desc) #14
  call fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %irq_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call, i64 0, i32 6
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq %struct.irqaction* %0, null
  br i1 %tobool4.not, label %if.else, label %if.then7, !prof !11

if.then7:                                         ; preds = %if.end
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %0, i64 0, i32 0
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %percpu_dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %0, i64 0, i32 2
  %3 = load i8*, i8** %percpu_dev_id, align 16
  %4 = ptrtoint i8* %3 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call9, %4
  %5 = inttoptr i64 %add to i8*
  %call10 = call i32 %2(i32 noundef %call2, i8* noundef %5) #12
  br label %if.end54

if.else:                                          ; preds = %if.end
  %call18 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add19 = add i64 %call18, ptrtoint (i32* @cpu_number to i64)
  %6 = inttoptr i64 %add19 to i32*
  %7 = load i32, i32* %6, align 4
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 16
  %8 = load %struct.cpumask*, %struct.cpumask** %percpu_enabled, align 32
  %call20 = call fastcc i32 @cpumask_test_cpu(i32 noundef %7, %struct.cpumask* noundef %8) #14
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @irq_percpu_disable(%struct.irq_desc* noundef %desc, i32 noundef %7) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else
  %.b92 = load i1, i1* @handle_percpu_devid_irq.__already_done, align 1
  br i1 %.b92, label %if.end54, label %if.then37, !prof !8

if.then37:                                        ; preds = %if.end24
  store i1 true, i1* @handle_percpu_devid_irq.__already_done, align 1
  %cond = select i1 %tobool21.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  %call44 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef %cond, i32 noundef %call2, i32 noundef %7) #16
  br label %if.end54

if.end54:                                         ; preds = %if.end24, %if.then37, %if.then7
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call, i64 0, i32 10
  %9 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool55.not = icmp eq void (%struct.irq_data*)* %9, null
  br i1 %tobool55.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end54
  %irq_data58 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %9(%struct.irq_data* noundef %irq_data58) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end54
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !20
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #8 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @handle_percpu_devid_fasteoi_nmi(%struct.irq_desc* noundef %desc) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %desc) #14
  %action1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %0 = load %struct.irqaction*, %struct.irqaction** %action1, align 8
  %call2 = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %desc) #14
  call fastcc void @__kstat_incr_irqs_this_cpu(%struct.irq_desc* noundef %desc) #14
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %0, i64 0, i32 0
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %percpu_dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %0, i64 0, i32 2
  %2 = load i8*, i8** %percpu_dev_id, align 16
  %3 = ptrtoint i8* %2 to i64
  %call4 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call4, %3
  %4 = inttoptr i64 %add to i8*
  %call5 = call i32 %1(i32 noundef %call2, i8* noundef %4) #12
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call, i64 0, i32 10
  %5 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %5(%struct.irq_data* noundef %irq_data) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__irq_set_handler(i32 noundef %irq, void (%struct.irq_desc*)* noundef %handle, i32 noundef %is_chained, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !10
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #14
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__irq_do_set_handler(%struct.irq_desc* noundef nonnull %call, void (%struct.irq_desc*)* noundef %handle, i32 noundef %is_chained, i8* noundef %name) #14
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__irq_do_set_handler(%struct.irq_desc* noundef %desc, void (%struct.irq_desc*)* noundef %handle, i32 noundef %is_chained, i8* noundef %name) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq void (%struct.irq_desc*)* %handle, null
  br i1 %tobool.not, label %if.then57, label %if.else

if.else:                                          ; preds = %entry
  %irq_data1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %tobool2.not131 = icmp eq %struct.irq_data* %irq_data1, null
  br i1 %tobool2.not131, label %if.then41, label %while.body.lr.ph, !prof !21

while.body.lr.ph:                                 ; preds = %if.else
  %tobool4.not = icmp eq i32 %is_chained, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end23
  %irq_data.0132 = phi %struct.irq_data* [ %irq_data1, %while.body.lr.ph ], [ %1, %if.end23 ]
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data.0132, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %cmp.not = icmp eq %struct.irq_chip* %0, @no_irq_chip
  br i1 %cmp.not, label %if.end, label %if.end54

if.end:                                           ; preds = %while.body
  br i1 %tobool4.not, label %if.end23, label %if.then12, !prof !8

if.then12:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/chip.c\22; .popsection; .long 14472b - 14470b; .short 999; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !22
  br label %if.end85

if.end23:                                         ; preds = %if.end
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data.0132, i64 0, i32 6
  %1 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool2.not = icmp eq %struct.irq_data* %1, null
  br i1 %tobool2.not, label %if.then41, label %while.body, !prof !21

if.then41:                                        ; preds = %if.end23, %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/chip.c\22; .popsection; .long 14472b - 14470b; .short 1005; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !23
  br label %if.end85

if.end54:                                         ; preds = %while.body
  %cmp55 = icmp eq void (%struct.irq_desc*)* %handle, @handle_bad_irq
  br i1 %cmp55, label %if.then57, label %if.end67

if.then57:                                        ; preds = %entry, %if.end54
  %chip59 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %2 = load %struct.irq_chip*, %struct.irq_chip** %chip59, align 8
  %cmp60.not = icmp eq %struct.irq_chip* %2, @no_irq_chip
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.then57
  call fastcc void @mask_ack_irq(%struct.irq_desc* noundef %desc) #14
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then57
  call fastcc void @irq_state_set_disabled(%struct.irq_desc* noundef %desc) #14
  %tobool64.not = icmp eq i32 %is_chained, 0
  br i1 %tobool64.not, label %if.end67.thread, label %if.then65

if.then65:                                        ; preds = %if.end63
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  store %struct.irqaction* null, %struct.irqaction** %action, align 8
  br label %if.end67.thread

if.end67.thread:                                  ; preds = %if.end63, %if.then65
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  store i32 1, i32* %depth, align 8
  %handle_irq125 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 3
  %handle_irq68126 = bitcast {}** %handle_irq125 to void (%struct.irq_desc*)**
  store void (%struct.irq_desc*)* @handle_bad_irq, void (%struct.irq_desc*)** %handle_irq68126, align 32
  %name69127 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 29
  store i8* %name, i8** %name69127, align 16
  br label %if.end85

if.end67:                                         ; preds = %if.end54
  %handle_irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 3
  %handle_irq68 = bitcast {}** %handle_irq to void (%struct.irq_desc*)**
  store void (%struct.irq_desc*)* %handle, void (%struct.irq_desc*)** %handle_irq68, align 32
  %name69 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 29
  store i8* %name, i8** %name69, align 16
  br i1 %tobool4.not, label %if.end85, label %if.then73

if.then73:                                        ; preds = %if.end67
  %call = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef nonnull %irq_data1) #14
  %cmp75.not = icmp eq i32 %call, 0
  br i1 %cmp75.not, label %if.end82, label %if.then77

if.then77:                                        ; preds = %if.then73
  %conv78 = zext i32 %call to i64
  %call79 = call i32 @__irq_set_trigger(%struct.irq_desc* noundef %desc, i64 noundef %conv78) #12
  store void (%struct.irq_desc*)* %handle, void (%struct.irq_desc*)** %handle_irq68, align 32
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.then73
  call fastcc void @irq_settings_set_noprobe(%struct.irq_desc* noundef %desc) #14
  call fastcc void @irq_settings_set_norequest(%struct.irq_desc* noundef %desc) #14
  call fastcc void @irq_settings_set_nothread(%struct.irq_desc* noundef %desc) #14
  %action83 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  store %struct.irqaction* @chained_action, %struct.irqaction** %action83, align 8
  %call84 = call i32 @irq_activate_and_startup(%struct.irq_desc* noundef %desc, i1 noundef true) #14
  br label %if.end85

if.end85:                                         ; preds = %if.then41, %if.then12, %if.end67.thread, %if.end82, %if.end67
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_set_chained_handler_and_data(i32 noundef %irq, void (%struct.irq_desc*)* noundef %handle, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !10
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #14
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %handler_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 0, i32 1
  store i8* %data, i8** %handler_data, align 8
  call fastcc void @__irq_do_set_handler(%struct.irq_desc* noundef nonnull %call, void (%struct.irq_desc*)* noundef %handle, i32 noundef 1, i8* noundef null) #14
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_set_chip_and_handler_name(i32 noundef %irq, %struct.irq_chip* noundef %chip, void (%struct.irq_desc*)* noundef %handle, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call i32 @irq_set_chip(i32 noundef %irq, %struct.irq_chip* noundef %chip) #14
  call void @__irq_set_handler(i32 noundef %irq, void (%struct.irq_desc*)* noundef %handle, i32 noundef 0, i8* noundef %name) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_modify_status(i32 noundef %irq, i64 noundef %clr, i64 noundef %set) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !10
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #14
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 7
  %1 = load i32, i32* %depth, align 8
  %tobool1.not = icmp eq i32 %1, 0
  %and = and i64 %set, 4096
  %tobool2 = icmp ne i64 %and, 0
  %2 = and i1 %tobool2, %tobool1.not
  br i1 %2, label %if.then10, label %if.end11, !prof !11

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/chip.c\22; .popsection; .long 14472b - 14470b; .short 1098; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !24
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %conv20 = trunc i64 %clr to i32
  %conv21 = trunc i64 %set to i32
  call fastcc void @irq_settings_clr_and_set(%struct.irq_desc* noundef nonnull %call, i32 noundef %conv20, i32 noundef %conv21) #14
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call22 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef %irq_data) #14
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 44047) #14
  %call25 = call fastcc i1 @irq_settings_has_no_balance_set(%struct.irq_desc* noundef nonnull %call) #14
  br i1 %call25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end11
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 1024) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end11
  %call29 = call fastcc i1 @irq_settings_is_per_cpu(%struct.irq_desc* noundef nonnull %call) #14
  br i1 %call29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 2048) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  %call33 = call fastcc i1 @irq_settings_can_move_pcntxt(%struct.irq_desc* noundef nonnull %call) #14
  br i1 %call33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 32768) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32
  %call37 = call fastcc i1 @irq_settings_is_level(%struct.irq_desc* noundef nonnull %call) #14
  br i1 %call37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 8192) #14
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  %call41 = call fastcc i32 @irq_settings_get_trigger_mask(%struct.irq_desc* noundef nonnull %call) #14
  %cmp.not = icmp eq i32 %call41, 0
  %spec.select = select i1 %cmp.not, i32 %call22, i32 %call41
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef %spec.select) #14
  %3 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_clr_and_set(%struct.irq_desc* nocapture noundef %desc, i32 noundef %clr, i32 noundef %set) unnamed_addr #5 {
entry:
  %and = and i32 %clr, 2096911
  %neg = xor i32 %and, -1
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and1 = and i32 %0, %neg
  %and2 = and i32 %set, 2096911
  %or = or i32 %and1, %and2
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irqd_get_trigger_type(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 15
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_has_no_balance_set(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 8192
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_per_cpu(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 512
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_can_move_pcntxt(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 16384
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_level(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 256
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_settings_get_trigger_mask(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #4 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 15
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_cpu_online() local_unnamed_addr #0 {
entry:
  %call = call i32 @irq_get_next_irq(i32 noundef 0) #12
  %0 = load i32, i32* @nr_irqs, align 4
  %cmp40 = icmp ult i32 %call, %0
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %irq.041 = phi i32 [ %call25, %for.inc ], [ %call, %entry ]
  %call1 = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq.041) #12
  %tobool.not = icmp eq %struct.irq_desc* %call1, null
  br i1 %tobool.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call1, i64 0, i32 15
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #14
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call1, i64 0, i32 1
  %call4 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %irq_data) #14
  %tobool5.not = icmp eq %struct.irq_chip* %call4, null
  br i1 %tobool5.not, label %do.body16, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %irq_cpu_online = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call4, i64 0, i32 17
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_cpu_online, align 8
  %tobool6.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool6.not, label %do.body16, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %flags8 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call4, i64 0, i32 35
  %2 = load i64, i64* %flags8, align 8
  %and = and i64 %2, 8
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %call11 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call11, label %do.body16, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false, %land.lhs.true7
  call void %1(%struct.irq_data* noundef %irq_data) #12
  br label %do.body16

do.body16:                                        ; preds = %do.body, %land.lhs.true, %lor.lhs.false, %if.then12
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call3) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.body16
  %add = add nuw i32 %irq.041, 1
  %call25 = call i32 @irq_get_next_irq(i32 noundef %add) #12
  %3 = load i32, i32* @nr_irqs, align 4
  %cmp = icmp ult i32 %call25, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_next_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #14
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  ret %struct.irq_chip* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_cpu_offline() local_unnamed_addr #0 {
entry:
  %call = call i32 @irq_get_next_irq(i32 noundef 0) #12
  %0 = load i32, i32* @nr_irqs, align 4
  %cmp40 = icmp ult i32 %call, %0
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %irq.041 = phi i32 [ %call25, %for.inc ], [ %call, %entry ]
  %call1 = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq.041) #12
  %tobool.not = icmp eq %struct.irq_desc* %call1, null
  br i1 %tobool.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call1, i64 0, i32 15
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #14
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call1, i64 0, i32 1
  %call4 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %irq_data) #14
  %tobool5.not = icmp eq %struct.irq_chip* %call4, null
  br i1 %tobool5.not, label %do.body16, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %irq_cpu_offline = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call4, i64 0, i32 18
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_cpu_offline, align 8
  %tobool6.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool6.not, label %do.body16, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %flags8 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call4, i64 0, i32 35
  %2 = load i64, i64* %flags8, align 8
  %and = and i64 %2, 8
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %call11 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #14
  br i1 %call11, label %do.body16, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false, %land.lhs.true7
  call void %1(%struct.irq_data* noundef %irq_data) #12
  br label %do.body16

do.body16:                                        ; preds = %do.body, %land.lhs.true, %lor.lhs.false, %if.then12
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call3) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.body16
  %add = add nuw i32 %irq.041, 1
  %call25 = call i32 @irq_get_next_irq(i32 noundef %add) #12
  %3 = load i32, i32* @nr_irqs, align 4
  %cmp = icmp ult i32 %call25, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_set_parent_state(%struct.irq_data* nocapture noundef readonly %data, i32 noundef %which, i1 noundef %val) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool.not = icmp eq %struct.irq_data* %0, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_set_irqchip_state = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 29
  %2 = load i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i32, i1)** %irq_set_irqchip_state, align 8
  %tobool1.not = icmp eq i32 (%struct.irq_data*, i32, i1)* %2, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 %2(%struct.irq_data* noundef nonnull %0, i32 noundef %which, i1 noundef %val) #12
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_get_parent_state(%struct.irq_data* nocapture noundef readonly %data, i32 noundef %which, i8* noundef %state) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool.not = icmp eq %struct.irq_data* %0, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_get_irqchip_state = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 28
  %2 = load i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i8*)** %irq_get_irqchip_state, align 8
  %tobool1.not = icmp eq i32 (%struct.irq_data*, i32, i8*)* %2, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 %2(%struct.irq_data* noundef nonnull %0, i32 noundef %which, i8* noundef %state) #12
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_chip_enable_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_enable = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 4
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_enable, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %2, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 9
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.sink = phi void (%struct.irq_data*)* [ %3, %if.else ], [ %2, %entry ]
  call void %.sink(%struct.irq_data* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_chip_disable_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_disable = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 5
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_disable, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %2, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 7
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.sink = phi void (%struct.irq_data*)* [ %3, %if.else ], [ %2, %entry ]
  call void %.sink(%struct.irq_data* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_chip_ack_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 6
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack, align 8
  call void %2(%struct.irq_data* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_chip_mask_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 7
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  call void %2(%struct.irq_data* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_chip_mask_ack_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_mask_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 8
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask_ack, align 8
  call void %2(%struct.irq_data* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_chip_unmask_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 9
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  call void %2(%struct.irq_data* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_chip_eoi_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 10
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  call void %2(%struct.irq_data* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_set_affinity_parent(%struct.irq_data* nocapture noundef readonly %data, %struct.cpumask* noundef %dest, i1 noundef %force) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 11
  %2 = load i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*, %struct.cpumask*, i1)* %2, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %2(%struct.irq_data* noundef %0, %struct.cpumask* noundef %dest, i1 noundef %force) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -38, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_set_type_parent(%struct.irq_data* nocapture noundef readonly %data, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_set_type = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 13
  %2 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %irq_set_type, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*, i32)* %2, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %2(%struct.irq_data* noundef %0, i32 noundef %type) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -38, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_retrigger_hierarchy(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %data.addr.0.in15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %data.addr.016 = load %struct.irq_data*, %struct.irq_data** %data.addr.0.in15, align 8
  %tobool.not17 = icmp eq %struct.irq_data* %data.addr.016, null
  br i1 %tobool.not17, label %return, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %data.addr.018 = phi %struct.irq_data* [ %data.addr.0, %for.inc ], [ %data.addr.016, %entry ]
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.addr.018, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool1.not = icmp eq %struct.irq_chip* %0, null
  br i1 %tobool1.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %irq_retrigger = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 12
  %1 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %irq_retrigger, align 8
  %tobool3.not = icmp eq i32 (%struct.irq_data*)* %1, null
  br i1 %tobool3.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 %1(%struct.irq_data* noundef nonnull %data.addr.018) #12
  br label %return

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %data.addr.0.in = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.addr.018, i64 0, i32 6
  %data.addr.0 = load %struct.irq_data*, %struct.irq_data** %data.addr.0.in, align 8
  %tobool.not = icmp eq %struct.irq_data* %data.addr.0, null
  br i1 %tobool.not, label %return, label %for.body

return:                                           ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_set_vcpu_affinity_parent(%struct.irq_data* nocapture noundef readonly %data, i8* noundef %vcpu_info) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_set_vcpu_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 30
  %2 = load i32 (%struct.irq_data*, i8*)*, i32 (%struct.irq_data*, i8*)** %irq_set_vcpu_affinity, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*, i8*)* %2, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %2(%struct.irq_data* noundef %0, i8* noundef %vcpu_info) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -38, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_set_wake_parent(%struct.irq_data* nocapture noundef readonly %data, i32 noundef %on) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %flags = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 35
  %2 = load i64, i64* %flags, align 8
  %and = and i64 %2, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %irq_set_wake = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 14
  %3 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %irq_set_wake, align 8
  %tobool2.not = icmp eq i32 (%struct.irq_data*, i32)* %3, null
  br i1 %tobool2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = call i32 %3(%struct.irq_data* noundef %0, i32 noundef %on) #12
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ 0, %entry ], [ -38, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_request_resources_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_request_resources = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 24
  %2 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %irq_request_resources, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*)* %2, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %2(%struct.irq_data* noundef %0) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -38, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_chip_release_resources_parent(%struct.irq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_release_resources = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 25
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_release_resources, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %2(%struct.irq_data* noundef %0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_chip_compose_msi_msg(%struct.irq_data* noundef %data, %struct.msi_msg* noundef %msg) local_unnamed_addr #0 {
entry:
  %tobool118.not = icmp eq %struct.irq_data* %data, null
  br i1 %tobool118.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %data.addr.019 = phi %struct.irq_data* [ %call, %for.inc ], [ %data, %entry ]
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.addr.019, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool2.not = icmp eq %struct.irq_chip* %0, null
  br i1 %tobool2.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %irq_compose_msi_msg = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 26
  %1 = load void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)** %irq_compose_msi_msg, align 8
  %tobool4.not = icmp eq void (%struct.irq_data*, %struct.msi_msg*)* %1, null
  %spec.select = select i1 %tobool4.not, %struct.irq_data* null, %struct.irq_data* %data.addr.019
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %pos.1 = phi %struct.irq_data* [ null, %for.body ], [ %spec.select, %land.lhs.true ]
  %call = call fastcc %struct.irq_data* @irqd_get_parent_data(%struct.irq_data* noundef nonnull %data.addr.019) #14
  %tobool.not = icmp eq %struct.irq_data* %pos.1, null
  %tobool1 = icmp ne %struct.irq_data* %call, null
  %2 = select i1 %tobool.not, i1 %tobool1, i1 false
  br i1 %2, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %for.end
  %chip8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %pos.1, i64 0, i32 4
  %3 = load %struct.irq_chip*, %struct.irq_chip** %chip8, align 8
  %irq_compose_msi_msg9 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %3, i64 0, i32 26
  %4 = load void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)** %irq_compose_msi_msg9, align 8
  call void %4(%struct.irq_data* noundef nonnull %pos.1, %struct.msi_msg* noundef %msg) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end, %if.end7
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -38, %for.end ], [ -38, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_data* @irqd_get_parent_data(%struct.irq_data* nocapture noundef readonly %irqd) unnamed_addr #4 {
entry:
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irqd, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  ret %struct.irq_data* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @irq_chip_pm_get(%struct.irq_data* nocapture noundef readnone %data) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @irq_chip_pm_put(%struct.irq_data* nocapture noundef readnone %data) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @__irq_get_desc_lock(i32 noundef, i64* noundef, i1 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_put_desc_unlock(%struct.irq_desc* noundef, i64 noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clr_managed_shutdown(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -8388609
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_activated(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 512
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_state_set_started(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 4194304) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !30
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #13, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_has_set(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #4 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 786432
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @irq_check_poll(%struct.irq_desc* noundef %desc) unnamed_addr #0 {
entry:
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i1 @irq_wait_for_poll(%struct.irq_desc* noundef %desc) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @irq_wait_for_poll(%struct.irq_desc* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(%struct.irq_desc* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_noprobe(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %or = or i32 %0, 1024
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_norequest(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %or = or i32 %0, 2048
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_nothread(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %or = or i32 %0, 65536
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !33
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !34
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #13, !srcloc !35
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2153358234}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153360721}
!13 = !{i64 2153362336}
!14 = !{i64 2153364000}
!15 = !{i64 2153369661}
!16 = !{i64 2149428355}
!17 = !{i64 2149453208}
!18 = !{i64 2149439063}
!19 = !{i64 2149446344}
!20 = !{i64 2149012208, i64 2149012255, i64 2149012261, i64 2149012298, i64 2149012316, i64 2149013243, i64 2149013291, i64 2149013339, i64 2149013402, i64 2149013451, i64 2149012394, i64 2149012419, i64 2149012445, i64 2149012451, i64 2149012488, i64 2149012494, i64 2149012544, i64 2149012590, i64 2149012623}
!21 = !{!"branch_weights", i32 1073205, i32 2146410443}
!22 = !{i64 2153378535}
!23 = !{i64 2153380153}
!24 = !{i64 2153382224}
!25 = !{i64 2149424062}
!26 = !{i64 2149449905}
!27 = !{i64 2147922945, i64 2147923456, i64 2147923486, i64 2147923512, i64 2147923544, i64 2147923573}
!28 = !{i64 2147933515, i64 2147934036, i64 2147934066, i64 2147934092, i64 2147934124, i64 2147934153}
!29 = !{i64 2148984186, i64 2148984233, i64 2148984239, i64 2148984276, i64 2148984294, i64 2148985635, i64 2148985683, i64 2148985731, i64 2148985794, i64 2148985843, i64 2148984372, i64 2148984397, i64 2148984423, i64 2148984429, i64 2148985301, i64 2148985341, i64 2148985359, i64 2148985391, i64 2148985419, i64 2148985473, i64 2148985493, i64 2148985590, i64 2148984452, i64 2148984466, i64 2148984472, i64 2148984522, i64 2148984568, i64 2148984601}
!30 = !{i64 2147953788, i64 2147953821, i64 2147953874, i64 2147953933, i64 2147953967, i64 2147954022, i64 2147954051, i64 2147954071}
!31 = !{i64 2149238574}
!32 = !{i64 2148974730, i64 2148974777, i64 2148974783, i64 2148974820, i64 2148974838, i64 2148976178, i64 2148976226, i64 2148976274, i64 2148976337, i64 2148976386, i64 2148974916, i64 2148974941, i64 2148974967, i64 2148974973, i64 2148975844, i64 2148975884, i64 2148975902, i64 2148975934, i64 2148975962, i64 2148976016, i64 2148976036, i64 2148976133, i64 2148974996, i64 2148975010, i64 2148975016, i64 2148975066, i64 2148975112, i64 2148975145}
!33 = !{i64 2148989889, i64 2148989936, i64 2148989942, i64 2148989979, i64 2148989997, i64 2148991308, i64 2148991356, i64 2148991404, i64 2148991467, i64 2148991516, i64 2148990075, i64 2148990100, i64 2148990126, i64 2148990132, i64 2148990974, i64 2148991014, i64 2148991032, i64 2148991064, i64 2148991092, i64 2148991146, i64 2148991166, i64 2148991263, i64 2148990155, i64 2148990169, i64 2148990175, i64 2148990225, i64 2148990271, i64 2148990304}
!34 = !{i64 2148992068, i64 2148992115, i64 2148992121, i64 2148992158, i64 2148992176, i64 2148993119, i64 2148993167, i64 2148993215, i64 2148993278, i64 2148993327, i64 2148992254, i64 2148992279, i64 2148992305, i64 2148992311, i64 2148992348, i64 2148992354, i64 2148992404, i64 2148992450, i64 2148992483}
!35 = !{i64 2148995902, i64 2148995949, i64 2148995955, i64 2148995992, i64 2148996010, i64 2148997321, i64 2148997369, i64 2148997417, i64 2148997480, i64 2148997529, i64 2148996088, i64 2148996113, i64 2148996139, i64 2148996145, i64 2148996987, i64 2148997027, i64 2148997045, i64 2148997077, i64 2148997105, i64 2148997159, i64 2148997179, i64 2148997276, i64 2148996168, i64 2148996182, i64 2148996188, i64 2148996238, i64 2148996284, i64 2148996317}
