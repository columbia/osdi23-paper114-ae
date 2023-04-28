; ModuleID = 'drivers/irqchip/irq-partition-percpu.c'
source_filename = "drivers/irqchip/irq-partition-percpu.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
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
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
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
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.msi_desc = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.msi_msg = type opaque
%struct.partition_desc = type { i32, %struct.partition_affinity*, %struct.irq_domain*, %struct.irq_desc*, i64*, %struct.irq_domain_ops }
%struct.partition_affinity = type { %struct.cpumask, i8* }

@.str = private unnamed_addr constant [28 x i8] c"\013Failed to find partition\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@partition_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @partition_irq_mask, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @partition_irq_unmask, void (%struct.irq_data*)* null, i32 (%struct.irq_data*, %struct.cpumask*, i1)* null, i32 (%struct.irq_data*)* null, i32 (%struct.irq_data*, i32)* @partition_irq_set_type, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* @partition_irq_print_chip, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* @partition_irq_get_irqchip_state, i32 (%struct.irq_data*, i32, i1)* @partition_irq_set_irqchip_state, i32 (%struct.irq_data*, i8*)* null, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 0 }, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" %5s-%lu\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @partition_translate_id(%struct.partition_desc* nocapture noundef readonly %desc, i8* noundef readnone %partition_id) local_unnamed_addr #0 {
entry:
  %nr_parts = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %desc, i64 0, i32 0
  %0 = load i32, i32* %nr_parts, align 8
  %cmp39 = icmp sgt i32 %0, 0
  br i1 %cmp39, label %for.body.lr.ph, label %if.then14

for.body.lr.ph:                                   ; preds = %entry
  %parts = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %desc, i64 0, i32 1
  %1 = load %struct.partition_affinity*, %struct.partition_affinity** %parts, align 8
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %partition_id1 = getelementptr %struct.partition_affinity, %struct.partition_affinity* %1, i64 %indvars.iv, i32 1
  %2 = load i8*, i8** %partition_id1, align 8
  %cmp2 = icmp eq i8* %2, %partition_id
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %arrayidx = getelementptr %struct.partition_affinity, %struct.partition_affinity* %1, i64 %idxprom.le
  %phi.cmp = icmp eq %struct.partition_affinity* %arrayidx, null
  br i1 %phi.cmp, label %if.then14, label %cleanup, !prof !8

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then14, label %for.body

if.then14:                                        ; preds = %for.inc, %entry, %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-partition-percpu.c\22; .popsection; .long 14472b - 14470b; .short 186; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !9
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then14
  %retval.0 = phi i32 [ -22, %if.then14 ], [ %3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.partition_desc* @partition_create_desc(%struct.fwnode_handle* noundef %fwnode, %struct.partition_affinity* noundef %parts, i32 noundef %nr_parts, i32 noundef %chained_irq, %struct.irq_domain_ops* nocapture noundef readonly %ops) local_unnamed_addr #0 {
entry:
  %select = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %ops, i64 0, i32 1
  %0 = load i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)** %select, align 8
  %tobool.not = icmp eq i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* %0, null
  br i1 %tobool.not, label %do.body5, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %entry
  %translate = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %ops, i64 0, i32 9
  %1 = load i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)** %translate, align 8
  %tobool1.not = icmp eq i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* %1, null
  br i1 %tobool1.not, label %do.body5, label %do.end10, !prof !8

do.body5:                                         ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-partition-percpu.c\22; .popsection; .long 14472b - 14470b; .short 203; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  unreachable

do.end10:                                         ; preds = %lor.rhs
  %call = call fastcc i8* @kzalloc() #12
  %2 = bitcast i8* %call to %struct.partition_desc*
  %tobool11.not = icmp eq i8* %call, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %do.end10
  %ops14 = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %ops14 to %struct.irq_domain_ops*
  %4 = bitcast %struct.irq_domain_ops* %ops to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(80) %ops14, i8* noundef align 8 dereferenceable(80) %4, i64 80, i1 false)
  %free = getelementptr inbounds i8, i8* %call, i64 88
  %5 = bitcast i8* %free to void (%struct.irq_domain*, i32, i32)**
  store void (%struct.irq_domain*, i32, i32)* @partition_domain_free, void (%struct.irq_domain*, i32, i32)** %5, align 8
  %alloc = getelementptr inbounds i8, i8* %call, i64 80
  %6 = bitcast i8* %alloc to i32 (%struct.irq_domain*, i32, i32, i8*)**
  store i32 (%struct.irq_domain*, i32, i32, i8*)* @partition_domain_alloc, i32 (%struct.irq_domain*, i32, i32, i8*)** %6, align 8
  %call18 = call fastcc %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* noundef %fwnode, i32 noundef %nr_parts, %struct.irq_domain_ops* noundef %3, i8* noundef nonnull %call) #12
  %tobool19.not = icmp eq %struct.irq_domain* %call18, null
  br i1 %tobool19.not, label %if.end56, label %if.end21

if.end21:                                         ; preds = %if.end13
  %domain = getelementptr inbounds i8, i8* %call, i64 16
  %7 = bitcast i8* %domain to %struct.irq_domain**
  store %struct.irq_domain* %call18, %struct.irq_domain** %7, align 8
  %call22 = call i64* @bitmap_zalloc(i32 noundef %nr_parts, i32 noundef 3264) #13
  %bitmap = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %bitmap to i64**
  store i64* %call22, i64** %8, align 8
  %tobool24.not = icmp eq i64* %call22, null
  br i1 %tobool24.not, label %if.then55, label %if.end50, !prof !8

if.end50:                                         ; preds = %if.end21
  %call51 = call %struct.irq_desc* @irq_to_desc(i32 noundef %chained_irq) #13
  %chained_desc = getelementptr inbounds i8, i8* %call, i64 24
  %9 = bitcast i8* %chained_desc to %struct.irq_desc**
  store %struct.irq_desc* %call51, %struct.irq_desc** %9, align 8
  %nr_parts52 = bitcast i8* %call to i32*
  store i32 %nr_parts, i32* %nr_parts52, align 8
  %parts53 = getelementptr inbounds i8, i8* %call, i64 8
  %10 = bitcast i8* %parts53 to %struct.partition_affinity**
  store %struct.partition_affinity* %parts, %struct.partition_affinity** %10, align 8
  br label %cleanup

if.then55:                                        ; preds = %if.end21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-partition-percpu.c\22; .popsection; .long 14472b - 14470b; .short 219; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !11
  call void @irq_domain_remove(%struct.irq_domain* noundef nonnull %call18) #13
  br label %if.end56

if.end56:                                         ; preds = %if.end13, %if.then55
  call void @kfree(i8* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end56, %if.end50
  %retval.0 = phi %struct.partition_desc* [ null, %if.end56 ], [ %2, %if.end50 ], [ null, %do.end10 ]
  ret %struct.partition_desc* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #13
  ret i8* %call.i.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @partition_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 {
entry:
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !12

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-partition-percpu.c\22; .popsection; .long 14472b - 14470b; .short 167; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !13
  unreachable

do.end7:                                          ; preds = %entry
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %virq) #13
  call fastcc void @irq_set_handler(i32 noundef %virq) #12
  call void @irq_domain_reset_irq_data(%struct.irq_data* noundef %call) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @partition_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* noundef %arg) #0 {
entry:
  %hwirq = alloca i64, align 8
  %type = alloca i32, align 4
  %0 = bitcast i64* %hwirq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %hwirq, align 8, !annotation !14
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %type, align 4, !annotation !14
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !12

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/irqchip/irq-partition-percpu.c\22; .popsection; .long 14472b - 14470b; .short 144; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !15
  unreachable

do.end7:                                          ; preds = %entry
  %2 = bitcast i8* %arg to %struct.irq_fwspec*
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 2
  %3 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %translate = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %3, i64 0, i32 9
  %4 = load i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)** %translate, align 8
  %call = call i32 %4(%struct.irq_domain* noundef %domain, %struct.irq_fwspec* noundef %2, i64* noundef nonnull %hwirq, i32* noundef nonnull %type) #13
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %do.end7
  %host_data = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 3
  %5 = load i8*, i8** %host_data, align 8
  %6 = load i64, i64* %hwirq, align 8
  %bitmap = getelementptr inbounds i8, i8* %5, i64 32
  %7 = bitcast i8* %bitmap to i64**
  %8 = load i64*, i64** %7, align 8
  call fastcc void @set_bit(i64 noundef %6, i64* noundef %8) #12
  %chained_desc = getelementptr inbounds i8, i8* %5, i64 24
  %9 = bitcast i8* %chained_desc to %struct.irq_desc**
  %10 = load %struct.irq_desc*, %struct.irq_desc** %9, align 8
  %call11 = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %10) #12
  call void @irq_set_chained_handler_and_data(i32 noundef %call11, void (%struct.irq_desc*)* noundef nonnull @partition_handle_irq, i8* noundef %5) #13
  %parts = getelementptr inbounds i8, i8* %5, i64 8
  %11 = bitcast i8* %parts to %struct.partition_affinity**
  %12 = load %struct.partition_affinity*, %struct.partition_affinity** %11, align 8
  %13 = load i64, i64* %hwirq, align 8
  %mask = getelementptr %struct.partition_affinity, %struct.partition_affinity* %12, i64 %13, i32 0
  %call12 = call i32 @irq_set_percpu_devid_partition(i32 noundef %virq, %struct.cpumask* noundef %mask) #13
  %14 = load i64, i64* %hwirq, align 8
  call void @irq_domain_set_info(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %14, %struct.irq_chip* noundef nonnull @partition_irq_chip, i8* noundef %5, void (%struct.irq_desc*)* noundef nonnull @handle_percpu_devid_irq, i8* noundef null, i8* noundef null) #13
  call fastcc void @irq_set_status_flags(i32 noundef %virq) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) unnamed_addr #0 {
entry:
  %conv = zext i32 %size to i64
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, i64 noundef %conv, i32 noundef 0, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #13
  ret %struct.irq_domain* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64* @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(%struct.irq_domain* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.irq_domain* @partition_get_domain(%struct.partition_desc* noundef readonly %dsc) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.partition_desc* %dsc, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %domain = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %dsc, i64 0, i32 2
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.irq_domain* [ %0, %if.then ], [ null, %entry ]
  ret %struct.irq_domain* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_handler(i32 noundef %irq) unnamed_addr #0 {
entry:
  call void @__irq_set_handler(i32 noundef %irq, void (%struct.irq_desc*)* noundef null, i32 noundef 0, i8* noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(%struct.irq_data* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, void (%struct.irq_desc*)* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, void (%struct.irq_desc*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_get_irq(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %irq, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @partition_handle_irq(%struct.irq_desc* noundef %desc) #0 {
entry:
  %call = call fastcc i8* @irq_desc_get_handler_data(%struct.irq_desc* noundef %desc) #12
  %0 = bitcast i8* %call to %struct.partition_desc*
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %desc) #12
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call3, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  call fastcc void @chained_irq_enter(%struct.irq_chip* noundef %call1, %struct.irq_desc* noundef %desc) #12
  %bitmap = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %bitmap to i64**
  %4 = load i64*, i64** %3, align 8
  %nr_parts = bitcast i8* %call to i32*
  %5 = load i32, i32* %nr_parts, align 8
  %conv = sext i32 %5 to i64
  %call4 = call fastcc i64 @find_first_bit(i64* noundef %4, i64 noundef %conv) #12
  %hwirq.046 = trunc i64 %call4 to i32
  %6 = load i32, i32* %nr_parts, align 8
  %cmp47 = icmp sgt i32 %6, %hwirq.046
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %hwirq.049 = phi i32 [ %hwirq.0, %for.inc ], [ %hwirq.046, %entry ]
  %hwirq.0.in48 = phi i64 [ %call14, %for.inc ], [ %call4, %entry ]
  %call8 = call fastcc i1 @partition_check_cpu(%struct.partition_desc* noundef %0, i32 noundef %2, i32 noundef %hwirq.049) #12
  br i1 %call8, label %for.body.for.end.loopexit_crit_edge, label %for.inc

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  %.pre.pre = load i32, i32* %nr_parts, align 8
  %.pre53 = trunc i64 %hwirq.0.in48 to i32
  br label %for.end

for.inc:                                          ; preds = %for.body
  %7 = load i64*, i64** %3, align 8
  %8 = load i32, i32* %nr_parts, align 8
  %conv11 = sext i32 %8 to i64
  %add12 = shl i64 %hwirq.0.in48, 32
  %sext = add i64 %add12, 4294967296
  %conv13 = ashr exact i64 %sext, 32
  %call14 = call fastcc i64 @find_next_bit(i64* noundef %7, i64 noundef %conv11, i64 noundef %conv13) #12
  %hwirq.0 = trunc i64 %call14 to i32
  %9 = load i32, i32* %nr_parts, align 8
  %cmp = icmp sgt i32 %9, %hwirq.0
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %hwirq.0.le = trunc i64 %call14 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.for.end.loopexit_crit_edge, %entry
  %hwirq.0.le.pre-phi = phi i32 [ %hwirq.046, %entry ], [ %.pre53, %for.body.for.end.loopexit_crit_edge ], [ %hwirq.0.le, %for.end.loopexit ]
  %10 = phi i32 [ %6, %entry ], [ %.pre.pre, %for.body.for.end.loopexit_crit_edge ], [ %9, %for.end.loopexit ]
  %cmp17 = icmp eq i32 %10, %hwirq.0.le.pre-phi
  br i1 %cmp17, label %if.then21, label %if.else, !prof !8

if.then21:                                        ; preds = %for.end
  call void @handle_bad_irq(%struct.irq_desc* noundef %desc) #13
  br label %if.end23

if.else:                                          ; preds = %for.end
  %domain = getelementptr inbounds i8, i8* %call, i64 16
  %11 = bitcast i8* %domain to %struct.irq_domain**
  %12 = load %struct.irq_domain*, %struct.irq_domain** %11, align 8
  %call22 = call i32 @generic_handle_domain_irq(%struct.irq_domain* noundef %12, i32 noundef %hwirq.0.le.pre-phi) #13
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then21
  call fastcc void @chained_irq_exit(%struct.irq_chip* noundef %call1, %struct.irq_desc* noundef %desc) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid_partition(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(%struct.irq_domain* noundef, i32 noundef, i64 noundef, %struct.irq_chip* noundef, i8* noundef, void (%struct.irq_desc*)* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(%struct.irq_desc* noundef) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_status_flags(i32 noundef %irq) unnamed_addr #0 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 0, i64 noundef 4096) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @irq_desc_get_handler_data(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %handler_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0, i32 1
  %0 = load i8*, i8** %handler_data, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  ret %struct.irq_chip* %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #14, !srcloc !17
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chained_irq_enter(%struct.irq_chip* nocapture noundef readonly %chip, %struct.irq_desc* noundef %desc) unnamed_addr #0 {
entry:
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 10
  %0 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.end10

if.end:                                           ; preds = %entry
  %irq_mask_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 8
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask_ack, align 8
  %tobool1.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #13
  br label %if.end10

if.else:                                          ; preds = %if.end
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 7
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  %irq_data4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %2(%struct.irq_data* noundef %irq_data4) #13
  %irq_ack = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 6
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_ack, align 8
  %tobool5.not = icmp eq void (%struct.irq_data*)* %3, null
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.else
  call void %3(%struct.irq_data* noundef %irq_data4) #13
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6, %entry, %if.then2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef %size) #13
  ret i64 %call5
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @partition_check_cpu(%struct.partition_desc* nocapture noundef readonly %part, i32 noundef %cpu, i32 noundef %hwirq) unnamed_addr #7 {
entry:
  %parts = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %part, i64 0, i32 1
  %0 = load %struct.partition_affinity*, %struct.partition_affinity** %parts, align 8
  %idxprom = zext i32 %hwirq to i64
  %mask = getelementptr %struct.partition_affinity, %struct.partition_affinity* %0, i64 %idxprom, i32 0
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %mask) #12
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #13
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(%struct.irq_desc* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chained_irq_exit(%struct.irq_chip* nocapture noundef readonly %chip, %struct.irq_desc* noundef %desc) unnamed_addr #0 {
entry:
  %irq_eoi = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 10
  %0 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_eoi, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %0, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %chip, i64 0, i32 9
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.sink = phi void (%struct.irq_data*)* [ %1, %if.else ], [ %0, %entry ]
  %irq_data2 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %.sink(%struct.irq_data* noundef %irq_data2) #13
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #7 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @partition_irq_mask(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #12
  %0 = bitcast i8* %call to %struct.partition_desc*
  %chained_desc = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %chained_desc to %struct.irq_desc**
  %2 = load %struct.irq_desc*, %struct.irq_desc** %1, align 8
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %2) #12
  %call3 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %2) #12
  %call5 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call5, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %5 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %5 to i32
  %call6 = call fastcc i1 @partition_check_cpu(%struct.partition_desc* noundef %0, i32 noundef %4, i32 noundef %conv) #12
  br i1 %call6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %irq_mask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 7
  %6 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_mask, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %6, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %6(%struct.irq_data* noundef %call3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @partition_irq_unmask(%struct.irq_data* nocapture noundef readonly %d) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #12
  %0 = bitcast i8* %call to %struct.partition_desc*
  %chained_desc = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %chained_desc to %struct.irq_desc**
  %2 = load %struct.irq_desc*, %struct.irq_desc** %1, align 8
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %2) #12
  %call3 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %2) #12
  %call5 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call5, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %5 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %5 to i32
  %call6 = call fastcc i1 @partition_check_cpu(%struct.partition_desc* noundef %0, i32 noundef %4, i32 noundef %conv) #12
  br i1 %call6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %irq_unmask = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 9
  %6 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_unmask, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %6, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %6(%struct.irq_data* noundef %call3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @partition_irq_set_type(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %type) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #12
  %chained_desc = getelementptr inbounds i8, i8* %call, i64 24
  %0 = bitcast i8* %chained_desc to %struct.irq_desc**
  %1 = load %struct.irq_desc*, %struct.irq_desc** %0, align 8
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %1) #12
  %irq_set_type = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 13
  %2 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %irq_set_type, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*, i32)* %2, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %1) #12
  %call5 = call i32 %2(%struct.irq_data* noundef %call3, i32 noundef %type) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @partition_irq_print_chip(%struct.irq_data* nocapture noundef readonly %d, %struct.seq_file* noundef %p) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #12
  %chained_desc = getelementptr inbounds i8, i8* %call, i64 24
  %0 = bitcast i8* %chained_desc to %struct.irq_desc**
  %1 = load %struct.irq_desc*, %struct.irq_desc** %0, align 8
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %1) #12
  %call3 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %1) #12
  %name = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call3, i64 0, i32 2
  %3 = load i64, i64* %hwirq, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef %2, i64 noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @partition_irq_get_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i8* noundef %val) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #12
  %0 = bitcast i8* %call to %struct.partition_desc*
  %chained_desc = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %chained_desc to %struct.irq_desc**
  %2 = load %struct.irq_desc*, %struct.irq_desc** %1, align 8
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %2) #12
  %call3 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %2) #12
  %call5 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call5, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %5 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %5 to i32
  %call6 = call fastcc i1 @partition_check_cpu(%struct.partition_desc* noundef %0, i32 noundef %4, i32 noundef %conv) #12
  br i1 %call6, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %entry
  %irq_get_irqchip_state = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 28
  %6 = load i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i8*)** %irq_get_irqchip_state, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*, i32, i8*)* %6, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call9 = call i32 %6(%struct.irq_data* noundef %call3, i32 noundef %which, i8* noundef %val) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ -22, %land.lhs.true ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @partition_irq_set_irqchip_state(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %which, i1 noundef %val) #0 {
entry:
  %call = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %d) #12
  %0 = bitcast i8* %call to %struct.partition_desc*
  %chained_desc = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %chained_desc to %struct.irq_desc**
  %2 = load %struct.irq_desc*, %struct.irq_desc** %1, align 8
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %2) #12
  %call3 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %2) #12
  %call5 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call5, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %5 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %5 to i32
  %call6 = call fastcc i1 @partition_check_cpu(%struct.partition_desc* noundef %0, i32 noundef %4, i32 noundef %conv) #12
  br i1 %call6, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %entry
  %irq_set_irqchip_state = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 29
  %6 = load i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i32, i1)** %irq_set_irqchip_state, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*, i32, i1)* %6, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call10 = call i32 %6(%struct.irq_data* noundef %call3, i32 noundef %which, i1 noundef %val) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call10, %if.then ], [ -22, %land.lhs.true ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %chip_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 7
  %0 = load i8*, i8** %chip_data, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef readnone %desc) unnamed_addr #9 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  ret %struct.irq_data* %irq_data
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef, i32 noundef, i64 noundef, i32 noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nounwind }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153623558}
!10 = !{i64 2153625459}
!11 = !{i64 2153627537}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2153621838}
!14 = !{!"auto-init"}
!15 = !{i64 2153620354}
!16 = !{i64 2147757337, i64 2147757848, i64 2147757878, i64 2147757904, i64 2147757936, i64 2147757965}
!17 = !{i64 2148868173, i64 2148868220, i64 2148868226, i64 2148868263, i64 2148868281, i64 2148869208, i64 2148869256, i64 2148869304, i64 2148869367, i64 2148869416, i64 2148868359, i64 2148868384, i64 2148868410, i64 2148868416, i64 2148868453, i64 2148868459, i64 2148868509, i64 2148868555, i64 2148868588}
