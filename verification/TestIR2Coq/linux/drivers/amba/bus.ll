; ModuleID = 'drivers/amba/bus.c'
source_filename = "drivers/amba/bus.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_bus__435_331_amba_init2:\09\09\09"
module asm ".long\09amba_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_bus__441_534_amba_deferred_retry7:\09\09\09"
module asm ".long\09amba_deferred_retry - .\09"
module asm ".previous\09\09\09\09\09"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.69 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
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
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
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
%struct.irq_domain = type opaque
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
%struct.attribute = type { i8*, i16 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.38, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.38 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.68, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.68 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.75, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.75 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type opaque
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
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
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34, [48 x i8] }
%struct.anon.34 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.58 }
%union.anon.58 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.60 = type { i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.37 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.amba_device = type { %struct.device, %struct.resource, %struct.clk*, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], i8* }
%struct.clk = type opaque
%struct.amba_cs_uci_id = type { i32, i32, i32, i8* }
%struct.amba_id = type { i32, i32, i8* }
%struct.amba_driver = type { %struct.device_driver, i32 (%struct.amba_device*, %struct.amba_id*)*, void (%struct.amba_device*)*, void (%struct.amba_device*)*, %struct.amba_id* }
%struct.find_data = type { %struct.amba_device*, %struct.device*, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"amba\00", align 1
@amba_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @amba_dev_group, %struct.attribute_group* null], align 8
@amba_pm = internal constant %struct.dev_pm_ops zeroinitializer, align 8
@amba_bustype = dso_local global %struct.bus_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @amba_dev_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @amba_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @amba_uevent, i32 (%struct.device*)* @amba_probe, void (%struct.device*)* null, void (%struct.device*)* @amba_remove, void (%struct.device*)* @amba_shutdown, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i64)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @platform_dma_configure, %struct.dev_pm_ops* @amba_pm, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8
@__UNIQUE_ID___addressable_amba_init436 = internal global i8* bitcast (i32 ()* @amba_init to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_amba_deferred_retry442 = internal global i8* bitcast (i32 ()* @amba_deferred_retry to i8*), section ".discard.addressable", align 8
@deferred_devices_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @deferred_devices_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @deferred_devices_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@deferred_devices = internal global %struct.list_head { %struct.list_head* @deferred_devices, %struct.list_head* @deferred_devices }, align 8
@deferred_retry_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @deferred_retry_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @deferred_retry_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @amba_deferred_retry_func }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152 }, %struct.workqueue_struct* null, i32 0 }, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@amba_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @amba_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@amba_dev_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_resource, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_driver_override, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_resource = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @resource_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_driver_override = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @driver_override_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @driver_override_store }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\09%016llx\09%016llx\09%016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"driver_override\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AMBA_ID=%08x\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"MODALIAS=amba:d%08X\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"can't get reset: %d\0A\00", align 1
@dev_attr_irq0 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @irq0_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_irq1 = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @irq1_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"irq0\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"irq1\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_amba_deferred_retry442 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_amba_init436 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @amba_match(%struct.device* nocapture noundef readonly %dev, %struct.device_driver* nocapture noundef readonly %drv) #0 {
entry:
  %driver_override = getelementptr inbounds %struct.device, %struct.device* %dev, i64 1, i32 10
  %0 = bitcast %struct.dev_links_info* %driver_override to i8**
  %1 = load i8*, i8** %0, align 8
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef %2) #10
  %tobool8.not = icmp eq i32 %call, 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.device* %dev to %struct.amba_device*
  %id_table = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 1, i32 3
  %4 = bitcast i8** %id_table to %struct.amba_id**
  %5 = load %struct.amba_id*, %struct.amba_id** %4, align 8
  %call9 = call fastcc %struct.amba_id* @amba_lookup(%struct.amba_id* noundef %5, %struct.amba_device* noundef %3) #11
  %cmp = icmp ne %struct.amba_id* %call9, null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i1 [ %tobool8.not, %if.then ], [ %cmp, %if.end ]
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @amba_uevent(%struct.device* nocapture noundef readonly %dev, %struct.kobj_uevent_env* noundef %env) #0 {
entry:
  %periphid = getelementptr inbounds %struct.device, %struct.device* %dev, i64 1, i32 4
  %0 = bitcast %struct.device_type** %periphid to i32*
  %1 = load i32, i32* %0, align 8
  %call = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 noundef %1) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %0, align 8
  %call3 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @amba_probe(%struct.device* noundef %dev) #0 {
entry:
  %0 = bitcast %struct.device* %dev to %struct.amba_device*
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %1 = bitcast %struct.device_driver** %driver to %struct.amba_driver**
  %2 = load %struct.amba_driver*, %struct.amba_driver** %1, align 8
  %id_table = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %2, i64 0, i32 4
  %3 = load %struct.amba_id*, %struct.amba_id** %id_table, align 8
  %call = call fastcc %struct.amba_id* @amba_lookup(%struct.amba_id* noundef %3, %struct.amba_device* noundef %0) #11
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %call8 = call i32 @of_clk_set_defaults(%struct.device_node* noundef %4, i1 noundef false) #10
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end23, label %if.end

if.end:                                           ; preds = %entry
  %call12 = call fastcc i32 @amba_get_enable_pclk(%struct.amba_device* noundef %0) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end23

if.end15:                                         ; preds = %if.end
  %probe = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %2, i64 0, i32 1
  %5 = load i32 (%struct.amba_device*, %struct.amba_id*)*, i32 (%struct.amba_device*, %struct.amba_id*)** %probe, align 8
  %call17 = call i32 %5(%struct.amba_device* noundef %0, %struct.amba_id* noundef %call) #10
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.end20

if.end20:                                         ; preds = %if.end15
  call fastcc void @amba_put_disable_pclk(%struct.amba_device* noundef %0) #11
  br label %do.end23

do.end23:                                         ; preds = %if.end, %if.end15, %entry, %if.end20
  %ret.0 = phi i32 [ %call8, %entry ], [ 0, %if.end15 ], [ %call17, %if.end20 ], [ %call12, %if.end ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @amba_remove(%struct.device* noundef %dev) #0 {
entry:
  %0 = bitcast %struct.device* %dev to %struct.amba_device*
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %1 = bitcast %struct.device_driver** %driver to %struct.amba_driver**
  %2 = load %struct.amba_driver*, %struct.amba_driver** %1, align 8
  %remove = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %2, i64 0, i32 2
  %3 = load void (%struct.amba_device*)*, void (%struct.amba_device*)** %remove, align 8
  %tobool.not = icmp eq void (%struct.amba_device*)* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %3(%struct.amba_device* noundef %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @amba_put_disable_pclk(%struct.amba_device* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @amba_shutdown(%struct.device* noundef %dev) #0 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool.not = icmp eq %struct.device_driver* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 1, i32 2
  %1 = bitcast %struct.module** %shutdown to void (%struct.amba_device*)**
  %2 = load void (%struct.amba_device*)*, void (%struct.amba_device*)** %1, align 8
  %tobool2.not = icmp eq void (%struct.amba_device*)* %2, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = bitcast %struct.device* %dev to %struct.amba_device*
  call void %2(%struct.amba_device* noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_dma_configure(%struct.device* noundef) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @amba_init() #2 section ".init.text" {
entry:
  %call = call i32 @bus_register(%struct.bus_type* noundef nonnull @amba_bustype) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @amba_driver_register(%struct.amba_driver* noundef %drv) local_unnamed_addr #0 {
entry:
  %probe = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %drv, i64 0, i32 1
  %0 = load i32 (%struct.amba_device*, %struct.amba_id*)*, i32 (%struct.amba_device*, %struct.amba_id*)** %probe, align 8
  %tobool.not = icmp eq i32 (%struct.amba_device*, %struct.amba_id*)* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %drv1 = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %drv, i64 0, i32 0
  %bus = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %drv, i64 0, i32 0, i32 1
  store %struct.bus_type* @amba_bustype, %struct.bus_type** %bus, align 8
  %call = call i32 @driver_register(%struct.device_driver* noundef %drv1) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(%struct.device_driver* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @amba_driver_unregister(%struct.amba_driver* noundef %drv) local_unnamed_addr #0 {
entry:
  %drv1 = getelementptr inbounds %struct.amba_driver, %struct.amba_driver* %drv, i64 0, i32 0
  call void @driver_unregister(%struct.device_driver* noundef %drv1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(%struct.device_driver* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @amba_deferred_retry() #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_devices_lock) #10
  %0 = load i8*, i8** bitcast (%struct.list_head* @deferred_devices to i8**), align 8
  %cmp.not37 = icmp eq i8* %0, bitcast (%struct.list_head* @deferred_devices to i8*)
  br i1 %cmp.not37, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %.pn.in.in38 = phi i8* [ %.pn40, %cleanup ], [ %0, %entry ]
  %ddev.0.in39 = getelementptr i8, i8* %.pn.in.in38, i64 -16
  %.pn40.in = bitcast i8* %.pn.in.in38 to i8**
  %.pn40 = load i8*, i8** %.pn40.in, align 8
  %dev = bitcast i8* %ddev.0.in39 to %struct.amba_device**
  %1 = load %struct.amba_device*, %struct.amba_device** %dev, align 8
  %parent = getelementptr i8, i8* %.pn.in.in38, i64 -8
  %2 = bitcast i8* %parent to %struct.resource**
  %3 = load %struct.resource*, %struct.resource** %2, align 8
  %call = call fastcc i32 @amba_device_try_add(%struct.amba_device* noundef %1, %struct.resource* noundef %3) #11
  %cmp9 = icmp eq i32 %call, -517
  br i1 %cmp9, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %4 = bitcast i8* %.pn.in.in38 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %4) #11
  call void @kfree(i8* noundef %ddev.0.in39) #10
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end
  %cmp.not = icmp eq i8* %.pn40, bitcast (%struct.list_head* @deferred_devices to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_devices_lock) #10
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @amba_device_add(%struct.amba_device* noundef %dev, %struct.resource* noundef %parent) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @amba_device_try_add(%struct.amba_device* noundef %dev, %struct.resource* noundef %parent) #11
  %cmp = icmp eq i32 %call, -517
  br i1 %cmp, label %if.then, label %cleanup12

if.then:                                          ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #10
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup12, label %if.end

if.end:                                           ; preds = %if.then
  %dev3 = bitcast i8* %call.i.i to %struct.amba_device**
  store %struct.amba_device* %dev, %struct.amba_device** %dev3, align 8
  %parent4 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %1 = bitcast i8* %parent4 to %struct.resource**
  store %struct.resource* %parent, %struct.resource** %1, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_devices_lock) #10
  %call5 = call fastcc i32 @list_empty() #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end
  call fastcc void @schedule_delayed_work() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7
  %node = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %2 = bitcast i8* %node to %struct.list_head*
  call fastcc void @list_add_tail(%struct.list_head* noundef %2) #11
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_devices_lock) #10
  br label %cleanup12

cleanup12:                                        ; preds = %if.then, %entry, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ %call, %entry ], [ -12, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @amba_device_try_add(%struct.amba_device* noundef %dev, %struct.resource* noundef %parent) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 7, i64 0
  %0 = load i32, i32* %arrayidx, align 8
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/amba/bus.c\22; .popsection; .long 14472b - 14470b; .short 380; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx17 = getelementptr %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 7, i64 1
  %1 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp eq i32 %1, -1
  br i1 %cmp18, label %if.then32, label %if.end33, !prof !7

if.then32:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/amba/bus.c\22; .popsection; .long 14472b - 14470b; .short 381; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !9
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end
  %res = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 1
  %call = call i32 @request_resource(%struct.resource* noundef %parent, %struct.resource* noundef %res) #10
  %tobool42.not = icmp eq i32 %call, 0
  br i1 %tobool42.not, label %if.end44, label %cleanup195

if.end44:                                         ; preds = %if.end33
  %periphid = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 4
  %2 = load i32, i32* %periphid, align 8
  %cmp45.not = icmp eq i32 %2, 0
  br i1 %cmp45.not, label %if.end48, label %skip_probe

if.end48:                                         ; preds = %if.end44
  %call50 = call fastcc i64 @resource_size(%struct.resource* noundef %res) #11
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %3 = load i64, i64* %start, align 8
  %conv53 = and i64 %call50, 4294967295
  %4 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool54.not = icmp eq i8 %4, 0
  %or59 = select i1 %tobool54.not, i64 29273397577910035, i64 29273397577912083
  %call60 = call i8* @__ioremap(i64 noundef %3, i64 noundef %conv53, i64 %or59) #10
  %tobool61.not = icmp eq i8* %call60, null
  br i1 %tobool61.not, label %err_release, label %if.end63

if.end63:                                         ; preds = %if.end48
  %dev64 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0
  %call69 = call fastcc i32 @amba_get_enable_pclk(%struct.amba_device* noundef %dev) #11
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end161.thread

if.then72:                                        ; preds = %if.end63
  %call75 = call fastcc i1 @IS_ERR(i8* noundef null) #11
  br i1 %call75, label %if.then76, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then72
  %add.ptr = getelementptr i8, i8* %call60, i64 %conv53
  %add.ptr88 = getelementptr i8, i8* %add.ptr, i64 -32
  %5 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr88) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !12
  %conv94 = zext i32 %5 to i64
  %6 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv94) #12, !srcloc !13
  %add.ptr90.1 = getelementptr i8, i8* %add.ptr88, i64 4
  %7 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr90.1) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !12
  %conv94.1 = zext i32 %7 to i64
  %8 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv94.1) #12, !srcloc !13
  %and.1 = shl i32 %7, 8
  %shl.1 = and i32 %and.1, 65280
  %add.ptr90.2 = getelementptr i8, i8* %add.ptr88, i64 8
  %9 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr90.2) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !12
  %conv94.2 = zext i32 %9 to i64
  %10 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv94.2) #12, !srcloc !13
  %and.2 = shl i32 %9, 16
  %shl.2 = and i32 %and.2, 16711680
  %add.ptr90.3 = getelementptr i8, i8* %add.ptr88, i64 12
  %11 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr90.3) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !12
  %conv94.3 = zext i32 %11 to i64
  %12 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv94.3) #12, !srcloc !13
  %shl.3 = shl i32 %11, 24
  %add.ptr106 = getelementptr i8, i8* %add.ptr, i64 -16
  %13 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr106) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !14
  %conv113 = zext i32 %13 to i64
  %14 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv113) #12, !srcloc !15
  %and115 = and i32 %13, 255
  %add.ptr109.1 = getelementptr i8, i8* %add.ptr106, i64 4
  %15 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr109.1) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !14
  %conv113.1 = zext i32 %15 to i64
  %16 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv113.1) #12, !srcloc !15
  %and115.1 = shl i32 %15, 8
  %shl117.1 = and i32 %and115.1, 65280
  %or118.1 = or i32 %shl117.1, %and115
  %add.ptr109.2 = getelementptr i8, i8* %add.ptr106, i64 8
  %17 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr109.2) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !14
  %conv113.2 = zext i32 %17 to i64
  %18 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv113.2) #12, !srcloc !15
  %and115.2 = shl i32 %17, 16
  %shl117.2 = and i32 %and115.2, 16711680
  %or118.2 = or i32 %shl117.2, %or118.1
  %add.ptr109.3 = getelementptr i8, i8* %add.ptr106, i64 12
  %19 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr109.3) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !14
  %conv113.3 = zext i32 %19 to i64
  %20 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv113.3) #12, !srcloc !15
  %shl117.3 = shl i32 %19, 24
  %or118.3 = or i32 %shl117.3, %or118.2
  %and = and i32 %5, 255
  %or97.1 = or i32 %shl.1, %and
  %or97.2 = or i32 %shl.2, %or97.1
  %or97.3 = or i32 %shl.3, %or97.2
  %cmp122 = icmp eq i32 %or118.3, -1325035507
  br i1 %cmp122, label %if.end146.thread, label %if.end146

if.then76:                                        ; preds = %if.then72
  %call77 = call fastcc i64 @PTR_ERR(i8* noundef null) #11
  %conv78 = trunc i64 %call77 to i32
  %cmp79.not = icmp eq i32 %conv78, -517
  br i1 %cmp79.not, label %err_reset, label %do.end

do.end:                                           ; preds = %if.then76
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev64, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv78) #13
  br label %err_reset

if.end146.thread:                                 ; preds = %for.cond.preheader
  %add.ptr127 = getelementptr i8, i8* %add.ptr, i64 -4096
  %add.ptr130 = getelementptr i8, i8* %add.ptr127, i64 4028
  %21 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr130) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !16
  %conv134 = zext i32 %21 to i64
  %22 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv134) #12, !srcloc !17
  %devarch = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 6, i32 0
  store i32 %21, i32* %devarch, align 8
  %add.ptr138 = getelementptr i8, i8* %add.ptr127, i64 4044
  %23 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %add.ptr138) #12, !srcloc !11
  call void asm sideeffect "dmb oshld", "~{memory}"() #12, !srcloc !18
  %conv142 = zext i32 %23 to i64
  %24 = call i64 asm sideeffect "eor\09$0, $1, $1\0Acbnz\09$0, .", "=r,r,~{memory}"(i64 %conv142) #12, !srcloc !19
  %and144 = and i32 %23, 255
  %devtype = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 6, i32 2
  store i32 %and144, i32* %devtype, align 8
  call fastcc void @amba_put_disable_pclk(%struct.amba_device* noundef %dev) #11
  br label %if.then151

if.end146:                                        ; preds = %for.cond.preheader
  call fastcc void @amba_put_disable_pclk(%struct.amba_device* noundef %dev) #11
  %cond = icmp eq i32 %or118.3, -1325010931
  br i1 %cond, label %if.then151, label %cleanupthread-pre-split

if.then151:                                       ; preds = %if.end146, %if.end146.thread
  store i32 %or97.3, i32* %periphid, align 8
  %cid153 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 5
  store i32 %or118.3, i32* %cid153, align 4
  br label %cleanup

cleanupthread-pre-split:                          ; preds = %if.end146
  %.pr = load i32, i32* %periphid, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanupthread-pre-split, %if.then151
  %25 = phi i32 [ %.pr, %cleanupthread-pre-split ], [ %or97.3, %if.then151 ]
  %tobool156.not = icmp eq i32 %25, 0
  br i1 %tobool156.not, label %if.end161.thread, label %if.end161

if.end161.thread:                                 ; preds = %if.end63, %cleanup
  %ret.2.ph = phi i32 [ %call69, %if.end63 ], [ -19, %cleanup ]
  call void @iounmap(i8* noundef nonnull %call60) #10
  br label %err_release

if.end161:                                        ; preds = %cleanup
  call void @iounmap(i8* noundef nonnull %call60) #10
  br label %skip_probe

skip_probe:                                       ; preds = %if.end161, %if.end44
  %dev166 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0
  %call167 = call i32 @device_add(%struct.device* noundef %dev166) #10
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %err_release

if.end170:                                        ; preds = %skip_probe
  %26 = load i32, i32* %arrayidx, align 8
  %tobool173.not = icmp eq i32 %26, 0
  br i1 %tobool173.not, label %land.lhs.true, label %if.end177

if.end177:                                        ; preds = %if.end170
  %call176 = call i32 @device_create_file(%struct.device* noundef %dev166, %struct.device_attribute* noundef nonnull @dev_attr_irq0) #10
  %cmp178 = icmp eq i32 %call176, 0
  br i1 %cmp178, label %land.lhs.true, label %if.end190

land.lhs.true:                                    ; preds = %if.end170, %if.end177
  %27 = load i32, i32* %arrayidx17, align 4
  %tobool182.not = icmp eq i32 %27, 0
  br i1 %tobool182.not, label %cleanup195, label %if.end186

if.end186:                                        ; preds = %land.lhs.true
  %call185 = call i32 @device_create_file(%struct.device* noundef %dev166, %struct.device_attribute* noundef nonnull @dev_attr_irq1) #10
  %cmp187 = icmp eq i32 %call185, 0
  br i1 %cmp187, label %cleanup195, label %if.end190

if.end190:                                        ; preds = %if.end177, %if.end186
  %ret.4299 = phi i32 [ %call185, %if.end186 ], [ %call176, %if.end177 ]
  call void @device_unregister(%struct.device* noundef %dev166) #10
  br label %err_release

err_release:                                      ; preds = %if.end161.thread, %if.end48, %skip_probe, %err_reset, %if.end190
  %ret.5 = phi i32 [ %call167, %skip_probe ], [ %ret.4299, %if.end190 ], [ %conv78, %err_reset ], [ -12, %if.end48 ], [ %ret.2.ph, %if.end161.thread ]
  %call193 = call i32 @release_resource(%struct.resource* noundef %res) #10
  br label %cleanup195

err_reset:                                        ; preds = %do.end, %if.then76
  call fastcc void @amba_put_disable_pclk(%struct.amba_device* noundef %dev) #11
  call void @iounmap(i8* noundef nonnull %call60) #10
  br label %err_release

cleanup195:                                       ; preds = %land.lhs.true, %err_release, %if.end33, %if.end186
  %retval.0 = phi i32 [ 0, %if.end186 ], [ %call, %if.end33 ], [ %ret.5, %err_release ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty() unnamed_addr #4 {
entry:
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_devices, i64 0, i32 0), align 8
  %cmp = icmp eq %struct.list_head* %0, @deferred_devices
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work() unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #5 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_devices, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.amba_device* @amba_apb_device_add(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.amba_device* @amba_aphb_device_add(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid, i64 noundef 0, %struct.resource* noundef nonnull @iomem_resource) #11
  ret %struct.amba_device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.amba_device* @amba_aphb_device_add(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid, i64 noundef %dma_mask, %struct.resource* noundef %resbase) unnamed_addr #0 {
entry:
  %call = call %struct.amba_device* @amba_device_alloc(i8* noundef %name, i64 noundef %base, i64 noundef %size) #11
  %tobool.not = icmp eq %struct.amba_device* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %coherent_dma_mask = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call, i64 0, i32 0, i32 17
  store i64 %dma_mask, i64* %coherent_dma_mask, align 8
  %arrayidx = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call, i64 0, i32 7, i64 0
  store i32 %irq1, i32* %arrayidx, align 8
  %arrayidx4 = getelementptr %struct.amba_device, %struct.amba_device* %call, i64 0, i32 7, i64 1
  store i32 %irq2, i32* %arrayidx4, align 4
  %periphid5 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call, i64 0, i32 4
  store i32 %periphid, i32* %periphid5, align 8
  %platform_data = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call, i64 0, i32 0, i32 7
  store i8* %pdata, i8** %platform_data, align 8
  %parent8 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %call, i64 0, i32 0, i32 1
  store %struct.device* %parent, %struct.device** %parent8, align 8
  %call9 = call i32 @amba_device_add(%struct.amba_device* noundef nonnull %call, %struct.resource* noundef %resbase) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @amba_device_put(%struct.amba_device* noundef nonnull %call) #11
  %conv = sext i32 %call9 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then11
  %conv.sink = phi i64 [ %conv, %if.then11 ], [ -12, %entry ]
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #11
  %0 = bitcast i8* %call12 to %struct.amba_device*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi %struct.amba_device* [ %call, %if.end ], [ %0, %cleanup.sink.split ]
  ret %struct.amba_device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.amba_device* @amba_ahb_device_add(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.amba_device* @amba_aphb_device_add(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid, i64 noundef -1, %struct.resource* noundef nonnull @iomem_resource) #11
  ret %struct.amba_device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.amba_device* @amba_apb_device_add_res(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid, %struct.resource* noundef %resbase) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.amba_device* @amba_aphb_device_add(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid, i64 noundef 0, %struct.resource* noundef %resbase) #11
  ret %struct.amba_device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.amba_device* @amba_ahb_device_add_res(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid, %struct.resource* noundef %resbase) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.amba_device* @amba_aphb_device_add(%struct.device* noundef %parent, i8* noundef %name, i64 noundef %base, i64 noundef %size, i32 noundef %irq1, i32 noundef %irq2, i8* noundef %pdata, i32 noundef %periphid, i64 noundef -1, %struct.resource* noundef %resbase) #11
  ret %struct.amba_device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.amba_device* @amba_device_alloc(i8* noundef %name, i64 noundef %base, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc() #11
  %0 = bitcast i8* %call to %struct.amba_device*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @amba_device_initialize(%struct.amba_device* noundef nonnull %0, i8* noundef %name) #11
  %res = getelementptr inbounds i8, i8* %call, i64 472
  %start = bitcast i8* %res to i64*
  store i64 %base, i64* %start, align 8
  %add = add i64 %base, -1
  %sub = add i64 %add, %size
  %end = getelementptr inbounds i8, i8* %call, i64 480
  %1 = bitcast i8* %end to i64*
  store i64 %sub, i64* %1, align 8
  %flags = getelementptr inbounds i8, i8* %call, i64 496
  %2 = bitcast i8* %flags to i64*
  store i64 512, i64* %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.amba_device* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 10), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #10
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @amba_device_initialize(%struct.amba_device* noundef %dev, i8* noundef %name) unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0
  call void @device_initialize(%struct.device* noundef %dev1) #10
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %dev1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %name) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %release = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0, i32 33
  store void (%struct.device*)* @amba_device_release, void (%struct.device*)** %release, align 8
  %bus = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0, i32 5
  store %struct.bus_type* @amba_bustype, %struct.bus_type** %bus, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0, i32 17
  %dma_mask = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0, i32 16
  store i64* %coherent_dma_mask, i64** %dma_mask, align 8
  %dma_parms = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 3
  %dma_parms8 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0, i32 20
  store %struct.device_dma_parameters* %dma_parms, %struct.device_dma_parameters** %dma_parms8, align 8
  %call10 = call fastcc i8* @dev_name(%struct.device* noundef %dev1) #11
  %name11 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 1, i32 2
  store i8* %call10, i8** %name11, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @amba_device_register(%struct.amba_device* noundef %dev, %struct.resource* noundef %parent) local_unnamed_addr #0 {
entry:
  %init_name = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  call fastcc void @amba_device_initialize(%struct.amba_device* noundef %dev, i8* noundef %0) #11
  store i8* null, i8** %init_name, align 8
  %call = call i32 @amba_device_add(%struct.amba_device* noundef %dev, %struct.resource* noundef %parent) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @amba_device_put(%struct.amba_device* noundef %dev) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0
  call void @put_device(%struct.device* noundef %dev1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @amba_device_unregister(%struct.amba_device* noundef %dev) local_unnamed_addr #0 {
entry:
  %dev1 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0
  call void @device_unregister(%struct.device* noundef %dev1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.amba_device* @amba_find_device(i8* noundef %busid, %struct.device* noundef %parent, i32 noundef %id, i32 noundef %mask) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.find_data, align 8
  %0 = bitcast %struct.find_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  %dev = getelementptr inbounds %struct.find_data, %struct.find_data* %data, i64 0, i32 0
  %parent1 = getelementptr inbounds %struct.find_data, %struct.find_data* %data, i64 0, i32 1
  %1 = bitcast %struct.find_data* %data to i64*
  store i64 0, i64* %1, align 8
  store %struct.device* %parent, %struct.device** %parent1, align 8
  %busid2 = getelementptr inbounds %struct.find_data, %struct.find_data* %data, i64 0, i32 2
  store i8* %busid, i8** %busid2, align 8
  %id3 = getelementptr inbounds %struct.find_data, %struct.find_data* %data, i64 0, i32 3
  store i32 %id, i32* %id3, align 8
  %mask4 = getelementptr inbounds %struct.find_data, %struct.find_data* %data, i64 0, i32 4
  store i32 %mask, i32* %mask4, align 4
  %call = call i32 @bus_for_each_dev(%struct.bus_type* noundef nonnull @amba_bustype, %struct.device* noundef null, i8* noundef nonnull %0, i32 (%struct.device*, i8*)* noundef nonnull @amba_find_match) #10
  %2 = load %struct.amba_device*, %struct.amba_device** %dev, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret %struct.amba_device* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(%struct.bus_type* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @amba_find_match(%struct.device* noundef %dev, i8* nocapture noundef %data) #0 {
entry:
  %periphid = getelementptr inbounds %struct.device, %struct.device* %dev, i64 1, i32 4
  %0 = bitcast %struct.device_type** %periphid to i32*
  %1 = load i32, i32* %0, align 8
  %mask = getelementptr inbounds i8, i8* %data, i64 28
  %2 = bitcast i8* %mask to i32*
  %3 = load i32, i32* %2, align 4
  %and = and i32 %3, %1
  %id = getelementptr inbounds i8, i8* %data, i64 24
  %4 = bitcast i8* %id to i32*
  %5 = load i32, i32* %4, align 8
  %cmp = icmp eq i32 %and, %5
  %parent = getelementptr inbounds i8, i8* %data, i64 8
  %6 = bitcast i8* %parent to %struct.device**
  %7 = load %struct.device*, %struct.device** %6, align 8
  %tobool.not = icmp eq %struct.device* %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %8 = load %struct.device*, %struct.device** %parent2, align 8
  %cmp3 = icmp eq %struct.device* %7, %8
  %and536 = and i1 %cmp, %cmp3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %r.0.in = phi i1 [ %and536, %if.then ], [ %cmp, %entry ]
  %busid = getelementptr inbounds i8, i8* %data, i64 16
  %9 = bitcast i8* %busid to i8**
  %10 = load i8*, i8** %9, align 8
  %tobool6.not = icmp eq i8* %10, null
  br i1 %tobool6.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end
  %call = call fastcc i8* @dev_name(%struct.device* noundef %dev) #11
  %call9 = call i32 @strcmp(i8* noundef %call, i8* noundef nonnull %10) #10
  %cmp10 = icmp eq i32 %call9, 0
  %and1237 = and i1 %r.0.in, %cmp10
  br i1 %and1237, label %if.then15, label %if.end18

if.end13:                                         ; preds = %if.end
  br i1 %r.0.in, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.then7, %if.end13
  %call16 = call %struct.device* @get_device(%struct.device* noundef %dev) #10
  %11 = bitcast i8* %data to %struct.device**
  store %struct.device* %dev, %struct.device** %11, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %if.then15, %if.end13
  %r.1.in38 = phi i32 [ 0, %if.then7 ], [ 1, %if.then15 ], [ 0, %if.end13 ]
  ret i32 %r.1.in38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @amba_request_regions(%struct.amba_device* nocapture noundef readonly %dev, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %driver = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %name2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 0
  %1 = load i8*, i8** %name2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %name.addr.0 = phi i8* [ %name, %entry ], [ %1, %if.then ]
  %res = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 1
  %call = call fastcc i64 @resource_size(%struct.resource* noundef %res) #11
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %2 = load i64, i64* %start, align 8
  %conv4 = and i64 %call, 4294967295
  %call5 = call %struct.resource* @__request_region(%struct.resource* noundef nonnull @iomem_resource, i64 noundef %2, i64 noundef %conv4, i8* noundef %name.addr.0, i32 noundef 0) #10
  %tobool6.not = icmp eq %struct.resource* %call5, null
  %spec.select = select i1 %tobool6.not, i32 -16, i32 0
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_size(%struct.resource* nocapture noundef readonly %res) unnamed_addr #6 {
entry:
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %0 = load i64, i64* %end, align 8
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %sub = add i64 %0, 1
  %add = sub i64 %sub, %1
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.resource* @__request_region(%struct.resource* noundef, i64 noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @amba_release_regions(%struct.amba_device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %res = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 1
  %call = call fastcc i64 @resource_size(%struct.resource* noundef %res) #11
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %0 = load i64, i64* %start, align 8
  %conv2 = and i64 %call, 4294967295
  call void @__release_region(%struct.resource* noundef nonnull @iomem_resource, i64 noundef %0, i64 noundef %conv2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(%struct.resource* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @id_show(%struct.device* nocapture noundef readonly %_dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %periphid = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 1, i32 4
  %0 = bitcast %struct.device_type** %periphid to i32*
  %1 = load i32, i32* %0, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %1) #10
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @resource_show(%struct.device* nocapture noundef readonly %_dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %res = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 1
  %start = bitcast %struct.device* %res to i64*
  %0 = load i64, i64* %start, align 8
  %end = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 1, i32 0, i32 1
  %1 = bitcast %struct.list_head* %end to i64*
  %2 = load i64, i64* %1, align 8
  %flags = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 1, i32 0, i32 2
  %3 = bitcast %struct.kobject** %flags to i64*
  %4 = load i64, i64* %3, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 noundef %0, i64 noundef %2, i64 noundef %4) #10
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @driver_override_show(%struct.device* noundef %_dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  call fastcc void @device_lock(%struct.device* noundef %_dev) #11
  %driver_override = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 1, i32 10
  %0 = bitcast %struct.dev_links_info* %driver_override to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef %1) #10
  %conv = sext i32 %call to i64
  call fastcc void @device_unlock(%struct.device* noundef %_dev) #11
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @driver_override_store(%struct.device* noundef %_dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %cmp = icmp ugt i64 %count, 4094
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @kstrndup(i8* noundef %buf, i64 noundef %count, i32 noundef 3264) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call i8* @strchr(i8* noundef nonnull %call, i32 noundef 10) #10
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  store i8 0, i8* %call3, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  call fastcc void @device_lock(%struct.device* noundef %_dev) #11
  %driver_override7 = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 1, i32 10
  %0 = bitcast %struct.dev_links_info* %driver_override7 to i8**
  %1 = load i8*, i8** %0, align 8
  %call8 = call i64 @strlen(i8* noundef nonnull %call) #10
  %tobool9.not = icmp eq i64 %call8, 0
  br i1 %tobool9.not, label %if.else, label %if.end13

if.else:                                          ; preds = %if.end6
  call void @kfree(i8* noundef nonnull %call) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %if.else
  %storemerge = phi i8* [ null, %if.else ], [ %call, %if.end6 ]
  store i8* %storemerge, i8** %0, align 8
  call fastcc void @device_unlock(%struct.device* noundef %_dev) #11
  call void @kfree(i8* noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end13
  %retval.0 = phi i64 [ %count, %if.end13 ], [ -22, %entry ], [ -12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_lock(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_lock(%struct.mutex* noundef %mutex) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_unlock(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrndup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.amba_id* @amba_lookup(%struct.amba_id* noundef readonly %table, %struct.amba_device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %cid = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 5
  %mask11 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %table, i64 0, i32 1
  %0 = load i32, i32* %mask11, align 4
  %tobool.not12 = icmp eq i32 %0, 0
  br i1 %tobool.not12, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %periphid = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 4
  %1 = load i32, i32* %periphid, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %2 = phi i32 [ %0, %while.body.lr.ph ], [ %5, %if.end ]
  %table.addr.013 = phi %struct.amba_id* [ %table, %while.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %and = and i32 %1, %2
  %id = getelementptr inbounds %struct.amba_id, %struct.amba_id* %table.addr.013, i64 0, i32 0
  %3 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %and, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, i32* %cid, align 4
  %cmp2.not = icmp eq i32 %4, -1325035507
  br i1 %cmp2.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = call fastcc i32 @amba_cs_uci_id_match(%struct.amba_id* noundef %table.addr.013, %struct.amba_device* noundef %dev) #11
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false, %while.body
  %incdec.ptr = getelementptr %struct.amba_id, %struct.amba_id* %table.addr.013, i64 1
  %mask = getelementptr %struct.amba_id, %struct.amba_id* %table.addr.013, i64 1, i32 1
  %5 = load i32, i32* %mask, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %return, label %while.body

return:                                           ; preds = %lor.lhs.false, %land.lhs.true, %if.end, %entry
  %retval.0 = phi %struct.amba_id* [ null, %entry ], [ null, %if.end ], [ %table.addr.013, %land.lhs.true ], [ %table.addr.013, %lor.lhs.false ]
  ret %struct.amba_id* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @amba_cs_uci_id_match(%struct.amba_id* nocapture noundef readonly %table, %struct.amba_device* nocapture noundef readonly %dev) unnamed_addr #6 {
entry:
  %data = getelementptr inbounds %struct.amba_id, %struct.amba_id* %table, i64 0, i32 2
  %0 = bitcast i8** %data to %struct.amba_cs_uci_id**
  %1 = load %struct.amba_cs_uci_id*, %struct.amba_cs_uci_id** %0, align 8
  %tobool.not = icmp eq %struct.amba_cs_uci_id* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %devarch_mask = getelementptr inbounds %struct.amba_cs_uci_id, %struct.amba_cs_uci_id* %1, i64 0, i32 1
  %2 = load i32, i32* %devarch_mask, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %devtype = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 6, i32 2
  %3 = load i32, i32* %devtype, align 8
  %devtype2 = getelementptr inbounds %struct.amba_cs_uci_id, %struct.amba_cs_uci_id* %1, i64 0, i32 2
  %4 = load i32, i32* %devtype2, align 8
  %cmp3 = icmp eq i32 %3, %4
  br i1 %cmp3, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.end
  %devarch = getelementptr inbounds %struct.amba_device, %struct.amba_device* %dev, i64 0, i32 6, i32 0
  %5 = load i32, i32* %devarch, align 8
  %and = and i32 %5, %2
  %devarch6 = getelementptr inbounds %struct.amba_cs_uci_id, %struct.amba_cs_uci_id* %1, i64 0, i32 0
  %6 = load i32, i32* %devarch6, align 8
  %cmp7 = icmp eq i32 %and, %6
  %phi.cast = zext i1 %cmp7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.rhs, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(%struct.device_node* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @amba_get_enable_pclk(%struct.amba_device* noundef %pcdev) unnamed_addr #0 {
entry:
  %dev = getelementptr inbounds %struct.amba_device, %struct.amba_device* %pcdev, i64 0, i32 0
  %call = call %struct.clk* @clk_get(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #10
  %pclk = getelementptr inbounds %struct.amba_device, %struct.amba_device* %pcdev, i64 0, i32 2
  store %struct.clk* %call, %struct.clk** %pclk, align 8
  %0 = bitcast %struct.clk* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %0) #11
  %conv = trunc i64 %call4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call fastcc i32 @clk_prepare_enable(%struct.clk* noundef %call) #11
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end
  %1 = load %struct.clk*, %struct.clk** %pclk, align 8
  call void @clk_put(%struct.clk* noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call6, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @amba_put_disable_pclk(%struct.amba_device* nocapture noundef readonly %pcdev) unnamed_addr #0 {
entry:
  %pclk = getelementptr inbounds %struct.amba_device, %struct.amba_device* %pcdev, i64 0, i32 2
  %0 = load %struct.clk*, %struct.clk** %pclk, align 8
  call fastcc void @clk_disable_unprepare(%struct.clk* noundef %0) #11
  %1 = load %struct.clk*, %struct.clk** %pclk, align 8
  call void @clk_put(%struct.clk* noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.clk* @clk_get(%struct.device* noundef, i8* noundef) local_unnamed_addr #1

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clk_prepare_enable(%struct.clk* noundef %clk) unnamed_addr #0 {
entry:
  %call = call i32 @clk_prepare(%struct.clk* noundef %clk) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @clk_enable(%struct.clk* noundef %clk) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @clk_unprepare(%struct.clk* noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call1, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clk_disable_unprepare(%struct.clk* noundef %clk) unnamed_addr #0 {
entry:
  call void @clk_disable(%struct.clk* noundef %clk) #10
  call void @clk_unprepare(%struct.clk* noundef %clk) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(%struct.clk* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(%struct.bus_type* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #11
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(%struct.resource* noundef, %struct.resource* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__ioremap(i64 noundef, i64 noundef, i64) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(i8* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(%struct.resource* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #8 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @irq0_show(%struct.device* nocapture noundef readonly %_dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %irq = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 1, i32 8
  %arrayidx = bitcast i8** %irq to i32*
  %0 = load i32, i32* %arrayidx, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 noundef %0) #10
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @irq1_show(%struct.device* nocapture noundef readonly %_dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %irq = getelementptr inbounds %struct.device, %struct.device* %_dev, i64 1, i32 8
  %0 = bitcast i8** %irq to [9 x i32]*
  %arrayidx = getelementptr [9 x i32], [9 x i32]* %0, i64 0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 noundef %1) #10
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef nonnull @deferred_retry_work, i64 noundef 1250) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @amba_deferred_retry_func(%struct.work_struct* nocapture noundef readnone %dummy) #0 {
entry:
  %call = call i32 @amba_deferred_retry() #11
  %call1 = call fastcc i32 @list_empty() #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @schedule_delayed_work() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #5 {
entry:
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_devices, i64 0, i32 1), align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @deferred_devices, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @amba_device_release(%struct.device* noundef %dev) #0 {
entry:
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 1, i32 0, i32 4
  %0 = bitcast %struct.kobj_type** %parent to %struct.resource**
  %1 = load %struct.resource*, %struct.resource** %0, align 8
  %tobool.not = icmp eq %struct.resource* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %res = getelementptr inbounds %struct.device, %struct.device* %dev, i64 1
  %2 = bitcast %struct.device* %res to %struct.resource*
  %call = call i32 @release_resource(%struct.resource* noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast %struct.device* %dev to i8*
  call void @kfree(i8* noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #6 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #6 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2155352350}
!9 = !{i64 2155353957}
!10 = !{i8 0, i8 2}
!11 = !{i64 2152721346, i64 2152721393, i64 2152721399, i64 2152721436, i64 2152721454, i64 2152722374, i64 2152722422, i64 2152722470, i64 2152722533, i64 2152722582, i64 2152721532, i64 2152721557, i64 2152721583, i64 2152721589, i64 2152721626, i64 2152721632, i64 2152721682, i64 2152721728, i64 2152721761}
!12 = !{i64 2155356521}
!13 = !{i64 2155356364, i64 2155356396}
!14 = !{i64 2155357317}
!15 = !{i64 2155357160, i64 2155357192}
!16 = !{i64 2155358097}
!17 = !{i64 2155357940, i64 2155357972}
!18 = !{i64 2155358866}
!19 = !{i64 2155358709, i64 2155358741}
