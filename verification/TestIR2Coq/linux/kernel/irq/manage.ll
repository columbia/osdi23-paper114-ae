; ModuleID = 'kernel/irq/manage.c'
source_filename = "kernel/irq/manage.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.cpumask = type { [4 x i64] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.workqueue_struct = type opaque
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, void (%struct.irq_desc*)*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.17, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.18, i8* }
%union.anon.18 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.49, %struct.list_head, %struct.list_head, %union.anon.50 }
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
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
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.48, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.48 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }

@force_irqthreads_key = dso_local global %struct.static_key_false zeroinitializer, align 4
@__setup_str_setup_forced_irqthreads = internal constant [11 x i8] c"threadirqs\00", section ".init.rodata", align 1
@__setup_setup_forced_irqthreads = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_setup_forced_irqthreads, i32 0, i32 0), i32 (i8*)* @setup_forced_irqthreads, i32 1 }, section ".init.setup", align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@irq_default_affinity = dso_local global [1 x %struct.cpumask] zeroinitializer, align 8
@irq_setup_affinity.mask_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@irq_setup_affinity.mask = internal global %struct.cpumask zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"\014Unbalanced enable for IRQ %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\013enable_irq before setup/request_irq: irq %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unbalanced IRQ %d wake disable\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"\013genirq: Setting trigger mode %lu for irq %u failed (%pS)\0A\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to set type for IRQ%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"\013prepare_percpu_nmi called for a non-NMI interrupt: irq %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\013genirq: Failed to setup NMI delivery: irq %u\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@irq_validate_effective_affinity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"\014genirq: irq_chip %s did not update eff. affinity mask of irq %u\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Trying to free IRQ %d from IRQ context!\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Trying to free already-free IRQ %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@no_irq_chip = external dso_local global %struct.irq_chip, align 8
@.str.11 = private unnamed_addr constant [69 x i8] c"\013genirq: Failed to request resources for %s (irq %d) on irqchip %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"\013genirq: Invalid attempt to share NMI for %s (irq %d) on irqchip %s.\0A\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"\013genirq: Threaded irq requested with handler=NULL and !ONESHOT for %s (irq %d)\0A\00", align 1
@__setup_irq.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"&desc->wait_for_threads\00", align 1
@noirqdebug = external dso_local local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"\014genirq: irq %d uses trigger mode %u; requested %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"\013genirq: Flags mismatch irq %d. %08x (%s) vs. %08x (%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Primary handler called for nested irq %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"Secondary action handler called for irq %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"irq/%d-%s\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"irq/%d-s-%s\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"\013genirq: exiting task \22%s\22 (%d) is an active IRQ thread (irq %d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"percpu IRQ %d still enabled on CPU%d!\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_setup_forced_irqthreads to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_forced_irqthreads(i8* nocapture noundef readnone %arg) #0 section ".init.text" {
entry:
  call fastcc void @static_key_enable() #15
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @synchronize_hardirq(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__synchronize_hardirq(%struct.irq_desc* noundef nonnull %call, i1 noundef false) #15
  %counter.i = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 21, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool2.not = icmp eq i32 %0, 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i1 [ %tobool2.not, %if.then ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__synchronize_hardirq(%struct.irq_desc* noundef %desc, i1 noundef %sync_chip) unnamed_addr #1 {
entry:
  %inprogress = alloca i8, align 4
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #15
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %inprogress) #17
  store i8 0, i8* %inprogress, align 4, !annotation !8
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  %sync_chip.not = xor i1 %sync_chip, true
  br label %do.body

do.body:                                          ; preds = %do.body10, %entry
  %call128 = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data) #15
  br i1 %call128, label %while.body, label %do.body2

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #15
  %call1 = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data) #15
  br i1 %call1, label %while.body, label %do.body2

do.body2:                                         ; preds = %while.body, %do.body
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %call5 = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data) #15
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, i8* %inprogress, align 4
  %brmerge = or i1 %call5, %sync_chip.not
  br i1 %brmerge, label %do.body10, label %if.then

if.then:                                          ; preds = %do.body2
  %call9 = call i32 @__irq_get_irqchip_state(%struct.irq_data* noundef %call, i32 noundef 1, i8* noundef nonnull %inprogress) #15
  br label %do.body10

do.body10:                                        ; preds = %do.body2, %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call3) #15
  %0 = load i8, i8* %inprogress, align 4, !range !9
  %tobool20.not = icmp eq i8 %0, 0
  br i1 %tobool20.not, label %do.end21, label %do.body

do.end21:                                         ; preds = %do.body10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %inprogress) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @synchronize_irq(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__synchronize_hardirq(%struct.irq_desc* noundef nonnull %call, i1 noundef true) #15
  %counter.i = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 21, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool6.not = icmp eq i32 %0, 0
  br i1 %tobool6.not, label %if.end17, label %if.end

if.end:                                           ; preds = %if.then
  %1 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !8
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #16
  %wait_for_threads = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 22
  %call829 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %wait_for_threads, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #16
  %2 = load volatile i32, i32* %counter.i, align 4
  %tobool11.not30 = icmp eq i32 %2, 0
  br i1 %tobool11.not30, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup
  call void @schedule() #16
  %call8 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %wait_for_threads, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #16
  %3 = load volatile i32, i32* %counter.i, align 4
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(%struct.wait_queue_head* noundef %wait_for_threads, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #17
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_can_set_affinity(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %call1 = call fastcc i1 @__irq_can_set_affinity(%struct.irq_desc* noundef %call) #15
  %conv = zext i1 %call1 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__irq_can_set_affinity(%struct.irq_desc* noundef readonly %desc) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.irq_desc* %desc, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call fastcc i1 @irqd_can_balance(%struct.irq_data* noundef %irq_data) #15
  br i1 %call, label %lor.lhs.false1, label %return

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool3.not = icmp eq %struct.irq_chip* %0, null
  br i1 %tobool3.not, label %return, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false1
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 11
  %1 = load i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  %tobool7.not = icmp ne i32 (%struct.irq_data*, %struct.cpumask*, i1)* %1, null
  br label %return

return:                                           ; preds = %lor.lhs.false4, %entry, %lor.lhs.false, %lor.lhs.false1
  %retval.0 = phi i1 [ false, %lor.lhs.false1 ], [ false, %lor.lhs.false ], [ false, %entry ], [ %tobool7.not, %lor.lhs.false4 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_can_set_affinity_usr(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %call1 = call fastcc i1 @__irq_can_set_affinity(%struct.irq_desc* noundef %call) #15
  br i1 %call1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call2 = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %irq_data) #15
  %lnot = xor i1 %call2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 2097152
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_set_thread_affinity(%struct.irq_desc* nocapture noundef readonly %desc) local_unnamed_addr #1 {
entry:
  %action1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %action.07 = load %struct.irqaction*, %struct.irqaction** %action1, align 8
  %tobool.not8 = icmp eq %struct.irqaction* %action.07, null
  br i1 %tobool.not8, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %action.09 = phi %struct.irqaction* [ %action.0, %for.inc ], [ %action.07, %entry ]
  %thread = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.09, i64 0, i32 5
  %0 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %tobool2.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %thread_flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.09, i64 0, i32 9
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %thread_flags) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.09, i64 0, i32 3
  %action.0 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %tobool.not = icmp eq %struct.irqaction* %action.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_do_set_affinity(%struct.irq_data* noundef %data, %struct.cpumask* noundef %mask, i1 noundef %force) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.irq_desc* @irq_data_to_desc(%struct.irq_data* noundef %data) #15
  %call1 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %data) #15
  %tobool.not = icmp eq %struct.irq_chip* %call1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 11
  %0 = load i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  %tobool2.not = icmp eq i32 (%struct.irq_data*, %struct.cpumask*, i1)* %0, null
  br i1 %tobool2.not, label %cleanup, label %if.else14

if.else14:                                        ; preds = %lor.lhs.false
  %call17 = call i32 %0(%struct.irq_data* noundef %data, %struct.cpumask* noundef %mask, i1 noundef %force) #16
  switch i32 %call17, label %cleanup [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.else14, %if.else14
  %arraydecay = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 0, i32 3, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %mask) #15
  br label %sw.bb19

sw.bb19:                                          ; preds = %if.else14, %sw.bb
  call fastcc void @irq_validate_effective_affinity(%struct.irq_data* noundef %data) #15
  call void @irq_set_thread_affinity(%struct.irq_desc* noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else14, %sw.bb19, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call17, %if.else14 ], [ 0, %sw.bb19 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_desc* @irq_data_to_desc(%struct.irq_data* nocapture noundef readonly %data) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 3
  %0 = bitcast %struct.irq_common_data** %common to %struct.irq_desc**
  %1 = load %struct.irq_desc*, %struct.irq_desc** %0, align 8
  ret %struct.irq_desc* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  ret %struct.irq_chip* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef nonnull @irq_setup_affinity.mask_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_and(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #1 {
entry:
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_and(i64* noundef %arraydecay2, i64* noundef %arraydecay4) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %src1p) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_intersects(i64* noundef %arraydecay) #15
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @irq_setup_affinity.mask_lock) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_validate_effective_affinity(%struct.irq_data* nocapture noundef readonly %data) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.cpumask* @irq_data_get_effective_affinity_mask(%struct.irq_data* noundef %data) #15
  %call1 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %data) #15
  %call2 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %call) #15
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %.b24 = load i1, i1* @irq_validate_effective_affinity.__already_done, align 1
  br i1 %.b24, label %cleanup, label %if.then7, !prof !12

if.then7:                                         ; preds = %if.end
  store i1 true, i1* @irq_validate_effective_affinity.__already_done, align 1
  %name = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8
  %irq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 1
  %1 = load i32, i32* %irq, align 4
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i8* noundef %0, i32 noundef %1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_affinity_locked(%struct.irq_data* noundef %data, %struct.cpumask* noundef %mask, i1 noundef %force) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %data) #15
  %call1 = call fastcc %struct.irq_desc* @irq_data_to_desc(%struct.irq_data* noundef %data) #15
  %tobool.not = icmp eq %struct.irq_chip* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call, i64 0, i32 11
  %0 = load i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)** %irq_set_affinity, align 8
  %tobool2.not = icmp eq i32 (%struct.irq_data*, %struct.cpumask*, i1)* %0, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call fastcc i1 @irq_set_affinity_deactivated(%struct.irq_data* noundef %data, %struct.cpumask* noundef %mask) #15
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call8 = call fastcc i1 @irqd_is_setaffinity_pending(%struct.irq_data* noundef %data) #15
  br i1 %call8, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @irq_try_set_affinity(%struct.irq_data* noundef %data, %struct.cpumask* noundef %mask, i1 noundef %force) #15
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call fastcc void @irqd_set_move_pending(%struct.irq_data* noundef %data) #15
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %ret.0 = phi i32 [ 0, %if.else ], [ %call11, %if.then9 ]
  %affinity_notify = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call1, i64 0, i32 19
  %1 = load %struct.irq_affinity_notify*, %struct.irq_affinity_notify** %affinity_notify, align 8
  %tobool13.not = icmp eq %struct.irq_affinity_notify* %1, null
  br i1 %tobool13.not, label %if.end24, label %if.then14

if.then14:                                        ; preds = %if.end12
  %kref = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %1, i64 0, i32 1
  call fastcc void @kref_get(%struct.kref* noundef %kref) #15
  %2 = load %struct.irq_affinity_notify*, %struct.irq_affinity_notify** %affinity_notify, align 8
  %work = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %2, i64 0, i32 2
  %call17 = call fastcc i1 @schedule_work(%struct.work_struct* noundef %work) #15
  br i1 %call17, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.then14
  %3 = load %struct.irq_affinity_notify*, %struct.irq_affinity_notify** %affinity_notify, align 8
  %kref20 = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %3, i64 0, i32 1
  %release = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %3, i64 0, i32 4
  %4 = load void (%struct.kref*)*, void (%struct.kref*)** %release, align 8
  call fastcc void @kref_put(%struct.kref* noundef %kref20, void (%struct.kref*)* noundef %4) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.then18, %if.end12
  call fastcc void @irqd_set(%struct.irq_data* noundef %data, i32 noundef 4096) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end24
  %retval.0 = phi i32 [ %ret.0, %if.end24 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @irq_set_affinity_deactivated(%struct.irq_data* nocapture noundef readonly %data, %struct.cpumask* noundef %mask) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.irq_desc* @irq_data_to_desc(%struct.irq_data* noundef %data) #15
  %call1 = call fastcc i1 @irqd_is_activated(%struct.irq_data* noundef %data) #15
  br i1 %call1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i1 @irqd_affinity_on_activate(%struct.irq_data* noundef %data) #15
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 0, i32 3, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %mask) #15
  call fastcc void @irq_init_effective_affinity(%struct.irq_data* noundef %data, %struct.cpumask* noundef %mask) #15
  call fastcc void @irqd_set(%struct.irq_data* noundef %data, i32 noundef 4096) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ false, %lor.lhs.false ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_setaffinity_pending(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 256
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_try_set_affinity(%struct.irq_data* noundef %data, %struct.cpumask* noundef %dest, i1 noundef %force) unnamed_addr #1 {
entry:
  %call = call i32 @irq_do_set_affinity(%struct.irq_data* noundef %data, %struct.cpumask* noundef %dest, i1 noundef %force) #15
  %cmp = icmp ne i32 %call, -16
  %brmerge = or i1 %cmp, %force
  %spec.select = select i1 %brmerge, i32 %call, i32 -16
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_move_pending(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #6 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 256
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %call = call fastcc i1 @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #15
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_put(%struct.kref* noundef %kref, void (%struct.kref*)* nocapture noundef readonly %release) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #15
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call void %release(%struct.kref* noundef %kref) #16
  br label %return

return:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %mask) unnamed_addr #6 {
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
define dso_local i32 @irq_update_affinity_desc(i32 noundef %irq, %struct.irq_affinity_desc* noundef %affinity) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call1 = call fastcc i1 @irqd_is_started(%struct.irq_data* noundef %irq_data) #15
  br i1 %call1, label %out_unlock, label %if.end3

if.end3:                                          ; preds = %if.end
  %call5 = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %irq_data) #15
  br i1 %call5, label %out_unlock, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call9 = call fastcc i1 @irqd_is_activated(%struct.irq_data* noundef %irq_data) #15
  br i1 %call9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @irq_domain_deactivate_irq(%struct.irq_data* noundef %irq_data) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %is_managed = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %affinity, i64 0, i32 1
  %bf.load = load i8, i8* %is_managed, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool14.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end13
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 2097152) #15
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 8388608) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13
  %arraydecay = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 0, i32 3, i64 0
  %mask = getelementptr inbounds %struct.irq_affinity_desc, %struct.irq_affinity_desc* %affinity, i64 0, i32 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %mask) #15
  br i1 %call9, label %if.then21, label %out_unlock

if.then21:                                        ; preds = %if.end18
  %call23 = call i32 @irq_domain_activate_irq(%struct.irq_data* noundef %irq_data, i1 noundef false) #16
  br label %out_unlock

out_unlock:                                       ; preds = %if.end3, %if.end, %if.end18, %if.then21
  %ret.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.end18 ], [ -16, %if.end ], [ -16, %if.end3 ]
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef %flags, i32 noundef %check) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @__irq_get_desc_lock(i32 noundef %irq, i64* noundef %flags, i1 noundef true, i32 noundef %check) #16
  ret %struct.irq_desc* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_started(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 4194304
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_activated(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 512
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_deactivate_irq(%struct.irq_data* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_activate_irq(%struct.irq_data* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef %desc, i64 noundef %flags) unnamed_addr #1 {
entry:
  call void @__irq_put_desc_unlock(%struct.irq_desc* noundef %desc, i64 noundef %flags, i1 noundef true) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_affinity(i32 noundef %irq, %struct.cpumask* noundef %cpumask) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__irq_set_affinity(i32 noundef %irq, %struct.cpumask* noundef %cpumask, i1 noundef false) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__irq_set_affinity(i32 noundef %irq, %struct.cpumask* noundef %mask, i1 noundef %force) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %call2 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef nonnull %call) #15
  %call4 = call i32 @irq_set_affinity_locked(%struct.irq_data* noundef %call2, %struct.cpumask* noundef %mask, i1 noundef %force) #15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body
  %retval.0 = phi i32 [ %call4, %do.body ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_force_affinity(i32 noundef %irq, %struct.cpumask* noundef %cpumask) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__irq_set_affinity(i32 noundef %irq, %struct.cpumask* noundef %cpumask, i1 noundef true) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_affinity_hint(i32 noundef %irq, %struct.cpumask* noundef %m) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 1) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %affinity_hint = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 18
  store %struct.cpumask* %m, %struct.cpumask** %affinity_hint, align 16
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #15
  %tobool1.not = icmp eq %struct.cpumask* %m, null
  br i1 %tobool1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @__irq_set_affinity(i32 noundef %irq, %struct.cpumask* noundef nonnull %m, i1 noundef false) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.then2 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef %flags, i32 noundef %check) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @__irq_get_desc_lock(i32 noundef %irq, i64* noundef %flags, i1 noundef false, i32 noundef %check) #16
  ret %struct.irq_desc* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef %desc, i64 noundef %flags) unnamed_addr #1 {
entry:
  call void @__irq_put_desc_unlock(%struct.irq_desc* noundef %desc, i64 noundef %flags, i1 noundef false) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_affinity_notifier(i32 noundef %irq, %struct.irq_affinity_notify* noundef %notify) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 8192
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool5.not = icmp eq %struct.irq_affinity_notify* %notify, null
  br i1 %tobool5.not, label %do.body16, label %if.then6

if.then6:                                         ; preds = %if.end
  %irq7 = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %notify, i64 0, i32 0
  store i32 %irq, i32* %irq7, align 8
  %kref = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %notify, i64 0, i32 1
  call fastcc void @kref_init(%struct.kref* noundef %kref) #15
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %notify, i64 0, i32 2, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry11 = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %notify, i64 0, i32 2, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry11) #15
  %func = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %notify, i64 0, i32 2, i32 2
  store void (%struct.work_struct*)* @irq_affinity_notify, void (%struct.work_struct*)** %func, align 8
  br label %do.body16

do.body16:                                        ; preds = %if.end, %if.then6
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call17 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %affinity_notify = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 19
  %1 = load %struct.irq_affinity_notify*, %struct.irq_affinity_notify** %affinity_notify, align 8
  store %struct.irq_affinity_notify* %notify, %struct.irq_affinity_notify** %affinity_notify, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call17) #15
  %tobool30.not = icmp eq %struct.irq_affinity_notify* %1, null
  br i1 %tobool30.not, label %cleanup, label %if.then31

if.then31:                                        ; preds = %do.body16
  %work32 = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %1, i64 0, i32 2
  %call33 = call i1 @cancel_work_sync(%struct.work_struct* noundef %work32) #16
  br i1 %call33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.then31
  %kref35 = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %1, i64 0, i32 1
  %release = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %1, i64 0, i32 4
  %2 = load void (%struct.kref*)*, void (%struct.kref*)** %release, align 8
  call fastcc void @kref_put(%struct.kref* noundef %kref35, void (%struct.kref*)* noundef %2) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then31
  %kref38 = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %1, i64 0, i32 1
  %release39 = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %1, i64 0, i32 4
  %3 = load void (%struct.kref*)*, void (%struct.kref*)** %release39, align 8
  call fastcc void @kref_put(%struct.kref* noundef %kref38, void (%struct.kref*)* noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %if.end37, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %entry ], [ 0, %if.end37 ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #7 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @irq_affinity_notify(%struct.work_struct* noundef %work) #1 {
entry:
  %cpumask = alloca [1 x %struct.cpumask], align 8
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -1, i32 2
  %0 = bitcast void (%struct.work_struct*)** %add.ptr to %struct.irq_affinity_notify*
  %irq = bitcast void (%struct.work_struct*)** %add.ptr to i32*
  %1 = load i32, i32* %irq, align 8
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %1) #16
  %2 = bitcast [1 x %struct.cpumask]* %cpumask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !8
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %arraydecay9 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %cpumask, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 0, i32 3, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %arraydecay9, %struct.cpumask* noundef %arraydecay10) #15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call4) #15
  %notify21 = getelementptr inbounds void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 5
  %3 = bitcast void (%struct.work_struct*)** %notify21 to void (%struct.irq_affinity_notify*, %struct.cpumask*)**
  %4 = load void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.irq_affinity_notify*, %struct.cpumask*)** %3, align 8
  call void %4(%struct.irq_affinity_notify* noundef %0, %struct.cpumask* noundef nonnull %arraydecay9) #16
  br label %out

out:                                              ; preds = %entry, %lor.lhs.false
  %kref = getelementptr inbounds %struct.irq_affinity_notify, %struct.irq_affinity_notify* %0, i64 0, i32 1
  %release = getelementptr inbounds void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 6
  %5 = bitcast void (%struct.work_struct*)** %release to void (%struct.kref*)**
  %6 = load void (%struct.kref*)*, void (%struct.kref*)** %5, align 8
  call fastcc void @kref_put(%struct.kref* noundef %kref, void (%struct.kref*)* noundef %6) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_work_sync(%struct.work_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_setup_affinity(%struct.irq_desc* noundef %desc) local_unnamed_addr #1 {
entry:
  %call1 = call fastcc i1 @__irq_can_set_affinity(%struct.irq_desc* noundef %desc) #15
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock() #15
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call2 = call fastcc i1 @irqd_affinity_is_managed(%struct.irq_data* noundef %irq_data) #15
  br i1 %call2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = call fastcc i1 @irqd_has_set(%struct.irq_data* noundef %irq_data) #15
  br i1 %call4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %arraydecay = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 0, i32 3, i64 0
  %call6 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %arraydecay) #15
  br i1 %call6, label %if.end13, label %if.else

if.else:                                          ; preds = %if.then5
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 4096) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.else, %lor.lhs.false
  %set.0 = phi %struct.cpumask* [ getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @irq_default_affinity, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @irq_default_affinity, i64 0, i64 0), %lor.lhs.false ], [ %arraydecay, %if.then5 ]
  call fastcc void @cpumask_and(%struct.cpumask* noundef nonnull @__cpu_online_mask, %struct.cpumask* noundef %set.0) #15
  %call15 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef nonnull @irq_setup_affinity.mask) #15
  br i1 %call15, label %if.then16, label %if.then18

if.then16:                                        ; preds = %if.end13
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull @irq_setup_affinity.mask, %struct.cpumask* noundef nonnull @__cpu_online_mask) #15
  br label %if.then18

if.then18:                                        ; preds = %if.end13, %if.then16
  %call19 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef nonnull @irq_setup_affinity.mask) #15
  br i1 %call19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.then18
  call fastcc void @cpumask_and(%struct.cpumask* noundef nonnull @irq_setup_affinity.mask, %struct.cpumask* noundef nonnull @__cpu_online_mask) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then20
  %call25 = call i32 @irq_do_set_affinity(%struct.irq_data* noundef %irq_data, %struct.cpumask* noundef nonnull @irq_setup_affinity.mask, i1 noundef false) #15
  call fastcc void @__raw_spin_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end23
  %retval.0 = phi i32 [ %call25, %if.end23 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_has_set(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 4096
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clear(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %mask) unnamed_addr #6 {
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
define internal fastcc i1 @cpumask_empty(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay) #15
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_vcpu_affinity(i32 noundef %irq, i8* noundef %vcpu_info) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef nonnull %call) #15
  br label %do.body

do.body:                                          ; preds = %if.end6, %if.end
  %data.0 = phi %struct.irq_data* [ %call1, %if.end ], [ %2, %if.end6 ]
  %call2 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %data.0) #15
  %tobool3.not = icmp eq %struct.irq_chip* %call2, null
  br i1 %tobool3.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %irq_set_vcpu_affinity = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call2, i64 0, i32 30
  %1 = load i32 (%struct.irq_data*, i8*)*, i32 (%struct.irq_data*, i8*)** %irq_set_vcpu_affinity, align 8
  %tobool4.not = icmp eq i32 (%struct.irq_data*, i8*)* %1, null
  br i1 %tobool4.not, label %if.end6, label %do.end

if.end6:                                          ; preds = %land.lhs.true, %do.body
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.0, i64 0, i32 6
  %2 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool7.not = icmp eq %struct.irq_data* %2, null
  br i1 %tobool7.not, label %if.end12, label %do.body

do.end:                                           ; preds = %land.lhs.true
  %tobool8.not = icmp eq %struct.irq_data* %data.0, null
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %do.end
  %call11 = call i32 %1(%struct.irq_data* noundef nonnull %data.0, i8* noundef %vcpu_info) #16
  br label %if.end12

if.end12:                                         ; preds = %if.end6, %if.then9, %do.end
  %ret.0 = phi i32 [ %call11, %if.then9 ], [ -38, %do.end ], [ -38, %if.end6 ]
  %3 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef readnone %desc) unnamed_addr #8 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  ret %struct.irq_data* %irq_data
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__disable_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #1 {
entry:
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  %0 = load i32, i32* %depth, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %depth, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @irq_disable(%struct.irq_desc* noundef %desc) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_disable(%struct.irq_desc* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disable_irq_nosync(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__disable_irq_nosync(i32 noundef %irq) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__disable_irq_nosync(i32 noundef %irq) unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 1) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @__disable_irq(%struct.irq_desc* noundef nonnull %call) #15
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disable_irq(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__disable_irq_nosync(i32 noundef %irq) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @synchronize_irq(i32 noundef %irq) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @disable_hardirq(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__disable_irq_nosync(i32 noundef %irq) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call1 = call i1 @synchronize_hardirq(i32 noundef %irq) #15
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i1 [ %call1, %if.then ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disable_nmi_nosync(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  call void @disable_irq_nosync(i32 noundef %irq) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__enable_irq(%struct.irq_desc* noundef %desc) local_unnamed_addr #1 {
entry:
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  %0 = load i32, i32* %depth, align 8
  switch i32 %0, label %sw.default [
    i32 0, label %do.end
    i32 1, label %sw.bb16
  ]

do.end:                                           ; preds = %entry, %sw.bb16
  %call = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %desc) #15
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %call) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 775; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !15
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %1 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %1, 2048
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end19, label %do.end

if.end19:                                         ; preds = %sw.bb16
  call fastcc void @irq_settings_set_noprobe(%struct.irq_desc* noundef %desc) #15
  %call20 = call i32 @irq_startup(%struct.irq_desc* noundef %desc, i1 noundef true, i1 noundef true) #16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %dec = add i32 %0, -1
  store i32 %dec, i32* %depth, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end19, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_get_irq(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %irq = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %irq, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_noprobe(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %or = or i32 %0, 1024
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_startup(%struct.irq_desc* noundef, i1 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @enable_irq(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 1) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool1.not = icmp eq %struct.irq_chip* %1, null
  br i1 %tobool1.not, label %do.end, label %if.end27, !prof !16

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 noundef %irq) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 816; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !17
  br label %out

if.end27:                                         ; preds = %if.end
  call void @__enable_irq(%struct.irq_desc* noundef nonnull %call) #15
  br label %out

out:                                              ; preds = %do.end, %if.end27
  %2 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %2) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @enable_nmi(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  call void @enable_irq(i32 noundef %irq) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_irq_wake(i32 noundef %irq, i32 noundef %on) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 1) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %1 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %1, 8192
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %out_unlock

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq i32 %on, 0
  %wake_depth14 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 8
  %2 = load i32, i32* %wake_depth14, align 4
  br i1 %tobool4.not, label %if.else13, label %if.then5

if.then5:                                         ; preds = %if.end3
  %inc = add i32 %2, 1
  store i32 %inc, i32* %wake_depth14, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then6, label %out_unlock

if.then6:                                         ; preds = %if.then5
  %call7 = call fastcc i32 @set_irq_wake_real(i32 noundef %irq, i32 noundef %on) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then6
  store i32 0, i32* %wake_depth14, align 4
  br label %out_unlock

if.else:                                          ; preds = %if.then6
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 16384) #15
  br label %out_unlock

if.else13:                                        ; preds = %if.end3
  %cmp15 = icmp eq i32 %2, 0
  br i1 %cmp15, label %do.end, label %if.else35

do.end:                                           ; preds = %if.else13
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %irq) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 900; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !18
  br label %out_unlock

if.else35:                                        ; preds = %if.else13
  %dec = add i32 %2, -1
  store i32 %dec, i32* %wake_depth14, align 4
  %cmp37 = icmp eq i32 %dec, 0
  br i1 %cmp37, label %if.then39, label %out_unlock

if.then39:                                        ; preds = %if.else35
  %call40 = call fastcc i32 @set_irq_wake_real(i32 noundef %irq, i32 noundef 0) #15
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.then39
  store i32 1, i32* %wake_depth14, align 4
  br label %out_unlock

if.else44:                                        ; preds = %if.then39
  %irq_data45 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data45, i32 noundef 16384) #15
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %if.then9, %if.else, %if.then5, %if.else35, %if.else44, %if.then42, %do.end
  %ret.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.else ], [ 0, %if.then5 ], [ 0, %do.end ], [ %call40, %if.then42 ], [ 0, %if.else44 ], [ 0, %if.else35 ], [ -22, %if.end ]
  %3 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @set_irq_wake_real(i32 noundef %irq, i32 noundef %on) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %call1 = call fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* noundef %call) #15
  %flags = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call1, i64 0, i32 35
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_set_wake = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 14
  %2 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %irq_set_wake, align 8
  %tobool2.not = icmp eq i32 (%struct.irq_data*, i32)* %2, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call8 = call i32 %2(%struct.irq_data* noundef %irq_data, i32 noundef %on) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call8, %if.then3 ], [ -6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @can_request_irq(i32 noundef %irq, i64 noundef %irqflags) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @irq_settings_can_request(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 4
  %1 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool3.not = icmp eq %struct.irqaction* %1, null
  br i1 %tobool3.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %flags5 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %1, i64 0, i32 8
  %2 = load i32, i32* %flags5, align 4
  %conv = zext i32 %2 to i64
  %and = and i64 %irqflags, 128
  %and6 = and i64 %and, %conv
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.then2
  br label %if.end10

if.end10:                                         ; preds = %lor.lhs.false, %if.then8, %if.end
  %canrequest.0 = phi i32 [ 1, %if.then8 ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  %3 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi i32 [ %canrequest.0, %if.end10 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_can_request(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 2048
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__irq_set_trigger(%struct.irq_desc* noundef %desc, i64 noundef %flags) local_unnamed_addr #1 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %chip1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip1, align 8
  %tobool.not = icmp eq %struct.irq_chip* %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %irq_set_type = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 13
  %1 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %irq_set_type, align 8
  %tobool2.not = icmp eq i32 (%struct.irq_data*, i32)* %1, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %flags3 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 35
  %2 = load i64, i64* %flags3, align 8
  %and = and i64 %2, 1
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end
  %call = call fastcc i1 @irqd_irq_masked(%struct.irq_data* noundef %irq_data) #15
  br i1 %call, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @mask_irq(%struct.irq_desc* noundef %desc) #16
  %.pre.pre = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %irq_set_type, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %.pre = phi i32 (%struct.irq_data*, i32)* [ %.pre.pre, %if.then7 ], [ %1, %if.then5 ]
  %call10 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #15
  br label %if.end13

if.end13:                                         ; preds = %if.end8, %if.end
  %3 = phi i32 (%struct.irq_data*, i32)* [ %1, %if.end ], [ %.pre, %if.end8 ]
  %tobool36.not = phi i1 [ true, %if.end ], [ %call10, %if.end8 ]
  %and14 = and i64 %flags, 15
  %conv = trunc i64 %and14 to i32
  %call17 = call i32 %3(%struct.irq_data* noundef %irq_data, i32 noundef %conv) #16
  switch i32 %call17, label %do.end [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end13, %if.end13
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 15) #15
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef %conv) #15
  br label %sw.bb21

sw.bb21:                                          ; preds = %if.end13, %sw.bb
  %call23 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef %irq_data) #15, !range !19
  call fastcc void @irq_settings_set_trigger_mask(%struct.irq_desc* noundef %desc, i32 noundef %call23) #15
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 8192) #15
  call fastcc void @irq_settings_clr_level(%struct.irq_desc* noundef %desc) #15
  %4 = and i32 %call23, 12
  %tobool28.not = icmp eq i32 %4, 0
  br i1 %tobool28.not, label %sw.epilog, label %if.then29

if.then29:                                        ; preds = %sw.bb21
  call fastcc void @irq_settings_set_level(%struct.irq_desc* noundef %desc) #15
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 8192) #15
  br label %sw.epilog

do.end:                                           ; preds = %if.end13
  %call33 = call fastcc i32 @irq_desc_get_irq(%struct.irq_desc* noundef %desc) #15
  %5 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %irq_set_type, align 8
  %call35 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 noundef %and14, i32 noundef %call33, i32 (%struct.irq_data*, i32)* noundef %5) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %if.then29, %do.end
  %ret.0 = phi i32 [ %call17, %do.end ], [ 0, %if.then29 ], [ 0, %sw.bb21 ]
  br i1 %tobool36.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %sw.epilog
  call void @unmask_irq(%struct.irq_desc* noundef %desc) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then37, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %ret.0, %if.then37 ], [ %ret.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_irq_masked(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 131072
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mask_irq(%struct.irq_desc* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_irq_disabled(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irqd_get_trigger_type(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 15
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_trigger_mask(%struct.irq_desc* nocapture noundef %desc, i32 noundef %mask) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, -16
  %and1 = and i32 %mask, 15
  %or = or i32 %and, %and1
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_clr_level(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, -257
  store i32 %and, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_level(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %or = or i32 %0, 256
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmask_irq(%struct.irq_desc* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_parent(i32 noundef %irq, i32 noundef %parent_irq) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parent_irq1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 27
  store i32 %parent_irq, i32* %parent_irq1, align 32
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_wake_thread(i32 noundef %irq, i8* noundef readnone %dev_id) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call1, label %if.then, label %do.body, !prof !16

if.then:                                          ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1307; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !20
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call21 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %action22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 4
  %action.058 = load %struct.irqaction*, %struct.irqaction** %action22, align 8
  %tobool23.not59 = icmp eq %struct.irqaction* %action.058, null
  br i1 %tobool23.not59, label %do.body32, label %for.body

for.body:                                         ; preds = %do.body, %for.inc
  %action.060 = phi %struct.irqaction* [ %action.0, %for.inc ], [ %action.058, %do.body ]
  %dev_id24 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.060, i64 0, i32 1
  %0 = load i8*, i8** %dev_id24, align 8
  %cmp25 = icmp eq i8* %0, %dev_id
  br i1 %cmp25, label %if.then27, label %for.inc

if.then27:                                        ; preds = %for.body
  %thread = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.060, i64 0, i32 5
  %1 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %tobool28.not = icmp eq %struct.task_struct* %1, null
  br i1 %tobool28.not, label %do.body32, label %if.then29

if.then29:                                        ; preds = %if.then27
  call void @__irq_wake_thread(%struct.irq_desc* noundef nonnull %call, %struct.irqaction* noundef nonnull %action.060) #16
  br label %do.body32

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action.060, i64 0, i32 3
  %action.0 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %tobool23.not = icmp eq %struct.irqaction* %action.0, null
  br i1 %tobool23.not, label %do.body32, label %for.body

do.body32:                                        ; preds = %for.inc, %do.body, %if.then29, %if.then27
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call21) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry, %do.body32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 131072
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_wake_thread(%struct.irq_desc* noundef, %struct.irqaction* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @free_irq(i32 noundef %irq, i8* noundef %dev_id) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call1, label %if.then, label %if.end18, !prof !16

if.then:                                          ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1998; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !21
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %affinity_notify = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 19
  %0 = load %struct.irq_affinity_notify*, %struct.irq_affinity_notify** %affinity_notify, align 8
  %tobool20.not = icmp eq %struct.irq_affinity_notify* %0, null
  br i1 %tobool20.not, label %if.end46, label %if.then33, !prof !12

if.then33:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2002; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !22
  store %struct.irq_affinity_notify* null, %struct.irq_affinity_notify** %affinity_notify, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end18, %if.then33
  %call47 = call fastcc %struct.irqaction* @__free_irq(%struct.irq_desc* noundef nonnull %call, i8* noundef %dev_id) #15
  %tobool48.not = icmp eq %struct.irqaction* %call47, null
  br i1 %tobool48.not, label %cleanup, label %if.end50

if.end50:                                         ; preds = %if.end46
  %name = getelementptr inbounds %struct.irqaction, %struct.irqaction* %call47, i64 0, i32 11
  %1 = load i8*, i8** %name, align 16
  %2 = bitcast %struct.irqaction* %call47 to i8*
  call void @kfree(i8* noundef nonnull %2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end46, %entry, %if.end50
  %retval.0 = phi i8* [ %1, %if.end50 ], [ null, %if.then ], [ null, %entry ], [ null, %if.end46 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irqaction* @__free_irq(%struct.irq_desc* noundef %desc, i8* noundef readnone %dev_id) unnamed_addr #1 {
entry:
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %irq1 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 1
  %0 = load i32, i32* %irq1, align 4
  %call = call fastcc i32 @preempt_count() #15
  %1 = and i32 %call, 15728640
  %call2 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call2, 983040
  %or234 = or i32 %2, %1
  %call5 = call fastcc i32 @preempt_count() #15
  %3 = and i32 %call5, 65280
  %or8236 = or i32 %or234, %3
  %tobool.not = icmp eq i32 %or8236, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !12

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 noundef %0) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1846; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %request_mutex = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 26
  call void @mutex_lock(%struct.mutex* noundef %request_mutex) #16
  call fastcc void @chip_bus_lock(%struct.irq_desc* noundef %desc) #15
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  %call33 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %action36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %4 = load %struct.irqaction*, %struct.irqaction** %action36, align 8
  %tobool37.not239 = icmp eq %struct.irqaction* %4, null
  br i1 %tobool37.not239, label %do.end52, label %if.end77.preheader

if.end77.preheader:                               ; preds = %if.end
  %dev_id78249 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %4, i64 0, i32 1
  %5 = load i8*, i8** %dev_id78249, align 8
  %cmp79250 = icmp eq i8* %5, %dev_id
  br i1 %cmp79250, label %for.end, label %if.end82

do.end52:                                         ; preds = %if.end82, %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 noundef %0) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1861; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call33) #15
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) #15
  call void @mutex_unlock(%struct.mutex* noundef %request_mutex) #16
  br label %cleanup

if.end77:                                         ; preds = %if.end82
  %dev_id78 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %8, i64 0, i32 1
  %6 = load i8*, i8** %dev_id78, align 8
  %cmp79 = icmp eq i8* %6, %dev_id
  br i1 %cmp79, label %for.end.loopexit, label %if.end82

if.end82:                                         ; preds = %if.end77.preheader, %if.end77
  %7 = phi %struct.irqaction* [ %8, %if.end77 ], [ %4, %if.end77.preheader ]
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %7, i64 0, i32 3
  %8 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %tobool37.not = icmp eq %struct.irqaction* %8, null
  br i1 %tobool37.not, label %do.end52, label %if.end77

for.end.loopexit:                                 ; preds = %if.end77
  %next.le = getelementptr inbounds %struct.irqaction, %struct.irqaction* %7, i64 0, i32 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end77.preheader
  %.lcssa = phi %struct.irqaction* [ %4, %if.end77.preheader ], [ %8, %for.end.loopexit ]
  %action_ptr.0240.lcssa = phi %struct.irqaction** [ %action36, %if.end77.preheader ], [ %next.le, %for.end.loopexit ]
  %next83 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %.lcssa, i64 0, i32 3
  %9 = load %struct.irqaction*, %struct.irqaction** %next83, align 8
  store %struct.irqaction* %9, %struct.irqaction** %action_ptr.0240.lcssa, align 8
  %10 = load %struct.irqaction*, %struct.irqaction** %action36, align 8
  %tobool85.not = icmp eq %struct.irqaction* %10, null
  br i1 %tobool85.not, label %if.then86, label %if.end87

if.then86:                                        ; preds = %for.end
  call fastcc void @irq_settings_clr_disable_unlazy(%struct.irq_desc* noundef %desc) #15
  call void @irq_shutdown(%struct.irq_desc* noundef %desc) #16
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %for.end
  %affinity_hint = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 18
  %11 = load %struct.cpumask*, %struct.cpumask** %affinity_hint, align 16
  %tobool89.not = icmp eq %struct.cpumask* %11, null
  br i1 %tobool89.not, label %do.body116, label %if.then102, !prof !12

if.then102:                                       ; preds = %if.end87
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1887; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !25
  store %struct.cpumask* null, %struct.cpumask** %affinity_hint, align 16
  br label %do.body116

do.body116:                                       ; preds = %if.end87, %if.then102
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call33) #15
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) #15
  call void @unregister_handler_proc(i32 noundef %0, %struct.irqaction* noundef nonnull %.lcssa) #16
  call fastcc void @__synchronize_hardirq(%struct.irq_desc* noundef %desc, i1 noundef true) #15
  %thread = getelementptr inbounds %struct.irqaction, %struct.irqaction* %.lcssa, i64 0, i32 5
  %12 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %tobool125.not = icmp eq %struct.task_struct* %12, null
  br i1 %tobool125.not, label %if.end141, label %if.then126

if.then126:                                       ; preds = %do.body116
  %call128 = call i32 @kthread_stop(%struct.task_struct* noundef nonnull %12) #16
  %13 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef %13) #15
  %secondary = getelementptr inbounds %struct.irqaction, %struct.irqaction* %.lcssa, i64 0, i32 6
  %14 = load %struct.irqaction*, %struct.irqaction** %secondary, align 16
  %tobool130.not = icmp eq %struct.irqaction* %14, null
  br i1 %tobool130.not, label %if.end141, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then126
  %thread132 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %14, i64 0, i32 5
  %15 = load %struct.task_struct*, %struct.task_struct** %thread132, align 8
  %tobool133.not = icmp eq %struct.task_struct* %15, null
  br i1 %tobool133.not, label %if.end141, label %if.then134

if.then134:                                       ; preds = %land.lhs.true
  %call137 = call i32 @kthread_stop(%struct.task_struct* noundef nonnull %15) #16
  %16 = load %struct.irqaction*, %struct.irqaction** %secondary, align 16
  %thread139 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %16, i64 0, i32 5
  %17 = load %struct.task_struct*, %struct.task_struct** %thread139, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef %17) #15
  br label %if.end141

if.end141:                                        ; preds = %if.then126, %land.lhs.true, %if.then134, %do.body116
  %18 = load %struct.irqaction*, %struct.irqaction** %action36, align 8
  %tobool143.not = icmp eq %struct.irqaction* %18, null
  br i1 %tobool143.not, label %if.then144, label %if.end165

if.then144:                                       ; preds = %if.end141
  call fastcc void @chip_bus_lock(%struct.irq_desc* noundef %desc) #15
  %call152 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  call void @irq_domain_deactivate_irq(%struct.irq_data* noundef %irq_data) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call152) #15
  call fastcc void @irq_release_resources(%struct.irq_desc* noundef %desc) #15
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) #15
  br label %if.end165

if.end165:                                        ; preds = %if.then144, %if.end141
  call void @mutex_unlock(%struct.mutex* noundef %request_mutex) #16
  %call168 = call i32 @irq_chip_pm_put(%struct.irq_data* noundef %irq_data) #16
  %secondary169 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %.lcssa, i64 0, i32 6
  %19 = bitcast %struct.irqaction** %secondary169 to i8**
  %20 = load i8*, i8** %19, align 16
  call void @kfree(i8* noundef %20) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end165, %do.end52
  %21 = phi %struct.irqaction* [ %.lcssa, %if.end165 ], [ null, %do.end52 ]
  ret %struct.irqaction* %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @free_nmi(i32 noundef %irq, i8* nocapture noundef readnone %dev_id) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 8192
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then, label %if.end19, !prof !16

if.then:                                          ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2050; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !26
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %call21 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call21, label %if.then34, label %if.end46, !prof !16

if.then34:                                        ; preds = %if.end19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2053; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !27
  br label %cleanup

if.end46:                                         ; preds = %if.end19
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 7
  %1 = load i32, i32* %depth, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then61, label %do.body, !prof !16

if.then61:                                        ; preds = %if.end46
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2057; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !28
  call void @disable_nmi_nosync(i32 noundef %irq) #15
  br label %do.body

do.body:                                          ; preds = %if.end46, %if.then61
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call77 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @irq_nmi_teardown(%struct.irq_desc* noundef nonnull %call) #15
  %call78 = call fastcc i8* @__cleanup_nmi(i32 noundef %irq, %struct.irq_desc* noundef nonnull %call) #15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call77) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.then, %entry, %do.body
  %retval.0 = phi i8* [ %call78, %do.body ], [ null, %if.then ], [ null, %entry ], [ null, %if.then34 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_nmi_teardown(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #15
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_nmi_teardown = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 34
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_nmi_teardown, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.irq_data* noundef %call) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__cleanup_nmi(i32 noundef %irq, %struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, -8193
  store i32 %and, i32* %core_internal_state__do_not_mess_with_it, align 4
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %1 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %cmp = icmp eq %struct.irqaction* %1, null
  br i1 %cmp, label %if.then, label %if.then15, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2024; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !29
  br label %if.end21

if.then15:                                        ; preds = %entry
  %name = getelementptr inbounds %struct.irqaction, %struct.irqaction* %1, i64 0, i32 11
  %2 = load i8*, i8** %name, align 16
  call void @unregister_handler_proc(i32 noundef %irq, %struct.irqaction* noundef nonnull %1) #16
  %3 = bitcast %struct.irqaction** %action to i8**
  %4 = load i8*, i8** %3, align 8
  call void @kfree(i8* noundef %4) #16
  store %struct.irqaction* null, %struct.irqaction** %action, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then, %if.then15
  %devname.0 = phi i8* [ null, %if.then ], [ %2, %if.then15 ]
  call fastcc void @irq_settings_clr_disable_unlazy(%struct.irq_desc* noundef %desc) #15
  call void @irq_shutdown_and_deactivate(%struct.irq_desc* noundef %desc) #16
  call fastcc void @irq_release_resources(%struct.irq_desc* noundef %desc) #15
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call i32 @irq_chip_pm_put(%struct.irq_data* noundef %irq_data) #16
  ret i8* %devname.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_threaded_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i32 (i32, i8*)* noundef %thread_fn, i64 noundef %irqflags, i8* noundef %devname, i8* noundef %dev_id) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %irqflags, 128
  %tobool = icmp ne i64 %and, 0
  %tobool2 = icmp eq i8* %dev_id, null
  %or.cond.not = and i1 %tobool, %tobool2
  %0 = and i64 %irqflags, 524416
  %.not = icmp eq i64 %0, 524416
  %or.cond112 = or i1 %.not, %or.cond.not
  %1 = and i64 %irqflags, 262272
  %2 = icmp eq i64 %1, 262144
  %or.cond114 = or i1 %2, %or.cond112
  %3 = and i64 %irqflags, 278528
  %.not111 = icmp eq i64 %3, 278528
  %or.cond115 = or i1 %.not111, %or.cond114
  br i1 %or.cond115, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool22.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end21
  %call25 = call fastcc i1 @irq_settings_can_request(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call25, label %lor.lhs.false26, label %cleanup

lor.lhs.false26:                                  ; preds = %if.end24
  %call27 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call27, label %if.then35, label %if.end46, !prof !16

if.then35:                                        ; preds = %lor.lhs.false26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2147; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !30
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false26
  %tobool47.not = icmp eq i32 (i32, i8*)* %handler, null
  br i1 %tobool47.not, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end46
  %tobool49.not = icmp eq i32 (i32, i8*)* %thread_fn, null
  br i1 %tobool49.not, label %cleanup, label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46
  %handler.addr.0 = phi i32 (i32, i8*)* [ %handler, %if.end46 ], [ @irq_default_primary_handler, %if.then48 ]
  %call53 = call fastcc i8* @kzalloc() #15
  %4 = bitcast i8* %call53 to %struct.irqaction*
  %tobool54.not = icmp eq i8* %call53, null
  br i1 %tobool54.not, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end52
  %handler57 = bitcast i8* %call53 to i32 (i32, i8*)**
  store i32 (i32, i8*)* %handler.addr.0, i32 (i32, i8*)** %handler57, align 64
  %thread_fn58 = getelementptr inbounds i8, i8* %call53, i64 32
  %5 = bitcast i8* %thread_fn58 to i32 (i32, i8*)**
  store i32 (i32, i8*)* %thread_fn, i32 (i32, i8*)** %5, align 32
  %conv59 = trunc i64 %irqflags to i32
  %flags = getelementptr inbounds i8, i8* %call53, i64 60
  %6 = bitcast i8* %flags to i32*
  store i32 %conv59, i32* %6, align 4
  %name = getelementptr inbounds i8, i8* %call53, i64 80
  %7 = bitcast i8* %name to i8**
  store i8* %devname, i8** %7, align 16
  %dev_id60 = getelementptr inbounds i8, i8* %call53, i64 8
  %8 = bitcast i8* %dev_id60 to i8**
  store i8* %dev_id, i8** %8, align 8
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call61 = call i32 @irq_chip_pm_get(%struct.irq_data* noundef %irq_data) #16
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end56
  call void @kfree(i8* noundef nonnull %call53) #16
  br label %cleanup

if.end65:                                         ; preds = %if.end56
  %call66 = call fastcc i32 @__setup_irq(i32 noundef %irq, %struct.irq_desc* noundef nonnull %call, %struct.irqaction* noundef nonnull %4) #15
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup, label %if.then68

if.then68:                                        ; preds = %if.end65
  %call70 = call i32 @irq_chip_pm_put(%struct.irq_data* noundef %irq_data) #16
  %secondary = getelementptr inbounds i8, i8* %call53, i64 48
  %9 = bitcast i8* %secondary to i8**
  %10 = load i8*, i8** %9, align 16
  call void @kfree(i8* noundef %10) #16
  call void @kfree(i8* noundef nonnull %call53) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end65, %if.then68, %if.end52, %if.then48, %if.end24, %if.end21, %if.end, %entry, %if.then64
  %retval.0 = phi i32 [ %call61, %if.then64 ], [ -107, %entry ], [ -22, %if.end ], [ -22, %if.end21 ], [ -22, %if.then35 ], [ -22, %if.end24 ], [ -22, %if.then48 ], [ -12, %if.end52 ], [ %call66, %if.then68 ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @irq_default_primary_handler(i32 noundef %irq, i8* nocapture noundef readnone %dev_id) #8 {
entry:
  ret i32 2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #16
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_pm_get(%struct.irq_data* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__setup_irq(i32 noundef %irq, %struct.irq_desc* noundef %desc, %struct.irqaction* noundef %new) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.irq_desc* %desc, null
  br i1 %tobool.not, label %cleanup340, label %if.end

if.end:                                           ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %cmp = icmp eq %struct.irq_chip* %0, @no_irq_chip
  br i1 %cmp, label %cleanup340, label %if.end2

if.end2:                                          ; preds = %if.end
  %irq5 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 7
  store i32 %irq, i32* %irq5, align 8
  %flags6 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 8
  %1 = load i32, i32* %flags6, align 4
  %and = and i32 %1, 15
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end2
  %call10 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef %irq_data) #15
  %or = or i32 %call10, %1
  store i32 %or, i32* %flags6, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end2
  %call13 = call fastcc i1 @irq_settings_is_nested_thread(%struct.irq_desc* noundef nonnull %desc) #15
  br i1 %call13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %thread_fn = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 4
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn, align 32
  %tobool16.not = icmp eq i32 (i32, i8*)* %2, null
  br i1 %tobool16.not, label %cleanup340, label %if.end26.thread

if.end26.thread:                                  ; preds = %if.then15
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 0
  store i32 (i32, i8*)* @irq_nested_primary_handler, i32 (i32, i8*)** %handler, align 64
  br label %if.end43

if.else:                                          ; preds = %if.end12
  %call19 = call fastcc i1 @irq_settings_can_thread(%struct.irq_desc* noundef nonnull %desc) #15
  br i1 %call19, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.else
  %call21 = call fastcc i32 @irq_setup_forced_threading(%struct.irqaction* noundef %new) #15
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end26, label %cleanup340

if.end26:                                         ; preds = %if.else, %if.then20
  %thread_fn27 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 4
  %3 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn27, align 32
  %tobool28 = icmp eq i32 (i32, i8*)* %3, null
  br i1 %tobool28, label %if.end43, label %if.then30

if.then30:                                        ; preds = %if.end26
  %call31 = call fastcc i32 @setup_irq_thread(%struct.irqaction* noundef %new, i32 noundef %irq, i1 noundef false) #15
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %cleanup340

if.end34:                                         ; preds = %if.then30
  %secondary = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 6
  %4 = load %struct.irqaction*, %struct.irqaction** %secondary, align 16
  %tobool35.not = icmp eq %struct.irqaction* %4, null
  br i1 %tobool35.not, label %if.end43, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call38 = call fastcc i32 @setup_irq_thread(%struct.irqaction* noundef nonnull %4, i32 noundef %irq, i1 noundef true) #15
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end43, label %out_thread

if.end43:                                         ; preds = %if.end26.thread, %if.end34, %if.then36, %if.end26
  %5 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %flags46 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %5, i64 0, i32 35
  %6 = load i64, i64* %flags46, align 8
  %and47 = and i64 %6, 32
  %tobool48.not = icmp eq i64 %and47, 0
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end43
  %7 = load i32, i32* %flags6, align 4
  %and51 = and i32 %7, -8193
  store i32 %and51, i32* %flags6, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end43
  %request_mutex = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 26
  call void @mutex_lock(%struct.mutex* noundef %request_mutex) #16
  call fastcc void @chip_bus_lock(%struct.irq_desc* noundef nonnull %desc) #15
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %8 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool53.not = icmp eq %struct.irqaction* %8, null
  br i1 %tobool53.not, label %if.then54, label %do.body64

if.then54:                                        ; preds = %if.end52
  %call55 = call fastcc i32 @irq_request_resources(%struct.irq_desc* noundef nonnull %desc) #15
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body64, label %do.end

do.end:                                           ; preds = %if.then54
  %name = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 11
  %9 = load i8*, i8** %name, align 16
  %10 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %name60 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %10, i64 0, i32 1
  %11 = load i8*, i8** %name60, align 8
  %call61 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0), i8* noundef %9, i32 noundef %irq, i8* noundef %11) #18
  br label %out_bus_unlock

do.body64:                                        ; preds = %if.end52, %if.then54
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  %call68 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %12 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool72.not = icmp eq %struct.irqaction* %12, null
  br i1 %tobool72.not, label %if.end127.thread, label %if.then73

if.then73:                                        ; preds = %do.body64
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %13 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and74 = and i32 %13, 8192
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end86, label %cleanup

if.end86:                                         ; preds = %if.then73
  %call88 = call fastcc i1 @irqd_trigger_type_was_set(%struct.irq_data* noundef %irq_data) #15
  br i1 %call88, label %if.then89, label %if.else92

if.then89:                                        ; preds = %if.end86
  %call91 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef %irq_data) #15
  br label %if.end96

if.else92:                                        ; preds = %if.end86
  %14 = load i32, i32* %flags6, align 4
  %and94 = and i32 %14, 15
  call fastcc void @irqd_set_trigger_type(%struct.irq_data* noundef %irq_data, i32 noundef %and94) #15
  br label %if.end96

if.end96:                                         ; preds = %if.else92, %if.then89
  %oldtype.0 = phi i32 [ %call91, %if.then89 ], [ %and94, %if.else92 ]
  %flags97 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %12, i64 0, i32 8
  %15 = load i32, i32* %flags97, align 4
  %16 = load i32, i32* %flags6, align 4
  %and99 = and i32 %15, 128
  %and100 = and i32 %and99, %16
  %tobool101.not = icmp ne i32 %and100, 0
  %and103 = and i32 %16, 15
  %cmp104.not = icmp eq i32 %oldtype.0, %and103
  %or.cond505 = select i1 %tobool101.not, i1 %cmp104.not, i1 false
  br i1 %or.cond505, label %lor.lhs.false106, label %mismatch

lor.lhs.false106:                                 ; preds = %if.end96
  %xor = xor i32 %16, %15
  %17 = and i32 %xor, 9216
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %do.body121, label %mismatch

do.body121:                                       ; preds = %lor.lhs.false106, %do.body121
  %thread_mask.0 = phi i64 [ %or123, %do.body121 ], [ 0, %lor.lhs.false106 ]
  %old.0 = phi %struct.irqaction* [ %20, %do.body121 ], [ %12, %lor.lhs.false106 ]
  %thread_mask122 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %old.0, i64 0, i32 10
  %19 = load i64, i64* %thread_mask122, align 8
  %or123 = or i64 %19, %thread_mask.0
  %next = getelementptr inbounds %struct.irqaction, %struct.irqaction* %old.0, i64 0, i32 3
  %20 = load %struct.irqaction*, %struct.irqaction** %next, align 8
  %tobool125.not = icmp eq %struct.irqaction* %20, null
  br i1 %tobool125.not, label %if.end127, label %do.body121

cleanup:                                          ; preds = %if.then73
  %name81 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 11
  %21 = load i8*, i8** %name81, align 16
  %22 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %name84 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %22, i64 0, i32 1
  %23 = load i8*, i8** %name84, align 8
  %call85 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0), i8* noundef %21, i32 noundef %irq, i8* noundef %23) #18
  br label %do.body304

if.end127:                                        ; preds = %do.body121
  %next.le = getelementptr inbounds %struct.irqaction, %struct.irqaction* %old.0, i64 0, i32 3
  %and129 = and i32 %16, 8192
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.else138, label %if.then131

if.end127.thread:                                 ; preds = %do.body64
  %24 = load i32, i32* %flags6, align 4
  %and129526 = and i32 %24, 8192
  %tobool130.not527 = icmp eq i32 %and129526, 0
  br i1 %tobool130.not527, label %if.else138, label %if.end135

if.then131:                                       ; preds = %if.end127
  %cmp132 = icmp eq i64 %or123, -1
  br i1 %cmp132, label %do.body304, label %if.end135

if.end135:                                        ; preds = %if.end127.thread, %if.then131
  %shared.1529541 = phi i32 [ 1, %if.then131 ], [ 0, %if.end127.thread ]
  %thread_mask.2531540 = phi i64 [ %or123, %if.then131 ], [ 0, %if.end127.thread ]
  %old_ptr.1533539 = phi %struct.irqaction** [ %next.le, %if.then131 ], [ %action, %if.end127.thread ]
  %25 = phi i32 [ %16, %if.then131 ], [ %24, %if.end127.thread ]
  %neg = xor i64 %thread_mask.2531540, -1
  %26 = call i64 @llvm.cttz.i64(i64 %neg, i1 false) #17, !range !31
  %shl = shl nuw i64 1, %26
  %thread_mask137 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 10
  store i64 %shl, i64* %thread_mask137, align 8
  br label %if.end156

if.else138:                                       ; preds = %if.end127.thread, %if.end127
  %27 = phi i32 [ %24, %if.end127.thread ], [ %16, %if.end127 ]
  %old_ptr.1534 = phi %struct.irqaction** [ %action, %if.end127.thread ], [ %next.le, %if.end127 ]
  %shared.1530 = phi i32 [ 0, %if.end127.thread ], [ 1, %if.end127 ]
  %handler139 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 0
  %28 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler139, align 64
  %cmp140 = icmp eq i32 (i32, i8*)* %28, @irq_default_primary_handler
  br i1 %cmp140, label %land.lhs.true142, label %if.end156

land.lhs.true142:                                 ; preds = %if.else138
  %29 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %flags145 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %29, i64 0, i32 35
  %30 = load i64, i64* %flags145, align 8
  %and146 = and i64 %30, 32
  %tobool147.not = icmp eq i64 %and146, 0
  br i1 %tobool147.not, label %do.end151, label %if.end156

do.end151:                                        ; preds = %land.lhs.true142
  %name153 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 11
  %31 = load i8*, i8** %name153, align 16
  %call154 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i8* noundef %31, i32 noundef %irq) #18
  br label %do.body304

if.end156:                                        ; preds = %if.else138, %land.lhs.true142, %if.end135
  %32 = phi i32 [ %27, %if.else138 ], [ %27, %land.lhs.true142 ], [ %25, %if.end135 ]
  %old_ptr.1532 = phi %struct.irqaction** [ %old_ptr.1534, %if.else138 ], [ %old_ptr.1534, %land.lhs.true142 ], [ %old_ptr.1533539, %if.end135 ]
  %shared.1528 = phi i32 [ %shared.1530, %if.else138 ], [ %shared.1530, %land.lhs.true142 ], [ %shared.1529541, %if.end135 ]
  %tobool157.not = icmp eq i32 %shared.1528, 0
  br i1 %tobool157.not, label %do.body159, label %if.else239

do.body159:                                       ; preds = %if.end156
  %wait_for_threads = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 22
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wait_for_threads, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @__setup_irq.__key) #16
  %33 = load i32, i32* %flags6, align 4
  %and163 = and i32 %33, 15
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end173, label %if.then165

if.then165:                                       ; preds = %do.body159
  %conv168 = zext i32 %and163 to i64
  %call169 = call i32 @__irq_set_trigger(%struct.irq_desc* noundef %desc, i64 noundef %conv168) #15
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end173, label %do.body304

if.end173:                                        ; preds = %if.then165, %do.body159
  %call174 = call i32 @irq_activate(%struct.irq_desc* noundef %desc) #16
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end177, label %do.body304

if.end177:                                        ; preds = %if.end173
  %core_internal_state__do_not_mess_with_it178 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %34 = load i32, i32* %core_internal_state__do_not_mess_with_it178, align 4
  %and179 = and i32 %34, -164
  store i32 %and179, i32* %core_internal_state__do_not_mess_with_it178, align 4
  call fastcc void @irqd_clear(%struct.irq_data* noundef %irq_data, i32 noundef 262144) #15
  %35 = load i32, i32* %flags6, align 4
  %and182 = and i32 %35, 1024
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end191, label %if.then184

if.then184:                                       ; preds = %if.end177
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 2048) #15
  call fastcc void @irq_settings_set_per_cpu(%struct.irq_desc* noundef %desc) #15
  %36 = load i32, i32* %flags6, align 4
  %and187 = and i32 %36, 1048576
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.end191, label %if.then189

if.then189:                                       ; preds = %if.then184
  call fastcc void @irq_settings_set_no_debug(%struct.irq_desc* noundef %desc) #15
  br label %if.end191

if.end191:                                        ; preds = %if.then184, %if.then189, %if.end177
  %37 = load i8, i8* @noirqdebug, align 1, !range !9
  %tobool192.not = icmp eq i8 %37, 0
  br i1 %tobool192.not, label %if.end194, label %if.then193

if.then193:                                       ; preds = %if.end191
  call fastcc void @irq_settings_set_no_debug(%struct.irq_desc* noundef %desc) #15
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %if.end191
  %38 = load i32, i32* %flags6, align 4
  %and196 = and i32 %38, 8192
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end201, label %if.then198

if.then198:                                       ; preds = %if.end194
  %39 = load i32, i32* %core_internal_state__do_not_mess_with_it178, align 4
  %or200 = or i32 %39, 32
  store i32 %or200, i32* %core_internal_state__do_not_mess_with_it178, align 4
  %.pre = load i32, i32* %flags6, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %if.end194
  %40 = phi i32 [ %.pre, %if.then198 ], [ %38, %if.end194 ]
  %and203 = and i32 %40, 2048
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %if.end207, label %if.then205

if.then205:                                       ; preds = %if.end201
  call fastcc void @irq_settings_set_no_balancing(%struct.irq_desc* noundef %desc) #15
  call fastcc void @irqd_set(%struct.irq_data* noundef %irq_data, i32 noundef 1024) #15
  %.pre545 = load i32, i32* %flags6, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.end201
  %41 = phi i32 [ %.pre545, %if.then205 ], [ %40, %if.end201 ]
  %and209 = and i32 %41, 524288
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %land.lhs.true211, label %if.else216

land.lhs.true211:                                 ; preds = %if.end207
  %call212 = call fastcc i1 @irq_settings_can_autoenable(%struct.irq_desc* noundef %desc) #15
  br i1 %call212, label %if.then214, label %if.else216

if.then214:                                       ; preds = %land.lhs.true211
  %call215 = call i32 @irq_startup(%struct.irq_desc* noundef %desc, i1 noundef true, i1 noundef false) #16
  br label %if.end258

if.else216:                                       ; preds = %land.lhs.true211, %if.end207
  %and218 = and i32 %41, 128
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %if.end229, label %if.then228, !prof !12

if.then228:                                       ; preds = %if.else216
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1745; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !32
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %if.else216
  %depth = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 7
  store i32 1, i32* %depth, align 8
  br label %if.end258

if.else239:                                       ; preds = %if.end156
  %and241 = and i32 %32, 15
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %land.lhs.true260, label %if.then243

if.then243:                                       ; preds = %if.else239
  %call247 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef %irq_data) #15
  %cmp248.not = icmp eq i32 %and241, %call247
  br i1 %cmp248.not, label %land.lhs.true260, label %do.end253

do.end253:                                        ; preds = %if.then243
  %call255 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i32 noundef %irq, i32 noundef %call247, i32 noundef %and241) #18
  br label %land.lhs.true260

if.end258:                                        ; preds = %if.then214, %if.end229
  store %struct.irqaction* %new, %struct.irqaction** %old_ptr.1532, align 8
  %irq_count = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 10
  store i32 0, i32* %irq_count, align 4
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 12
  store i32 0, i32* %irqs_unhandled, align 16
  br label %do.body268

land.lhs.true260:                                 ; preds = %if.then243, %do.end253, %if.else239
  store %struct.irqaction* %new, %struct.irqaction** %old_ptr.1532, align 8
  %irq_count542 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 10
  store i32 0, i32* %irq_count542, align 4
  %irqs_unhandled543 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 12
  store i32 0, i32* %irqs_unhandled543, align 16
  %core_internal_state__do_not_mess_with_it261 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %42 = load i32, i32* %core_internal_state__do_not_mess_with_it261, align 4
  %and262 = and i32 %42, 2
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %do.body268, label %if.then264

if.then264:                                       ; preds = %land.lhs.true260
  %and266 = and i32 %42, -3
  store i32 %and266, i32* %core_internal_state__do_not_mess_with_it261, align 4
  call void @__enable_irq(%struct.irq_desc* noundef %desc) #15
  br label %do.body268

do.body268:                                       ; preds = %if.end258, %land.lhs.true260, %if.then264
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call68) #15
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) #15
  call void @mutex_unlock(%struct.mutex* noundef %request_mutex) #16
  %thread = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 5
  %43 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %tobool278.not = icmp eq %struct.task_struct* %43, null
  br i1 %tobool278.not, label %if.end282, label %if.then279

if.then279:                                       ; preds = %do.body268
  %call281 = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %43) #16
  br label %if.end282

if.end282:                                        ; preds = %if.then279, %do.body268
  %secondary283 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 6
  %44 = load %struct.irqaction*, %struct.irqaction** %secondary283, align 16
  %tobool284.not = icmp eq %struct.irqaction* %44, null
  br i1 %tobool284.not, label %if.end289, label %if.then285

if.then285:                                       ; preds = %if.end282
  %thread287 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %44, i64 0, i32 5
  %45 = load %struct.task_struct*, %struct.task_struct** %thread287, align 8
  %call288 = call i32 @wake_up_process(%struct.task_struct* noundef %45) #16
  br label %if.end289

if.end289:                                        ; preds = %if.then285, %if.end282
  call void @register_irq_proc(i32 noundef %irq, %struct.irq_desc* noundef %desc) #16
  %dir = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 12
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %dir, align 8
  call void @register_handler_proc(i32 noundef %irq, %struct.irqaction* noundef %new) #16
  br label %cleanup340

mismatch:                                         ; preds = %lor.lhs.false106, %if.end96
  %and291 = and i32 %16, 256
  %tobool292.not = icmp eq i32 %and291, 0
  br i1 %tobool292.not, label %do.end296, label %do.body304

do.end296:                                        ; preds = %mismatch
  %name299 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 11
  %46 = load i8*, i8** %name299, align 16
  %name301 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %12, i64 0, i32 11
  %47 = load i8*, i8** %name301, align 16
  %call302 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i64 0, i64 0), i32 noundef %irq, i32 noundef %16, i8* noundef %46, i32 noundef %15, i8* noundef %47) #18
  br label %do.body304

do.body304:                                       ; preds = %cleanup, %mismatch, %do.end296, %if.then131, %do.end151, %if.then165, %if.end173
  %ret.4 = phi i32 [ -22, %cleanup ], [ %call169, %if.then165 ], [ %call174, %if.end173 ], [ -22, %do.end151 ], [ -16, %if.then131 ], [ -16, %do.end296 ], [ -16, %mismatch ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call68) #15
  %48 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool314.not = icmp eq %struct.irqaction* %48, null
  br i1 %tobool314.not, label %if.then315, label %out_bus_unlock

if.then315:                                       ; preds = %do.body304
  call fastcc void @irq_release_resources(%struct.irq_desc* noundef %desc) #15
  br label %out_bus_unlock

out_bus_unlock:                                   ; preds = %do.body304, %if.then315, %do.end
  %ret.5 = phi i32 [ %ret.4, %do.body304 ], [ %ret.4, %if.then315 ], [ %call55, %do.end ]
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) #15
  call void @mutex_unlock(%struct.mutex* noundef %request_mutex) #16
  br label %out_thread

out_thread:                                       ; preds = %if.then36, %out_bus_unlock
  %ret.6 = phi i32 [ %ret.5, %out_bus_unlock ], [ %call38, %if.then36 ]
  %thread318 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 5
  %49 = load %struct.task_struct*, %struct.task_struct** %thread318, align 8
  %tobool319.not = icmp eq %struct.task_struct* %49, null
  br i1 %tobool319.not, label %if.end324, label %if.then320

if.then320:                                       ; preds = %out_thread
  store %struct.task_struct* null, %struct.task_struct** %thread318, align 8
  %call323 = call i32 @kthread_stop(%struct.task_struct* noundef nonnull %49) #16
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %49) #15
  br label %if.end324

if.end324:                                        ; preds = %if.then320, %out_thread
  %secondary325 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 6
  %50 = load %struct.irqaction*, %struct.irqaction** %secondary325, align 16
  %tobool326.not = icmp eq %struct.irqaction* %50, null
  br i1 %tobool326.not, label %cleanup340, label %land.lhs.true327

land.lhs.true327:                                 ; preds = %if.end324
  %thread329 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %50, i64 0, i32 5
  %51 = load %struct.task_struct*, %struct.task_struct** %thread329, align 8
  %tobool330.not = icmp eq %struct.task_struct* %51, null
  br i1 %tobool330.not, label %cleanup340, label %if.then331

if.then331:                                       ; preds = %land.lhs.true327
  store %struct.task_struct* null, %struct.task_struct** %thread329, align 8
  %call337 = call i32 @kthread_stop(%struct.task_struct* noundef nonnull %51) #16
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %51) #15
  br label %cleanup340

cleanup340:                                       ; preds = %if.then20, %if.then30, %if.then331, %land.lhs.true327, %if.end324, %if.then15, %if.end, %entry, %if.end289
  %retval.0 = phi i32 [ 0, %if.end289 ], [ -22, %entry ], [ -38, %if.end ], [ %ret.6, %if.then331 ], [ %ret.6, %land.lhs.true327 ], [ %ret.6, %if.end324 ], [ %call31, %if.then30 ], [ %call21, %if.then20 ], [ -22, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_pm_put(%struct.irq_data* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_any_context_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i64 noundef %flags, i8* noundef %name, i8* noundef %dev_id) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i1 @irq_settings_is_nested_thread(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end2
  %call5 = call i32 @request_threaded_irq(i32 noundef %irq, i32 (i32, i8*)* noundef null, i32 (i32, i8*)* noundef %handler, i64 noundef %flags, i8* noundef %name, i8* noundef %dev_id) #15
  %tobool6.not = icmp eq i32 %call5, 0
  %cond = select i1 %tobool6.not, i32 1, i32 %call5
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %call8 = call fastcc i32 @request_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i64 noundef %flags, i8* noundef %name, i8* noundef %dev_id) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7, %if.then4
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ %call8, %if.end7 ], [ -107, %entry ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_is_nested_thread(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 32768
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @request_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i64 noundef %flags, i8* noundef %name, i8* noundef %dev) unnamed_addr #1 {
entry:
  %call = call i32 @request_threaded_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i32 (i32, i8*)* noundef null, i64 noundef %flags, i8* noundef %name, i8* noundef %dev) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_nmi(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i64 noundef %irqflags, i8* noundef %name, i8* noundef %dev_id) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = and i64 %irqflags, 267392
  %1 = icmp ne i64 %0, 1024
  %tobool8.not = icmp eq i32 (i32, i8*)* %handler, null
  %or.cond129 = or i1 %tobool8.not, %1
  br i1 %or.cond129, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool11.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call12 = call fastcc i1 @irq_settings_can_autoenable(%struct.irq_desc* noundef nonnull %call) #15
  %and13 = and i64 %irqflags, 524288
  %tobool14.not = icmp eq i64 %and13, 0
  %or.cond = and i1 %tobool14.not, %call12
  br i1 %or.cond, label %cleanup, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %call16 = call fastcc i1 @irq_settings_can_request(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call16, label %lor.lhs.false17, label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %call18 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call18, label %if.then26, label %lor.lhs.false36, !prof !16

if.then26:                                        ; preds = %lor.lhs.false17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2296; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !33
  br label %cleanup

lor.lhs.false36:                                  ; preds = %lor.lhs.false17
  %call37 = call fastcc i1 @irq_supports_nmi(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call37, label %if.end39, label %cleanup

if.end39:                                         ; preds = %lor.lhs.false36
  %call40 = call fastcc i8* @kzalloc() #15
  %2 = bitcast i8* %call40 to %struct.irqaction*
  %tobool41.not = icmp eq i8* %call40, null
  br i1 %tobool41.not, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.end39
  %handler44 = bitcast i8* %call40 to i32 (i32, i8*)**
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler44, align 64
  %3 = trunc i64 %irqflags to i32
  %conv46 = or i32 %3, 67584
  %flags47 = getelementptr inbounds i8, i8* %call40, i64 60
  %4 = bitcast i8* %flags47 to i32*
  store i32 %conv46, i32* %4, align 4
  %name48 = getelementptr inbounds i8, i8* %call40, i64 80
  %5 = bitcast i8* %name48 to i8**
  store i8* %name, i8** %5, align 16
  %dev_id49 = getelementptr inbounds i8, i8* %call40, i64 8
  %6 = bitcast i8* %dev_id49 to i8**
  store i8* %dev_id, i8** %6, align 8
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call50 = call i32 @irq_chip_pm_get(%struct.irq_data* noundef %irq_data) #16
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %err_out, label %if.end54

if.end54:                                         ; preds = %if.end43
  %call55 = call fastcc i32 @__setup_irq(i32 noundef %irq, %struct.irq_desc* noundef nonnull %call, %struct.irqaction* noundef nonnull %2) #15
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body, label %err_irq_setup

do.body:                                          ; preds = %if.end54
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call62 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %7 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %or63 = or i32 %7, 8192
  store i32 %or63, i32* %core_internal_state__do_not_mess_with_it, align 4
  %call64 = call fastcc i32 @irq_nmi_setup(%struct.irq_desc* noundef nonnull %call) #15
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.body78, label %if.then66

if.then66:                                        ; preds = %do.body
  %call67 = call fastcc i8* @__cleanup_nmi(i32 noundef %irq, %struct.irq_desc* noundef nonnull %call) #15
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call62) #15
  br label %cleanup

do.body78:                                        ; preds = %do.body
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call62) #15
  br label %cleanup

err_irq_setup:                                    ; preds = %if.end54
  %call88 = call i32 @irq_chip_pm_put(%struct.irq_data* noundef %irq_data) #16
  br label %err_out

err_out:                                          ; preds = %if.end43, %err_irq_setup
  %retval1.0 = phi i32 [ %call50, %if.end43 ], [ %call55, %err_irq_setup ]
  call void @kfree(i8* noundef nonnull %call40) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end39, %if.end10, %lor.lhs.false15, %lor.lhs.false36, %lor.lhs.false, %if.end, %entry, %err_out, %do.body78, %if.then66
  %retval.0 = phi i32 [ %retval1.0, %err_out ], [ -22, %if.then66 ], [ 0, %do.body78 ], [ -107, %entry ], [ -22, %if.end ], [ -22, %lor.lhs.false ], [ -22, %lor.lhs.false36 ], [ -22, %if.then26 ], [ -22, %lor.lhs.false15 ], [ -22, %if.end10 ], [ -12, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_can_autoenable(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 4096
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_supports_nmi(%struct.irq_desc* noundef readonly %desc) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #15
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool.not = icmp eq %struct.irq_data* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  %1 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_bus_lock = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 15
  %2 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_bus_lock, align 8
  %tobool1.not = icmp eq void (%struct.irq_data*)* %2, null
  br i1 %tobool1.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %irq_bus_sync_unlock = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 16
  %3 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_bus_sync_unlock, align 8
  %tobool3.not = icmp eq void (%struct.irq_data*)* %3, null
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %1, i64 0, i32 35
  %4 = load i64, i64* %flags, align 8
  %and = and i64 %4, 256
  %tobool7 = icmp ne i64 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end5
  %retval.0 = phi i1 [ %tobool7, %if.end5 ], [ false, %entry ], [ false, %lor.lhs.false ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_nmi_setup(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef %desc) #15
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_nmi_setup = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 33
  %1 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %irq_nmi_setup, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call2 = call i32 %1(%struct.irq_data* noundef %call) #16
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ -22, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @enable_percpu_irq(i32 noundef %irq, i32 noundef %type) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %2 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call2 = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 3) #15
  %tobool.not = icmp eq %struct.irq_desc* %call2, null
  br i1 %tobool.not, label %cleanup36, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %type, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end5, label %if.then7

if.end5:                                          ; preds = %if.end
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call2, i64 0, i32 1
  %call4 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef %irq_data) #15
  %cmp6.not = icmp eq i32 %call4, 0
  br i1 %cmp6.not, label %if.end35, label %if.then7

if.then7:                                         ; preds = %if.end, %if.end5
  %type.addr.058 = phi i32 [ %call4, %if.end5 ], [ %and, %if.end ]
  %conv = zext i32 %type.addr.058 to i64
  %call8 = call i32 @__irq_set_trigger(%struct.irq_desc* noundef nonnull %call2, i64 noundef %conv) #15
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end35, label %cleanup

cleanup:                                          ; preds = %if.then7
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 noundef %irq) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2363; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !34
  br label %out

if.end35:                                         ; preds = %if.then7, %if.end5
  call void @irq_percpu_enable(%struct.irq_desc* noundef nonnull %call2, i32 noundef %1) #16
  br label %out

out:                                              ; preds = %cleanup, %if.end35
  %3 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call2, i64 noundef %3) #15
  br label %cleanup36

cleanup36:                                        ; preds = %entry, %out
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #19, !srcloc !35
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_percpu_enable(%struct.irq_desc* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @enable_percpu_nmi(i32 noundef %irq, i32 noundef %type) local_unnamed_addr #1 {
entry:
  call void @enable_percpu_irq(i32 noundef %irq, i32 noundef %type) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_percpu_is_enabled(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %2 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call2 = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 3) #15
  %tobool.not = icmp eq %struct.irq_desc* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call2, i64 0, i32 16
  %3 = load %struct.cpumask*, %struct.cpumask** %percpu_enabled, align 32
  %call3 = call fastcc i32 @cpumask_test_cpu(i32 noundef %1, %struct.cpumask* noundef %3) #15
  %tobool4 = icmp ne i32 %call3, 0
  %4 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call2, i64 noundef %4) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %tobool4, %if.end ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #11 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disable_percpu_irq(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %2 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call2 = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 3) #15
  %tobool.not = icmp eq %struct.irq_desc* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @irq_percpu_disable(%struct.irq_desc* noundef nonnull %call2, i32 noundef %1) #16
  %3 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call2, i64 noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_percpu_disable(%struct.irq_desc* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disable_percpu_nmi(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  call void @disable_percpu_irq(i32 noundef %irq) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @remove_percpu_irq(i32 noundef %irq, %struct.irqaction* nocapture noundef readonly %act) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %percpu_dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %act, i64 0, i32 2
  %0 = load i8*, i8** %percpu_dev_id, align 16
  %call2 = call fastcc %struct.irqaction* @__free_percpu_irq(i32 noundef %irq, i8* noundef %0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irqaction* @__free_percpu_irq(i32 noundef %irq, i8* noundef readnone %dev_id) unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %call1 = call fastcc i32 @preempt_count() #15
  %0 = and i32 %call1, 15728640
  %call2 = call fastcc i32 @preempt_count() #15
  %1 = and i32 %call2, 983040
  %or158 = or i32 %1, %0
  %call5 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call5, 65280
  %or8160 = or i32 %or158, %2
  %tobool.not = icmp eq i32 %or8160, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !12

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 noundef %irq) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2432; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %tobool30.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool30.not, label %cleanup, label %do.body33

do.body33:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call36 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %action39 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 4
  %3 = load %struct.irqaction*, %struct.irqaction** %action39, align 8
  %tobool40.not = icmp eq %struct.irqaction* %3, null
  br i1 %tobool40.not, label %do.end57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body33
  %percpu_dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %3, i64 0, i32 2
  %4 = load i8*, i8** %percpu_dev_id, align 16
  %cmp41.not = icmp eq i8* %4, %dev_id
  br i1 %cmp41.not, label %if.end72, label %do.end57

do.end57:                                         ; preds = %do.body33, %lor.lhs.false
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 noundef %irq) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2441; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !37
  br label %do.body118

if.end72:                                         ; preds = %lor.lhs.false
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 16
  %5 = load %struct.cpumask*, %struct.cpumask** %percpu_enabled, align 32
  %call73 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %5) #15
  br i1 %call73, label %if.end105, label %do.end88

do.end88:                                         ; preds = %if.end72
  %6 = load %struct.cpumask*, %struct.cpumask** %percpu_enabled, align 32
  %call90 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %6) #15
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef %irq, i32 noundef %call90) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2447; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !38
  br label %do.body118

if.end105:                                        ; preds = %if.end72
  store %struct.irqaction* null, %struct.irqaction** %action39, align 8
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %7 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and107 = and i32 %7, -8193
  store i32 %and107, i32* %core_internal_state__do_not_mess_with_it, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call36) #15
  call void @unregister_handler_proc(i32 noundef %irq, %struct.irqaction* noundef nonnull %3) #16
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call117 = call i32 @irq_chip_pm_put(%struct.irq_data* noundef %irq_data) #16
  br label %cleanup

do.body118:                                       ; preds = %do.end57, %do.end88
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call36) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body118, %if.end105
  %retval.0 = phi %struct.irqaction* [ null, %do.body118 ], [ %3, %if.end105 ], [ null, %if.end ]
  ret %struct.irqaction* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_percpu_irq(i32 noundef %irq, i8* noundef %dev_id) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @chip_bus_lock(%struct.irq_desc* noundef nonnull %call) #15
  %call2 = call fastcc %struct.irqaction* @__free_percpu_irq(i32 noundef %irq, i8* noundef %dev_id) #15
  %0 = bitcast %struct.irqaction* %call2 to i8*
  call void @kfree(i8* noundef %0) #16
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chip_bus_lock(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_bus_lock = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 15
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_bus_lock, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_bus_sync_unlock = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 16
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_bus_sync_unlock, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_percpu_nmi(i32 noundef %irq, i8* noundef %dev_id) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 8192
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then11, label %if.end22, !prof !16

if.then11:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2516; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !39
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call23 = call fastcc %struct.irqaction* @__free_percpu_irq(i32 noundef %irq, i8* noundef %dev_id) #15
  %1 = bitcast %struct.irqaction* %call23 to i8*
  call void @kfree(i8* noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %entry, %lor.lhs.false, %if.end22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @setup_percpu_irq(i32 noundef %irq, %struct.irqaction* noundef %act) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call3 = call i32 @irq_chip_pm_get(%struct.irq_data* noundef %irq_data) #16
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @__setup_irq(i32 noundef %irq, %struct.irq_desc* noundef nonnull %call, %struct.irqaction* noundef %act) #15
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call10 = call i32 @irq_chip_pm_put(%struct.irq_data* noundef %irq_data) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then8, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call3, %if.end ], [ %call6, %if.then8 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__request_percpu_irq(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i64 noundef %flags, i8* noundef %devname, i8* noundef %dev_id) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %dev_id, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool2.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call fastcc i1 @irq_settings_can_request(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call3, label %lor.lhs.false4, label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call5, label %if.end7, label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  switch i64 %flags, label %cleanup [
    i64 82432, label %if.end10
    i64 0, label %if.end10
  ]

if.end10:                                         ; preds = %if.end7, %if.end7
  %call11 = call fastcc i8* @kzalloc() #15
  %0 = bitcast i8* %call11 to %struct.irqaction*
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  %handler15 = bitcast i8* %call11 to i32 (i32, i8*)**
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler15, align 64
  %1 = trunc i64 %flags to i32
  %conv = or i32 %1, 17408
  %flags17 = getelementptr inbounds i8, i8* %call11, i64 60
  %2 = bitcast i8* %flags17 to i32*
  store i32 %conv, i32* %2, align 4
  %name = getelementptr inbounds i8, i8* %call11, i64 80
  %3 = bitcast i8* %name to i8**
  store i8* %devname, i8** %3, align 16
  %percpu_dev_id = getelementptr inbounds i8, i8* %call11, i64 16
  %4 = bitcast i8* %percpu_dev_id to i8**
  store i8* %dev_id, i8** %4, align 16
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call18 = call i32 @irq_chip_pm_get(%struct.irq_data* noundef %irq_data) #16
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %cleanup.sink.split, label %if.end22

if.end22:                                         ; preds = %if.end14
  %call23 = call fastcc i32 @__setup_irq(i32 noundef %irq, %struct.irq_desc* noundef nonnull %call, %struct.irqaction* noundef nonnull %0) #15
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call27 = call i32 @irq_chip_pm_put(%struct.irq_data* noundef %irq_data) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end14, %if.then25
  %retval.0.ph = phi i32 [ %call23, %if.then25 ], [ %call18, %if.end14 ]
  call void @kfree(i8* noundef nonnull %call11) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22, %if.end10, %if.end7, %if.end, %lor.lhs.false, %lor.lhs.false4, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %lor.lhs.false4 ], [ -22, %lor.lhs.false ], [ -22, %if.end ], [ -22, %if.end7 ], [ -12, %if.end10 ], [ 0, %if.end22 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @request_percpu_nmi(i32 noundef %irq, i32 (i32, i8*)* noundef %handler, i8* noundef %name, i8* noundef %dev_id) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 (i32, i8*)* %handler, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool2.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call fastcc i1 @irq_settings_can_request(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call3, label %lor.lhs.false4, label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call fastcc i1 @irq_settings_is_per_cpu_devid(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call5, label %lor.lhs.false6, label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %call7 = call fastcc i1 @irq_settings_can_autoenable(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call7, label %cleanup, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %call9 = call fastcc i1 @irq_supports_nmi(%struct.irq_desc* noundef nonnull %call) #15
  br i1 %call9, label %if.end11, label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 8192
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end11
  %call15 = call fastcc i8* @kzalloc() #15
  %1 = bitcast i8* %call15 to %struct.irqaction*
  %tobool16.not = icmp eq i8* %call15, null
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end14
  %handler19 = bitcast i8* %call15 to i32 (i32, i8*)**
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler19, align 64
  %flags20 = getelementptr inbounds i8, i8* %call15, i64 60
  %2 = bitcast i8* %flags20 to i32*
  store i32 84992, i32* %2, align 4
  %name21 = getelementptr inbounds i8, i8* %call15, i64 80
  %3 = bitcast i8* %name21 to i8**
  store i8* %name, i8** %3, align 16
  %percpu_dev_id = getelementptr inbounds i8, i8* %call15, i64 16
  %4 = bitcast i8* %percpu_dev_id to i8**
  store i8* %dev_id, i8** %4, align 16
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 1
  %call22 = call i32 @irq_chip_pm_get(%struct.irq_data* noundef %irq_data) #16
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %err_out, label %if.end24

if.end24:                                         ; preds = %if.end18
  %call25 = call fastcc i32 @__setup_irq(i32 noundef %irq, %struct.irq_desc* noundef nonnull %call, %struct.irqaction* noundef nonnull %1) #15
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body, label %err_irq_setup

do.body:                                          ; preds = %if.end24
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 15
  %call30 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #15
  %5 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %or = or i32 %5, 8192
  store i32 %or, i32* %core_internal_state__do_not_mess_with_it, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call30) #15
  br label %cleanup

err_irq_setup:                                    ; preds = %if.end24
  %call42 = call i32 @irq_chip_pm_put(%struct.irq_data* noundef %irq_data) #16
  br label %err_out

err_out:                                          ; preds = %if.end18, %err_irq_setup
  %retval1.0 = phi i32 [ %call22, %if.end18 ], [ %call25, %err_irq_setup ]
  call void @kfree(i8* noundef nonnull %call15) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end11, %if.end, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false6, %lor.lhs.false8, %entry, %err_out, %do.body
  %retval.0 = phi i32 [ %retval1.0, %err_out ], [ 0, %do.body ], [ -22, %entry ], [ -22, %lor.lhs.false8 ], [ -22, %lor.lhs.false6 ], [ -22, %lor.lhs.false4 ], [ -22, %lor.lhs.false ], [ -22, %if.end ], [ -22, %if.end11 ], [ -12, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @prepare_percpu_nmi(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 3) #15
  %tobool10.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %1 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %1, 8192
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.end, label %if.end47, !prof !16

do.end:                                           ; preds = %if.end12
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 noundef %irq) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2715; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !40
  br label %out

if.end47:                                         ; preds = %if.end12
  %call48 = call fastcc i32 @irq_nmi_setup(%struct.irq_desc* noundef nonnull %call) #15
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %out, label %do.end53

do.end53:                                         ; preds = %if.end47
  %call55 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 noundef %irq) #18
  br label %out

out:                                              ; preds = %do.end, %if.end47, %do.end53
  %ret.0 = phi i32 [ %call48, %do.end53 ], [ 0, %if.end47 ], [ -22, %do.end ]
  %2 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %2) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @teardown_percpu_nmi(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_lock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 3) #15
  %tobool10.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 6
  %1 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %1, 8192
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then29, label %if.end41, !prof !16

if.then29:                                        ; preds = %if.end12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2755; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !41
  br label %out

if.end41:                                         ; preds = %if.end12
  call fastcc void @irq_nmi_teardown(%struct.irq_desc* noundef nonnull %call) #15
  br label %out

out:                                              ; preds = %if.then29, %if.end41
  %2 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_unlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %2) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__irq_get_irqchip_state(%struct.irq_data* noundef %data, i32 noundef %which, i8* noundef %state) local_unnamed_addr #1 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end21, %entry
  %data.addr.0 = phi %struct.irq_data* [ %data, %entry ], [ %1, %if.end21 ]
  %call = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %data.addr.0) #15
  %tobool.not = icmp eq %struct.irq_chip* %call, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !16

if.then:                                          ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2771; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !42
  br label %cleanup

if.end18:                                         ; preds = %do.body
  %irq_get_irqchip_state = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call, i64 0, i32 28
  %0 = load i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i8*)** %irq_get_irqchip_state, align 8
  %tobool19.not = icmp eq i32 (%struct.irq_data*, i32, i8*)* %0, null
  br i1 %tobool19.not, label %if.end21, label %do.end

if.end21:                                         ; preds = %if.end18
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.addr.0, i64 0, i32 6
  %1 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool22.not = icmp eq %struct.irq_data* %1, null
  br i1 %tobool22.not, label %cleanup, label %do.body

do.end:                                           ; preds = %if.end18
  %tobool23.not = icmp eq %struct.irq_data* %data.addr.0, null
  br i1 %tobool23.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %do.end
  %call26 = call i32 %0(%struct.irq_data* noundef nonnull %data.addr.0, i32 noundef %which, i8* noundef %state) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then, %do.end, %if.then24
  %retval.0 = phi i32 [ -19, %if.then ], [ %call26, %if.then24 ], [ -22, %do.end ], [ -22, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_get_irqchip_state(i32 noundef %irq, i32 noundef %which, i8* noundef %state) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef nonnull %call) #15
  %call2 = call i32 @__irq_get_irqchip_state(%struct.irq_data* noundef %call1, i32 noundef %which, i8* noundef %state) #15
  %1 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_set_irqchip_state(i32 noundef %irq, i32 noundef %which, i1 noundef %val) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %flags, align 8, !annotation !8
  %call = call fastcc %struct.irq_desc* @irq_get_desc_buslock(i32 noundef %irq, i64* noundef nonnull %flags, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* noundef nonnull %call) #15
  br label %do.body

do.body:                                          ; preds = %if.end26, %if.end
  %data.0 = phi %struct.irq_data* [ %call1, %if.end ], [ %2, %if.end26 ]
  %call2 = call fastcc %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* noundef %data.0) #15
  %tobool3.not = icmp eq %struct.irq_chip* %call2, null
  br i1 %tobool3.not, label %if.then12, label %if.end23, !prof !16

if.then12:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 2850; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !43
  br label %out_unlock

if.end23:                                         ; preds = %do.body
  %irq_set_irqchip_state = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %call2, i64 0, i32 29
  %1 = load i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i32, i1)** %irq_set_irqchip_state, align 8
  %tobool24.not = icmp eq i32 (%struct.irq_data*, i32, i1)* %1, null
  br i1 %tobool24.not, label %if.end26, label %do.end

if.end26:                                         ; preds = %if.end23
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.0, i64 0, i32 6
  %2 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool27.not = icmp eq %struct.irq_data* %2, null
  br i1 %tobool27.not, label %out_unlock, label %do.body

do.end:                                           ; preds = %if.end23
  %tobool28.not = icmp eq %struct.irq_data* %data.0, null
  br i1 %tobool28.not, label %out_unlock, label %if.then29

if.then29:                                        ; preds = %do.end
  %call32 = call i32 %1(%struct.irq_data* noundef nonnull %data.0, i32 noundef %which, i1 noundef %val) #16
  br label %out_unlock

out_unlock:                                       ; preds = %if.end26, %if.then12, %do.end, %if.then29
  %err.0 = phi i32 [ %call32, %if.then29 ], [ -22, %do.end ], [ -19, %if.then12 ], [ -22, %if.end26 ]
  %3 = load i64, i64* %flags, align 8
  call fastcc void @irq_put_desc_busunlock(%struct.irq_desc* noundef nonnull %call, i64 noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_has_action(i32 noundef %irq) local_unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #16
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %call1 = call fastcc i32 @irq_desc_has_action(%struct.irq_desc* noundef %call) #15
  %tobool = icmp ne i32 %call1, 0
  call fastcc void @rcu_read_unlock() #15
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_has_action(%struct.irq_desc* noundef readonly %desc) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.irq_desc* %desc, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 4
  %0 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %cmp = icmp ne %struct.irqaction* %0, null
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_check_status_bit(i32 noundef %irq, i32 noundef %bitmask) local_unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #16
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, %bitmask
  %tobool1 = icmp ne i32 %and, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0.off0 = phi i1 [ %tobool1, %if.then ], [ false, %entry ]
  call fastcc void @rcu_read_unlock() #15
  ret i1 %res.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_enable() unnamed_addr #1 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !9
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !16

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.static_key_enable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @force_irqthreads_key, i64 0, i32 0)) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 318; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @force_irqthreads_key, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @force_irqthreads_key, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 1
  br i1 %cmp27.not, label %return, label %if.then41, !prof !12

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 321; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !45
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 1, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @force_irqthreads_key, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_irq_inprogress(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 262144
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #17, !srcloc !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_can_balance(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 3072
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
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
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !48
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_and(i64* noundef %src1, i64* noundef %src2) unnamed_addr #1 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @irq_setup_affinity.mask, i64 0, i32 0, i64 0), i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_intersects(i64* noundef %src1) unnamed_addr #1 {
entry:
  %call = call i32 @__bitmap_intersects(i64* noundef %src1, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i32 noundef 256) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.cpumask* @irq_data_get_effective_affinity_mask(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %arraydecay = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 4, i64 0
  ret %struct.cpumask* %arraydecay
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_affinity_on_activate(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 536870912
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_init_effective_affinity(%struct.irq_data* nocapture noundef readonly %data, %struct.cpumask* noundef %mask) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.cpumask* @irq_data_get_effective_affinity_mask(%struct.irq_data* noundef %data) #15
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %call, %struct.cpumask* noundef %mask) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #16
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !16

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !12

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #16
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !50
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #1 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #16
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #15
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #15
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #16
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #17, !srcloc !51
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !12

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !52
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @__irq_get_desc_lock(i32 noundef, i64* noundef, i1 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_put_desc_unlock(%struct.irq_desc* noundef, i64 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
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
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
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
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #17, !srcloc !53
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #17, !srcloc !54
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #15
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !16

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #17, !srcloc !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #11 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #17, !srcloc !56
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty(i64* noundef %src) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @find_first_bit(i64* noundef %src) #15
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #16
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  ret %struct.irq_chip* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !57
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.23* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_clr_disable_unlazy(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, -524289
  store i32 %and, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown(%struct.irq_desc* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_handler_proc(i32 noundef, %struct.irqaction* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #15
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_release_resources(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_release_resources = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 25
  %1 = load void (%struct.irq_data*)*, void (%struct.irq_data*)** %irq_release_resources, align 8
  %tobool.not = icmp eq void (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  call void %1(%struct.irq_data* noundef %irq_data) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown_and_deactivate(%struct.irq_desc* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_nested_primary_handler(i32 noundef %irq, i8* nocapture noundef readnone %dev_id) #1 {
entry:
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 noundef %irq) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1027; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !58
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_settings_can_thread(%struct.irq_desc* nocapture noundef readonly %desc) unnamed_addr #5 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_setup_forced_threading(%struct.irqaction* noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @force_irqthreads_key, i64 0, i32 0)) #15
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.end, label %return, !prof !16

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 8
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 74752
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.end
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 0
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %cmp7 = icmp eq i32 (i32, i8*)* %1, @irq_default_primary_handler
  br i1 %cmp7, label %return, label %if.end10

if.end10:                                         ; preds = %if.end6
  %or = or i32 %0, 8192
  store i32 %or, i32* %flags, align 4
  %tobool13.not = icmp eq i32 (i32, i8*)* %1, null
  br i1 %tobool13.not, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %thread_fn = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 4
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn, align 32
  %tobool14.not = icmp eq i32 (i32, i8*)* %2, null
  br i1 %tobool14.not, label %if.end32, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %call16 = call fastcc i8* @kzalloc() #15
  %secondary = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 6
  %3 = bitcast %struct.irqaction** %secondary to i8**
  store i8* %call16, i8** %3, align 16
  %tobool18.not = icmp eq i8* %call16, null
  br i1 %tobool18.not, label %return, label %if.end20

if.end20:                                         ; preds = %if.then15
  %handler22 = bitcast i8* %call16 to i32 (i32, i8*)**
  store i32 (i32, i8*)* @irq_forced_secondary_handler, i32 (i32, i8*)** %handler22, align 64
  %4 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn, align 32
  %thread_fn25 = getelementptr inbounds i8, i8* %call16, i64 32
  %5 = bitcast i8* %thread_fn25 to i32 (i32, i8*)**
  store i32 (i32, i8*)* %4, i32 (i32, i8*)** %5, align 32
  %dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 1
  %6 = load i8*, i8** %dev_id, align 8
  %dev_id27 = getelementptr inbounds i8, i8* %call16, i64 8
  %7 = bitcast i8* %dev_id27 to i8**
  store i8* %6, i8** %7, align 8
  %irq = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 7
  %8 = load i32, i32* %irq, align 8
  %irq29 = getelementptr inbounds i8, i8* %call16, i64 56
  %9 = bitcast i8* %irq29 to i32*
  store i32 %8, i32* %9, align 8
  %name = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 11
  %10 = load i8*, i8** %name, align 16
  %name31 = getelementptr inbounds i8, i8* %call16, i64 80
  %11 = bitcast i8* %name31 to i8**
  store i8* %10, i8** %11, align 16
  br label %if.end32

if.end32:                                         ; preds = %if.end20, %land.lhs.true, %if.end10
  %thread_flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 9
  call fastcc void @set_bit(i64 noundef 3, i64* noundef %thread_flags) #15
  %12 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %thread_fn34 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 4
  store i32 (i32, i8*)* %12, i32 (i32, i8*)** %thread_fn34, align 32
  store i32 (i32, i8*)* @irq_default_primary_handler, i32 (i32, i8*)** %handler, align 64
  br label %return

return:                                           ; preds = %if.then15, %if.end6, %if.end, %entry, %if.end32
  %retval.0 = phi i32 [ 0, %if.end32 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ], [ -12, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @setup_irq_thread(%struct.irqaction* noundef %new, i32 noundef %irq, i1 noundef %secondary) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.irqaction* %new to i8*
  %name1 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 11
  %1 = load i8*, i8** %name1, align 16
  %. = select i1 %secondary, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)
  %call2 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* noundef nonnull @irq_thread, i8* noundef %0, i32 noundef -1, i8* noundef %., i32 noundef %irq, i8* noundef %1) #16
  %2 = bitcast %struct.task_struct* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #15
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %entry
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %2) #15
  %conv = trunc i64 %call5 to i32
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @sched_set_fifo(%struct.task_struct* noundef %call2) #16
  %call7 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %call2) #15
  %thread = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 5
  store %struct.task_struct* %call2, %struct.task_struct** %thread, align 8
  %thread_flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %new, i64 0, i32 9
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %thread_flags) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ %conv, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_request_resources(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %chip = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_request_resources = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %0, i64 0, i32 24
  %1 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %irq_request_resources, align 8
  %tobool.not = icmp eq i32 (%struct.irq_data*)* %1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call = call i32 %1(%struct.irq_data* noundef %irq_data) #16
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_trigger_type_was_set(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #5 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_trigger_type(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %type) unnamed_addr #6 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -16
  store i32 %and, i32* %state_use_accessors, align 8
  %and1 = and i32 %type, 15
  %2 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors3 = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %2, i64 0, i32 0
  %3 = load i32, i32* %state_use_accessors3, align 8
  %or = or i32 %3, %and1
  store i32 %or, i32* %state_use_accessors3, align 8
  %4 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors5 = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %4, i64 0, i32 0
  %5 = load i32, i32* %state_use_accessors5, align 8
  %or6 = or i32 %5, 33554432
  store i32 %or6, i32* %state_use_accessors5, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_activate(%struct.irq_desc* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_per_cpu(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %or = or i32 %0, 512
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_no_debug(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %or = or i32 %0, 2097152
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_settings_set_no_balancing(%struct.irq_desc* nocapture noundef %desc) unnamed_addr #6 {
entry:
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 5
  %0 = load i32, i32* %status_use_accessors, align 16
  %or = or i32 %0, 8192
  store i32 %or, i32* %status_use_accessors, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_irq_proc(i32 noundef, %struct.irq_desc* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_handler_proc(i32 noundef, %struct.irqaction* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_forced_secondary_handler(i32 noundef %irq, i8* nocapture noundef readnone %dev_id) #1 {
entry:
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 noundef %irq) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1033; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !59
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)* noundef, i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_thread(i8* noundef %data) #1 {
entry:
  %on_exit_work = alloca %struct.callback_head, align 8
  %0 = bitcast %struct.callback_head* %on_exit_work to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %1 = bitcast i8* %data to %struct.irqaction*
  %irq = getelementptr inbounds i8, i8* %data, i64 56
  %2 = bitcast i8* %irq to i32*
  %3 = load i32, i32* %2, align 8
  %call = call %struct.irq_desc* @irq_to_desc(i32 noundef %3) #16
  %call1 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @force_irqthreads_key, i64 0, i32 0)) #15
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else, !prof !16

land.lhs.true:                                    ; preds = %entry
  %thread_flags = getelementptr inbounds i8, i8* %data, i64 64
  %4 = bitcast i8* %thread_flags to i64*
  %5 = load volatile i64, i64* %4, align 8
  %6 = and i64 %5, 8
  %tobool6.not = icmp eq i64 %6, 0
  br i1 %tobool6.not, label %if.else, label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %handler_fn.0 = phi i32 (%struct.irq_desc*, %struct.irqaction*)* [ @irq_thread_fn, %if.else ], [ @irq_forced_thread_fn, %land.lhs.true ]
  call fastcc void @init_task_work(%struct.callback_head* noundef nonnull %on_exit_work) #15
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !57
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call8 = call i32 @task_work_add(%struct.task_struct* noundef %8, %struct.callback_head* noundef nonnull %on_exit_work, i32 noundef 0) #16
  call fastcc void @irq_thread_check_affinity(%struct.irq_desc* noundef %call, %struct.irqaction* noundef %1) #15
  %call934 = call fastcc i32 @irq_wait_for_interrupt(%struct.irqaction* noundef %1) #15
  %tobool10.not35 = icmp eq i32 %call934, 0
  br i1 %tobool10.not35, label %while.body, label %while.end

while.body:                                       ; preds = %if.end, %if.end17
  call fastcc void @irq_thread_check_affinity(%struct.irq_desc* noundef %call, %struct.irqaction* noundef %1) #15
  %call13 = call i32 %handler_fn.0(%struct.irq_desc* noundef %call, %struct.irqaction* noundef %1) #16, !callees !60
  %cmp14 = icmp eq i32 %call13, 2
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  call fastcc void @irq_wake_secondary(%struct.irq_desc* noundef %call, %struct.irqaction* noundef %1) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body
  call fastcc void @wake_threads_waitq(%struct.irq_desc* noundef %call) #15
  %call9 = call fastcc i32 @irq_wait_for_interrupt(%struct.irqaction* noundef %1) #15
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end17, %if.end
  %call19 = call %struct.callback_head* @task_work_cancel(%struct.task_struct* noundef %8, void (%struct.callback_head*)* noundef nonnull @irq_thread_dtor) #16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #8 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #8 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef returned %t) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #15
  ret %struct.task_struct* %t
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_forced_thread_fn(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef %action) unnamed_addr #1 {
entry:
  call fastcc void @local_bh_disable() #15
  call fastcc void @arch_local_irq_disable() #15
  %thread_fn = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 4
  %0 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn, align 32
  %irq = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 7
  %1 = load i32, i32* %irq, align 8
  %dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 1
  %2 = load i8*, i8** %dev_id, align 8
  %call = call i32 %0(i32 noundef %1, i8* noundef %2) #16
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %threads_handled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 13
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %threads_handled) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @irq_finalize_oneshot(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef %action) #15
  call fastcc void @arch_local_irq_enable() #15
  call fastcc void @local_bh_enable() #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @irq_thread_fn(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef %action) unnamed_addr #1 {
entry:
  %thread_fn = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 4
  %0 = load i32 (i32, i8*)*, i32 (i32, i8*)** %thread_fn, align 32
  %irq = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 7
  %1 = load i32, i32* %irq, align 8
  %dev_id = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 1
  %2 = load i8*, i8** %dev_id, align 8
  %call = call i32 %0(i32 noundef %1, i8* noundef %2) #16
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %threads_handled = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 13
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %threads_handled) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @irq_finalize_oneshot(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef %action) #15
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_task_work(%struct.callback_head* nocapture noundef writeonly %twork) unnamed_addr #13 {
entry:
  %func1 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %twork, i64 0, i32 1
  store void (%struct.callback_head*)* @irq_thread_dtor, void (%struct.callback_head*)** %func1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @irq_thread_dtor(%struct.callback_head* nocapture noundef readnone %unused) #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !57
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end19, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1218; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !61
  br label %cleanup

if.end19:                                         ; preds = %entry
  %call20 = call i8* @kthread_data(%struct.task_struct* noundef %1) #16
  %3 = bitcast i8* %call20 to %struct.irqaction*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 50
  %4 = load i32, i32* %pid, align 32
  %irq = getelementptr inbounds i8, i8* %call20, i64 56
  %5 = bitcast i8* %irq to i32*
  %6 = load i32, i32* %5, align 8
  %call22 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.21, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %4, i32 noundef %6) #18
  %7 = load i32, i32* %5, align 8
  %call24 = call %struct.irq_desc* @irq_to_desc(i32 noundef %7) #16
  %thread_flags = getelementptr inbounds i8, i8* %call20, i64 64
  %8 = bitcast i8* %thread_flags to i64*
  %call25 = call fastcc i1 @test_and_clear_bit(i64 noundef 0, i64* noundef %8) #15
  br i1 %call25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end19
  call fastcc void @wake_threads_waitq(%struct.irq_desc* noundef %call24) #15
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end19
  call fastcc void @irq_finalize_oneshot(%struct.irq_desc* noundef %call24, %struct.irqaction* noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(%struct.task_struct* noundef, %struct.callback_head* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_thread_check_affinity(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef %action) unnamed_addr #1 {
entry:
  %mask = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  %thread_flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 9
  %call = call fastcc i1 @test_and_clear_bit(i64 noundef 2, i64* noundef %thread_flags) #15
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #15
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call7 = call fastcc %struct.cpumask* @irq_data_get_effective_affinity_mask(%struct.irq_data* noundef %irq_data) #15
  %arraydecay8 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %arraydecay8, %struct.cpumask* noundef %call7) #15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #15
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !57
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call14 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %2, %struct.cpumask* noundef nonnull %arraydecay8) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_wait_for_interrupt(%struct.irqaction* noundef %action) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !57
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !62
  %call1161 = call i1 @kthread_should_stop() #16
  br i1 %call1161, label %if.then, label %if.end38.lr.ph

if.end38.lr.ph:                                   ; preds = %entry
  %thread_flags39 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 9
  br label %if.end38

if.then:                                          ; preds = %if.end54, %entry
  %thread_flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 9
  %call12 = call fastcc i1 @test_and_clear_bit(i64 noundef 0, i64* noundef %thread_flags) #15
  store volatile i32 0, i32* %__state, align 16
  %not.call12 = xor i1 %call12, true
  %. = sext i1 %not.call12 to i32
  br label %return

if.end38:                                         ; preds = %if.end38.lr.ph, %if.end54
  %call40 = call fastcc i1 @test_and_clear_bit(i64 noundef 0, i64* noundef %thread_flags39) #15
  br i1 %call40, label %do.body48, label %if.end54

do.body48:                                        ; preds = %if.end38
  store volatile i32 0, i32* %__state, align 16
  br label %return

if.end54:                                         ; preds = %if.end38
  call void @schedule() #16
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !62
  %call11 = call i1 @kthread_should_stop() #16
  br i1 %call11, label %if.then, label %if.end38

return:                                           ; preds = %if.then, %do.body48
  %retval.0 = phi i32 [ 0, %do.body48 ], [ %., %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_wake_secondary(%struct.irq_desc* noundef %desc, %struct.irqaction* nocapture noundef readonly %action) unnamed_addr #1 {
entry:
  %secondary1 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 6
  %0 = load %struct.irqaction*, %struct.irqaction** %secondary1, align 16
  %tobool.not = icmp eq %struct.irqaction* %0, null
  br i1 %tobool.not, label %if.then, label %if.end19, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/manage.c\22; .popsection; .long 14472b - 14470b; .short 1243; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !63
  br label %cleanup

if.end19:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #15
  call void @__irq_wake_thread(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef nonnull %0) #16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wake_threads_waitq(%struct.irq_desc* noundef %desc) unnamed_addr #1 {
entry:
  %threads_active = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 21
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %threads_active) #16
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %wait_for_threads = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 22
  call void @__wake_up(%struct.wait_queue_head* noundef %wait_for_threads, i32 noundef 3, i32 noundef 1, i8* noundef null) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.callback_head* @task_work_cancel(%struct.task_struct* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_disable() unnamed_addr #1 {
__here:
  call fastcc void @__preempt_count_add() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_finalize_oneshot(%struct.irq_desc* noundef %desc, %struct.irqaction* noundef %action) unnamed_addr #1 {
entry:
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 6
  %0 = load i32, i32* %core_internal_state__do_not_mess_with_it, align 4
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %handler = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 0
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler, align 64
  %cmp = icmp eq i32 (i32, i8*)* %1, @irq_forced_secondary_handler
  br i1 %cmp, label %return, label %again.preheader

again.preheader:                                  ; preds = %lor.lhs.false
  call fastcc void @chip_bus_lock(%struct.irq_desc* noundef %desc) #15
  %lock = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #15
  %irq_data = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 1
  %call37 = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data) #15
  br i1 %call37, label %if.then3, label %if.end5, !prof !16

if.then3:                                         ; preds = %again.preheader, %if.then3
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) #15
  call fastcc void @cpu_relax() #15
  call fastcc void @chip_bus_lock(%struct.irq_desc* noundef %desc) #15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #15
  %call = call fastcc i1 @irqd_irq_inprogress(%struct.irq_data* noundef %irq_data) #15
  br i1 %call, label %if.then3, label %if.end5, !prof !16

if.end5:                                          ; preds = %if.then3, %again.preheader
  %thread_flags = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 9
  %2 = load volatile i64, i64* %thread_flags, align 8
  %conv.i36 = and i64 %2, 1
  %tobool7.not = icmp eq i64 %conv.i36, 0
  br i1 %tobool7.not, label %if.end9, label %out_unlock

if.end9:                                          ; preds = %if.end5
  %thread_mask = getelementptr inbounds %struct.irqaction, %struct.irqaction* %action, i64 0, i32 10
  %3 = load i64, i64* %thread_mask, align 8
  %neg = xor i64 %3, -1
  %threads_oneshot = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 20
  %4 = load i64, i64* %threads_oneshot, align 64
  %and10 = and i64 %4, %neg
  store i64 %and10, i64* %threads_oneshot, align 64
  %tobool12.not = icmp eq i64 %and10, 0
  br i1 %tobool12.not, label %land.lhs.true, label %out_unlock

land.lhs.true:                                    ; preds = %if.end9
  %call14 = call fastcc i1 @irqd_irq_disabled(%struct.irq_data* noundef %irq_data) #15
  br i1 %call14, label %out_unlock, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true
  %call17 = call fastcc i1 @irqd_irq_masked(%struct.irq_data* noundef %irq_data) #15
  br i1 %call17, label %if.then19, label %out_unlock

if.then19:                                        ; preds = %land.lhs.true15
  call void @unmask_threaded_irq(%struct.irq_desc* noundef %desc) #16
  br label %out_unlock

out_unlock:                                       ; preds = %if.end9, %land.lhs.true, %land.lhs.true15, %if.then19, %if.end5
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @chip_bus_sync_unlock(%struct.irq_desc* noundef %desc) #15
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %out_unlock
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #17, !srcloc !65
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_enable() #1 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  call void @__local_bh_enable_ip(i64 noundef ptrtoint (i8* blockaddress(@local_bh_enable, %__here) to i64), i32 noundef 512) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !57
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.23* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !66
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !67
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call fastcc void @arch_local_irq_enable() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmask_threaded_irq(%struct.irq_desc* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kthread_data(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #16
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !69
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !70
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #15
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  call void @rcu_read_unlock_strict() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { nounwind readonly }
attributes #20 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2149476731}
!11 = !{i64 2149484012}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149461730}
!14 = !{i64 2149487573}
!15 = !{i64 2153352643}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2153354735}
!18 = !{i64 2153356817}
!19 = !{i32 0, i32 16}
!20 = !{i64 2153386191}
!21 = !{i64 2153406086}
!22 = !{i64 2153407705}
!23 = !{i64 2153399329}
!24 = !{i64 2153401546}
!25 = !{i64 2153403563}
!26 = !{i64 2153411182}
!27 = !{i64 2153412815}
!28 = !{i64 2153414429}
!29 = !{i64 2153409482}
!30 = !{i64 2153416726}
!31 = !{i64 0, i64 65}
!32 = !{i64 2153394317}
!33 = !{i64 2153418858}
!34 = !{i64 2153426774}
!35 = !{i64 2149049876, i64 2149049923, i64 2149049929, i64 2149049966, i64 2149049984, i64 2149050911, i64 2149050959, i64 2149051007, i64 2149051070, i64 2149051119, i64 2149050062, i64 2149050087, i64 2149050113, i64 2149050119, i64 2149050156, i64 2149050162, i64 2149050212, i64 2149050258, i64 2149050291}
!36 = !{i64 2153431440}
!37 = !{i64 2153433669}
!38 = !{i64 2153435703}
!39 = !{i64 2153438182}
!40 = !{i64 2153443244}
!41 = !{i64 2153447137}
!42 = !{i64 2153448803}
!43 = !{i64 2153450595}
!44 = !{i64 2148946011}
!45 = !{i64 2148947757}
!46 = !{i64 1810727}
!47 = !{i64 2147960569, i64 2147961080, i64 2147961110, i64 2147961136, i64 2147961168, i64 2147961197}
!48 = !{i64 2147991412, i64 2147991445, i64 2147991498, i64 2147991557, i64 2147991591, i64 2147991646, i64 2147991675, i64 2147991695}
!49 = !{i64 2149276242}
!50 = !{i64 2147897453, i64 2147898117, i64 2147898147, i64 2147898179, i64 2147898213, i64 2147898248, i64 2147898273}
!51 = !{i64 2150216331}
!52 = !{i64 2147909235, i64 2147909909, i64 2147909939, i64 2147909971, i64 2147910005, i64 2147910041, i64 2147910066}
!53 = !{i64 2149027557, i64 2149027604, i64 2149027610, i64 2149027647, i64 2149027665, i64 2149028976, i64 2149029024, i64 2149029072, i64 2149029135, i64 2149029184, i64 2149027743, i64 2149027768, i64 2149027794, i64 2149027800, i64 2149028642, i64 2149028682, i64 2149028700, i64 2149028732, i64 2149028760, i64 2149028814, i64 2149028834, i64 2149028931, i64 2149027823, i64 2149027837, i64 2149027843, i64 2149027893, i64 2149027939, i64 2149027972}
!54 = !{i64 2149029736, i64 2149029783, i64 2149029789, i64 2149029826, i64 2149029844, i64 2149030787, i64 2149030835, i64 2149030883, i64 2149030946, i64 2149030995, i64 2149029922, i64 2149029947, i64 2149029973, i64 2149029979, i64 2149030016, i64 2149030022, i64 2149030072, i64 2149030118, i64 2149030151}
!55 = !{i64 2149021854, i64 2149021901, i64 2149021907, i64 2149021944, i64 2149021962, i64 2149023303, i64 2149023351, i64 2149023399, i64 2149023462, i64 2149023511, i64 2149022040, i64 2149022065, i64 2149022091, i64 2149022097, i64 2149022969, i64 2149023009, i64 2149023027, i64 2149023059, i64 2149023087, i64 2149023141, i64 2149023161, i64 2149023258, i64 2149022120, i64 2149022134, i64 2149022140, i64 2149022190, i64 2149022236, i64 2149022269}
!56 = !{i64 2149033570, i64 2149033617, i64 2149033623, i64 2149033660, i64 2149033678, i64 2149034989, i64 2149035037, i64 2149035085, i64 2149035148, i64 2149035197, i64 2149033756, i64 2149033781, i64 2149033807, i64 2149033813, i64 2149034655, i64 2149034695, i64 2149034713, i64 2149034745, i64 2149034773, i64 2149034827, i64 2149034847, i64 2149034944, i64 2149033836, i64 2149033850, i64 2149033856, i64 2149033906, i64 2149033952, i64 2149033985}
!57 = !{i64 1287952}
!58 = !{i64 2153360688}
!59 = !{i64 2153362644}
!60 = !{i32 (%struct.irq_desc*, %struct.irqaction*)* @irq_forced_thread_fn, i32 (%struct.irq_desc*, %struct.irqaction*)* @irq_thread_fn}
!61 = !{i64 2153376381}
!62 = !{i64 2153365470}
!63 = !{i64 2153378783}
!64 = !{i64 2149125237}
!65 = !{i64 2149012398, i64 2149012445, i64 2149012451, i64 2149012488, i64 2149012506, i64 2149013846, i64 2149013894, i64 2149013942, i64 2149014005, i64 2149014054, i64 2149012584, i64 2149012609, i64 2149012635, i64 2149012641, i64 2149013512, i64 2149013552, i64 2149013570, i64 2149013602, i64 2149013630, i64 2149013684, i64 2149013704, i64 2149013801, i64 2149012664, i64 2149012678, i64 2149012684, i64 2149012734, i64 2149012780, i64 2149012813}
!66 = !{i64 2147891489, i64 2147892005, i64 2147892035, i64 2147892062, i64 2147892096, i64 2147892126}
!67 = !{i64 2149466023}
!68 = !{i64 2149490876}
!69 = !{i64 2147971992, i64 2147972654, i64 2147972684, i64 2147972715, i64 2147972747, i64 2147972782, i64 2147972807}
!70 = !{i64 2147902062, i64 2147902710, i64 2147902740, i64 2147902772, i64 2147902806, i64 2147902842, i64 2147902867}
!71 = !{i64 2150002280}
!72 = !{i64 2150002497}
