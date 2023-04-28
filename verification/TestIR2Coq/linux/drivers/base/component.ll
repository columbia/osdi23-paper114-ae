; ModuleID = 'drivers/base/component.c'
source_filename = "drivers/base/component.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.17, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
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
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.22, i32 }
%union.anon.22 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.47, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.25 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.46, i32, [12 x i8] }
%union.anon.46 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.48, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.48 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.18, i8* }
%union.anon.18 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.49, %struct.list_head, %struct.list_head, %union.anon.50 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
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
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.51 }
%union.anon.51 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.54 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.component_match = type { i64, i64, %struct.component_match_array* }
%struct.component_match_array = type { i8*, i32 (%struct.device*, i8*)*, i32 (%struct.device*, i32, i8*)*, void (%struct.device*, i8*)*, %struct.component*, i8 }
%struct.component = type { %struct.list_head, %struct.master*, i8, %struct.component_ops*, i32, %struct.device* }
%struct.master = type { %struct.list_head, i8, %struct.component_master_ops*, %struct.device*, %struct.component_match* }
%struct.component_master_ops = type { i32 (%struct.device*)*, void (%struct.device*)* }
%struct.component_ops = type { i32 (%struct.device*, %struct.device*, i8*)*, void (%struct.device*, %struct.device*, i8*)* }

@component_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @component_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @component_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@masters = internal global %struct.list_head { %struct.list_head* @masters, %struct.list_head* @masters }, align 8
@component_list = internal global %struct.list_head { %struct.list_head* @component_list, %struct.list_head* @component_list }, align 8
@.str = private unnamed_addr constant [29 x i8] c"devm_component_match_release\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"master bind failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"bound %s (ops %ps)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to bind %s (ops %ps): %d\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @component_match_add_release(%struct.device* noundef %master, %struct.component_match** nocapture noundef %matchptr, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*)* noundef %compare, i8* noundef %compare_data) local_unnamed_addr #0 {
entry:
  call fastcc void @__component_match_add(%struct.device* noundef %master, %struct.component_match** noundef %matchptr, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*)* noundef %compare, i32 (%struct.device*, i32, i8*)* noundef null, i8* noundef %compare_data) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__component_match_add(%struct.device* noundef %master, %struct.component_match** nocapture noundef %matchptr, void (%struct.device*, i8*)* noundef %release, i32 (%struct.device*, i8*)* noundef %compare, i32 (%struct.device*, i32, i8*)* noundef %compare_typed, i8* noundef %compare_data) unnamed_addr #0 {
entry:
  %0 = load %struct.component_match*, %struct.component_match** %matchptr, align 8
  %1 = bitcast %struct.component_match* %0 to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %1) #9
  br i1 %call, label %cleanup35, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.component_match* %0, null
  br i1 %tobool.not, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %call2 = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_component_match_release, i64 noundef 24, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #10
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then1
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -12) #9
  %2 = bitcast %struct.component_match** %matchptr to i8**
  store i8* %call5, i8** %2, align 8
  br label %cleanup35

if.end6:                                          ; preds = %if.then1
  %3 = bitcast i8* %call2 to %struct.component_match*
  call void @devres_add(%struct.device* noundef %master, i8* noundef nonnull %call2) #10
  %4 = bitcast %struct.component_match** %matchptr to i8**
  store i8* %call2, i8** %4, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %match.0 = phi %struct.component_match* [ %0, %if.end ], [ %3, %if.end6 ]
  %num = getelementptr inbounds %struct.component_match, %struct.component_match* %match.0, i64 0, i32 1
  %5 = load i64, i64* %num, align 8
  %alloc = getelementptr inbounds %struct.component_match, %struct.component_match* %match.0, i64 0, i32 0
  %6 = load i64, i64* %alloc, align 8
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end7
  %add = add i64 %5, 16
  %call10 = call fastcc i32 @component_match_realloc(%struct.component_match* noundef %match.0, i64 noundef %add) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end16_crit_edge, label %if.then12

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  %.pre = load i64, i64* %num, align 8
  br label %if.end16

if.then12:                                        ; preds = %if.then8
  %conv = sext i32 %call10 to i64
  %call13 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #9
  %7 = bitcast %struct.component_match** %matchptr to i8**
  store i8* %call13, i8** %7, align 8
  br label %cleanup35

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %if.end7
  %8 = phi i64 [ %.pre, %if.then8.if.end16_crit_edge ], [ %5, %if.end7 ]
  %compare17 = getelementptr inbounds %struct.component_match, %struct.component_match* %match.0, i64 0, i32 2
  %9 = load %struct.component_match_array*, %struct.component_match_array** %compare17, align 8
  %compare19 = getelementptr %struct.component_match_array, %struct.component_match_array* %9, i64 %8, i32 1
  store i32 (%struct.device*, i8*)* %compare, i32 (%struct.device*, i8*)** %compare19, align 8
  %10 = load %struct.component_match_array*, %struct.component_match_array** %compare17, align 8
  %11 = load i64, i64* %num, align 8
  %compare_typed23 = getelementptr %struct.component_match_array, %struct.component_match_array* %10, i64 %11, i32 2
  store i32 (%struct.device*, i32, i8*)* %compare_typed, i32 (%struct.device*, i32, i8*)** %compare_typed23, align 8
  %12 = load %struct.component_match_array*, %struct.component_match_array** %compare17, align 8
  %13 = load i64, i64* %num, align 8
  %release27 = getelementptr %struct.component_match_array, %struct.component_match_array* %12, i64 %13, i32 3
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release27, align 8
  %14 = load %struct.component_match_array*, %struct.component_match_array** %compare17, align 8
  %15 = load i64, i64* %num, align 8
  %data = getelementptr %struct.component_match_array, %struct.component_match_array* %14, i64 %15, i32 0
  store i8* %compare_data, i8** %data, align 8
  %16 = load %struct.component_match_array*, %struct.component_match_array** %compare17, align 8
  %17 = load i64, i64* %num, align 8
  %component = getelementptr %struct.component_match_array, %struct.component_match_array* %16, i64 %17, i32 4
  store %struct.component* null, %struct.component** %component, align 8
  %18 = load i64, i64* %num, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %num, align 8
  br label %cleanup35

cleanup35:                                        ; preds = %if.then12, %entry, %if.end16, %if.then4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @component_match_add_typed(%struct.device* noundef %master, %struct.component_match** nocapture noundef %matchptr, i32 (%struct.device*, i32, i8*)* noundef %compare_typed, i8* noundef %compare_data) local_unnamed_addr #0 {
entry:
  call fastcc void @__component_match_add(%struct.device* noundef %master, %struct.component_match** noundef %matchptr, void (%struct.device*, i8*)* noundef null, i32 (%struct.device*, i8*)* noundef null, i32 (%struct.device*, i32, i8*)* noundef %compare_typed, i8* noundef %compare_data) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @component_master_add_with_match(%struct.device* noundef %parent, %struct.component_master_ops* noundef %ops, %struct.component_match* noundef %match) local_unnamed_addr #0 {
entry:
  %num = getelementptr inbounds %struct.component_match, %struct.component_match* %match, i64 0, i32 1
  %0 = load i64, i64* %num, align 8
  %call = call fastcc i32 @component_match_realloc(%struct.component_match* noundef %match, i64 noundef %0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @kzalloc(i64 noundef 48) #9
  %1 = bitcast i8* %call1 to %struct.master*
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %parent5 = getelementptr inbounds i8, i8* %call1, i64 32
  %2 = bitcast i8* %parent5 to %struct.device**
  store %struct.device* %parent, %struct.device** %2, align 8
  %ops6 = getelementptr inbounds i8, i8* %call1, i64 24
  %3 = bitcast i8* %ops6 to %struct.component_master_ops**
  store %struct.component_master_ops* %ops, %struct.component_master_ops** %3, align 8
  %match7 = getelementptr inbounds i8, i8* %call1, i64 40
  %4 = bitcast i8* %match7 to %struct.component_match**
  store %struct.component_match* %match, %struct.component_match** %4, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @component_mutex) #10
  %node = bitcast i8* %call1 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef nonnull %node) #9
  %call8 = call fastcc i32 @try_to_bring_up_master(%struct.master* noundef nonnull %1, %struct.component* noundef null) #9
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  call fastcc void @free_master(%struct.master* noundef nonnull %1) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end4
  %cond = phi i32 [ %call8, %if.then9 ], [ 0, %if.end4 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @component_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ %cond, %if.end10 ], [ %call, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @component_match_realloc(%struct.component_match* nocapture noundef %match, i64 noundef %num) unnamed_addr #0 {
entry:
  %alloc = getelementptr inbounds %struct.component_match, %struct.component_match* %match, i64 0, i32 0
  %0 = load i64, i64* %alloc, align 8
  %cmp = icmp eq i64 %0, %num
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kmalloc_array(i64 noundef %num) #9
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %compare = getelementptr inbounds %struct.component_match, %struct.component_match* %match, i64 0, i32 2
  %1 = load %struct.component_match_array*, %struct.component_match_array** %compare, align 8
  %tobool3.not = icmp eq %struct.component_match_array* %1, null
  br i1 %tobool3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end2
  %2 = bitcast %struct.component_match_array* %1 to i8*
  %num6 = getelementptr inbounds %struct.component_match, %struct.component_match* %match, i64 0, i32 1
  %3 = load i64, i64* %num6, align 8
  %cmp7 = icmp ult i64 %3, %num
  %cond = select i1 %cmp7, i64 %3, i64 %num
  %mul = mul i64 %cond, 48
  %call8 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %2, i64 noundef %mul) #10
  %4 = bitcast %struct.component_match_array** %compare to i8**
  %5 = load i8*, i8** %4, align 8
  call void @kfree(i8* noundef %5) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end2, %if.then4
  %.pre-phi = bitcast %struct.component_match_array** %compare to i8**
  store i8* %call, i8** %.pre-phi, align 8
  store i64 %num, i64* %alloc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #10
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #2 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @masters, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef nonnull @masters, %struct.list_head* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_to_bring_up_master(%struct.master* noundef %master, %struct.component* noundef readonly %component) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @find_components(%struct.master* noundef %master) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.component* %component, null
  br i1 %tobool1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %master2 = getelementptr inbounds %struct.component, %struct.component* %component, i64 0, i32 1
  %0 = load %struct.master*, %struct.master** %master2, align 8
  %cmp.not = icmp eq %struct.master* %0, %master
  br i1 %cmp.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %parent = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 3
  %1 = load %struct.device*, %struct.device** %parent, align 8
  %call5 = call i8* @devres_open_group(%struct.device* noundef %1, i8* noundef null, i32 noundef 3264) #10
  %tobool6.not = icmp eq i8* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %ops = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 2
  %2 = load %struct.component_master_ops*, %struct.component_master_ops** %ops, align 8
  %bind = getelementptr inbounds %struct.component_master_ops, %struct.component_master_ops* %2, i64 0, i32 0
  %3 = load i32 (%struct.device*)*, i32 (%struct.device*)** %bind, align 8
  %4 = load %struct.device*, %struct.device** %parent, align 8
  %call10 = call i32 %3(%struct.device* noundef %4) #10
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end8
  %5 = load %struct.device*, %struct.device** %parent, align 8
  %call14 = call i32 @devres_release_group(%struct.device* noundef %5, i8* noundef null) #10
  %cmp15.not = icmp eq i32 %call10, -517
  br i1 %cmp15.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.then12
  %6 = load %struct.device*, %struct.device** %parent, align 8
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef %6, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call10) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %bound = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 1
  store i8 1, i8* %bound, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.end, %if.end4, %land.lhs.true, %entry, %if.end19
  %retval.0 = phi i32 [ 1, %if.end19 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ -12, %if.end4 ], [ %call10, %do.end ], [ -517, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_master(%struct.master* noundef %master) unnamed_addr #0 {
entry:
  %match1 = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 4
  %0 = load %struct.component_match*, %struct.component_match** %match1, align 8
  %node = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %node) #9
  %tobool.not = icmp eq %struct.component_match* %0, null
  br i1 %tobool.not, label %if.end6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num = getelementptr inbounds %struct.component_match, %struct.component_match* %0, i64 0, i32 1
  %1 = load i64, i64* %num, align 8
  %cmp19.not = icmp eq i64 %1, 0
  br i1 %cmp19.not, label %if.end6, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %compare = getelementptr inbounds %struct.component_match, %struct.component_match* %0, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %2 = phi i64 [ %1, %for.body.lr.ph ], [ %5, %if.end ]
  %conv21 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %if.end ]
  %3 = load %struct.component_match_array*, %struct.component_match_array** %compare, align 8
  %component = getelementptr %struct.component_match_array, %struct.component_match_array* %3, i64 %conv21, i32 4
  %4 = load %struct.component*, %struct.component** %component, align 8
  %tobool3.not = icmp eq %struct.component* %4, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %for.body
  %master5 = getelementptr inbounds %struct.component, %struct.component* %4, i64 0, i32 1
  store %struct.master* null, %struct.master** %master5, align 8
  %.pre = load i64, i64* %num, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %5 = phi i64 [ %.pre, %if.then4 ], [ %2, %for.body ]
  %inc = shl nsw i64 %conv21, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %cmp = icmp ugt i64 %5, %conv
  br i1 %cmp, label %for.body, label %if.end6

if.end6:                                          ; preds = %if.end, %for.cond.preheader, %entry
  %6 = bitcast %struct.master* %master to i8*
  call void @kfree(i8* noundef %6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @component_master_del(%struct.device* noundef %parent, %struct.component_master_ops* noundef %ops) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @component_mutex) #10
  %call = call fastcc %struct.master* @__master_find(%struct.device* noundef %parent, %struct.component_master_ops* noundef %ops) #9
  %tobool.not = icmp eq %struct.master* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @take_down_master(%struct.master* noundef nonnull %call) #9
  call fastcc void @free_master(%struct.master* noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @component_mutex) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.master* @__master_find(%struct.device* noundef readnone %parent, %struct.component_master_ops* noundef readnone %ops) unnamed_addr #3 {
entry:
  %m.020 = load %struct.master*, %struct.master** bitcast (%struct.list_head* @masters to %struct.master**), align 8
  %node21 = getelementptr inbounds %struct.master, %struct.master* %m.020, i64 0, i32 0
  %cmp.not22 = icmp eq %struct.list_head* %node21, @masters
  br i1 %cmp.not22, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq %struct.component_master_ops* %ops, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %m.023 = phi %struct.master* [ %m.020, %for.body.lr.ph ], [ %m.0, %for.inc ]
  %parent1 = getelementptr inbounds %struct.master, %struct.master* %m.023, i64 0, i32 3
  %0 = load %struct.device*, %struct.device** %parent1, align 8
  %cmp2 = icmp eq %struct.device* %0, %parent
  br i1 %cmp2, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %ops3 = getelementptr inbounds %struct.master, %struct.master* %m.023, i64 0, i32 2
  %1 = load %struct.component_master_ops*, %struct.component_master_ops** %ops3, align 8
  %cmp4 = icmp eq %struct.component_master_ops* %1, %ops
  br i1 %cmp4, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %lor.lhs.false
  %2 = bitcast %struct.master* %m.023 to %struct.master**
  %m.0 = load %struct.master*, %struct.master** %2, align 8
  %node = getelementptr inbounds %struct.master, %struct.master* %m.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @masters
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %lor.lhs.false, %land.lhs.true, %for.inc, %entry
  %retval.0 = phi %struct.master* [ null, %entry ], [ null, %for.inc ], [ %m.023, %land.lhs.true ], [ %m.023, %lor.lhs.false ]
  ret %struct.master* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @take_down_master(%struct.master* nocapture noundef %master) unnamed_addr #0 {
entry:
  %bound = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 1
  %0 = load i8, i8* %bound, align 8, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 2
  %1 = load %struct.component_master_ops*, %struct.component_master_ops** %ops, align 8
  %unbind = getelementptr inbounds %struct.component_master_ops, %struct.component_master_ops* %1, i64 0, i32 1
  %2 = load void (%struct.device*)*, void (%struct.device*)** %unbind, align 8
  %parent = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 3
  %3 = load %struct.device*, %struct.device** %parent, align 8
  call void %2(%struct.device* noundef %3) #10
  %4 = load %struct.device*, %struct.device** %parent, align 8
  %call = call i32 @devres_release_group(%struct.device* noundef %4, i8* noundef null) #10
  store i8 0, i8* %bound, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @component_unbind_all(%struct.device* noundef readonly %parent, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = call i1 @mutex_is_locked(%struct.mutex* noundef nonnull @component_mutex) #10
  br i1 %call, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/component.c\22; .popsection; .long 14472b - 14470b; .short 546; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call fastcc %struct.master* @__master_find(%struct.device* noundef %parent, %struct.component_master_ops* noundef null) #9
  %tobool16.not = icmp eq %struct.master* %call15, null
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end
  %match = getelementptr inbounds %struct.master, %struct.master* %call15, i64 0, i32 4
  %0 = load %struct.component_match*, %struct.component_match** %match, align 8
  %num = getelementptr inbounds %struct.component_match, %struct.component_match* %0, i64 0, i32 1
  %1 = load i64, i64* %num, align 8
  %tobool19.not41 = icmp eq i64 %1, 0
  br i1 %tobool19.not41, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end18, %if.end26.for.body_crit_edge
  %2 = phi %struct.component_match* [ %.pre, %if.end26.for.body_crit_edge ], [ %0, %if.end18 ]
  %dec42.in = phi i64 [ %dec42, %if.end26.for.body_crit_edge ], [ %1, %if.end18 ]
  %dec42 = add i64 %dec42.in, -1
  %compare = getelementptr inbounds %struct.component_match, %struct.component_match* %2, i64 0, i32 2
  %3 = load %struct.component_match_array*, %struct.component_match_array** %compare, align 8
  %duplicate = getelementptr %struct.component_match_array, %struct.component_match_array* %3, i64 %dec42, i32 5
  %4 = load i8, i8* %duplicate, align 8, !range !7
  %tobool21.not = icmp eq i8 %4, 0
  br i1 %tobool21.not, label %if.then22, label %if.end26

if.then22:                                        ; preds = %for.body
  %component = getelementptr %struct.component_match_array, %struct.component_match_array* %3, i64 %dec42, i32 4
  %5 = load %struct.component*, %struct.component** %component, align 8
  call fastcc void @component_unbind(%struct.component* noundef %5, %struct.master* noundef nonnull %call15, i8* noundef %data) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %for.body
  %tobool19.not = icmp eq i64 %dec42, 0
  br i1 %tobool19.not, label %cleanup, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  %.pre = load %struct.component_match*, %struct.component_match** %match, align 8
  br label %for.body

cleanup:                                          ; preds = %if.end26, %if.end18, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mutex_is_locked(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @component_unbind(%struct.component* noundef %component, %struct.master* nocapture noundef readonly %master, i8* noundef %data) unnamed_addr #0 {
entry:
  %bound = getelementptr inbounds %struct.component, %struct.component* %component, i64 0, i32 2
  %0 = load i8, i8* %bound, align 8, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/component.c\22; .popsection; .long 14472b - 14470b; .short 521; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ops = getelementptr inbounds %struct.component, %struct.component* %component, i64 0, i32 3
  %1 = load %struct.component_ops*, %struct.component_ops** %ops, align 8
  %tobool16.not = icmp eq %struct.component_ops* %1, null
  br i1 %tobool16.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %unbind = getelementptr inbounds %struct.component_ops, %struct.component_ops* %1, i64 0, i32 1
  %2 = load void (%struct.device*, %struct.device*, i8*)*, void (%struct.device*, %struct.device*, i8*)** %unbind, align 8
  %tobool18.not = icmp eq void (%struct.device*, %struct.device*, i8*)* %2, null
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %dev = getelementptr inbounds %struct.component, %struct.component* %component, i64 0, i32 5
  %3 = load %struct.device*, %struct.device** %dev, align 8
  %parent = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 3
  %4 = load %struct.device*, %struct.device** %parent, align 8
  call void %2(%struct.device* noundef %3, %struct.device* noundef %4, i8* noundef %data) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true, %if.end
  store i8 0, i8* %bound, align 8
  %dev24 = getelementptr inbounds %struct.component, %struct.component* %component, i64 0, i32 5
  %5 = load %struct.device*, %struct.device** %dev24, align 8
  %6 = bitcast %struct.component* %component to i8*
  %call = call i32 @devres_release_group(%struct.device* noundef %5, i8* noundef %6) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @component_bind_all(%struct.device* noundef readonly %parent, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = call i1 @mutex_is_locked(%struct.mutex* noundef nonnull @component_mutex) #10
  br i1 %call, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/component.c\22; .popsection; .long 14472b - 14470b; .short 630; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call fastcc %struct.master* @__master_find(%struct.device* noundef %parent, %struct.component_master_ops* noundef null) #9
  %tobool16.not = icmp eq %struct.master* %call15, null
  br i1 %tobool16.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %match = getelementptr inbounds %struct.master, %struct.master* %call15, i64 0, i32 4
  %0 = load %struct.component_match*, %struct.component_match** %match, align 8
  %num88 = getelementptr inbounds %struct.component_match, %struct.component_match* %0, i64 0, i32 1
  %1 = load i64, i64* %num88, align 8
  %cmp89.not = icmp eq i64 %1, 0
  br i1 %cmp89.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %2 = phi %struct.component_match* [ %6, %for.inc ], [ %0, %for.cond.preheader ]
  %i.090 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %compare = getelementptr inbounds %struct.component_match, %struct.component_match* %2, i64 0, i32 2
  %3 = load %struct.component_match_array*, %struct.component_match_array** %compare, align 8
  %duplicate = getelementptr %struct.component_match_array, %struct.component_match_array* %3, i64 %i.090, i32 5
  %4 = load i8, i8* %duplicate, align 8, !range !7
  %tobool21.not = icmp eq i8 %4, 0
  br i1 %tobool21.not, label %if.then22, label %for.inc

if.then22:                                        ; preds = %for.body
  %component = getelementptr %struct.component_match_array, %struct.component_match_array* %3, i64 %i.090, i32 4
  %5 = load %struct.component*, %struct.component** %component, align 8
  %call26 = call fastcc i32 @component_bind(%struct.component* noundef %5, %struct.master* noundef nonnull %call15, i8* noundef %data) #9
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then22.for.inc_crit_edge, label %for.end

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  %.pre = load %struct.component_match*, %struct.component_match** %match, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then22.for.inc_crit_edge, %for.body
  %6 = phi %struct.component_match* [ %.pre, %if.then22.for.inc_crit_edge ], [ %2, %for.body ]
  %inc = add nuw i64 %i.090, 1
  %num = getelementptr inbounds %struct.component_match, %struct.component_match* %6, i64 0, i32 1
  %7 = load i64, i64* %num, align 8
  %cmp = icmp ult i64 %inc, %7
  br i1 %cmp, label %for.body, label %cleanup

for.end:                                          ; preds = %if.then22
  %cmp35.not = icmp eq i64 %i.090, 0
  br i1 %cmp35.not, label %cleanup, label %for.body37

for.body37:                                       ; preds = %for.end, %for.inc50
  %i.1 = phi i64 [ %sub, %for.inc50 ], [ %i.090, %for.end ]
  %8 = load %struct.component_match*, %struct.component_match** %match, align 8
  %compare39 = getelementptr inbounds %struct.component_match, %struct.component_match* %8, i64 0, i32 2
  %9 = load %struct.component_match_array*, %struct.component_match_array** %compare39, align 8
  %sub = add i64 %i.1, -1
  %duplicate41 = getelementptr %struct.component_match_array, %struct.component_match_array* %9, i64 %sub, i32 5
  %10 = load i8, i8* %duplicate41, align 8, !range !7
  %tobool42.not = icmp eq i8 %10, 0
  br i1 %tobool42.not, label %if.then43, label %for.inc50

if.then43:                                        ; preds = %for.body37
  %component48 = getelementptr %struct.component_match_array, %struct.component_match_array* %9, i64 %sub, i32 4
  %11 = load %struct.component*, %struct.component** %component48, align 8
  call fastcc void @component_unbind(%struct.component* noundef %11, %struct.master* noundef nonnull %call15, i8* noundef %data) #9
  br label %for.inc50

for.inc50:                                        ; preds = %for.body37, %if.then43
  %cmp35.old.not = icmp eq i64 %sub, 0
  br i1 %cmp35.old.not, label %cleanup, label %for.body37

cleanup:                                          ; preds = %for.inc, %for.inc50, %for.cond.preheader, %for.end, %if.end
  %retval.0 = phi i32 [ -22, %if.end ], [ %call26, %for.end ], [ 0, %for.cond.preheader ], [ %call26, %for.inc50 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @component_bind(%struct.component* noundef %component, %struct.master* nocapture noundef readonly %master, i8* noundef %data) unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 3
  %0 = load %struct.device*, %struct.device** %parent, align 8
  %call = call i8* @devres_open_group(%struct.device* noundef %0, i8* noundef null, i32 noundef 3264) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.component, %struct.component* %component, i64 0, i32 5
  %1 = load %struct.device*, %struct.device** %dev, align 8
  %2 = bitcast %struct.component* %component to i8*
  %call1 = call i8* @devres_open_group(%struct.device* noundef %1, i8* noundef %2, i32 noundef 3264) #10
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %3 = load %struct.device*, %struct.device** %parent, align 8
  %call5 = call i32 @devres_release_group(%struct.device* noundef %3, i8* noundef null) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.component, %struct.component* %component, i64 0, i32 3
  %4 = load %struct.component_ops*, %struct.component_ops** %ops, align 8
  %bind = getelementptr inbounds %struct.component_ops, %struct.component_ops* %4, i64 0, i32 0
  %5 = load i32 (%struct.device*, %struct.device*, i8*)*, i32 (%struct.device*, %struct.device*, i8*)** %bind, align 8
  %6 = load %struct.device*, %struct.device** %dev, align 8
  %7 = load %struct.device*, %struct.device** %parent, align 8
  %call9 = call i32 %5(%struct.device* noundef %6, %struct.device* noundef %7, i8* noundef %data) #10
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  %bound = getelementptr inbounds %struct.component, %struct.component* %component, i64 0, i32 2
  store i8 1, i8* %bound, align 8
  %8 = load %struct.device*, %struct.device** %dev, align 8
  call void @devres_close_group(%struct.device* noundef %8, i8* noundef null) #10
  %9 = load %struct.device*, %struct.device** %parent, align 8
  call void @devres_remove_group(%struct.device* noundef %9, i8* noundef null) #10
  %10 = load %struct.device*, %struct.device** %parent, align 8
  %11 = load %struct.device*, %struct.device** %dev, align 8
  %call16 = call fastcc i8* @dev_name(%struct.device* noundef %11) #9
  %12 = load %struct.component_ops*, %struct.component_ops** %ops, align 8
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef %10, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call16, %struct.component_ops* noundef %12) #11
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %13 = load %struct.device*, %struct.device** %dev, align 8
  %call19 = call i32 @devres_release_group(%struct.device* noundef %13, i8* noundef null) #10
  %14 = load %struct.device*, %struct.device** %parent, align 8
  %call21 = call i32 @devres_release_group(%struct.device* noundef %14, i8* noundef null) #10
  %cmp.not = icmp eq i32 %call9, -517
  br i1 %cmp.not, label %cleanup, label %do.end25

do.end25:                                         ; preds = %if.else
  %15 = load %struct.device*, %struct.device** %parent, align 8
  %16 = load %struct.device*, %struct.device** %dev, align 8
  %call28 = call fastcc i8* @dev_name(%struct.device* noundef %16) #9
  %17 = load %struct.component_ops*, %struct.component_ops** %ops, align 8
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %15, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call28, %struct.component_ops* noundef %17, i32 noundef %call9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.end25, %if.else, %entry, %if.then3
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry ], [ -517, %if.else ], [ %call9, %do.end25 ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @component_add_typed(%struct.device* noundef %dev, %struct.component_ops* noundef %ops, i32 noundef %subcomponent) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %subcomponent, 0
  br i1 %cmp, label %if.then, label %if.end16, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/component.c\22; .popsection; .long 14472b - 14470b; .short 711; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !13
  br label %return

if.end16:                                         ; preds = %entry
  %call = call fastcc i32 @__component_add(%struct.device* noundef %dev, %struct.component_ops* noundef %ops, i32 noundef %subcomponent) #9
  br label %return

return:                                           ; preds = %if.then, %if.end16
  %retval.0 = phi i32 [ %call, %if.end16 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__component_add(%struct.device* noundef %dev, %struct.component_ops* noundef %ops, i32 noundef %subcomponent) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 56) #9
  %0 = bitcast i8* %call to %struct.component*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ops1 = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %ops1 to %struct.component_ops**
  store %struct.component_ops* %ops, %struct.component_ops** %1, align 8
  %dev2 = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast i8* %dev2 to %struct.device**
  store %struct.device* %dev, %struct.device** %2, align 8
  %subcomponent3 = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %subcomponent3 to i32*
  store i32 %subcomponent, i32* %3, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @component_mutex) #10
  %node = bitcast i8* %call to %struct.list_head*
  call fastcc void @list_add_tail(%struct.list_head* noundef nonnull %node) #9
  %call4 = call fastcc i32 @try_to_bring_up_masters(%struct.component* noundef nonnull %0) #9
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %master = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %master to %struct.master**
  %5 = load %struct.master*, %struct.master** %4, align 8
  %tobool6.not = icmp eq %struct.master* %5, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then5
  call fastcc void @remove_component(%struct.master* noundef nonnull %5, %struct.component* noundef nonnull %0) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5
  call fastcc void @list_del(%struct.list_head* noundef nonnull %node) #9
  call void @kfree(i8* noundef nonnull %call) #10
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end
  %cond = phi i32 [ %call4, %if.end9 ], [ 0, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @component_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %cond, %if.end11 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @component_add(%struct.device* noundef %dev, %struct.component_ops* noundef %ops) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__component_add(%struct.device* noundef %dev, %struct.component_ops* noundef %ops, i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @component_del(%struct.device* noundef readnone %dev, %struct.component_ops* noundef readnone %ops) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @component_mutex) #10
  %c.063 = load %struct.component*, %struct.component** bitcast (%struct.list_head* @component_list to %struct.component**), align 8
  %node64 = getelementptr inbounds %struct.component, %struct.component* %c.063, i64 0, i32 0
  %cmp.not65 = icmp eq %struct.list_head* %node64, @component_list
  br i1 %cmp.not65, label %if.then29, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %node68 = phi %struct.list_head* [ %node, %for.inc ], [ %node64, %entry ]
  %c.066 = phi %struct.component* [ %c.0, %for.inc ], [ %c.063, %entry ]
  %dev1 = getelementptr inbounds %struct.component, %struct.component* %c.066, i64 0, i32 5
  %0 = load %struct.device*, %struct.device** %dev1, align 8
  %cmp2 = icmp eq %struct.device* %0, %dev
  br i1 %cmp2, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ops3 = getelementptr inbounds %struct.component, %struct.component* %c.066, i64 0, i32 3
  %1 = load %struct.component_ops*, %struct.component_ops** %ops3, align 8
  %cmp4 = icmp eq %struct.component_ops* %1, %ops
  br i1 %cmp4, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %2 = bitcast %struct.component* %c.066 to %struct.component**
  %c.0 = load %struct.component*, %struct.component** %2, align 8
  %node = getelementptr inbounds %struct.component, %struct.component* %c.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @component_list
  br i1 %cmp.not, label %if.then29, label %for.body

for.end:                                          ; preds = %land.lhs.true
  call fastcc void @list_del(%struct.list_head* noundef %node68) #9
  %tobool.not = icmp eq %struct.component* %c.066, null
  br i1 %tobool.not, label %if.then29, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %for.end
  %master = getelementptr inbounds %struct.component, %struct.component* %c.066, i64 0, i32 1
  %3 = load %struct.master*, %struct.master** %master, align 8
  %tobool14.not = icmp eq %struct.master* %3, null
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %land.lhs.true13
  call fastcc void @take_down_master(%struct.master* noundef nonnull %3) #9
  %4 = load %struct.master*, %struct.master** %master, align 8
  call fastcc void @remove_component(%struct.master* noundef %4, %struct.component* noundef nonnull %c.066) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true13
  call void @mutex_unlock(%struct.mutex* noundef nonnull @component_mutex) #10
  %phi.cast = bitcast %struct.component* %c.066 to i8*
  br label %if.end30

if.then29:                                        ; preds = %for.inc, %entry, %for.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @component_mutex) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/component.c\22; .popsection; .long 14472b - 14470b; .short 767; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !14
  br label %if.end30

if.end30:                                         ; preds = %if.end18, %if.then29
  %component.058 = phi i8* [ null, %if.then29 ], [ %phi.cast, %if.end18 ]
  call void @kfree(i8* noundef %component.058) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #9
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @remove_component(%struct.master* nocapture noundef readonly %master, %struct.component* noundef readnone %c) unnamed_addr #4 {
entry:
  %match = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 4
  %0 = load %struct.component_match*, %struct.component_match** %match, align 8
  %num13 = getelementptr inbounds %struct.component_match, %struct.component_match* %0, i64 0, i32 1
  %1 = load i64, i64* %num13, align 8
  %cmp14.not = icmp eq i64 %1, 0
  br i1 %cmp14.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi %struct.component_match* [ %5, %for.inc ], [ %0, %entry ]
  %i.015 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %compare = getelementptr inbounds %struct.component_match, %struct.component_match* %2, i64 0, i32 2
  %3 = load %struct.component_match_array*, %struct.component_match_array** %compare, align 8
  %component = getelementptr %struct.component_match_array, %struct.component_match_array* %3, i64 %i.015, i32 4
  %4 = load %struct.component*, %struct.component** %component, align 8
  %cmp2 = icmp eq %struct.component* %4, %c
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store %struct.component* null, %struct.component** %component, align 8
  %.pre = load %struct.component_match*, %struct.component_match** %match, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %5 = phi %struct.component_match* [ %2, %for.body ], [ %.pre, %if.then ]
  %inc = add nuw i64 %i.015, 1
  %num = getelementptr inbounds %struct.component_match, %struct.component_match* %5, i64 0, i32 1
  %6 = load i64, i64* %num, align 8
  %cmp = icmp ult i64 %inc, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_component_match_release(%struct.device* noundef %parent, i8* nocapture noundef readonly %res) #0 {
entry:
  %num = getelementptr inbounds i8, i8* %res, i64 8
  %0 = bitcast i8* %num to i64*
  %1 = load i64, i64* %0, align 8
  %cmp13.not = icmp eq i64 %1, 0
  br i1 %cmp13.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %compare = getelementptr inbounds i8, i8* %res, i64 16
  %2 = bitcast i8* %compare to %struct.component_match_array**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %3 = phi i64 [ %1, %for.body.lr.ph ], [ %7, %if.end ]
  %conv15 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %if.end ]
  %4 = load %struct.component_match_array*, %struct.component_match_array** %2, align 8
  %release = getelementptr %struct.component_match_array, %struct.component_match_array* %4, i64 %conv15, i32 3
  %5 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release, align 8
  %tobool.not = icmp eq void (%struct.device*, i8*)* %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %data = getelementptr %struct.component_match_array, %struct.component_match_array* %4, i64 %conv15, i32 0
  %6 = load i8*, i8** %data, align 8
  call void %5(%struct.device* noundef %parent, i8* noundef %6) #10
  %.pre = load i64, i64* %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = phi i64 [ %.pre, %if.then ], [ %3, %for.body ]
  %inc = add nuw nsw i64 %conv15, 1
  %conv = and i64 %inc, 4294967295
  %cmp = icmp ugt i64 %7, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %compare3 = getelementptr inbounds i8, i8* %res, i64 16
  %8 = bitcast i8* %compare3 to i8**
  %9 = load i8*, i8** %8, align 8
  call void @kfree(i8* noundef %9) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 48)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !10

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_components(%struct.master* noundef %master) unnamed_addr #0 {
entry:
  %match1 = getelementptr inbounds %struct.master, %struct.master* %master, i64 0, i32 4
  %0 = load %struct.component_match*, %struct.component_match** %match1, align 8
  %num = getelementptr inbounds %struct.component_match, %struct.component_match* %0, i64 0, i32 1
  %1 = load i64, i64* %num, align 8
  %cmp44.not = icmp eq i64 %1, 0
  br i1 %cmp44.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %compare = getelementptr inbounds %struct.component_match, %struct.component_match* %0, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i64 [ %1, %for.body.lr.ph ], [ %8, %for.inc ]
  %i.045 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %3 = load %struct.component_match_array*, %struct.component_match_array** %compare, align 8
  %component = getelementptr %struct.component_match_array, %struct.component_match_array* %3, i64 %i.045, i32 4
  %4 = load %struct.component*, %struct.component** %component, align 8
  %tobool.not = icmp eq %struct.component* %4, null
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.component_match_array, %struct.component_match_array* %3, i64 %i.045
  %call = call fastcc %struct.component* @find_component(%struct.master* noundef %master, %struct.component_match_array* noundef %arrayidx) #9
  %tobool4.not = icmp eq %struct.component* %call, null
  br i1 %tobool4.not, label %for.end, label %if.end6

if.end6:                                          ; preds = %if.end
  %master7 = getelementptr inbounds %struct.component, %struct.component* %call, i64 0, i32 1
  %5 = load %struct.master*, %struct.master** %master7, align 8
  %tobool8 = icmp ne %struct.master* %5, null
  %6 = load %struct.component_match_array*, %struct.component_match_array** %compare, align 8
  %duplicate = getelementptr %struct.component_match_array, %struct.component_match_array* %6, i64 %i.045, i32 5
  %frombool = zext i1 %tobool8 to i8
  store i8 %frombool, i8* %duplicate, align 8
  %7 = load %struct.component_match_array*, %struct.component_match_array** %compare, align 8
  %component14 = getelementptr %struct.component_match_array, %struct.component_match_array* %7, i64 %i.045, i32 4
  store %struct.component* %call, %struct.component** %component14, align 8
  store %struct.master* %master, %struct.master** %master7, align 8
  %.pre = load i64, i64* %num, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body
  %8 = phi i64 [ %.pre, %if.end6 ], [ %2, %for.body ]
  %inc = add nuw i64 %i.045, 1
  %cmp = icmp ult i64 %inc, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end, %entry
  %ret.2 = phi i32 [ 0, %entry ], [ -6, %if.end ], [ 0, %for.inc ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @devres_open_group(%struct.device* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(%struct.device* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.component* @find_component(%struct.master* noundef readnone %master, %struct.component_match_array* nocapture noundef readonly %mc) unnamed_addr #0 {
entry:
  %c.044 = load %struct.component*, %struct.component** bitcast (%struct.list_head* @component_list to %struct.component**), align 8
  %node45 = getelementptr inbounds %struct.component, %struct.component* %c.044, i64 0, i32 0
  %cmp.not46 = icmp eq %struct.list_head* %node45, @component_list
  br i1 %cmp.not46, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %compare = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %mc, i64 0, i32 1
  %data = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %mc, i64 0, i32 0
  %compare_typed = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %mc, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %c.047 = phi %struct.component* [ %c.044, %for.body.lr.ph ], [ %c.0, %for.inc ]
  %master1 = getelementptr inbounds %struct.component, %struct.component* %c.047, i64 0, i32 1
  %0 = load %struct.master*, %struct.master** %master1, align 8
  %tobool.not = icmp eq %struct.master* %0, null
  %cmp3.not = icmp eq %struct.master* %0, %master
  %or.cond = or i1 %tobool.not, %cmp3.not
  br i1 %or.cond, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %1 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %compare, align 8
  %tobool4.not = icmp eq i32 (%struct.device*, i8*)* %1, null
  br i1 %tobool4.not, label %if.end9, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %dev = getelementptr inbounds %struct.component, %struct.component* %c.047, i64 0, i32 5
  %2 = load %struct.device*, %struct.device** %dev, align 8
  %3 = load i8*, i8** %data, align 8
  %call = call i32 %1(%struct.device* noundef %2, i8* noundef %3) #10
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %land.lhs.true5, %if.end
  %4 = load i32 (%struct.device*, i32, i8*)*, i32 (%struct.device*, i32, i8*)** %compare_typed, align 8
  %tobool10.not = icmp eq i32 (%struct.device*, i32, i8*)* %4, null
  br i1 %tobool10.not, label %for.inc, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end9
  %dev13 = getelementptr inbounds %struct.component, %struct.component* %c.047, i64 0, i32 5
  %5 = load %struct.device*, %struct.device** %dev13, align 8
  %subcomponent = getelementptr inbounds %struct.component, %struct.component* %c.047, i64 0, i32 4
  %6 = load i32, i32* %subcomponent, align 8
  %7 = load i8*, i8** %data, align 8
  %call15 = call i32 %4(%struct.device* noundef %5, i32 noundef %6, i8* noundef %7) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body, %if.end9, %land.lhs.true11
  %8 = bitcast %struct.component* %c.047 to %struct.component**
  %c.0 = load %struct.component*, %struct.component** %8, align 8
  %node = getelementptr inbounds %struct.component, %struct.component* %c.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @component_list
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true5, %land.lhs.true11, %for.inc, %entry
  %retval.0 = phi %struct.component* [ null, %entry ], [ null, %for.inc ], [ %c.047, %land.lhs.true11 ], [ %c.047, %land.lhs.true5 ]
  ret %struct.component* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(%struct.device* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(%struct.device* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #8 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #8 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #2 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @component_list, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef nonnull @component_list) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_to_bring_up_masters(%struct.component* noundef %component) unnamed_addr #0 {
entry:
  %m.019 = load %struct.master*, %struct.master** bitcast (%struct.list_head* @masters to %struct.master**), align 8
  %node20 = getelementptr inbounds %struct.master, %struct.master* %m.019, i64 0, i32 0
  %cmp.not21 = icmp eq %struct.list_head* %node20, @masters
  br i1 %cmp.not21, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %m.022 = phi %struct.master* [ %m.0, %for.inc ], [ %m.019, %entry ]
  %bound = getelementptr inbounds %struct.master, %struct.master* %m.022, i64 0, i32 1
  %0 = load i8, i8* %bound, align 8, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call = call fastcc i32 @try_to_bring_up_master(%struct.master* noundef %m.022, %struct.component* noundef %component) #9
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %if.then
  %1 = bitcast %struct.master* %m.022 to %struct.master**
  %m.0 = load %struct.master*, %struct.master** %1, align 8
  %node = getelementptr inbounds %struct.master, %struct.master* %m.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node, @masters
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then, %entry
  %ret.2 = phi i32 [ 0, %entry ], [ %call, %if.then ], [ 0, %for.inc ]
  ret i32 %ret.2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
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
!7 = !{i8 0, i8 2}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152303287}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152297586}
!12 = !{i64 2152307468}
!13 = !{i64 2152309992}
!14 = !{i64 2152316688}
