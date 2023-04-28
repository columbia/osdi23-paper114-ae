; ModuleID = 'kernel/sched/deadline.c'
source_filename = "kernel/sched/deadline.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.dl_bandwidth = type { %struct.raw_spinlock, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [4 x i64] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i64, [40 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, %struct.task_struct*, %struct.task_struct*, %struct.task_struct*, i64, %struct.mm_struct*, i32, i64, i64, i64, i64, %struct.atomic_t, i32, %struct.root_domain*, %struct.sched_domain*, i64, i64, %struct.callback_head*, i8, i8, i64, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [24 x i8], %struct.sched_avg, %struct.sched_avg, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cpu_stop_work, [16 x i8] }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i64, i64, %struct.rb_root_cached, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, [32 x i8], %struct.sched_avg, %struct.anon.5 }
%struct.load_weight = type { i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.sched_statistics = type {}
%struct.anon.5 = type { %struct.raw_spinlock, i32, i64, i64, i64, [32 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.6, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [2 x i64], [100 x %struct.list_head] }
%struct.anon.6 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.1, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.1 = type { i64, i64 }
%struct.mm_struct = type { %struct.anon.7, [0 x i64] }
%struct.anon.7 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.8, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.8 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.9, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.10, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.9 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.10 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.11, %union.anon.59, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.97, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.98, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.99, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.100, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.35, %struct.list_head, %struct.list_head, %union.anon.36 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.15, i8* }
%union.anon.15 = type { i64 }
%struct.lockref = type { %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
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
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.20, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.20 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.21, %struct.device* }
%union.anon.21 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.22, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.22 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.23, %union.anon.24, %union.anon.25, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.30, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.23 = type { %struct.hlist_node }
%union.anon.24 = type { %struct.rb_node }
%union.anon.25 = type { %struct.anon.29 }
%struct.anon.29 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.30 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.27, %union.anon.28, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
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
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.97 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.98 = type { %struct.callback_head }
%union.anon.99 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.37 }
%union.anon.37 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.38, %union.anon.41 }
%union.anon.38 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.41 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.43 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.39, %struct.qspinlock }
%union.anon.39 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.43 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.100 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.59 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.45 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.45 = type { %struct.callback_head }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.kernel_siginfo = type { %struct.anon.60 }
%struct.anon.60 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.64 }
%struct.anon.64 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { %union.anon.72, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.72 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32, [48 x i8] }
%struct.anon.32 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.33, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.14, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i64, %struct.perf_domain* }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], %struct.cpudl_item* }
%struct.cpudl_item = type { i64, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, void (%struct.irq_work*)* }
%struct.cpupri = type { [101 x %struct.cpupri_vec], i32* }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.perf_domain = type { %struct.em_perf_domain*, %struct.perf_domain*, %struct.callback_head }
%struct.em_perf_domain = type { %struct.em_perf_state*, i32, i32, [0 x i64] }
%struct.em_perf_state = type { i64, i64, i64 }
%struct.sched_domain = type { %struct.sched_domain*, %struct.sched_domain*, %struct.sched_group*, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, %union.anon.74, %struct.sched_domain_shared*, i32, [0 x i64] }
%struct.sched_group = type { %struct.sched_group*, %struct.atomic_t, i32, %struct.sched_group_capacity*, i32, [0 x i64] }
%struct.sched_group_capacity = type { %struct.atomic_t, i64, i64, i64, i64, i32, [0 x i64] }
%union.anon.74 = type { %struct.callback_head }
%struct.sched_domain_shared = type { %struct.atomic_t, %struct.atomic_t, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.cpu_stop_work = type { %struct.list_head, i32 (i8*)*, i64, i8*, %struct.cpu_stop_done* }
%struct.cpu_stop_done = type opaque
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.95, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.sched_class = type { void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*)*, i1 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i1)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.task_struct*, i32, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.rq*)*, void (%struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)*, void (%struct.rq*, %struct.task_struct*, i32)*, {}*, {}*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, i32 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*)* }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32*, i32, i32, i32, i64, i32* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.net_device = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [126 x i64] }
%struct.udp_mib = type { [10 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.80, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.80 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.82, %union.anon.85, %union.anon.86, [48 x i8], %union.anon.87, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.89, i32, i32, i32, i16, i16, %union.anon.91, %union.anon.92, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.84 }
%union.anon.84 = type { %struct.net_device* }
%union.anon.85 = type { %struct.sock* }
%union.anon.86 = type { i64 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i64, void (%struct.sk_buff*)* }
%union.anon.89 = type { i32 }
%union.anon.91 = type { i32 }
%union.anon.92 = type { i16 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.93 }
%struct.bpf_prog = type opaque
%union.anon.93 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.94, i32, [12 x i8] }
%union.anon.94 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.95 = type { %struct.callback_head }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.96, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.96 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.rq_flags = type { i64, %struct.pin_cookie }
%struct.pin_cookie = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.sched_attr = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32 }

@def_dl_bandwidth = dso_local global %struct.dl_bandwidth zeroinitializer, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@local_cpu_mask_dl = internal global [1 x %struct.cpumask] zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@dl_sched_class = dso_local constant { void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*)*, i1 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i1)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.task_struct*, i32, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.rq*)*, void (%struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.task_struct*)*, void (%struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, i32 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*)* } { void (%struct.rq*, %struct.task_struct*, i32)* @enqueue_task_dl, void (%struct.rq*, %struct.task_struct*, i32)* @dequeue_task_dl, void (%struct.rq*)* @yield_task_dl, i1 (%struct.rq*, %struct.task_struct*)* null, void (%struct.rq*, %struct.task_struct*, i32)* @check_preempt_curr_dl, %struct.task_struct* (%struct.rq*)* @pick_next_task_dl, void (%struct.rq*, %struct.task_struct*)* @put_prev_task_dl, void (%struct.rq*, %struct.task_struct*, i1)* @set_next_task_dl, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)* @balance_dl, i32 (%struct.task_struct*, i32, i32)* @select_task_rq_dl, %struct.task_struct* (%struct.rq*)* @pick_task_dl, void (%struct.task_struct*, i32)* @migrate_task_rq_dl, void (%struct.rq*, %struct.task_struct*)* @task_woken_dl, void (%struct.task_struct*, %struct.cpumask*, i32)* @set_cpus_allowed_dl, void (%struct.rq*)* @rq_online_dl, void (%struct.rq*)* @rq_offline_dl, %struct.rq* (%struct.task_struct*, %struct.rq*)* @find_lock_later_rq, void (%struct.rq*, %struct.task_struct*, i32)* @task_tick_dl, void (%struct.task_struct*)* @task_fork_dl, void (%struct.task_struct*)* null, void (%struct.rq*, %struct.task_struct*)* @switched_from_dl, void (%struct.rq*, %struct.task_struct*)* @switched_to_dl, void (%struct.rq*, %struct.task_struct*, i32)* @prio_changed_dl, i32 (%struct.rq*, %struct.task_struct*)* null, void (%struct.rq*)* @update_curr_dl }, section "__dl_sched_class", align 8
@dl_generation = internal unnamed_addr global i64 0, align 8
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@sysctl_sched_dl_period_max = dso_local global i32 4194304, align 4
@sysctl_sched_dl_period_min = dso_local global i32 100, align 4
@__cpu_active_mask = external dso_local global %struct.cpumask, align 8
@sysctl_sched_rt_runtime = external dso_local local_unnamed_addr global i32, align 4
@sysctl_sched_rt_period = external dso_local local_unnamed_addr global i32, align 4
@replenish_dl_entity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [37 x i8] c"sched: DL replenish lagged too much\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@dl_push_head = internal global %struct.callback_head zeroinitializer, section ".data..percpu", align 8
@balance_push_callback = external dso_local global %struct.callback_head, align 8
@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@cpu_scale = external dso_local global i64, section ".data..percpu", align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@dl_pull_head = internal global %struct.callback_head zeroinitializer, section ".data..percpu", align 8
@arch_freq_scale = external dso_local global i64, section ".data..percpu", align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @init_dl_bandwidth(%struct.dl_bandwidth* nocapture noundef writeonly %dl_b, i64 noundef %period, i64 noundef %runtime) local_unnamed_addr #0 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.dl_bandwidth, %struct.dl_bandwidth* %dl_b, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %dl_period = getelementptr inbounds %struct.dl_bandwidth, %struct.dl_bandwidth* %dl_b, i64 0, i32 2
  store i64 %period, i64* %dl_period, align 8
  %dl_runtime = getelementptr inbounds %struct.dl_bandwidth, %struct.dl_bandwidth* %dl_b, i64 0, i32 1
  store i64 %runtime, i64* %dl_runtime, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_dl_bw(%struct.dl_bw* nocapture noundef writeonly %dl_b) local_unnamed_addr #1 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_b, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.dl_bandwidth, %struct.dl_bandwidth* @def_dl_bandwidth, i64 0, i32 0)) #16
  %call = call fastcc i64 @global_rt_runtime() #16
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %call1 = call fastcc i64 @global_rt_period() #16
  %call3 = call i64 @to_ratio(i64 noundef %call1, i64 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %call3.sink = phi i64 [ %call3, %if.else ], [ -1, %entry ]
  %0 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_b, i64 0, i32 1
  store i64 %call3.sink, i64* %0, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.dl_bandwidth, %struct.dl_bandwidth* @def_dl_bandwidth, i64 0, i32 0)) #16
  %total_bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_b, i64 0, i32 2
  store i64 0, i64* %total_bw, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !8
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @global_rt_runtime() unnamed_addr #2 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 1000
  %retval.0 = select i1 %cmp, i64 -1, i64 %mul
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @to_ratio(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @global_rt_period() unnamed_addr #2 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_period, align 4
  %conv = zext i32 %0 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  ret i64 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_dl_rq(%struct.dl_rq* nocapture noundef writeonly %dl_rq) local_unnamed_addr #1 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 0, i32 0, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx7 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.2.0..sroa_idx7, align 8
  %next = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 2, i32 1
  store i64 0, i64* %next, align 8
  %curr = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 2, i32 0
  store i64 0, i64* %curr, align 8
  %dl_nr_migratory = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 3
  store i32 0, i32* %dl_nr_migratory, align 8
  %overloaded = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 4
  store i32 0, i32* %overloaded, align 4
  %.compoundliteral2.sroa.0.0..sroa_idx = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 5, i32 0, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral2.sroa.0.0..sroa_idx, align 8
  %.compoundliteral2.sroa.2.0..sroa_idx6 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 5, i32 1
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral2.sroa.2.0..sroa_idx6, align 8
  %running_bw = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 6
  store i64 0, i64* %running_bw, align 8
  %this_bw = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 7
  store i64 0, i64* %this_bw, align 8
  call fastcc void @init_dl_rq_bw_ratio(%struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_dl_rq_bw_ratio(%struct.dl_rq* nocapture noundef writeonly %dl_rq) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @global_rt_runtime() #16
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bw_ratio = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 9
  store i64 256, i64* %bw_ratio, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call fastcc i64 @global_rt_period() #16, !range !10
  %call3 = call i64 @to_ratio(i64 noundef %call, i64 noundef %call2) #17
  %shr = lshr i64 %call3, 12
  %bw_ratio4 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 9
  store i64 %shr, i64* %bw_ratio4, align 8
  %call5 = call fastcc i64 @global_rt_period() #16
  %call6 = call fastcc i64 @global_rt_runtime() #16, !range !11
  %call7 = call i64 @to_ratio(i64 noundef %call5, i64 noundef %call6) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call7.sink = phi i64 [ 1048576, %if.then ], [ %call7, %if.else ]
  %0 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 8
  store i64 %call7.sink, i64* %0, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_dl_task_timer(%struct.sched_dl_entity* noundef %dl_se) local_unnamed_addr #1 {
entry:
  %dl_timer = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 10
  call void @hrtimer_init(%struct.hrtimer* noundef %dl_timer, i32 noundef 1, i32 noundef 9) #17
  %function = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 10, i32 2
  store i32 (%struct.hrtimer*)* @dl_task_timer, i32 (%struct.hrtimer*)** %function, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(%struct.hrtimer* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @dl_task_timer(%struct.hrtimer* noundef %timer) #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %add.ptr = getelementptr %struct.hrtimer, %struct.hrtimer* %timer, i64 -2, i32 2
  %0 = bitcast i32 (%struct.hrtimer*)** %add.ptr to %struct.sched_dl_entity*
  %call = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %0) #16
  %1 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  %2 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %call1 = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef %call, %struct.rq_flags* noundef nonnull %rf) #17
  %call2 = call fastcc i32 @dl_task(%struct.task_struct* noundef %call) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %unlock, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @is_dl_boosted(%struct.sched_dl_entity* noundef %0) #16
  br i1 %call3, label %unlock, label %if.end5

if.end5:                                          ; preds = %if.end
  %dl_throttled = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %0, i64 0, i32 9
  %bf.load = load i8, i8* %dl_throttled, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool6.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool6.not, label %unlock, label %if.end8

if.end8:                                          ; preds = %if.end5
  call void @update_rq_clock(%struct.rq* noundef %call1) #17
  %call9 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %call) #16
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call fastcc void @replenish_dl_entity(%struct.sched_dl_entity* noundef %0) #16
  br label %unlock

if.end12:                                         ; preds = %if.end8
  %online = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 33
  %3 = load i32, i32* %online, align 4
  %tobool13.not = icmp eq i32 %3, 0
  br i1 %tobool13.not, label %do.body18, label %if.end25, !prof !13

do.body18:                                        ; preds = %if.end12
  %call22 = call fastcc %struct.rq* @dl_task_offline_migration(%struct.rq* noundef %call1, %struct.task_struct* noundef %call) #16
  call void @update_rq_clock(%struct.rq* noundef %call22) #17
  br label %if.end25

if.end25:                                         ; preds = %do.body18, %if.end12
  %rq.0 = phi %struct.rq* [ %call22, %do.body18 ], [ %call1, %if.end12 ]
  call void @enqueue_task_dl(%struct.rq* noundef %rq.0, %struct.task_struct* noundef %call, i32 noundef 32) #16
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq.0, i64 0, i32 9
  %4 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %call26 = call fastcc i32 @dl_task(%struct.task_struct* noundef %4) #16
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @check_preempt_curr_dl(%struct.rq* noundef %rq.0, %struct.task_struct* noundef %call, i32 noundef 0) #16
  br label %if.end29

if.else:                                          ; preds = %if.end25
  call void @resched_curr(%struct.rq* noundef %rq.0) #17
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then28
  %call30 = call fastcc i32 @has_pushable_dl_tasks(%struct.rq* noundef %rq.0) #16
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %unlock, label %if.then32

if.then32:                                        ; preds = %if.end29
  %call33 = call fastcc i32 @push_dl_task(%struct.rq* noundef %rq.0) #16
  br label %unlock

unlock:                                           ; preds = %if.end29, %if.then32, %if.end5, %if.end, %entry, %if.then11
  %rq.1 = phi %struct.rq* [ %call1, %if.end ], [ %rq.0, %if.then32 ], [ %rq.0, %if.end29 ], [ %call1, %if.then11 ], [ %call1, %if.end5 ], [ %call1, %entry ]
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq.1, %struct.task_struct* noundef %call, %struct.rq_flags* noundef nonnull %rf) #16
  call fastcc void @put_task_struct(%struct.task_struct* noundef %call) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_dl_inactive_task_timer(%struct.sched_dl_entity* noundef %dl_se) local_unnamed_addr #1 {
entry:
  %inactive_timer = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 11
  call void @hrtimer_init(%struct.hrtimer* noundef %inactive_timer, i32 noundef 1, i32 noundef 9) #17
  %function = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 11, i32 2
  store i32 (%struct.hrtimer*)* @inactive_task_timer, i32 (%struct.hrtimer*)** %function, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @inactive_task_timer(%struct.hrtimer* noundef %timer) #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %add.ptr = getelementptr %struct.hrtimer, %struct.hrtimer* %timer, i64 -3, i32 2
  %0 = bitcast i32 (%struct.hrtimer*)** %add.ptr to %struct.sched_dl_entity*
  %call = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %0) #16
  %1 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  %2 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !12
  store i64 0, i64* %2, align 8, !annotation !12
  %call1 = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef %call, %struct.rq_flags* noundef nonnull %rf) #17
  call void @update_rq_clock(%struct.rq* noundef %call1) #17
  %call2 = call fastcc i32 @dl_task(%struct.task_struct* noundef %call) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %do.end5

do.end5:                                          ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 1
  %3 = load volatile i32, i32* %__state, align 16
  %cmp = icmp eq i32 %3, 128
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %do.end5, %entry
  %call7 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %call) #16
  %call8 = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %call7) #16
  %__state13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 1
  %4 = load volatile i32, i32* %__state13, align 16
  %cmp14 = icmp eq i32 %4, 128
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %dl_non_contending = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %0, i64 0, i32 9
  %bf.load = load i8, i8* %dl_non_contending, align 4
  %5 = and i8 %bf.load, 4
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %if.end, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 22
  %call18 = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl) #16
  call fastcc void @sub_running_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %call18) #16
  %call21 = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl) #16
  call fastcc void @sub_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %call21) #16
  %bf.load23 = load i8, i8* %dl_non_contending, align 4
  %bf.clear24 = and i8 %bf.load23, -5
  store i8 %bf.clear24, i8* %dl_non_contending, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16, %land.lhs.true, %if.then
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call8, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  %dl_bw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 22, i32 4
  %6 = load i64, i64* %dl_bw, align 16
  %call26 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %call) #16
  %call27 = call fastcc i32 @dl_bw_cpus(i32 noundef %call26) #16
  call fastcc void @__dl_sub(%struct.dl_bw* noundef %call8, i64 noundef %6, i32 noundef %call27) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void @__dl_clear_params(%struct.task_struct* noundef %call) #16
  br label %unlock

if.end29:                                         ; preds = %do.end5
  %dl_non_contending30 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %0, i64 0, i32 9
  %bf.load31 = load i8, i8* %dl_non_contending30, align 4
  %7 = and i8 %bf.load31, 4
  %cmp35 = icmp eq i8 %7, 0
  br i1 %cmp35, label %unlock, label %if.end37

if.end37:                                         ; preds = %if.end29
  %dl38 = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 7
  call fastcc void @sub_running_bw(%struct.sched_dl_entity* noundef %0, %struct.dl_rq* noundef %dl38) #16
  %bf.load40 = load i8, i8* %dl_non_contending30, align 4
  %bf.clear41 = and i8 %bf.load40, -5
  store i8 %bf.clear41, i8* %dl_non_contending30, align 4
  br label %unlock

unlock:                                           ; preds = %if.end, %if.end29, %if.end37
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call1, %struct.task_struct* noundef %call, %struct.rq_flags* noundef nonnull %rf) #16
  call fastcc void @put_task_struct(%struct.task_struct* noundef %call) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_sched_dl_class() local_unnamed_addr #5 section ".init.text" {
entry:
  %call9 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %0
  br i1 %cmp10, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call11 = phi i32 [ %call, %do.body ], [ %call9, %entry ]
  %idxprom = zext i32 %call11 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint ([1 x %struct.cpumask]* @local_cpu_mask_dl to i64)
  %2 = inttoptr i64 %add to [1 x %struct.cpumask]*
  call fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %2) #16
  %call = call i32 @cpumask_next(i32 noundef %call11, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %mask) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dl_add_task_root_domain(%struct.task_struct* noundef %p) local_unnamed_addr #1 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !12
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #16
  store i64 %call, i64* %1, align 8
  %call1 = call fastcc i32 @dl_task(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2, label %if.end

do.body2:                                         ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = call %struct.rq* @__task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #17
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %call12, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %dl_bw = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 9
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_bw, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  %dl_bw13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  %3 = load i64, i64* %dl_bw13, align 16
  %4 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %4, i64 0, i32 3, i64 0
  %call15 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %arraydecay) #16
  call fastcc void @__dl_add(%struct.dl_bw* noundef %dl_bw, i64 noundef %3, i32 noundef %call15) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call12, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #16
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dl_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @dl_prio(i32 noundef %0) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rq* @__task_rq_lock(%struct.task_struct* noundef, %struct.rq_flags* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__dl_add(%struct.dl_bw* noundef %dl_b, i64 noundef %tsk_bw, i32 noundef %cpus) unnamed_addr #7 {
entry:
  %total_bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_b, i64 0, i32 2
  %0 = load i64, i64* %total_bw, align 8
  %add = add i64 %0, %tsk_bw
  store i64 %add, i64* %total_bw, align 8
  %conv = trunc i64 %tsk_bw to i32
  %div = sdiv i32 %conv, %cpus
  %sub = sub i32 0, %div
  %conv1 = sext i32 %sub to i64
  call fastcc void @__dl_update(%struct.dl_bw* noundef %dl_b, i64 noundef %conv1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call4.i = call i32 @__bitmap_weight(i64* noundef %arraydecay, i32 noundef 256) #17
  ret i32 %call4.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_rq_unlock(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* nocapture noundef readonly %rf) unnamed_addr #1 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #17
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %flags = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dl_clear_root_domain(%struct.root_domain* noundef %rd) local_unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 9, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  %total_bw = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 9, i32 2
  store i64 0, i64* %total_bw, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @enqueue_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #1 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %call = call fastcc i1 @is_dl_boosted(%struct.sched_dl_entity* noundef %dl) #16
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dl_throttled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_throttled, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end28, label %if.then2

if.then2:                                         ; preds = %if.then
  %dl_timer = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 10
  %call4 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %dl_timer) #17
  %bf.load7 = load i8, i8* %dl_throttled, align 4
  %bf.clear8 = and i8 %bf.load7, -2
  store i8 %bf.clear8, i8* %dl_throttled, align 4
  br label %if.end28

if.else:                                          ; preds = %entry
  %normal_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 17
  %0 = load i32, i32* %normal_prio, align 4
  %call9 = call fastcc i32 @dl_prio(i32 noundef %0) #16
  %tobool10.not = icmp eq i32 %call9, 0
  %dl_throttled13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load14 = load i8, i8* %dl_throttled13, align 4
  br i1 %tobool10.not, label %if.then11, label %if.end28

if.then11:                                        ; preds = %if.else
  %bf.clear15 = and i8 %bf.load14, -2
  store i8 %bf.clear15, i8* %dl_throttled13, align 4
  %call18 = call fastcc i1 @is_dl_boosted(%struct.sched_dl_entity* noundef %dl) #16
  %cmp = icmp eq i32 %flags, 32
  %1 = and i1 %cmp, %call18
  br i1 %1, label %if.end72, label %do.body22, !prof !16

do.body22:                                        ; preds = %if.then11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 1564; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !17
  unreachable

if.end28:                                         ; preds = %if.else, %if.then, %if.then2
  %bf.load31 = phi i8 [ %bf.load, %if.then ], [ %bf.clear8, %if.then2 ], [ %bf.load14, %if.else ]
  %dl_throttled30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.clear32 = and i8 %bf.load31, 1
  %tobool34.not = icmp eq i8 %bf.clear32, 0
  br i1 %tobool34.not, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %if.end28
  %call36 = call fastcc i1 @dl_is_implicit(%struct.sched_dl_entity* noundef %dl) #16
  br i1 %call36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %land.lhs.true
  call fastcc void @dl_check_constrained_dl(%struct.sched_dl_entity* noundef %dl) #16
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true, %if.end28
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %2 = load i32, i32* %on_rq, align 32
  %cmp40 = icmp ne i32 %2, 2
  %and = and i32 %flags, 2
  %tobool42.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool42.not, %cmp40
  br i1 %or.cond, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.end39
  %dl45 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7
  call fastcc void @add_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl45) #16
  call fastcc void @add_running_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl45) #16
  br label %if.end48

if.end48:                                         ; preds = %if.end39, %if.then43
  %bf.load51 = load i8, i8* %dl_throttled30, align 4
  %bf.clear52 = and i8 %bf.load51, 1
  %tobool54.not = icmp ne i8 %bf.clear52, 0
  %and56 = and i32 %flags, 32
  %tobool57.not = icmp eq i32 %and56, 0
  %or.cond99 = and i1 %tobool57.not, %tobool54.not
  br i1 %or.cond99, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end48
  %and59 = and i32 %flags, 1
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end72, label %if.then61

if.then61:                                        ; preds = %if.then58
  call fastcc void @task_contending(%struct.sched_dl_entity* noundef %dl, i32 noundef %flags) #16
  br label %if.end72

if.end64:                                         ; preds = %if.end48
  call fastcc void @enqueue_dl_entity(%struct.sched_dl_entity* noundef %dl, i32 noundef %flags) #16
  %call66 = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %if.end72

land.lhs.true68:                                  ; preds = %if.end64
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp69 = icmp sgt i32 %3, 1
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true68
  call fastcc void @enqueue_pushable_dl_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  br label %if.end72

if.end72:                                         ; preds = %if.then58, %if.then61, %if.then11, %if.then71, %land.lhs.true68, %if.end64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dequeue_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #1 {
entry:
  call void @update_curr_dl(%struct.rq* noundef %rq) #16
  call fastcc void @__dequeue_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %0 = load i32, i32* %on_rq, align 32
  %cmp = icmp ne i32 %0, 2
  %and = and i32 %flags, 2
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %dl1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7
  call fastcc void @sub_running_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl1) #16
  call fastcc void @sub_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl1) #16
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %and4 = and i32 %flags, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call fastcc void @task_non_contending(%struct.task_struct* noundef %p) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @yield_task_dl(%struct.rq* noundef %rq) #1 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %dl_yielded = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_yielded, align 4
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %dl_yielded, align 4
  call void @update_rq_clock(%struct.rq* noundef %rq) #17
  call void @update_curr_dl(%struct.rq* noundef %rq) #16
  call fastcc void @rq_clock_skip_update(%struct.rq* noundef %rq) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @check_preempt_curr_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #1 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %dl1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22
  %call = call fastcc i1 @dl_entity_preempt(%struct.sched_dl_entity* noundef %dl, %struct.sched_dl_entity* noundef %dl1) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @resched_curr(%struct.rq* noundef %rq) #17
  br label %if.end9

if.end:                                           ; preds = %entry
  %deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 7
  %1 = load i64, i64* %deadline, align 8
  %deadline5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22, i32 7
  %2 = load i64, i64* %deadline5, align 8
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %call7 = call fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %0) #16
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call fastcc void @check_preempt_equal_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then8, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.task_struct* @pick_next_task_dl(%struct.rq* noundef %rq) #1 {
entry:
  %call = call %struct.task_struct* @pick_task_dl(%struct.rq* noundef %rq) #16
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @set_next_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef nonnull %call, i1 noundef true) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @put_prev_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #1 {
entry:
  call void @update_curr_dl(%struct.rq* noundef %rq) #16
  %call = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #16
  %call1 = call i32 @update_dl_rq_load_avg(i64 noundef %call, %struct.rq* noundef %rq, i32 noundef 1) #17
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %call2 = call fastcc i32 @on_dl_rq(%struct.sched_dl_entity* noundef %dl) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %0 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @enqueue_pushable_dl_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @set_next_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i1 noundef %first) #1 {
entry:
  %call = call fastcc i64 @rq_clock_task(%struct.rq* noundef %rq) #16
  %exec_start = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 4
  store i64 %call, i64* %exec_start, align 64
  call fastcc void @dequeue_pushable_dl_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  br i1 %first, label %if.end, label %return

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 19
  %1 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp.not = icmp eq %struct.sched_class* %1, bitcast ({ void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*)*, i1 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i1)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.task_struct*, i32, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.rq*)*, void (%struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.task_struct*)*, void (%struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, i32 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*)* }* @dl_sched_class to %struct.sched_class*)
  br i1 %cmp.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #16
  %call7 = call i32 @update_dl_rq_load_avg(i64 noundef %call6, %struct.rq* noundef %rq, i32 noundef 0) #17
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  call fastcc void @deadline_queue_push_tasks(%struct.rq* noundef %rq) #16
  br label %return

return:                                           ; preds = %entry, %if.end8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @balance_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef readonly %p, %struct.rq_flags* nocapture noundef readnone %rf) #1 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %call = call fastcc i32 @on_dl_rq(%struct.sched_dl_entity* noundef %dl) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @need_pull_dl_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @pull_dl_task(%struct.rq* noundef %rq) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call2 = call fastcc i1 @sched_stop_runnable(%struct.rq* noundef %rq) #16
  br i1 %call2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call3 = call fastcc i1 @sched_dl_runnable(%struct.rq* noundef %rq) #16
  %phi.cast = zext i1 %call3 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %0 = phi i32 [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @select_task_rq_dl(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %flags) #1 {
entry:
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %out, label %do.body

do.body:                                          ; preds = %entry
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  call fastcc void @__rcu_read_lock() #17
  %curr6 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 9
  %2 = load volatile %struct.task_struct*, %struct.task_struct** %curr6, align 8
  %call = call fastcc i32 @dl_task(%struct.task_struct* noundef %2) #16
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %land.end, label %land.lhs.true, !prof !16

land.lhs.true:                                    ; preds = %do.body
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %dl11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 22
  %call12 = call fastcc i1 @dl_entity_preempt(%struct.sched_dl_entity* noundef %dl, %struct.sched_dl_entity* noundef %dl11) #16
  br i1 %call12, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %nr_cpus_allowed13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %4 = load i32, i32* %nr_cpus_allowed13, align 4
  %cmp14 = icmp sgt i32 %4, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %do.body
  %5 = phi i1 [ false, %lor.lhs.false ], [ false, %do.body ], [ %cmp14, %land.rhs ]
  %call17 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #16
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then28, label %if.end36, !prof !13

if.then28:                                        ; preds = %land.end
  %call29 = call fastcc i1 @dl_task_fits_capacity(%struct.task_struct* noundef %p, i32 noundef %cpu) #16
  %lnot30 = xor i1 %call29, true
  %or96 = or i1 %5, %lnot30
  br i1 %or96, label %if.then38, label %if.end74

if.end36:                                         ; preds = %land.end
  br i1 %5, label %if.then38, label %if.end74

if.then38:                                        ; preds = %if.then28, %if.end36
  %call39 = call fastcc i32 @find_later_rq(%struct.task_struct* noundef %p) #16
  %cmp40.not = icmp eq i32 %call39, -1
  br i1 %cmp40.not, label %if.end74, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.then38
  %deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 7
  %6 = load i64, i64* %deadline, align 8
  %idxprom51 = sext i32 %call39 to i64
  %arrayidx52 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom51
  %7 = load i64, i64* %arrayidx52, align 8
  %add53 = add i64 %7, ptrtoint (%struct.rq* @runqueues to i64)
  %8 = inttoptr i64 %add53 to %struct.rq*
  %curr55 = getelementptr inbounds %struct.rq, %struct.rq* %8, i64 0, i32 7, i32 2, i32 0
  %9 = load i64, i64* %curr55, align 8
  %call56 = call fastcc i1 @dl_time_before(i64 noundef %6, i64 noundef %9) #16
  br i1 %call56, label %if.then72, label %do.body59

do.body59:                                        ; preds = %land.lhs.true42
  %dl_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %8, i64 0, i32 7, i32 1
  %10 = load i32, i32* %dl_nr_running, align 16
  %cmp70 = icmp eq i32 %10, 0
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %do.body59, %land.lhs.true42
  br label %if.end74

if.end74:                                         ; preds = %if.then28, %if.then38, %do.body59, %if.then72, %if.end36
  %cpu.addr.1 = phi i32 [ %cpu, %if.end36 ], [ %call39, %if.then72 ], [ %cpu, %do.body59 ], [ %cpu, %if.then38 ], [ %cpu, %if.then28 ]
  call fastcc void @rcu_read_unlock() #16
  br label %out

out:                                              ; preds = %entry, %if.end74
  %cpu.addr.2 = phi i32 [ %cpu.addr.1, %if.end74 ], [ %cpu, %entry ]
  ret i32 %cpu.addr.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.task_struct* @pick_task_dl(%struct.rq* nocapture noundef readonly %rq) #1 {
entry:
  %call = call fastcc i1 @sched_dl_runnable(%struct.rq* noundef %rq) #16
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %dl = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7
  %call1 = call fastcc %struct.sched_dl_entity* @pick_next_dl_entity(%struct.dl_rq* noundef %dl) #16
  %tobool.not = icmp eq %struct.sched_dl_entity* %call1, null
  br i1 %tobool.not, label %do.body6, label %do.end12, !prof !13

do.body6:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 1866; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !18
  unreachable

do.end12:                                         ; preds = %if.end
  %call13 = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef nonnull %call1) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end12
  %retval.0 = phi %struct.task_struct* [ %call13, %do.end12 ], [ null, %entry ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @migrate_task_rq_dl(%struct.task_struct* noundef %p, i32 noundef %new_cpu) #1 {
entry:
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %cmp.not = icmp eq i32 %0, 512
  br i1 %cmp.not, label %do.body1, label %cleanup

do.body1:                                         ; preds = %entry
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #16
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %2) #16
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %dl_non_contending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_non_contending, align 4
  %3 = and i8 %bf.load, 4
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end18, label %if.then6

if.then6:                                         ; preds = %do.body1
  call void @update_rq_clock(%struct.rq* noundef %2) #17
  %dl8 = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 7
  call fastcc void @sub_running_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl8) #16
  %bf.load11 = load i8, i8* %dl_non_contending, align 4
  %bf.clear12 = and i8 %bf.load11, -5
  store i8 %bf.clear12, i8* %dl_non_contending, align 4
  %inactive_timer = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 11
  %call14 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %inactive_timer) #17
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then6
  call fastcc void @put_task_struct(%struct.task_struct* noundef %p) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then6, %if.then16, %do.body1
  %dl20 = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 7
  call fastcc void @sub_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl20) #16
  call void @raw_spin_rq_unlock(%struct.rq* noundef %2) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @task_woken_dl(%struct.rq* noundef %rq, %struct.task_struct* nocapture noundef readonly %p) #1 {
entry:
  %call = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %call1 = call fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %0) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %1 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %2 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %call6 = call fastcc i32 @dl_task(%struct.task_struct* noundef %2) #16
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %nr_cpus_allowed10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed10, align 4
  %cmp11 = icmp slt i32 %3, 2
  br i1 %cmp11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true8
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %dl13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 22
  %call14 = call fastcc i1 @dl_entity_preempt(%struct.sched_dl_entity* noundef %dl, %struct.sched_dl_entity* noundef %dl13) #16
  br i1 %call14, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true8
  call void @push_dl_tasks(%struct.rq* noundef %rq) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true4, %land.lhs.true3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @set_cpus_allowed_dl(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags) #1 {
entry:
  %call = call fastcc i32 @dl_task(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !13

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2340; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !19
  unreachable

do.body10:                                        ; preds = %entry
  %call14 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #16
  %idxprom = zext i32 %call14 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 3, i64 0
  %call15 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %new_mask) #16
  br i1 %call15, label %if.end22, label %if.then16

if.then16:                                        ; preds = %do.body10
  %call17 = call fastcc i32 @cpu_of(%struct.rq* noundef %1) #16
  %call18 = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %call17) #16
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call18, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  %dl_bw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  %3 = load i64, i64* %dl_bw, align 16
  %call19 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #16
  %call20 = call fastcc i32 @dl_bw_cpus(i32 noundef %call19) #16
  call fastcc void @__dl_sub(%struct.dl_bw* noundef %call18, i64 noundef %3, i32 noundef %call20) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %do.body10
  call void @set_cpus_allowed_common(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rq_online_dl(%struct.rq* nocapture noundef readonly %rq) #1 {
entry:
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 4
  %0 = load i32, i32* %overloaded, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @dl_set_overload(%struct.rq* noundef %rq) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpudl = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 10
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  call void @cpudl_set_freecpu(%struct.cpudl* noundef %cpudl, i32 noundef %2) #17
  %dl_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 1
  %3 = load i32, i32* %dl_nr_running, align 16
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpudl4 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %4, i64 0, i32 10
  %5 = load i32, i32* %cpu, align 16
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 2, i32 0
  %6 = load i64, i64* %curr, align 8
  call void @cpudl_set(%struct.cpudl* noundef %cpudl4, i32 noundef %5, i64 noundef %6) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rq_offline_dl(%struct.rq* nocapture noundef readonly %rq) #1 {
entry:
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 4
  %0 = load i32, i32* %overloaded, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @dl_clear_overload(%struct.rq* noundef %rq) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpudl = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 10
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  call void @cpudl_clear(%struct.cpudl* noundef %cpudl, i32 noundef %2) #17
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpudl2 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 10
  %4 = load i32, i32* %cpu, align 16
  call void @cpudl_clear_freecpu(%struct.cpudl* noundef %cpudl2, i32 noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.rq* @find_lock_later_rq(%struct.task_struct* noundef %task, %struct.rq* noundef %rq) #1 {
entry:
  %cpu2 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 22, i32 7
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 27
  br label %for.body

for.body:                                         ; preds = %entry, %if.end55
  %tries.0101 = phi i32 [ 0, %entry ], [ %inc, %if.end55 ]
  %call = call fastcc i32 @find_later_rq(%struct.task_struct* noundef %task) #16
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %0 = load i32, i32* %cpu2, align 16
  %cmp3 = icmp eq i32 %call, %0
  br i1 %cmp3, label %for.end, label %do.body

do.body:                                          ; preds = %lor.lhs.false
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %dl_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 7, i32 1
  %3 = load i32, i32* %dl_nr_running, align 16
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %4 = load i64, i64* %deadline, align 8
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 7, i32 2, i32 0
  %5 = load i64, i64* %curr, align 8
  %call7 = call fastcc i1 @dl_time_before(i64 noundef %4, i64 noundef %5) #16
  br i1 %call7, label %if.end9, label %for.end

if.end9:                                          ; preds = %land.lhs.true, %do.body
  %call10 = call fastcc i32 @double_lock_balance(%struct.rq* noundef %rq, %struct.rq* noundef %2) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end42, label %do.body13

do.body13:                                        ; preds = %if.end9
  %call20 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %task) #16
  %idxprom21 = zext i32 %call20 to i64
  %arrayidx22 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom21
  %6 = load i64, i64* %arrayidx22, align 8
  %add23 = add i64 %6, ptrtoint (%struct.rq* @runqueues to i64)
  %7 = inttoptr i64 %add23 to %struct.rq*
  %cmp24.not = icmp eq %struct.rq* %7, %rq
  br i1 %cmp24.not, label %lor.lhs.false25, label %if.then40, !prof !16

lor.lhs.false25:                                  ; preds = %do.body13
  %cpu26 = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 32
  %8 = load i32, i32* %cpu26, align 16
  %call27 = call fastcc i32 @cpumask_test_cpu(i32 noundef %8, %struct.cpumask* noundef %cpus_mask) #16
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then40, label %lor.lhs.false29, !prof !13

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = call fastcc i32 @task_running(%struct.task_struct* noundef %task) #16
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %if.then40, !prof !16

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %call33 = call fastcc i32 @dl_task(%struct.task_struct* noundef %task) #16
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then40, label %lor.rhs, !prof !13

lor.rhs:                                          ; preds = %lor.lhs.false32
  %call35 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %task) #16
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then40, label %if.end42, !prof !13

if.then40:                                        ; preds = %do.body13, %lor.lhs.false25, %lor.lhs.false29, %lor.lhs.false32, %lor.rhs
  %9 = inttoptr i64 %add to %struct.rq*
  call fastcc void @double_unlock_balance(%struct.rq* noundef %rq, %struct.rq* noundef %9) #16
  br label %for.end

if.end42:                                         ; preds = %lor.rhs, %if.end9
  %10 = load i32, i32* %dl_nr_running, align 16
  %tobool45.not = icmp eq i32 %10, 0
  br i1 %tobool45.not, label %for.end.loopexit.split.loop.exit104, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end42
  %11 = load i64, i64* %deadline, align 8
  %curr51 = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 7, i32 2, i32 0
  %12 = load i64, i64* %curr51, align 8
  %call52 = call fastcc i1 @dl_time_before(i64 noundef %11, i64 noundef %12) #16
  br i1 %call52, label %for.end.loopexit.split.loop.exit, label %if.end55

if.end55:                                         ; preds = %lor.lhs.false46
  call fastcc void @double_unlock_balance(%struct.rq* noundef %rq, %struct.rq* noundef %2) #16
  %inc = add nuw nsw i32 %tries.0101, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end.loopexit.split.loop.exit:                 ; preds = %lor.lhs.false46
  %13 = inttoptr i64 %add to %struct.rq*
  br label %for.end

for.end.loopexit.split.loop.exit104:              ; preds = %if.end42
  %14 = inttoptr i64 %add to %struct.rq*
  br label %for.end

for.end:                                          ; preds = %land.lhs.true, %for.body, %lor.lhs.false, %if.end55, %for.end.loopexit.split.loop.exit, %for.end.loopexit.split.loop.exit104, %if.then40
  %later_rq.1 = phi %struct.rq* [ null, %if.then40 ], [ %13, %for.end.loopexit.split.loop.exit ], [ %14, %for.end.loopexit.split.loop.exit104 ], [ null, %if.end55 ], [ null, %lor.lhs.false ], [ null, %for.body ], [ null, %land.lhs.true ]
  ret %struct.rq* %later_rq.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @task_tick_dl(%struct.rq* noundef %rq, %struct.task_struct* nocapture noundef readnone %p, i32 noundef %queued) #1 {
entry:
  call void @update_curr_dl(%struct.rq* noundef %rq) #16
  %call = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #16
  %call1 = call i32 @update_dl_rq_load_avg(i64 noundef %call, %struct.rq* noundef %rq, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @task_fork_dl(%struct.task_struct* nocapture noundef %p) #8 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @switched_from_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #1 {
entry:
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %dl_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 1
  %0 = load i64, i64* %dl_runtime, align 8
  %tobool1.not = icmp eq i64 %0, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @task_non_contending(%struct.task_struct* noundef %p) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call2 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #16
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end13

if.then4:                                         ; preds = %if.end
  %dl5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %dl_non_contending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_non_contending, align 4
  %1 = and i8 %bf.load, 4
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.then4
  %dl9 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7
  call fastcc void @sub_running_bw(%struct.sched_dl_entity* noundef %dl5, %struct.dl_rq* noundef %dl9) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4
  %dl12 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7
  call fastcc void @sub_rq_bw(%struct.sched_dl_entity* noundef %dl5, %struct.dl_rq* noundef %dl12) #16
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.end
  %dl_non_contending15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load16 = load i8, i8* %dl_non_contending15, align 4
  %2 = and i8 %bf.load16, 4
  %tobool20.not = icmp eq i8 %2, 0
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end13
  %bf.clear25 = and i8 %bf.load16, -5
  store i8 %bf.clear25, i8* %dl_non_contending15, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end13
  %call27 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #16
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end26
  %dl_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 1
  %3 = load i32, i32* %dl_nr_running, align 16
  %tobool30.not = icmp eq i32 %3, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %lor.lhs.false
  call fastcc void @deadline_queue_pull_task(%struct.rq* noundef %rq) #16
  br label %return

return:                                           ; preds = %if.end26, %lor.lhs.false, %if.end32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @switched_to_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #1 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %inactive_timer = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 11
  %call = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %inactive_timer) #17
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @put_task_struct(%struct.task_struct* noundef %p) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %dl4 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7
  call fastcc void @add_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl4) #16
  br label %if.end21

if.end5:                                          ; preds = %if.end
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp6.not = icmp eq %struct.task_struct* %0, %p
  br i1 %cmp6.not, label %if.else18, label %if.then7

if.then7:                                         ; preds = %if.end5
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %1 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp8 = icmp sgt i32 %1, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then7
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 4
  %2 = load i32, i32* %overloaded, align 4
  %tobool10.not = icmp eq i32 %2, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  call fastcc void @deadline_queue_push_tasks(%struct.rq* noundef %rq) #16
  %.pre = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.then7
  %3 = phi %struct.task_struct* [ %.pre, %if.then11 ], [ %0, %land.lhs.true ], [ %0, %if.then7 ]
  %call14 = call fastcc i32 @dl_task(%struct.task_struct* noundef %3) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @check_preempt_curr_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef 0) #16
  br label %if.end21

if.else:                                          ; preds = %if.end12
  call void @resched_curr(%struct.rq* noundef %rq) #17
  br label %if.end21

if.else18:                                        ; preds = %if.end5
  %call19 = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #16
  %call20 = call i32 @update_dl_rq_load_avg(i64 noundef %call19, %struct.rq* noundef %rq, i32 noundef 0) #17
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.else, %if.then2, %if.else18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @prio_changed_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef readonly %p, i32 noundef %oldprio) #1 {
entry:
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end10, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 4
  %0 = load i32, i32* %overloaded, align 4
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call fastcc void @deadline_queue_pull_task(%struct.rq* noundef %rq) #16
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 2, i32 0
  %1 = load i64, i64* %curr, align 8
  %deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 7
  %2 = load i64, i64* %deadline, align 8
  %call7 = call fastcc i1 @dl_time_before(i64 noundef %1, i64 noundef %2) #16
  br i1 %call7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @resched_curr(%struct.rq* noundef %rq) #17
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then8, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @update_curr_dl(%struct.rq* noundef %rq) #1 {
entry:
  %curr1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr1, align 8
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22
  %call = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #16
  %call2 = call fastcc i32 @dl_task(%struct.task_struct* noundef %0) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc i32 @on_dl_rq(%struct.sched_dl_entity* noundef %dl) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = call fastcc i64 @rq_clock_task(%struct.rq* noundef %rq) #16
  %exec_start = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 20, i32 4
  %1 = load i64, i64* %exec_start, align 64
  %sub = sub i64 %call5, %1
  %cmp = icmp slt i64 %sub, 1
  br i1 %cmp, label %if.then8, label %do.end, !prof !13

if.then8:                                         ; preds = %if.end
  %dl_yielded = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_yielded, align 4
  %2 = and i8 %bf.load, 2
  %tobool9.not = icmp eq i8 %2, 0
  br i1 %tobool9.not, label %cleanup, label %throttle, !prof !16

do.end:                                           ; preds = %if.end
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 20, i32 5
  %3 = load i64, i64* %sum_exec_runtime, align 8
  %add = add i64 %3, %sub
  store i64 %add, i64* %sum_exec_runtime, align 8
  call fastcc void @account_group_exec_runtime(%struct.task_struct* noundef %0, i64 noundef %sub) #16
  store i64 %call5, i64* %exec_start, align 64
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22, i32 8
  %4 = load i32, i32* %flags, align 8
  %and = and i32 %4, 2
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.else, label %if.then34, !prof !16

if.then34:                                        ; preds = %do.end
  %call36 = call fastcc i64 @grub_reclaim(i64 noundef %sub, %struct.rq* noundef %rq, %struct.sched_dl_entity* noundef %dl) #16
  br label %if.end41

if.else:                                          ; preds = %do.end
  %call37 = call fastcc i64 @topology_get_freq_scale(i32 noundef %call) #16
  %call38 = call fastcc i64 @topology_get_cpu_scale(i32 noundef %call) #16
  %mul = mul i64 %call37, %sub
  %shr = lshr i64 %mul, 10
  %mul39 = mul i64 %shr, %call38
  %shr40 = lshr i64 %mul39, 10
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then34
  %scaled_delta_exec.0 = phi i64 [ %call36, %if.then34 ], [ %shr40, %if.else ]
  %runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22, i32 6
  %5 = load i64, i64* %runtime, align 8
  %sub42 = sub i64 %5, %scaled_delta_exec.0
  store i64 %sub42, i64* %runtime, align 8
  br label %throttle

throttle:                                         ; preds = %if.then8, %if.end41
  %call43 = call fastcc i32 @dl_runtime_exceeded(%struct.sched_dl_entity* noundef %dl) #16
  %tobool44.not = icmp eq i32 %call43, 0
  %dl_yielded46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22, i32 9
  %bf.load47 = load i8, i8* %dl_yielded46, align 4
  %6 = and i8 %bf.load47, 2
  %tobool51.not = icmp eq i8 %6, 0
  %or.cond = select i1 %tobool44.not, i1 %tobool51.not, i1 false
  br i1 %or.cond, label %if.end85, label %if.then52

if.then52:                                        ; preds = %throttle
  %dl_throttled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22, i32 9
  %bf.set = or i8 %bf.load47, 1
  store i8 %bf.set, i8* %dl_throttled, align 4
  %call55 = call fastcc i32 @dl_runtime_exceeded(%struct.sched_dl_entity* noundef %dl) #16
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end64, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then52
  %flags57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 22, i32 8
  %7 = load i32, i32* %flags57, align 8
  %and58 = and i32 %7, 4
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end64, label %if.then60

if.then60:                                        ; preds = %land.lhs.true
  %bf.set63 = or i8 %bf.load47, 9
  store i8 %bf.set63, i8* %dl_throttled, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %land.lhs.true, %if.then52
  call fastcc void @__dequeue_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %0) #16
  %call65 = call fastcc i1 @is_dl_boosted(%struct.sched_dl_entity* noundef %dl) #16
  br i1 %call65, label %if.then78, label %lor.rhs, !prof !13

lor.rhs:                                          ; preds = %if.end64
  %call67 = call fastcc i32 @start_dl_timer(%struct.task_struct* noundef %0) #16
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then78, label %if.end79, !prof !13

if.then78:                                        ; preds = %if.end64, %lor.rhs
  call void @enqueue_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %0, i32 noundef 32) #16
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %lor.rhs
  %dl80 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7
  %call81 = call fastcc i32 @is_leftmost(%struct.task_struct* noundef %0, %struct.dl_rq* noundef %dl80) #16
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end79
  call void @resched_curr(%struct.rq* noundef %rq) #17
  br label %if.end85

if.end85:                                         ; preds = %throttle, %if.end79, %if.then83
  %call86 = call fastcc i32 @rt_bandwidth_enabled() #16
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup, label %if.then88

if.then88:                                        ; preds = %if.end85
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6
  %rt_runtime_lock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock) #16
  %call89 = call i1 @sched_rt_bandwidth_account(%struct.rt_rq* noundef %rt) #17
  br i1 %call89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.then88
  %rt_time = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 10
  %8 = load i64, i64* %rt_time, align 8
  %add91 = add i64 %8, %sub
  store i64 %add91, i64* %rt_time, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.then88
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end92, %if.then8, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_dl_global_validate() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @global_rt_runtime() #16
  %call1 = call fastcc i64 @global_rt_period() #16, !range !10
  %call2 = call i64 @to_ratio(i64 noundef %call1, i64 noundef %call) #17
  %0 = load i64, i64* @dl_generation, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @dl_generation, align 8
  %call343 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp44 = icmp ult i32 %call343, %1
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %next
  %call345 = phi i32 [ %call3, %next ], [ %call343, %entry ]
  call fastcc void @rcu_read_lock_sched() #16
  %call4 = call fastcc i1 @dl_bw_visited(i32 noundef %call345, i64 noundef %inc) #16
  br i1 %call4, label %next, label %if.end

if.end:                                           ; preds = %for.body
  %call5 = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %call345) #16
  %call6 = call fastcc i32 @dl_bw_cpus(i32 noundef %call345) #16
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call5, i64 0, i32 0
  %call8 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  %conv9 = sext i32 %call6 to i64
  %mul = mul i64 %call2, %conv9
  %total_bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call5, i64 0, i32 2
  %2 = load i64, i64* %total_bw, align 8
  %cmp10 = icmp ult i64 %mul, %2
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call8) #16
  br i1 %cmp10, label %next.thread, label %next

next.thread:                                      ; preds = %if.end
  call fastcc void @rcu_read_unlock_sched() #16
  br label %for.end

next:                                             ; preds = %if.end, %for.body
  call fastcc void @rcu_read_unlock_sched() #16
  %call3 = call i32 @cpumask_next(i32 noundef %call345, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %next, %entry, %next.thread
  %ret.3 = phi i32 [ -16, %next.thread ], [ 0, %entry ], [ 0, %next ]
  ret i32 %ret.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_lock_sched() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @dl_bw_visited(i32 noundef %cpu, i64 noundef %gen) unnamed_addr #9 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %rd2 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd2, align 32
  %visit_gen = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 11
  %3 = load i64, i64* %visit_gen, align 8
  %cmp = icmp eq i64 %3, %gen
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i64 %gen, i64* %visit_gen, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %i) unnamed_addr #2 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %dl_bw = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 9
  ret %struct.dl_bw* %dl_bw
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dl_bw_cpus(i32 noundef %i) unnamed_addr #1 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %rd2 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd2, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 3, i64 0
  %call = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %arraydecay) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %3 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond

if.then:                                          ; preds = %entry
  %call8 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %arraydecay) #16
  br label %cleanup

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %i.addr.0 = phi i32 [ %call11, %for.cond ], [ -1, %for.cond.preheader ]
  %cpus.0 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call11 = call i32 @cpumask_next_and(i32 noundef %i.addr.0, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_active_mask) #19
  %cmp = icmp ult i32 %call11, %3
  %inc = add i32 %cpus.0, 1
  br i1 %cmp, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.cond, %if.then
  %retval.0 = phi i32 [ %call8, %if.then ], [ %cpus.0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock_sched() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_dl_do_global() local_unnamed_addr #1 {
entry:
  %0 = load i64, i64* @dl_generation, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @dl_generation, align 8
  %call = call fastcc i64 @global_rt_period() #16
  store i64 %call, i64* getelementptr inbounds (%struct.dl_bandwidth, %struct.dl_bandwidth* @def_dl_bandwidth, i64 0, i32 2), align 8
  %call1 = call fastcc i64 @global_rt_runtime() #16
  store i64 %call1, i64* getelementptr inbounds (%struct.dl_bandwidth, %struct.dl_bandwidth* @def_dl_bandwidth, i64 0, i32 1), align 8
  %call2 = call fastcc i64 @global_rt_runtime() #16
  %cmp.not = icmp eq i64 %call2, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @global_rt_period() #16
  %call5 = call i64 @to_ratio(i64 noundef %call3, i64 noundef %call2) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %new_bw.0 = phi i64 [ %call5, %if.then ], [ -1, %entry ]
  %call641 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp742 = icmp ult i32 %call641, %1
  br i1 %cmp742, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.cond.backedge
  %call643 = phi i32 [ %call6, %for.cond.backedge ], [ %call641, %if.end ]
  call fastcc void @rcu_read_lock_sched() #16
  %call8 = call fastcc i1 @dl_bw_visited(i32 noundef %call643, i64 noundef %inc) #16
  br i1 %call8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  call fastcc void @rcu_read_unlock_sched() #16
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then9, %if.end10
  %call6 = call i32 @cpumask_next(i32 noundef %call643, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp7 = icmp ult i32 %call6, %2
  br i1 %cmp7, label %for.body, label %for.end

if.end10:                                         ; preds = %for.body
  %call11 = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %call643) #16
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call11, i64 0, i32 0
  %call13 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  %bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call11, i64 0, i32 1
  store i64 %new_bw.0, i64* %bw, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call13) #16
  call fastcc void @rcu_read_unlock_sched() #16
  %idxprom = sext i32 %call643 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add to %struct.rq*
  %dl = getelementptr inbounds %struct.rq, %struct.rq* %4, i64 0, i32 7
  call fastcc void @init_dl_rq_bw_ratio(%struct.dl_rq* noundef %dl) #16
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_dl_overflow(%struct.task_struct* noundef %p, i32 noundef %policy, %struct.sched_attr* nocapture noundef readonly %attr) local_unnamed_addr #1 {
entry:
  %sched_period = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 7
  %0 = load i64, i64* %sched_period, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %sched_deadline = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 6
  %1 = load i64, i64* %sched_deadline, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %1, %cond.false ], [ %0, %entry ]
  %call = call fastcc i32 @dl_policy(i32 noundef %policy) #16
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cond.end5, label %cond.true2

cond.true2:                                       ; preds = %cond.end
  %sched_runtime = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 5
  %2 = load i64, i64* %sched_runtime, align 8
  %call3 = call i64 @to_ratio(i64 noundef %cond, i64 noundef %2) #17
  br label %cond.end5

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi i64 [ %call3, %cond.true2 ], [ 0, %cond.end ]
  %call7 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #16
  %call8 = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %call7) #16
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  %3 = load i64, i64* %sched_flags, align 8
  %and = and i64 %3, 268435456
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.end, label %cleanup

if.end:                                           ; preds = %cond.end5
  %dl_bw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  %4 = load i64, i64* %dl_bw, align 16
  %cmp = icmp eq i64 %cond6, %4
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %call10 = call fastcc i32 @task_has_dl_policy(%struct.task_struct* noundef %p) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %land.lhs.true, %if.end
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call8, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  %call14 = call fastcc i32 @dl_bw_cpus(i32 noundef %call7) #16
  %call15 = call fastcc i64 @dl_bw_capacity(i32 noundef %call7) #16
  %call46 = call fastcc i32 @task_has_dl_policy(%struct.task_struct* noundef %p) #16
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool1.not, label %land.lhs.true45, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end13
  br i1 %tobool47.not, label %land.lhs.true21, label %land.lhs.true35

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %call22 = call fastcc i1 @__dl_overflow(%struct.dl_bw* noundef %call8, i64 noundef %call15, i64 noundef 0, i64 noundef %cond6) #16
  br i1 %call22, label %if.end51, label %if.then23

if.then23:                                        ; preds = %land.lhs.true21
  %inactive_timer = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 11
  %call25 = call i1 @hrtimer_active(%struct.hrtimer* noundef %inactive_timer) #17
  br i1 %call25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then23
  %5 = load i64, i64* %dl_bw, align 16
  call fastcc void @__dl_sub(%struct.dl_bw* noundef %call8, i64 noundef %5, i32 noundef %call14) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23
  call fastcc void @__dl_add(%struct.dl_bw* noundef %call8, i64 noundef %cond6, i32 noundef %call14) #16
  br label %if.end51

land.lhs.true35:                                  ; preds = %land.lhs.true18
  %6 = load i64, i64* %dl_bw, align 16
  %call38 = call fastcc i1 @__dl_overflow(%struct.dl_bw* noundef %call8, i64 noundef %call15, i64 noundef %6, i64 noundef %cond6) #16
  br i1 %call38, label %if.end51, label %if.then39

if.then39:                                        ; preds = %land.lhs.true35
  call fastcc void @__dl_sub(%struct.dl_bw* noundef %call8, i64 noundef %6, i32 noundef %call14) #16
  call fastcc void @__dl_add(%struct.dl_bw* noundef %call8, i64 noundef %cond6, i32 noundef %call14) #16
  call fastcc void @dl_change_utilization(%struct.task_struct* noundef %p, i64 noundef %cond6) #16
  br label %if.end51

land.lhs.true45:                                  ; preds = %if.end13
  %spec.select = sext i1 %tobool47.not to i32
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true21, %land.lhs.true35, %land.lhs.true45, %if.then39, %if.end29
  %err.0 = phi i32 [ 0, %if.then39 ], [ 0, %if.end29 ], [ %spec.select, %land.lhs.true45 ], [ -1, %land.lhs.true35 ], [ -1, %land.lhs.true21 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %cond.end5, %if.end51
  %retval.0 = phi i32 [ %err.0, %if.end51 ], [ 0, %cond.end5 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @dl_policy(i32 noundef %policy) unnamed_addr #8 {
entry:
  %cmp = icmp eq i32 %policy, 6
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_has_dl_policy(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %call = call fastcc i32 @dl_policy(i32 noundef %0) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @dl_bw_capacity(i32 noundef %i) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #16
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.else, label %land.lhs.true, !prof !13

land.lhs.true:                                    ; preds = %entry
  %call4 = call fastcc i64 @capacity_orig_of(i32 noundef %i) #16
  %cmp5 = icmp eq i64 %call4, 1024
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call7 = call fastcc i32 @dl_bw_cpus(i32 noundef %i) #16
  %shl = shl i32 %call7, 10
  %conv8 = sext i32 %shl to i64
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = call fastcc i64 @__dl_bw_capacity(i32 noundef %i) #16
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i64 [ %call9, %if.else ], [ %conv8, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__dl_overflow(%struct.dl_bw* nocapture noundef readonly %dl_b, i64 noundef %cap, i64 noundef %old_bw, i64 noundef %new_bw) unnamed_addr #2 {
entry:
  %bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_b, i64 0, i32 1
  %0 = load i64, i64* %bw, align 8
  %cmp.not = icmp eq i64 %0, -1
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %mul = mul i64 %0, %cap
  %shr = lshr i64 %mul, 10
  %total_bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_b, i64 0, i32 2
  %1 = load i64, i64* %total_bw, align 8
  %sub = sub i64 %new_bw, %old_bw
  %add = add i64 %sub, %1
  %cmp2 = icmp ult i64 %shr, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @hrtimer_active(%struct.hrtimer* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__dl_sub(%struct.dl_bw* noundef %dl_b, i64 noundef %tsk_bw, i32 noundef %cpus) unnamed_addr #7 {
entry:
  %total_bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_b, i64 0, i32 2
  %0 = load i64, i64* %total_bw, align 8
  %sub = sub i64 %0, %tsk_bw
  store i64 %sub, i64* %total_bw, align 8
  %conv = trunc i64 %tsk_bw to i32
  %div = sdiv i32 %conv, %cpus
  %conv1 = sext i32 %div to i64
  call fastcc void @__dl_update(%struct.dl_bw* noundef %dl_b, i64 noundef %conv1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dl_change_utilization(%struct.task_struct* noundef %p, i64 noundef %new_bw) unnamed_addr #1 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 8
  %0 = load i32, i32* %flags, align 16
  %and = and i32 %0, 268435456
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !16

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 237; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !22
  unreachable

do.end8:                                          ; preds = %entry
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #16
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %do.body12, label %cleanup

do.body12:                                        ; preds = %do.end8
  %call16 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #16
  %idxprom = zext i32 %call16 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %dl_non_contending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_non_contending, align 4
  %3 = and i8 %bf.load, 4
  %tobool18.not = icmp eq i8 %3, 0
  br i1 %tobool18.not, label %if.end31, label %if.then19

if.then19:                                        ; preds = %do.body12
  %dl21 = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 7
  call fastcc void @sub_running_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl21) #16
  %bf.load24 = load i8, i8* %dl_non_contending, align 4
  %bf.clear25 = and i8 %bf.load24, -5
  store i8 %bf.clear25, i8* %dl_non_contending, align 4
  %inactive_timer = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 11
  %call27 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %inactive_timer) #17
  %cmp = icmp eq i32 %call27, 1
  br i1 %cmp, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then19
  call fastcc void @put_task_struct(%struct.task_struct* noundef %p) #16
  br label %if.end31

if.end31:                                         ; preds = %if.then19, %if.then29, %do.body12
  %dl_bw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  %4 = load i64, i64* %dl_bw, align 16
  %dl33 = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 7
  call fastcc void @__sub_rq_bw(i64 noundef %4, %struct.dl_rq* noundef %dl33) #16
  call fastcc void @__add_rq_bw(i64 noundef %new_bw, %struct.dl_rq* noundef %dl33) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__setparam_dl(%struct.task_struct* nocapture noundef %p, %struct.sched_attr* nocapture noundef readonly %attr) local_unnamed_addr #1 {
entry:
  %sched_runtime = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 5
  %0 = load i64, i64* %sched_runtime, align 8
  %dl_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 1
  store i64 %0, i64* %dl_runtime, align 8
  %sched_deadline = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 6
  %1 = load i64, i64* %sched_deadline, align 8
  %dl_deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 2
  store i64 %1, i64* %dl_deadline, align 8
  %sched_period = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 7
  %2 = load i64, i64* %sched_period, align 8
  %tobool.not = icmp eq i64 %2, 0
  %spec.select = select i1 %tobool.not, i64 %1, i64 %2
  %dl_period = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 3
  store i64 %spec.select, i64* %dl_period, align 8
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  %3 = load i64, i64* %sched_flags, align 8
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 268435462
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 8
  store i32 %conv, i32* %flags, align 8
  %call = call i64 @to_ratio(i64 noundef %spec.select, i64 noundef %0) #17
  %dl_bw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  store i64 %call, i64* %dl_bw, align 8
  %5 = load i64, i64* %dl_deadline, align 8
  %6 = load i64, i64* %dl_runtime, align 8
  %call6 = call i64 @to_ratio(i64 noundef %5, i64 noundef %6) #17
  %dl_density = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 5
  store i64 %call6, i64* %dl_density, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__getparam_dl(%struct.task_struct* nocapture noundef readonly %p, %struct.sched_attr* nocapture noundef %attr) local_unnamed_addr #9 {
entry:
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 18
  %0 = load i32, i32* %rt_priority, align 16
  %sched_priority = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 4
  store i32 %0, i32* %sched_priority, align 4
  %dl_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 1
  %1 = load i64, i64* %dl_runtime, align 8
  %sched_runtime = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 5
  store i64 %1, i64* %sched_runtime, align 8
  %dl_deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 2
  %2 = load i64, i64* %dl_deadline, align 8
  %sched_deadline = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 6
  store i64 %2, i64* %sched_deadline, align 8
  %dl_period = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 3
  %3 = load i64, i64* %dl_period, align 8
  %sched_period = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 7
  store i64 %3, i64* %sched_period, align 8
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  %4 = load i64, i64* %sched_flags, align 8
  %and = and i64 %4, -268435463
  store i64 %and, i64* %sched_flags, align 8
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 8
  %5 = load i32, i32* %flags, align 8
  %conv = zext i32 %5 to i64
  %or = or i64 %and, %conv
  store i64 %or, i64* %sched_flags, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @__checkparam_dl(%struct.sched_attr* nocapture noundef readonly %attr) local_unnamed_addr #10 {
entry:
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  %0 = load i64, i64* %sched_flags, align 8
  %and = and i64 %0, 268435456
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sched_deadline = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 6
  %1 = load i64, i64* %sched_deadline, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %sched_runtime = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 5
  %2 = load i64, i64* %sched_runtime, align 8
  %cmp3 = icmp ugt i64 %2, 1023
  %tobool8.not = icmp sgt i64 %1, -1
  %or.cond58 = select i1 %cmp3, i1 %tobool8.not, i1 false
  br i1 %or.cond58, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %sched_period = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 7
  %3 = load i64, i64* %sched_period, align 8
  %tobool10.not = icmp sgt i64 %3, -1
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %tobool14.not = icmp eq i64 %3, 0
  %spec.select = select i1 %tobool14.not, i64 %1, i64 %3
  %cmp19 = icmp ult i64 %spec.select, %1
  %cmp23 = icmp ult i64 %1, %2
  %or.cond60 = select i1 %cmp19, i1 true, i1 %cmp23
  br i1 %or.cond60, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end12
  %4 = load volatile i32, i32* @sysctl_sched_dl_period_max, align 4
  %5 = load volatile i32, i32* @sysctl_sched_dl_period_min, align 4
  %conv30 = zext i32 %5 to i64
  %mul31 = mul nuw nsw i64 %conv30, 1000
  %cmp32 = icmp uge i64 %spec.select, %mul31
  %conv = zext i32 %4 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %cmp35 = icmp ule i64 %spec.select, %mul
  %or.cond = select i1 %cmp32, i1 %cmp35, i1 false
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end12, %lor.lhs.false, %if.end2, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ false, %if.end ], [ false, %if.end2 ], [ false, %lor.lhs.false ], [ false, %if.end12 ], [ %or.cond, %do.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @__dl_clear_params(%struct.task_struct* noundef %p) local_unnamed_addr #9 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %dl_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 1
  store i64 0, i64* %dl_runtime, align 8
  %dl_deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 2
  store i64 0, i64* %dl_deadline, align 8
  %dl_period = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 3
  store i64 0, i64* %dl_period, align 8
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 8
  store i32 0, i32* %flags, align 8
  %dl_bw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  store i64 0, i64* %dl_bw, align 8
  %dl_density = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 5
  store i64 0, i64* %dl_density, align 8
  %dl_throttled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_throttled, align 4
  %bf.clear8 = and i8 %bf.load, -16
  store i8 %bf.clear8, i8* %dl_throttled, align 4
  %pi_se = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 12
  store %struct.sched_dl_entity* %dl, %struct.sched_dl_entity** %pi_se, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @dl_param_changed(%struct.task_struct* nocapture noundef readonly %p, %struct.sched_attr* nocapture noundef readonly %attr) local_unnamed_addr #2 {
entry:
  %dl_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 1
  %0 = load i64, i64* %dl_runtime, align 8
  %sched_runtime = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 5
  %1 = load i64, i64* %sched_runtime, align 8
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dl_deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 2
  %2 = load i64, i64* %dl_deadline, align 8
  %sched_deadline = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 6
  %3 = load i64, i64* %sched_deadline, align 8
  %cmp1.not = icmp eq i64 %2, %3
  br i1 %cmp1.not, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dl_period = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 3
  %4 = load i64, i64* %dl_period, align 8
  %sched_period = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 7
  %5 = load i64, i64* %sched_period, align 8
  %cmp3.not = icmp eq i64 %4, %5
  br i1 %cmp3.not, label %lor.lhs.false4, label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 8
  %6 = load i32, i32* %flags, align 8
  %conv = zext i32 %6 to i64
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  %7 = load i64, i64* %sched_flags, align 8
  %and = and i64 %7, 268435462
  %cmp5.not = icmp ne i64 %and, %conv
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false4, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp5.not, %lor.lhs.false4 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dl_task_can_attach(%struct.task_struct* nocapture noundef readonly %p, %struct.cpumask* noundef %cs_cpus_allowed) local_unnamed_addr #1 {
entry:
  %call = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_active_mask, %struct.cpumask* noundef %cs_cpus_allowed) #19
  call fastcc void @rcu_read_lock_sched() #16
  %call1 = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %call) #16
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call1, i64 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  %call3 = call fastcc i64 @dl_bw_capacity(i32 noundef %call) #16
  %dl_bw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  %0 = load i64, i64* %dl_bw, align 16
  %call4 = call fastcc i1 @__dl_overflow(%struct.dl_bw* noundef %call1, i64 noundef %call3, i64 noundef 0, i64 noundef %0) #16
  br i1 %call4, label %do.body8, label %if.else

if.else:                                          ; preds = %entry
  %call5 = call fastcc i32 @dl_bw_cpus(i32 noundef %call) #16
  %1 = load i64, i64* %dl_bw, align 16
  call fastcc void @__dl_add(%struct.dl_bw* noundef %call1, i64 noundef %1, i32 noundef %call5) #16
  br label %do.body8

do.body8:                                         ; preds = %entry, %if.else
  %ret.0 = phi i32 [ 0, %if.else ], [ -16, %entry ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call2) #16
  call fastcc void @rcu_read_unlock_sched() #16
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dl_cpuset_cpumask_can_shrink(%struct.cpumask* noundef %cur, %struct.cpumask* noundef %trial) local_unnamed_addr #1 {
entry:
  call fastcc void @rcu_read_lock_sched() #16
  %call = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %cur) #16
  %call1 = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %call) #16
  %call2 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %trial) #16
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call1, i64 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  %bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call1, i64 0, i32 1
  %0 = load i64, i64* %bw, align 8
  %cmp4.not = icmp eq i64 %0, -1
  br i1 %cmp4.not, label %do.body10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %conv7 = sext i32 %call2 to i64
  %mul = mul i64 %0, %conv7
  %total_bw = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call1, i64 0, i32 2
  %1 = load i64, i64* %total_bw, align 8
  %cmp8 = icmp uge i64 %mul, %1
  %spec.select = zext i1 %cmp8 to i32
  br label %do.body10

do.body10:                                        ; preds = %land.lhs.true, %entry
  %ret.0 = phi i32 [ 1, %entry ], [ %spec.select, %land.lhs.true ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call3) #16
  call fastcc void @rcu_read_unlock_sched() #16
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #16
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @dl_cpu_busy(i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  call fastcc void @rcu_read_lock_sched() #16
  %call = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %cpu) #16
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call, i64 0, i32 0
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  %call2 = call fastcc i64 @dl_bw_capacity(i32 noundef %cpu) #16
  %call3 = call fastcc i1 @__dl_overflow(%struct.dl_bw* noundef %call, i64 noundef %call2, i64 noundef 0, i64 noundef 0) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call1) #16
  call fastcc void @rcu_read_unlock_sched() #16
  ret i1 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !16

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #18, !srcloc !23
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef readnone %dl_se) unnamed_addr #8 {
entry:
  %add.ptr = getelementptr %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 -2, i32 8
  %0 = bitcast i32* %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rq* @task_rq_lock(%struct.task_struct* noundef, %struct.rq_flags* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_dl_boosted(%struct.sched_dl_entity* noundef readonly %dl_se) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %cmp = icmp ne %struct.sched_dl_entity* %call, %dl_se
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(%struct.rq* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_on_rq_queued(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %0 = load i32, i32* %on_rq, align 32
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @replenish_dl_entity(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) #16
  %call1 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %call) #16
  %call2 = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call2, i64 0, i32 1
  %0 = load i64, i64* %dl_runtime, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %do.body4, label %do.end9, !prof !13

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 768; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !25
  unreachable

do.end9:                                          ; preds = %entry
  %dl_deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 2
  %1 = load i64, i64* %dl_deadline, align 8
  %cmp10 = icmp eq i64 %1, 0
  br i1 %cmp10, label %if.then12, label %if.end18

if.then12:                                        ; preds = %do.end9
  %call13 = call fastcc i64 @rq_clock(%struct.rq* noundef %call1) #16
  %dl_deadline15 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call2, i64 0, i32 2
  %2 = load i64, i64* %dl_deadline15, align 8
  %add = add i64 %2, %call13
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  store i64 %add, i64* %deadline, align 8
  %call16 = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_runtime17 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call16, i64 0, i32 1
  %3 = load i64, i64* %dl_runtime17, align 8
  %runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  store i64 %3, i64* %runtime, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %do.end9
  %dl_yielded = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 9
  %bf.load = load i8, i8* %dl_yielded, align 4
  %4 = and i8 %bf.load, 2
  %tobool19.not = icmp eq i8 %4, 0
  %runtime26.phi.trans.insert = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  %.pre = load i64, i64* %runtime26.phi.trans.insert, align 8
  br i1 %tobool19.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %cmp21 = icmp sgt i64 %.pre, 0
  br i1 %cmp21, label %if.then23, label %if.end25.thread

if.then23:                                        ; preds = %land.lhs.true
  store i64 0, i64* %runtime26.phi.trans.insert, align 8
  br label %if.end25.thread

if.end25.thread:                                  ; preds = %if.then23, %land.lhs.true
  %.ph = phi i64 [ %.pre, %land.lhs.true ], [ 0, %if.then23 ]
  %runtime26133 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  br label %while.body.lr.ph

if.end25:                                         ; preds = %if.end18
  %runtime26 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  %cmp27125 = icmp slt i64 %.pre, 1
  br i1 %cmp27125, label %while.body.lr.ph, label %if.end25.while.end_crit_edge

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  %deadline36.phi.trans.insert = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %.pre127 = load i64, i64* %deadline36.phi.trans.insert, align 8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end25.thread, %if.end25
  %runtime26135 = phi i64* [ %runtime26133, %if.end25.thread ], [ %runtime26, %if.end25 ]
  %5 = phi i64 [ %.ph, %if.end25.thread ], [ %.pre, %if.end25 ]
  %deadline30 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %.pre126 = load i64, i64* %deadline30, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %6 = phi i64 [ %.pre126, %while.body.lr.ph ], [ %add31, %while.body ]
  %7 = phi i64 [ %5, %while.body.lr.ph ], [ %add35, %while.body ]
  %call29 = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_period = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call29, i64 0, i32 3
  %8 = load i64, i64* %dl_period, align 8
  %add31 = add i64 %6, %8
  store i64 %add31, i64* %deadline30, align 8
  %call32 = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_runtime33 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call32, i64 0, i32 1
  %9 = load i64, i64* %dl_runtime33, align 8
  %add35 = add i64 %9, %7
  store i64 %add35, i64* %runtime26135, align 8
  %cmp27 = icmp slt i64 %add35, 1
  br i1 %cmp27, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end25.while.end_crit_edge
  %runtime26136 = phi i64* [ %runtime26, %if.end25.while.end_crit_edge ], [ %runtime26135, %while.body ]
  %10 = phi i64 [ %.pre127, %if.end25.while.end_crit_edge ], [ %add31, %while.body ]
  %deadline36 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %call37 = call fastcc i64 @rq_clock(%struct.rq* noundef %call1) #16
  %call38 = call fastcc i1 @dl_time_before(i64 noundef %10, i64 noundef %call37) #16
  br i1 %call38, label %if.then39, label %if.end74

if.then39:                                        ; preds = %while.end
  %.b124 = load i1, i1* @replenish_dl_entity.__already_done, align 1
  br i1 %.b124, label %if.end57, label %if.then52, !prof !16

if.then52:                                        ; preds = %if.then39
  store i1 true, i1* @replenish_dl_entity.__already_done, align 1
  %call56 = call i32 (i8*, ...) @_printk_deferred(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0)) #20
  %bf.load76.pre.pre = load i8, i8* %dl_yielded, align 4
  %.pre132 = and i8 %bf.load76.pre.pre, 2
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.then39
  %.pre131.pre-phi = phi i8 [ %.pre132, %if.then52 ], [ %4, %if.then39 ]
  %bf.load76.pre = phi i8 [ %bf.load76.pre.pre, %if.then52 ], [ %bf.load, %if.then39 ]
  %call66 = call fastcc i64 @rq_clock(%struct.rq* noundef %call1) #16
  %call67 = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_deadline68 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call67, i64 0, i32 2
  %11 = load i64, i64* %dl_deadline68, align 8
  %add69 = add i64 %11, %call66
  store i64 %add69, i64* %deadline36, align 8
  %call71 = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_runtime72 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call71, i64 0, i32 1
  %12 = load i64, i64* %dl_runtime72, align 8
  store i64 %12, i64* %runtime26136, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end57, %while.end
  %.pre-phi = phi i8 [ %.pre131.pre-phi, %if.end57 ], [ %4, %while.end ]
  %bf.load76 = phi i8 [ %bf.load76.pre, %if.end57 ], [ %bf.load, %while.end ]
  %tobool80.not = icmp eq i8 %.pre-phi, 0
  %bf.clear84 = and i8 %bf.load76, -3
  %bf.load86 = select i1 %tobool80.not, i8 %bf.load76, i8 %bf.clear84
  %bf.clear87 = and i8 %bf.load86, 1
  %13 = or i8 %.pre-phi, %bf.clear87
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %if.end74
  %bf.clear93 = and i8 %bf.load86, -2
  store i8 %bf.clear93, i8* %dl_yielded, align 4
  br label %16

16:                                               ; preds = %if.end74, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef readnone %rq) unnamed_addr #8 {
entry:
  %__lock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 0
  ret %struct.raw_spinlock* %__lock
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rq* @dl_task_offline_migration(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %call = call %struct.rq* @find_lock_later_rq(%struct.task_struct* noundef %p, %struct.rq* noundef %rq) #16
  %tobool.not = icmp eq %struct.rq* %call, null
  br i1 %tobool.not, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %0 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call1 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_active_mask, %struct.cpumask* noundef %0) #19
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %call1, %1
  br i1 %cmp.not, label %do.body16, label %do.body

do.body:                                          ; preds = %if.then
  %call3 = call fastcc i32 @dl_bandwidth_enabled() #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end13, label %do.body8, !prof !16

do.body8:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 613; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !26
  unreachable

do.end13:                                         ; preds = %do.body
  %call14 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef nonnull @__cpu_active_mask) #16
  br label %do.body16

do.body16:                                        ; preds = %if.then, %do.end13
  %cpu.0 = phi i32 [ %call14, %do.end13 ], [ %call1, %if.then ]
  %idxprom = sext i32 %cpu.0 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add to %struct.rq*
  %call20 = call fastcc i32 @double_lock_balance(%struct.rq* noundef %rq, %struct.rq* noundef %3) #16
  br label %if.end21

if.end21:                                         ; preds = %do.body16, %entry
  %later_rq.0 = phi %struct.rq* [ %call, %entry ], [ %3, %do.body16 ]
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %dl_non_contending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_non_contending, align 4
  %4 = and i8 %bf.load, 5
  %5 = icmp eq i8 %4, 0
  %dl38 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7
  br i1 %5, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end21
  call fastcc void @sub_running_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl38) #16
  call fastcc void @sub_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl38) #16
  %dl34 = getelementptr inbounds %struct.rq, %struct.rq* %later_rq.0, i64 0, i32 7
  call fastcc void @add_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl34) #16
  call fastcc void @add_running_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl34) #16
  br label %if.end41

if.else:                                          ; preds = %if.end21
  call fastcc void @sub_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl38) #16
  %dl40 = getelementptr inbounds %struct.rq, %struct.rq* %later_rq.0, i64 0, i32 7
  call fastcc void @add_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl40) #16
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then28
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %6 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %dl_bw = getelementptr inbounds %struct.root_domain, %struct.root_domain* %6, i64 0, i32 9
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_bw, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  %dl_bw43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  %7 = load i64, i64* %dl_bw43, align 16
  %8 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %8, i64 0, i32 3, i64 0
  %call45 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %arraydecay) #16
  call fastcc void @__dl_sub(%struct.dl_bw* noundef %dl_bw, i64 noundef %7, i32 noundef %call45) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  %rd47 = getelementptr inbounds %struct.rq, %struct.rq* %later_rq.0, i64 0, i32 21
  %9 = load %struct.root_domain*, %struct.root_domain** %rd47, align 32
  %dl_bw48 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %9, i64 0, i32 9
  %lock49 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %dl_bw48, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock49) #16
  %10 = load i64, i64* %dl_bw43, align 16
  %11 = load %struct.root_domain*, %struct.root_domain** %rd47, align 32
  %arraydecay54 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %11, i64 0, i32 3, i64 0
  %call55 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %arraydecay54) #16
  call fastcc void @__dl_add(%struct.dl_bw* noundef %dl_bw48, i64 noundef %10, i32 noundef %call55) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock49) #16
  %cpu57 = getelementptr inbounds %struct.rq, %struct.rq* %later_rq.0, i64 0, i32 32
  %12 = load i32, i32* %cpu57, align 16
  call void @set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %12) #17
  call fastcc void @double_unlock_balance(%struct.rq* noundef %later_rq.0, %struct.rq* noundef %rq) #16
  ret %struct.rq* %later_rq.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(%struct.rq* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @has_pushable_dl_tasks(%struct.rq* noundef %rq) unnamed_addr #10 {
entry:
  %rb_node = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 5, i32 0, i32 0
  %0 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 16
  %cmp = icmp ne %struct.rb_node* %0, null
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @push_dl_task(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 4
  %0 = load i32, i32* %overloaded, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup54, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.task_struct* @pick_next_pushable_dl_task(%struct.rq* noundef %rq) #16
  %tobool1.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool1.not, label %cleanup54, label %retry.preheader

retry.preheader:                                  ; preds = %if.end
  %call4102 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef nonnull %call) #16
  br i1 %call4102, label %cleanup54, label %if.end6.lr.ph

if.end6.lr.ph:                                    ; preds = %retry.preheader
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.lr.ph, %cleanup
  %next_task.0103 = phi %struct.task_struct* [ %call, %if.end6.lr.ph ], [ %call45, %cleanup ]
  %1 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp = icmp eq %struct.task_struct* %next_task.0103, %1
  br i1 %cmp, label %if.then14, label %if.end25, !prof !13

if.then14:                                        ; preds = %if.end6
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2151; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !27
  br label %cleanup54

if.end25:                                         ; preds = %if.end6
  %call27 = call fastcc i32 @dl_task(%struct.task_struct* noundef %1) #16
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end25
  %deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next_task.0103, i64 0, i32 22, i32 7
  %2 = load i64, i64* %deadline, align 8
  %deadline32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 22, i32 7
  %3 = load i64, i64* %deadline32, align 8
  %call33 = call fastcc i1 @dl_time_before(i64 noundef %2, i64 noundef %3) #16
  br i1 %call33, label %land.lhs.true35, label %if.end40

land.lhs.true35:                                  ; preds = %land.lhs.true
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 24
  %4 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp37 = icmp sgt i32 %4, 1
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true35
  call void @resched_curr(%struct.rq* noundef %rq) #17
  br label %cleanup54

if.end40:                                         ; preds = %land.lhs.true35, %land.lhs.true, %if.end25
  %call41 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef nonnull %next_task.0103) #16
  %call42 = call %struct.rq* @find_lock_later_rq(%struct.task_struct* noundef nonnull %next_task.0103, %struct.rq* noundef %rq) #16
  %tobool43.not = icmp eq %struct.rq* %call42, null
  br i1 %tobool43.not, label %if.then44, label %if.end53

if.then44:                                        ; preds = %if.end40
  %call45 = call fastcc %struct.task_struct* @pick_next_pushable_dl_task(%struct.rq* noundef %rq) #16
  %cmp46 = icmp eq %struct.task_struct* %call45, %next_task.0103
  %tobool50.not = icmp eq %struct.task_struct* %call45, null
  %or.cond = or i1 %cmp46, %tobool50.not
  br i1 %or.cond, label %out, label %cleanup

cleanup:                                          ; preds = %if.then44
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %next_task.0103) #16
  %call4 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef nonnull %call45) #16
  br i1 %call4, label %cleanup54, label %if.end6

if.end53:                                         ; preds = %if.end40
  call void @deactivate_task(%struct.rq* noundef %rq, %struct.task_struct* noundef nonnull %next_task.0103, i32 noundef 0) #17
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %call42, i64 0, i32 32
  %5 = load i32, i32* %cpu, align 16
  call void @set_task_cpu(%struct.task_struct* noundef nonnull %next_task.0103, i32 noundef %5) #17
  call void @update_rq_clock(%struct.rq* noundef nonnull %call42) #17
  call void @activate_task(%struct.rq* noundef nonnull %call42, %struct.task_struct* noundef nonnull %next_task.0103, i32 noundef 8) #17
  call void @resched_curr(%struct.rq* noundef nonnull %call42) #17
  call fastcc void @double_unlock_balance(%struct.rq* noundef %rq, %struct.rq* noundef nonnull %call42) #16
  br label %out

out:                                              ; preds = %if.then44, %if.end53
  %ret.0 = phi i32 [ 1, %if.end53 ], [ 0, %if.then44 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %next_task.0103) #16
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup, %retry.preheader, %if.then14, %if.end, %entry, %out, %if.then39
  %retval.0 = phi i32 [ 0, %if.then39 ], [ %ret.0, %out ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then14 ], [ 0, %retry.preheader ], [ 0, %cleanup ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* nocapture noundef readonly %dl_se) unnamed_addr #2 {
entry:
  %pi_se = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 12
  %0 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %pi_se, align 8
  ret %struct.sched_dl_entity* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %call2 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %call) #16
  %idxprom = zext i32 %call2 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %dl = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 7
  ret %struct.dl_rq* %dl
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef readnone %dl_rq) unnamed_addr #8 {
entry:
  %add.ptr2 = getelementptr %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 -21
  %0 = bitcast %struct.dl_rq* %add.ptr2 to %struct.rq*
  ret %struct.rq* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #2 {
entry:
  %clock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 15
  %0 = load i64, i64* %clock, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @dl_time_before(i64 noundef %a, i64 noundef %b) unnamed_addr #8 {
entry:
  %sub = sub i64 %a, %b
  %cmp = icmp slt i64 %sub, 0
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dl_bandwidth_enabled() unnamed_addr #2 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %1 = xor i32 %0, -1
  %.lobit.not = lshr i32 %1, 31
  ret i32 %.lobit.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @double_lock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @_double_lock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sub_running_bw(%struct.sched_dl_entity* nocapture noundef readonly %dl_se, %struct.dl_rq* noundef %dl_rq) unnamed_addr #9 {
entry:
  %dl_bw = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 4
  %0 = load i64, i64* %dl_bw, align 8
  call fastcc void @__sub_running_bw(i64 noundef %0, %struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sub_rq_bw(%struct.sched_dl_entity* nocapture noundef readonly %dl_se, %struct.dl_rq* noundef %dl_rq) unnamed_addr #9 {
entry:
  %dl_bw = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 4
  %0 = load i64, i64* %dl_bw, align 8
  call fastcc void @__sub_rq_bw(i64 noundef %0, %struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @add_rq_bw(%struct.sched_dl_entity* nocapture noundef readonly %dl_se, %struct.dl_rq* noundef %dl_rq) unnamed_addr #9 {
entry:
  %dl_bw = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 4
  %0 = load i64, i64* %dl_bw, align 8
  call fastcc void @__add_rq_bw(i64 noundef %0, %struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @add_running_bw(%struct.sched_dl_entity* nocapture noundef readonly %dl_se, %struct.dl_rq* noundef %dl_rq) unnamed_addr #9 {
entry:
  %dl_bw = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 4
  %0 = load i64, i64* %dl_bw, align 8
  call fastcc void @__add_running_bw(i64 noundef %0, %struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_cpu(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @double_unlock_balance(%struct.rq* noundef readnone %this_rq, %struct.rq* noundef %busiest) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %this_rq) #16
  %call1 = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %busiest) #16
  %cmp.not = icmp eq %struct.raw_spinlock* %call, %call1
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @raw_spin_rq_unlock(%struct.rq* noundef %busiest) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @_double_lock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %this_rq) #16
  %call1 = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %busiest) #16
  %cmp = icmp eq %struct.raw_spinlock* %call, %call1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i1 @raw_spin_rq_trylock(%struct.rq* noundef %busiest) #17
  br i1 %call2, label %return, label %if.end5, !prof !16

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i1 @rq_order_less(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) #16
  br i1 %call6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @raw_spin_rq_lock_nested(%struct.rq* noundef %busiest, i32 noundef 1) #17
  br label %return

if.end8:                                          ; preds = %if.end5
  call void @raw_spin_rq_unlock(%struct.rq* noundef %this_rq) #17
  call void @double_rq_lock(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) #17
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end8, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end8 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @raw_spin_rq_trylock(%struct.rq* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rq_order_less(%struct.rq* nocapture noundef readonly %rq1, %struct.rq* nocapture noundef readonly %rq2) unnamed_addr #2 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq1, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  %cpu1 = getelementptr inbounds %struct.rq, %struct.rq* %rq2, i64 0, i32 32
  %1 = load i32, i32* %cpu1, align 16
  %cmp = icmp slt i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(%struct.rq* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(%struct.rq* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @double_rq_lock(%struct.rq* noundef, %struct.rq* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__sub_running_bw(i64 noundef %dl_bw, %struct.dl_rq* noundef %dl_rq) unnamed_addr #9 {
entry:
  %running_bw = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 6
  %0 = load i64, i64* %running_bw, align 8
  %1 = call i64 @llvm.usub.sat.i64(i64 %0, i64 %dl_bw)
  store i64 %1, i64* %running_bw, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__sub_rq_bw(i64 noundef %dl_bw, %struct.dl_rq* noundef %dl_rq) unnamed_addr #9 {
entry:
  %this_bw = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 7
  %0 = load i64, i64* %this_bw, align 8
  %1 = call i64 @llvm.usub.sat.i64(i64 %0, i64 %dl_bw)
  store i64 %1, i64* %this_bw, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__add_rq_bw(i64 noundef %dl_bw, %struct.dl_rq* noundef %dl_rq) unnamed_addr #9 {
entry:
  %this_bw = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 7
  %0 = load i64, i64* %this_bw, align 8
  %add = add i64 %0, %dl_bw
  store i64 %add, i64* %this_bw, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__add_running_bw(i64 noundef %dl_bw, %struct.dl_rq* noundef %dl_rq) unnamed_addr #9 {
entry:
  %running_bw = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 6
  %0 = load i64, i64* %running_bw, align 8
  %add = add i64 %0, %dl_bw
  store i64 %add, i64* %running_bw, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @pick_next_pushable_dl_task(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @has_pushable_dl_tasks(%struct.rq* noundef %rq) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 5, i32 1
  %0 = bitcast %struct.rb_node** %rb_leftmost to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -720
  %2 = bitcast i8* %add.ptr to %struct.task_struct*
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %3 = load i32, i32* %cpu, align 16
  %call2 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %2) #16
  %cmp.not = icmp eq i32 %3, %call2
  br i1 %cmp.not, label %do.body15, label %do.body6, !prof !16

do.body6:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2119; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !28
  unreachable

do.body15:                                        ; preds = %if.end
  %call16 = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %2) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body35, label %do.body26, !prof !16

do.body26:                                        ; preds = %do.body15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2120; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !29
  unreachable

do.body35:                                        ; preds = %do.body15
  %nr_cpus_allowed = getelementptr i8, i8* %1, i64 -124
  %4 = bitcast i8* %nr_cpus_allowed to i32*
  %5 = load i32, i32* %4, align 4
  %cmp36 = icmp slt i32 %5, 2
  br i1 %cmp36, label %do.body46, label %do.body55, !prof !13

do.body46:                                        ; preds = %do.body35
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2121; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !30
  unreachable

do.body55:                                        ; preds = %do.body35
  %call56 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %2) #16
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body68, label %do.body77, !prof !13

do.body68:                                        ; preds = %do.body55
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2123; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !31
  unreachable

do.body77:                                        ; preds = %do.body55
  %call78 = call fastcc i32 @dl_task(%struct.task_struct* noundef %2) #16
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %do.body90, label %cleanup, !prof !13

do.body90:                                        ; preds = %do.body77
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2124; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !32
  unreachable

cleanup:                                          ; preds = %do.body77, %entry
  %retval.0 = phi %struct.task_struct* [ null, %entry ], [ %2, %do.body77 ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_migration_disabled(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %migration_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 29
  %0 = load i16, i16* %migration_disabled, align 16
  %tobool = icmp ne i16 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef returned %t) unnamed_addr #1 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #16
  ret %struct.task_struct* %t
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_task(%struct.rq* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @activate_task(%struct.rq* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_current(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* noundef readnone %p) unnamed_addr #2 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp = icmp eq %struct.task_struct* %0, %p
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #17
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !13

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !16

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #17
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !33
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #17
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !34
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !16

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !35
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #16
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !16

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #18, !srcloc !36
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #18, !srcloc !37
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #16
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #18, !srcloc !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #10 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @dl_prio(i32 noundef %prio) unnamed_addr #8 {
entry:
  %prio.lobit = lshr i32 %prio, 31
  ret i32 %prio.lobit
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #18, !srcloc !39
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__dl_update(%struct.dl_bw* noundef %dl_b, i64 noundef %bw) unnamed_addr #7 {
entry:
  %add.ptr = getelementptr %struct.dl_bw, %struct.dl_bw* %dl_b, i64 -6, i32 1
  %span = getelementptr inbounds i64, i64* %add.ptr, i64 3
  %arraydecay = bitcast i64* %span to %struct.cpumask*
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call18 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_active_mask) #19
  %cmp19 = icmp ult i32 %call18, %0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call20 = phi i32 [ %call, %for.body ], [ %call18, %entry ]
  %idxprom = sext i32 %call20 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %extra_bw = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 7, i32 8
  %3 = load i64, i64* %extra_bw, align 16
  %add9 = add i64 %3, %bw
  store i64 %add9, i64* %extra_bw, align 16
  %call = call i32 @cpumask_next_and(i32 noundef %call20, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_active_mask) #19
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dl_is_implicit(%struct.sched_dl_entity* nocapture noundef readonly %dl_se) unnamed_addr #2 {
entry:
  %dl_deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 2
  %0 = load i64, i64* %dl_deadline, align 8
  %dl_period = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 3
  %1 = load i64, i64* %dl_period, align 8
  %cmp = icmp eq i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dl_check_constrained_dl(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %call1 = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) #16
  %call2 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %call1) #16
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %0 = load i64, i64* %deadline, align 8
  %call3 = call fastcc i64 @rq_clock(%struct.rq* noundef %call2) #16
  %call4 = call fastcc i1 @dl_time_before(i64 noundef %0, i64 noundef %call3) #16
  br i1 %call4, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call6 = call fastcc i64 @dl_next_period(%struct.sched_dl_entity* noundef %dl_se) #16
  %call7 = call fastcc i1 @dl_time_before(i64 noundef %call3, i64 noundef %call6) #16
  br i1 %call7, label %if.then, label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call8 = call fastcc i1 @is_dl_boosted(%struct.sched_dl_entity* noundef %dl_se) #16
  br i1 %call8, label %cleanup, label %lor.rhs, !prof !13

lor.rhs:                                          ; preds = %if.then
  %call9 = call fastcc i32 @start_dl_timer(%struct.task_struct* noundef %call) #16
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !13

if.end:                                           ; preds = %lor.rhs
  %dl_throttled = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 9
  %bf.load = load i8, i8* %dl_throttled, align 4
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %dl_throttled, align 4
  %runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  %1 = load i64, i64* %runtime, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end
  store i64 0, i64* %runtime, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry, %land.lhs.true, %if.then15, %if.end, %lor.rhs
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_contending(%struct.sched_dl_entity* noundef %dl_se, i32 noundef %flags) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 1
  %0 = load i64, i64* %dl_runtime, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call fastcc void @add_rq_bw(%struct.sched_dl_entity* noundef %dl_se, %struct.dl_rq* noundef %call) #16
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %dl_non_contending = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 9
  %bf.load = load i8, i8* %dl_non_contending, align 4
  %1 = and i8 %bf.load, 4
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  %bf.clear7 = and i8 %bf.load, -5
  store i8 %bf.clear7, i8* %dl_non_contending, align 4
  %inactive_timer = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 11
  %call8 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %inactive_timer) #17
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.then4
  %call11 = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %dl_se) #16
  call fastcc void @put_task_struct(%struct.task_struct* noundef %call11) #16
  br label %cleanup

if.else:                                          ; preds = %if.end2
  call fastcc void @add_running_bw(%struct.sched_dl_entity* noundef %dl_se, %struct.dl_rq* noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %if.then4, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @enqueue_dl_entity(%struct.sched_dl_entity* noundef %dl_se, i32 noundef %flags) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @on_dl_rq(%struct.sched_dl_entity* noundef %dl_se) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !16

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 1503; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !40
  unreachable

do.end6:                                          ; preds = %entry
  %and = and i32 %flags, 1
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end6
  call fastcc void @task_contending(%struct.sched_dl_entity* noundef %dl_se, i32 noundef %flags) #16
  call fastcc void @update_dl_entity(%struct.sched_dl_entity* noundef %dl_se) #16
  br label %if.end23

if.else:                                          ; preds = %do.end6
  %and9 = and i32 %flags, 32
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else
  call fastcc void @replenish_dl_entity(%struct.sched_dl_entity* noundef %dl_se) #16
  br label %if.end23

if.else12:                                        ; preds = %if.else
  %and13 = and i32 %flags, 2
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else12
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %0 = load i64, i64* %deadline, align 8
  %call15 = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) #16
  %call16 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %call15) #16
  %call17 = call fastcc i64 @rq_clock(%struct.rq* noundef %call16) #16
  %call18 = call fastcc i1 @dl_time_before(i64 noundef %0, i64 noundef %call17) #16
  br i1 %call18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  call fastcc void @setup_new_dl_entity(%struct.sched_dl_entity* noundef %dl_se) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.then20, %land.lhs.true, %if.else12, %if.then8
  call fastcc void @__enqueue_dl_entity(%struct.sched_dl_entity* noundef %dl_se) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @enqueue_pushable_dl_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %pushable_dl_tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 34
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pushable_dl_tasks, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 16
  %1 = ptrtoint %struct.rb_node* %pushable_dl_tasks to i64
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !16

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 536; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !41
  unreachable

do.end9:                                          ; preds = %entry
  %pushable_dl_tasks_root = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 5
  %rb_node.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %pushable_dl_tasks_root, i64 0, i32 0, i32 0
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_node.i, align 8
  %tobool.not16.i = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not16.i, label %rb_add_cached.exit, label %while.body.i

while.body.i:                                     ; preds = %do.end9, %while.body.i
  %3 = phi %struct.rb_node* [ %4, %while.body.i ], [ %2, %do.end9 ]
  %leftmost.0.off017.i = phi i1 [ %leftmost.1.off0.i, %while.body.i ], [ true, %do.end9 ]
  %call.i = call fastcc i1 @__pushable_less(%struct.rb_node* noundef %pushable_dl_tasks, %struct.rb_node* noundef nonnull %3) #17, !callees !42
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 1
  %link.1.i = select i1 %call.i, %struct.rb_node** %rb_left.i, %struct.rb_node** %rb_right.i
  %leftmost.1.off0.i = select i1 %call.i, i1 %leftmost.0.off017.i, i1 false
  %4 = load %struct.rb_node*, %struct.rb_node** %link.1.i, align 8
  %tobool.not.i = icmp eq %struct.rb_node* %4, null
  br i1 %tobool.not.i, label %rb_add_cached.exit, label %while.body.i

rb_add_cached.exit:                               ; preds = %while.body.i, %do.end9
  %link.0.lcssa.i = phi %struct.rb_node** [ %rb_node.i, %do.end9 ], [ %link.1.i, %while.body.i ]
  %parent.0.lcssa.i = phi %struct.rb_node* [ null, %do.end9 ], [ %3, %while.body.i ]
  %leftmost.0.off0.lcssa.i = phi i1 [ true, %do.end9 ], [ %leftmost.1.off0.i, %while.body.i ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %pushable_dl_tasks, %struct.rb_node* noundef %parent.0.lcssa.i, %struct.rb_node** noundef %link.0.lcssa.i) #17
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %pushable_dl_tasks, %struct.rb_root_cached* noundef %pushable_dl_tasks_root, i1 noundef %leftmost.0.off0.lcssa.i) #17
  %leftmost.0.off0.lcssa.i.not = xor i1 %leftmost.0.off0.lcssa.i, true
  %tobool11.not = icmp eq %struct.rb_node* %pushable_dl_tasks, null
  %or.cond = select i1 %leftmost.0.off0.lcssa.i.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end15, label %if.then12

if.then12:                                        ; preds = %rb_add_cached.exit
  %deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 7
  %5 = load i64, i64* %deadline, align 8
  %next = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 2, i32 1
  store i64 %5, i64* %next, align 8
  br label %if.end15

if.end15:                                         ; preds = %rb_add_cached.exit, %if.then12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @dl_next_period(%struct.sched_dl_entity* nocapture noundef readonly %dl_se) unnamed_addr #2 {
entry:
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %0 = load i64, i64* %deadline, align 8
  %dl_deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 2
  %1 = load i64, i64* %dl_deadline, align 8
  %sub = sub i64 %0, %1
  %dl_period = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 3
  %2 = load i64, i64* %dl_period, align 8
  %add = add i64 %sub, %2
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @start_dl_timer(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %dl_timer = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 10
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #16
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %call2 = call fastcc i64 @dl_next_period(%struct.sched_dl_entity* noundef %dl) #16
  %call4 = call fastcc i64 @hrtimer_cb_get_time(%struct.hrtimer* noundef %dl_timer) #16
  %call6 = call fastcc i64 @rq_clock(%struct.rq* noundef %1) #16
  %sub = sub i64 %call4, %call6
  %add7 = add i64 %sub, %call2
  %call8 = call fastcc i64 @ktime_us_delta(i64 noundef %add7, i64 noundef %call4) #16
  %cmp = icmp slt i64 %call8, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call9 = call fastcc i1 @hrtimer_is_queued(%struct.hrtimer* noundef %dl_timer) #16
  br i1 %call9, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %p) #16
  call fastcc void @hrtimer_start(%struct.hrtimer* noundef %dl_timer, i64 noundef %add7, i32 noundef 8) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then10 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hrtimer_cb_get_time(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #1 {
entry:
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %0 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 6
  %1 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %1() #17
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_us_delta(i64 noundef %later, i64 noundef %earlier) unnamed_addr #8 {
entry:
  %sub = sub i64 %later, %earlier
  %call = call fastcc i64 @ktime_to_us(i64 noundef %sub) #16
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hrtimer_is_queued(%struct.hrtimer* noundef %timer) unnamed_addr #10 {
entry:
  %state = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  %0 = load volatile i8, i8* %state, align 8
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start(%struct.hrtimer* noundef %timer, i64 noundef %tim, i32 noundef %mode) unnamed_addr #1 {
entry:
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %tim, i64 noundef 0, i32 noundef %mode) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_to_us(i64 noundef %kt) unnamed_addr #8 {
entry:
  %call = call fastcc i64 @ktime_divns(i64 noundef %kt) #16
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_divns(i64 noundef %kt) unnamed_addr #8 {
entry:
  %div14 = sdiv i64 %kt, 1000
  ret i64 %div14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @on_dl_rq(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #2 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.sched_dl_entity* %dl_se to i64
  %cmp = icmp ne i64 %0, %1
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_dl_entity(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) #16
  %call1 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %call) #16
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %0 = load i64, i64* %deadline, align 8
  %call2 = call fastcc i64 @rq_clock(%struct.rq* noundef %call1) #16
  %call3 = call fastcc i1 @dl_time_before(i64 noundef %0, i64 noundef %call2) #16
  br i1 %call3, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call5 = call fastcc i1 @dl_entity_overflow(%struct.sched_dl_entity* noundef %dl_se, i64 noundef %call2) #16
  br i1 %call5, label %if.then.thread, label %cleanup

if.then.thread:                                   ; preds = %lor.lhs.false
  %call637 = call fastcc i1 @dl_is_implicit(%struct.sched_dl_entity* noundef %dl_se) #16
  br i1 %call637, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %if.then.thread
  %call10 = call fastcc i1 @is_dl_boosted(%struct.sched_dl_entity* noundef %dl_se) #16
  br i1 %call10, label %if.end, label %if.then13, !prof !16

if.then13:                                        ; preds = %land.rhs
  call fastcc void @update_dl_revised_wakeup(%struct.sched_dl_entity* noundef %dl_se, %struct.rq* noundef %call1) #16
  br label %cleanup

if.end:                                           ; preds = %entry, %if.then.thread, %land.rhs
  %call15 = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call15, i64 0, i32 2
  %1 = load i64, i64* %dl_deadline, align 8
  %add = add i64 %1, %call2
  store i64 %add, i64* %deadline, align 8
  %call17 = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call17, i64 0, i32 1
  %2 = load i64, i64* %dl_runtime, align 8
  %runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  store i64 %2, i64* %runtime, align 8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end, %if.then13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setup_new_dl_entity(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) #16
  %call1 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %call) #16
  %call2 = call fastcc i1 @is_dl_boosted(%struct.sched_dl_entity* noundef %dl_se) #16
  br i1 %call2, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 725; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call17 = call fastcc i64 @rq_clock(%struct.rq* noundef %call1) #16
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %0 = load i64, i64* %deadline, align 8
  %call18 = call fastcc i1 @dl_time_before(i64 noundef %call17, i64 noundef %0) #16
  br i1 %call18, label %if.then31, label %if.end32, !prof !13

if.then31:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 726; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !44
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end
  %dl_throttled = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 9
  %bf.load = load i8, i8* %dl_throttled, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool41.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool41.not, label %if.end43, label %cleanup

if.end43:                                         ; preds = %if.end32
  %call44 = call fastcc i64 @rq_clock(%struct.rq* noundef %call1) #16
  %dl_deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 2
  %1 = load i64, i64* %dl_deadline, align 8
  %add = add i64 %1, %call44
  store i64 %add, i64* %deadline, align 8
  %dl_runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 1
  %2 = load i64, i64* %dl_runtime, align 8
  %runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  store i64 %2, i64* %runtime, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__enqueue_dl_entity(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) #16
  %__rb_parent_color = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.sched_dl_entity* %dl_se to i64
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !16

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 1479; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !45
  unreachable

do.end9:                                          ; preds = %entry
  %rb_node = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 0
  %rb_node.i = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %call, i64 0, i32 0, i32 0, i32 0
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_node.i, align 8
  %tobool.not16.i = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not16.i, label %rb_add_cached.exit, label %while.body.i

while.body.i:                                     ; preds = %do.end9, %while.body.i
  %3 = phi %struct.rb_node* [ %4, %while.body.i ], [ %2, %do.end9 ]
  %leftmost.0.off017.i = phi i1 [ %leftmost.1.off0.i, %while.body.i ], [ true, %do.end9 ]
  %call.i = call fastcc i1 @__dl_less(%struct.rb_node* noundef %rb_node, %struct.rb_node* noundef nonnull %3) #17, !callees !42
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 1
  %link.1.i = select i1 %call.i, %struct.rb_node** %rb_left.i, %struct.rb_node** %rb_right.i
  %leftmost.1.off0.i = select i1 %call.i, i1 %leftmost.0.off017.i, i1 false
  %4 = load %struct.rb_node*, %struct.rb_node** %link.1.i, align 8
  %tobool.not.i = icmp eq %struct.rb_node* %4, null
  br i1 %tobool.not.i, label %rb_add_cached.exit, label %while.body.i

rb_add_cached.exit:                               ; preds = %while.body.i, %do.end9
  %link.0.lcssa.i = phi %struct.rb_node** [ %rb_node.i, %do.end9 ], [ %link.1.i, %while.body.i ]
  %parent.0.lcssa.i = phi %struct.rb_node* [ null, %do.end9 ], [ %3, %while.body.i ]
  %leftmost.0.off0.lcssa.i = phi i1 [ true, %do.end9 ], [ %leftmost.1.off0.i, %while.body.i ]
  %root = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %call, i64 0, i32 0
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node, %struct.rb_node* noundef %parent.0.lcssa.i, %struct.rb_node** noundef %link.0.lcssa.i) #17
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %rb_node, %struct.rb_root_cached* noundef %root, i1 noundef %leftmost.0.off0.lcssa.i) #17
  call fastcc void @inc_dl_tasks(%struct.sched_dl_entity* noundef %dl_se, %struct.dl_rq* noundef %call) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dl_entity_overflow(%struct.sched_dl_entity* nocapture noundef readonly %dl_se, i64 noundef %t) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.sched_dl_entity* @pi_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %dl_deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call, i64 0, i32 2
  %0 = load i64, i64* %dl_deadline, align 8
  %shr = lshr i64 %0, 10
  %runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  %1 = load i64, i64* %runtime, align 8
  %shr1 = ashr i64 %1, 10
  %mul = mul i64 %shr1, %shr
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %2 = load i64, i64* %deadline, align 8
  %sub = sub i64 %2, %t
  %shr2 = lshr i64 %sub, 10
  %dl_runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %call, i64 0, i32 1
  %3 = load i64, i64* %dl_runtime, align 8
  %shr4 = lshr i64 %3, 10
  %mul5 = mul i64 %shr2, %shr4
  %call6 = call fastcc i1 @dl_time_before(i64 noundef %mul5, i64 noundef %mul) #16
  ret i1 %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_dl_revised_wakeup(%struct.sched_dl_entity* nocapture noundef %dl_se, %struct.rq* nocapture noundef readonly %rq) unnamed_addr #1 {
entry:
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %0 = load i64, i64* %deadline, align 8
  %call = call fastcc i64 @rq_clock(%struct.rq* noundef %rq) #16
  %call3 = call fastcc i1 @dl_time_before(i64 noundef %0, i64 noundef %call) #16
  br i1 %call3, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 896; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !46
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sub = sub i64 %0, %call
  %dl_density = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 5
  %1 = load i64, i64* %dl_density, align 8
  %mul = mul i64 %1, %sub
  %shr = lshr i64 %mul, 20
  %runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  store i64 %shr, i64* %runtime, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__dl_less(%struct.rb_node* nocapture noundef readonly %a, %struct.rb_node* nocapture noundef readonly %b) unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %a, i64 3, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %b, i64 3, i32 0
  %3 = load i64, i64* %2, align 8
  %call = call fastcc i1 @dl_time_before(i64 noundef %1, i64 noundef %3) #16
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_dl_tasks(%struct.sched_dl_entity* noundef %dl_se, %struct.dl_rq* noundef %dl_rq) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %prio1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 15
  %0 = load i32, i32* %prio1, align 4
  %deadline2 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 7
  %1 = load i64, i64* %deadline2, align 8
  %call3 = call fastcc i32 @dl_prio(i32 noundef %0) #16
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 1445; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !47
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dl_nr_running = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 1
  %2 = load i32, i32* %dl_nr_running, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %dl_nr_running, align 8
  %call19 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %dl_rq) #16
  call fastcc void @add_nr_running(%struct.rq* noundef %call19) #16
  call fastcc void @inc_dl_deadline(%struct.dl_rq* noundef %dl_rq, i64 noundef %1) #16
  call fastcc void @inc_dl_migration(%struct.sched_dl_entity* noundef %dl_se, %struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root, i1 noundef %leftmost) unnamed_addr #1 {
entry:
  br i1 %leftmost, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  store %struct.rb_node* %node, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_insert_color(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @add_nr_running(%struct.rq* nocapture noundef %rq) unnamed_addr #12 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  %add = add i32 %0, 1
  store i32 %add, i32* %nr_running, align 4
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %overload = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 5
  %3 = load volatile i32, i32* %overload, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %do.end
  store volatile i32 1, i32* %overload, align 8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body10, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_dl_deadline(%struct.dl_rq* noundef %dl_rq, i64 noundef %deadline) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %dl_rq) #16
  %curr = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 2, i32 0
  %0 = load i64, i64* %curr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc i1 @dl_time_before(i64 noundef %deadline, i64 noundef %0) #16
  br i1 %call3, label %if.end, label %if.end12

if.then7:                                         ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 19
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  call void @cpupri_set(%struct.cpupri* noundef %cpupri, i32 noundef %2, i32 noundef 100) #17
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then7
  store i64 %deadline, i64* %curr, align 8
  %rd10 = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 21
  %3 = load %struct.root_domain*, %struct.root_domain** %rd10, align 32
  %cpudl = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 10
  %cpu11 = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 32
  %4 = load i32, i32* %cpu11, align 16
  call void @cpudl_set(%struct.cpudl* noundef %cpudl, i32 noundef %4, i64 noundef %deadline) #17
  br label %if.end12

if.end12:                                         ; preds = %if.end, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_dl_migration(%struct.sched_dl_entity* noundef readonly %dl_se, %struct.dl_rq* noundef %dl_rq) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 24
  %0 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dl_nr_migratory = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 3
  %1 = load i32, i32* %dl_nr_migratory, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %dl_nr_migratory, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @update_dl_migration(%struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_set(%struct.cpupri* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_set(%struct.cpudl* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_dl_migration(%struct.dl_rq* noundef %dl_rq) unnamed_addr #1 {
entry:
  %dl_nr_migratory = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 3
  %0 = load i32, i32* %dl_nr_migratory, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %dl_nr_running = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 1
  %1 = load i32, i32* %dl_nr_running, align 8
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %overloaded = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 4
  %2 = load i32, i32* %overloaded, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %call = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %dl_rq) #16
  call fastcc void @dl_set_overload(%struct.rq* noundef %call) #16
  store i32 1, i32* %overloaded, align 4
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %entry
  %overloaded4 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 4
  %3 = load i32, i32* %overloaded4, align 4
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.else
  %call7 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %dl_rq) #16
  call fastcc void @dl_clear_overload(%struct.rq* noundef %call7) #16
  store i32 0, i32* %overloaded4, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6, %if.then, %if.then2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dl_set_overload(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #1 {
entry:
  %online = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %1 = load i32, i32* %cpu, align 16
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 7, i64 0
  call fastcc void @cpumask_set_cpu(i32 noundef %1, %struct.cpumask* noundef %arraydecay) #16
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !48
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %dlo_count = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 8
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %dlo_count) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dl_clear_overload(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #1 {
entry:
  %online = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %dlo_count = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 8
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %dlo_count) #17
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 7, i64 0
  call fastcc void @cpumask_clear_cpu(i32 noundef %2, %struct.cpumask* noundef %arraydecay) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #1 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__pushable_less(%struct.rb_node* nocapture noundef readonly %a, %struct.rb_node* nocapture noundef readonly %b) unnamed_addr #2 {
entry:
  %dl = getelementptr %struct.rb_node, %struct.rb_node* %a, i64 -15, i32 1
  %0 = bitcast %struct.rb_node** %dl to %struct.sched_dl_entity*
  %dl7 = getelementptr %struct.rb_node, %struct.rb_node* %b, i64 -15, i32 1
  %1 = bitcast %struct.rb_node** %dl7 to %struct.sched_dl_entity*
  %call = call fastcc i1 @dl_entity_preempt(%struct.sched_dl_entity* noundef %0, %struct.sched_dl_entity* noundef %1) #16
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dl_entity_preempt(%struct.sched_dl_entity* nocapture noundef readonly %a, %struct.sched_dl_entity* nocapture noundef readonly %b) unnamed_addr #2 {
entry:
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %a, i64 0, i32 7
  %0 = load i64, i64* %deadline, align 8
  %deadline1 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %b, i64 0, i32 7
  %1 = load i64, i64* %deadline1, align 8
  %call2 = call fastcc i1 @dl_time_before(i64 noundef %0, i64 noundef %1) #16
  ret i1 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dequeue_task_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  call fastcc void @dequeue_dl_entity(%struct.sched_dl_entity* noundef %dl) #16
  call fastcc void @dequeue_pushable_dl_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_non_contending(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %inactive_timer = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 11
  %call = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl) #16
  %call1 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %call) #16
  %dl_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 1
  %0 = load i64, i64* %dl_runtime, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dl_non_contending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 9
  %bf.load = load i8, i8* %dl_non_contending, align 4
  %1 = and i8 %bf.load, 4
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end13, label %if.then12, !prof !16

if.then12:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !53
  %.pre = load i64, i64* %dl_runtime, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  %2 = phi i64 [ %.pre, %if.then12 ], [ %0, %if.end ]
  %deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 7
  %3 = load i64, i64* %deadline, align 8
  %runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 6
  %4 = load i64, i64* %runtime, align 8
  %dl_period = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 3
  %5 = load i64, i64* %dl_period, align 8
  %mul = mul i64 %5, %4
  %call22 = call fastcc i64 @div64_s64(i64 noundef %mul, i64 noundef %2) #16
  %call23 = call fastcc i64 @rq_clock(%struct.rq* noundef %call1) #16
  %6 = add i64 %call22, %call23
  %sub24 = sub i64 %3, %6
  %cmp25 = icmp slt i64 %sub24, 0
  br i1 %cmp25, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %call28 = call i1 @hrtimer_active(%struct.hrtimer* noundef %inactive_timer) #17
  br i1 %call28, label %if.then30, label %if.end60

if.then30:                                        ; preds = %lor.lhs.false, %if.end13
  %call31 = call fastcc i32 @dl_task(%struct.task_struct* noundef %p) #16
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then30
  call fastcc void @sub_running_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %call) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then30
  %call35 = call fastcc i32 @dl_task(%struct.task_struct* noundef %p) #16
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then41, label %do.end

do.end:                                           ; preds = %if.end34
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %7 = load volatile i32, i32* %__state, align 16
  %cmp39 = icmp eq i32 %7, 128
  br i1 %cmp39, label %if.then41, label %cleanup

if.then41:                                        ; preds = %do.end, %if.end34
  %call42 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #16
  %call43 = call fastcc %struct.dl_bw* @dl_bw_of(i32 noundef %call42) #16
  %__state48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %8 = load volatile i32, i32* %__state48, align 16
  %cmp49 = icmp eq i32 %8, 128
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then41
  %dl53 = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 7
  call fastcc void @sub_rq_bw(%struct.sched_dl_entity* noundef %dl, %struct.dl_rq* noundef %dl53) #16
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.then41
  %lock = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %call43, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  %dl_bw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 4
  %9 = load i64, i64* %dl_bw, align 16
  %call56 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #16
  %call57 = call fastcc i32 @dl_bw_cpus(i32 noundef %call56) #16
  call fastcc void @__dl_sub(%struct.dl_bw* noundef %call43, i64 noundef %9, i32 noundef %call57) #16
  call void @__dl_clear_params(%struct.task_struct* noundef %p) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false
  %bf.load62 = load i8, i8* %dl_non_contending, align 4
  %bf.set = or i8 %bf.load62, 4
  store i8 %bf.set, i8* %dl_non_contending, align 4
  %call64 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %p) #16
  call fastcc void @hrtimer_start(%struct.hrtimer* noundef %inactive_timer, i64 noundef %sub24, i32 noundef 9) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end54, %entry, %if.end60
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_dl_entity(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #1 {
entry:
  call fastcc void @__dequeue_dl_entity(%struct.sched_dl_entity* noundef %dl_se) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_pushable_dl_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %pushable_dl_tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 34
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pushable_dl_tasks, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 16
  %1 = ptrtoint %struct.rb_node* %pushable_dl_tasks to i64
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pushable_dl_tasks_root = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 5
  %call = call fastcc %struct.rb_node* @rb_erase_cached(%struct.rb_node* noundef %pushable_dl_tasks, %struct.rb_root_cached* noundef %pushable_dl_tasks_root) #16
  %tobool.not = icmp eq %struct.rb_node* %call, null
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %dl4 = getelementptr %struct.rb_node, %struct.rb_node* %call, i64 -15, i32 1
  %deadline = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %dl4, i64 9
  %2 = bitcast %struct.rb_node** %deadline to i64*
  %3 = load i64, i64* %2, align 8
  %next = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 2, i32 1
  store i64 %3, i64* %next, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  store i64 %1, i64* %__rb_parent_color, align 16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dequeue_dl_entity(%struct.sched_dl_entity* noundef %dl_se) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* noundef %dl_se) #16
  %__rb_parent_color = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.sched_dl_entity* %dl_se to i64
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rb_node = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 0
  %root = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %call, i64 0, i32 0
  %call3 = call fastcc %struct.rb_node* @rb_erase_cached(%struct.rb_node* noundef %rb_node, %struct.rb_root_cached* noundef %root) #16
  store i64 %1, i64* %__rb_parent_color, align 8
  call fastcc void @dec_dl_tasks(%struct.sched_dl_entity* noundef %dl_se, %struct.dl_rq* noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rb_node* @rb_erase_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root) unnamed_addr #1 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %cmp = icmp eq %struct.rb_node* %0, %node
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %node) #17
  store %struct.rb_node* %call, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %leftmost.0 = phi %struct.rb_node* [ %call, %if.then ], [ null, %entry ]
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_erase(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #17
  ret %struct.rb_node* %leftmost.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_dl_tasks(%struct.sched_dl_entity* noundef %dl_se, %struct.dl_rq* noundef %dl_rq) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %prio1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 15
  %0 = load i32, i32* %prio1, align 4
  %call2 = call fastcc i32 @dl_prio(i32 noundef %0) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 1458; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dl_nr_running = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 1
  %1 = load i32, i32* %dl_nr_running, align 8
  %tobool19.not = icmp eq i32 %1, 0
  br i1 %tobool19.not, label %if.then34, label %if.end35, !prof !13

if.then34:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 1459; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !55
  %.pre = load i32, i32* %dl_nr_running, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end
  %2 = phi i32 [ %.pre, %if.then34 ], [ %1, %if.end ]
  %dec = add i32 %2, -1
  store i32 %dec, i32* %dl_nr_running, align 8
  %call45 = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %dl_rq) #16
  call fastcc void @sub_nr_running(%struct.rq* noundef %call45) #16
  call fastcc void @dec_dl_deadline(%struct.dl_rq* noundef %dl_rq) #16
  call fastcc void @dec_dl_migration(%struct.sched_dl_entity* noundef %dl_se, %struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sub_nr_running(%struct.rq* nocapture noundef %rq) unnamed_addr #9 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  %sub = add i32 %0, -1
  store i32 %sub, i32* %nr_running, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_dl_deadline(%struct.dl_rq* noundef %dl_rq) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.rq* @rq_of_dl_rq(%struct.dl_rq* noundef %dl_rq) #16
  %dl_nr_running = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 1
  %0 = load i32, i32* %dl_nr_running, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %curr = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 2, i32 0
  store i64 0, i64* %curr, align 8
  %next = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 2, i32 1
  store i64 0, i64* %next, align 8
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpudl = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 10
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  call void @cpudl_clear(%struct.cpudl* noundef %cpudl, i32 noundef %2) #17
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 19
  %4 = load i32, i32* %cpu, align 16
  %curr4 = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 6, i32 3, i32 0
  %5 = load i32, i32* %curr4, align 8
  call void @cpupri_set(%struct.cpupri* noundef %cpupri, i32 noundef %4, i32 noundef %5) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 0, i32 1
  %6 = bitcast %struct.rb_node** %rb_leftmost to %struct.sched_dl_entity**
  %7 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %6, align 8
  %deadline6 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %7, i64 0, i32 7
  %8 = load i64, i64* %deadline6, align 8
  %curr8 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 2, i32 0
  store i64 %8, i64* %curr8, align 8
  %rd9 = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 21
  %9 = load %struct.root_domain*, %struct.root_domain** %rd9, align 32
  %cpudl10 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %9, i64 0, i32 10
  %cpu11 = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 32
  %10 = load i32, i32* %cpu11, align 16
  %11 = load i64, i64* %deadline6, align 8
  call void @cpudl_set(%struct.cpudl* noundef %cpudl10, i32 noundef %10, i64 noundef %11) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_dl_migration(%struct.sched_dl_entity* noundef readonly %dl_se, %struct.dl_rq* noundef %dl_rq) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.task_struct* @dl_task_of(%struct.sched_dl_entity* noundef %dl_se) #16
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 24
  %0 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dl_nr_migratory = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 3
  %1 = load i32, i32* %dl_nr_migratory, align 8
  %dec = add i32 %1, -1
  store i32 %dec, i32* %dl_nr_migratory, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @update_dl_migration(%struct.dl_rq* noundef %dl_rq) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_clear(%struct.cpudl* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_s64(i64 noundef %dividend, i64 noundef %divisor) unnamed_addr #8 {
entry:
  %div = sdiv i64 %dividend, %divisor
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rq_clock_skip_update(%struct.rq* nocapture noundef %rq) unnamed_addr #9 {
entry:
  %clock_update_flags = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 14
  %0 = load i32, i32* %clock_update_flags, align 16
  %or = or i32 %0, 1
  store i32 %or, i32* %clock_update_flags, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %tsk) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) #16
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_preempt_equal_dl(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 24
  %1 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpudl = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 10
  %call = call i32 @cpudl_find(%struct.cpudl* noundef %cpudl, %struct.task_struct* noundef %0, %struct.cpumask* noundef null) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %nr_cpus_allowed2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed2, align 4
  %cmp3.not = icmp eq i32 %3, 1
  br i1 %cmp3.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpudl5 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %4, i64 0, i32 10
  %call6 = call i32 @cpudl_find(%struct.cpudl* noundef %cpudl5, %struct.task_struct* noundef %p, %struct.cpumask* noundef null) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end
  call void @resched_curr(%struct.rq* noundef %rq) #17
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #16
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #10 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #8 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpudl_find(%struct.cpudl* noundef, %struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_dl_rq_load_avg(i64 noundef, %struct.rq* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock_pelt(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #2 {
entry:
  %clock_pelt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 17
  %0 = load i64, i64* %clock_pelt, align 8
  %lost_idle_time = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 18
  %1 = load i64, i64* %lost_idle_time, align 16
  %sub = sub i64 %0, %1
  ret i64 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock_task(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #2 {
entry:
  %clock_task = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 16
  %0 = load i64, i64* %clock_task, align 64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @deadline_queue_push_tasks(%struct.rq* noundef %rq) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @has_pushable_dl_tasks(%struct.rq* noundef %rq) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.callback_head* @dl_push_head to i64)
  %2 = inttoptr i64 %add to %struct.callback_head*
  call fastcc void @queue_balance_callback(%struct.rq* noundef %rq, %struct.callback_head* noundef %2, void (%struct.rq*)* noundef nonnull @push_dl_tasks) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @queue_balance_callback(%struct.rq* nocapture noundef %rq, %struct.callback_head* noundef %head, void (%struct.rq*)* noundef %func) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 0, i32 0
  %0 = load %struct.callback_head*, %struct.callback_head** %next, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  br i1 %tobool.not, label %lor.rhs, label %return, !prof !16

lor.rhs:                                          ; preds = %entry
  %balance_callback = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 25
  %1 = load %struct.callback_head*, %struct.callback_head** %balance_callback, align 64
  %cmp = icmp eq %struct.callback_head* %1, @balance_push_callback
  br i1 %cmp, label %return, label %if.end, !prof !13

if.end:                                           ; preds = %lor.rhs
  %func3 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 0, i32 1
  %2 = bitcast void (%struct.callback_head*)** %func3 to void (%struct.rq*)**
  store void (%struct.rq*)* %func, void (%struct.rq*)** %2, align 8
  %3 = load %struct.callback_head*, %struct.callback_head** %balance_callback, align 64
  store %struct.callback_head* %3, %struct.callback_head** %next, align 8
  store %struct.callback_head* %head, %struct.callback_head** %balance_callback, align 64
  br label %return

return:                                           ; preds = %entry, %lor.rhs, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @push_dl_tasks(%struct.rq* noundef %rq) #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call = call fastcc i32 @push_dl_task(%struct.rq* noundef %rq) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @need_pull_dl_task(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* nocapture noundef readonly %prev) unnamed_addr #2 {
entry:
  %online = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call fastcc i32 @dl_task(%struct.task_struct* noundef %prev) #16
  %tobool1 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pull_dl_task(%struct.rq* noundef %this_rq) #1 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  %call = call fastcc i32 @dl_overloaded(%struct.rq* noundef %this_rq) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !56
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay193 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 7, i64 0
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %call5189194 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %arraydecay193) #19
  %cmp190195 = icmp ult i32 %call5189194, %2
  br i1 %cmp190195, label %for.body.lr.ph.lr.ph, label %cleanup

for.body.lr.ph.lr.ph:                             ; preds = %if.end
  %dl_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 7, i32 1
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 7, i32 2, i32 0
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.end116
  %call5189202 = phi i32 [ %call5189194, %for.body.lr.ph.lr.ph ], [ %call5189, %if.end116 ]
  %3 = phi i32 [ %2, %for.body.lr.ph.lr.ph ], [ %22, %if.end116 ]
  %arraydecay201 = phi %struct.cpumask* [ %arraydecay193, %for.body.lr.ph.lr.ph ], [ %arraydecay, %if.end116 ]
  %resched.0.off0.ph198 = phi i1 [ false, %for.body.lr.ph.lr.ph ], [ %resched.1.off0187, %if.end116 ]
  %dmin.0.ph196 = phi i64 [ 9223372036854775807, %for.body.lr.ph.lr.ph ], [ %dmin.1186, %if.end116 ]
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %call5191 = phi i32 [ %call5189202, %for.body.lr.ph ], [ %call5, %for.cond.backedge ]
  %cmp7 = icmp eq i32 %0, %call5191
  br i1 %cmp7, label %for.cond.backedge, label %do.body

for.cond.backedge:                                ; preds = %for.body, %land.lhs.true
  %call5 = call i32 @cpumask_next(i32 noundef %call5191, %struct.cpumask* noundef %arraydecay201) #19
  %cmp = icmp ult i32 %call5, %3
  br i1 %cmp, label %for.body, label %for.end

do.body:                                          ; preds = %for.body
  %idxprom = sext i32 %call5191 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, ptrtoint (%struct.rq* @runqueues to i64)
  %5 = load i32, i32* %dl_nr_running, align 16
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %6 = inttoptr i64 %add to %struct.rq*
  %7 = load i64, i64* %curr, align 8
  %next = getelementptr inbounds %struct.rq, %struct.rq* %6, i64 0, i32 7, i32 2, i32 1
  %8 = load i64, i64* %next, align 8
  %call16 = call fastcc i1 @dl_time_before(i64 noundef %7, i64 noundef %8) #16
  br i1 %call16, label %for.cond.backedge, label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %do.body
  %9 = inttoptr i64 %add to %struct.rq*
  %call20 = call fastcc i32 @double_lock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %9) #16
  %dl_nr_running22 = getelementptr inbounds %struct.rq, %struct.rq* %9, i64 0, i32 7, i32 1
  %10 = load i32, i32* %dl_nr_running22, align 16
  %cmp23 = icmp ult i32 %10, 2
  br i1 %cmp23, label %skip.thread, label %if.end26

if.end26:                                         ; preds = %if.end19
  %call27 = call fastcc %struct.task_struct* @pick_earliest_pushable_dl_task(%struct.rq* noundef %9, i32 noundef %0) #16
  %tobool28.not = icmp eq %struct.task_struct* %call27, null
  br i1 %tobool28.not, label %skip.thread, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end26
  %deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call27, i64 0, i32 22, i32 7
  %11 = load i64, i64* %deadline, align 8
  %call31 = call fastcc i1 @dl_time_before(i64 noundef %11, i64 noundef %dmin.0.ph196) #16
  br i1 %call31, label %land.lhs.true33, label %skip.thread

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %12 = load i32, i32* %dl_nr_running, align 16
  %tobool36.not = icmp eq i32 %12, 0
  br i1 %tobool36.not, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true33
  %13 = load i64, i64* %curr, align 8
  %call42 = call fastcc i1 @dl_time_before(i64 noundef %11, i64 noundef %13) #16
  br i1 %call42, label %if.then44, label %skip.thread

if.then44:                                        ; preds = %lor.lhs.false, %land.lhs.true33
  %curr45 = getelementptr inbounds %struct.rq, %struct.rq* %9, i64 0, i32 9
  %14 = load %struct.task_struct*, %struct.task_struct** %curr45, align 8
  %cmp46 = icmp eq %struct.task_struct* %call27, %14
  br i1 %cmp46, label %if.then60, label %if.end61, !prof !13

if.then60:                                        ; preds = %if.then44
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2279; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !57
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.then44
  %call71 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef nonnull %call27) #16
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then87, label %if.end88, !prof !13

if.then87:                                        ; preds = %if.end61
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/deadline.c\22; .popsection; .long 14472b - 14470b; .short 2280; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !58
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end61
  %15 = load i64, i64* %deadline, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %curr45, align 8
  %deadline101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i64 0, i32 22, i32 7
  %17 = load i64, i64* %deadline101, align 8
  %call102 = call fastcc i1 @dl_time_before(i64 noundef %15, i64 noundef %17) #16
  br i1 %call102, label %skip.thread, label %if.end104

if.end104:                                        ; preds = %if.end88
  %call105 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef nonnull %call27) #16
  br i1 %call105, label %skip, label %if.else

if.else:                                          ; preds = %if.end104
  call void @deactivate_task(%struct.rq* noundef %9, %struct.task_struct* noundef nonnull %call27, i32 noundef 0) #17
  call void @set_task_cpu(%struct.task_struct* noundef nonnull %call27, i32 noundef %0) #17
  call void @activate_task(%struct.rq* noundef %this_rq, %struct.task_struct* noundef nonnull %call27, i32 noundef 0) #17
  %18 = load i64, i64* %deadline, align 8
  br label %skip.thread

skip.thread:                                      ; preds = %if.end19, %if.end88, %if.else, %lor.lhs.false, %land.lhs.true29, %if.end26
  %dmin.1.ph = phi i64 [ %dmin.0.ph196, %if.end26 ], [ %dmin.0.ph196, %land.lhs.true29 ], [ %dmin.0.ph196, %lor.lhs.false ], [ %18, %if.else ], [ %dmin.0.ph196, %if.end88 ], [ %dmin.0.ph196, %if.end19 ]
  %resched.1.off0.ph = phi i1 [ %resched.0.off0.ph198, %if.end26 ], [ %resched.0.off0.ph198, %land.lhs.true29 ], [ %resched.0.off0.ph198, %lor.lhs.false ], [ true, %if.else ], [ %resched.0.off0.ph198, %if.end88 ], [ %resched.0.off0.ph198, %if.end19 ]
  call fastcc void @double_unlock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %9) #16
  br label %if.end116

skip:                                             ; preds = %if.end104
  %call107 = call fastcc %struct.task_struct* @get_push_task(%struct.rq* noundef %9) #16
  call fastcc void @double_unlock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %9) #16
  %tobool112.not = icmp eq %struct.task_struct* %call107, null
  br i1 %tobool112.not, label %if.end116, label %if.then113

if.then113:                                       ; preds = %skip
  call void @raw_spin_rq_unlock(%struct.rq* noundef %this_rq) #17
  %cpu114 = getelementptr inbounds %struct.rq, %struct.rq* %9, i64 0, i32 32
  %19 = load i32, i32* %cpu114, align 16
  %20 = bitcast %struct.task_struct* %call107 to i8*
  %push_work = getelementptr inbounds %struct.rq, %struct.rq* %9, i64 0, i32 47
  %call115 = call i1 @stop_one_cpu_nowait(i32 noundef %19, i32 (i8*)* noundef nonnull @push_cpu_stop, i8* noundef nonnull %20, %struct.cpu_stop_work* noundef %push_work) #17
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %this_rq) #16
  br label %if.end116

if.end116:                                        ; preds = %skip.thread, %if.then113, %skip
  %resched.1.off0187 = phi i1 [ %resched.1.off0.ph, %skip.thread ], [ %resched.0.off0.ph198, %if.then113 ], [ %resched.0.off0.ph198, %skip ]
  %dmin.1186 = phi i64 [ %dmin.1.ph, %skip.thread ], [ %dmin.0.ph196, %if.then113 ], [ %dmin.0.ph196, %skip ]
  %21 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %21, i64 0, i32 7, i64 0
  %22 = load i32, i32* @nr_cpu_ids, align 4
  %call5189 = call i32 @cpumask_next(i32 noundef %call5191, %struct.cpumask* noundef %arraydecay) #19
  %cmp190 = icmp ult i32 %call5189, %22
  br i1 %cmp190, label %for.body.lr.ph, label %for.end

for.end:                                          ; preds = %if.end116, %for.cond.backedge
  %resched.0.off0.ph.lcssa = phi i1 [ %resched.0.off0.ph198, %for.cond.backedge ], [ %resched.1.off0187, %if.end116 ]
  br i1 %resched.0.off0.ph.lcssa, label %if.then118, label %cleanup

if.then118:                                       ; preds = %for.end
  call void @resched_curr(%struct.rq* noundef %this_rq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end, %if.then118, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sched_stop_runnable(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #2 {
entry:
  %stop = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 11
  %0 = load %struct.task_struct*, %struct.task_struct** %stop, align 8
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef nonnull %0) #16
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sched_dl_runnable(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #2 {
entry:
  %dl_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 1
  %0 = load i32, i32* %dl_nr_running, align 16
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @dl_overloaded(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #10 {
entry:
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %0 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %counter.i = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 8, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @pick_earliest_pushable_dl_task(%struct.rq* noundef %rq, i32 noundef %cpu) unnamed_addr #1 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 5, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %call = call fastcc i32 @has_pushable_dl_tasks(%struct.rq* noundef %rq) #16
  %tobool.not = icmp eq i32 %call, 0
  %tobool2.not22 = icmp eq %struct.rb_node* %0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not22
  br i1 %or.cond, label %cleanup, label %if.then3

if.then3:                                         ; preds = %entry, %if.end7
  %next_node.023 = phi %struct.rb_node* [ %call8, %if.end7 ], [ %0, %entry ]
  %add.ptr19 = getelementptr %struct.rb_node, %struct.rb_node* %next_node.023, i64 -30
  %1 = bitcast %struct.rb_node* %add.ptr19 to %struct.task_struct*
  %call4 = call fastcc i32 @pick_dl_task(%struct.task_struct* noundef %1, i32 noundef %cpu) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup.loopexit.split.loop.exit

if.end7:                                          ; preds = %if.then3
  %call8 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef nonnull %next_node.023) #17
  %tobool2.not = icmp eq %struct.rb_node* %call8, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

cleanup.loopexit.split.loop.exit:                 ; preds = %if.then3
  %2 = bitcast %struct.rb_node* %add.ptr19 to %struct.task_struct*
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %cleanup.loopexit.split.loop.exit, %entry
  %retval.0 = phi %struct.task_struct* [ null, %entry ], [ %2, %cleanup.loopexit.split.loop.exit ], [ null, %if.end7 ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_push_task(%struct.rq* nocapture noundef %rq) unnamed_addr #1 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %push_busy = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 46
  %1 = load i32, i32* %push_busy, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 24
  %2 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %migration_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 29
  %3 = load i16, i16* %migration_disabled, align 16
  %tobool3.not = icmp eq i16 %3, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end2
  store i32 1, i32* %push_busy, align 4
  %call = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.end5
  %retval.0 = phi %struct.task_struct* [ %0, %if.end5 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end2 ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @stop_one_cpu_nowait(i32 noundef, i32 (i8*)* noundef, i8* noundef, %struct.cpu_stop_work* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @push_cpu_stop(i8* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) unnamed_addr #1 {
entry:
  call void @raw_spin_rq_lock_nested(%struct.rq* noundef %rq, i32 noundef 0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @pick_dl_task(%struct.task_struct* noundef %p, i32 noundef %cpu) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 27
  %call1 = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpus_mask) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_running(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 6
  %0 = load i32, i32* %on_cpu, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #10 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dl_task_fits_capacity(%struct.task_struct* nocapture noundef readonly %p, i32 noundef %cpu) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) #16
  %dl_deadline = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 2
  %0 = load i64, i64* %dl_deadline, align 16
  %mul = mul i64 %0, %call
  %shr = lshr i64 %mul, 10
  %dl_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 1
  %1 = load i64, i64* %dl_runtime, align 8
  %cmp = icmp uge i64 %shr, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_later_rq(%struct.task_struct* noundef %task) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint ([1 x %struct.cpumask]* @local_cpu_mask_dl to i64)
  %0 = inttoptr i64 %add to %struct.cpumask*
  %add10 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add10 to i32*
  %2 = load i32, i32* %1, align 4
  %call11 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %task) #16
  %tobool.not = icmp eq i64 %add, 0
  br i1 %tobool.not, label %cleanup84, label %if.end, !prof !13

if.end:                                           ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %cleanup84, label %do.body18

do.body18:                                        ; preds = %if.end
  %call25 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %task) #16
  %idxprom = zext i32 %call25 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add26 = add i64 %4, ptrtoint (%struct.rq* @runqueues to i64)
  %5 = inttoptr i64 %add26 to %struct.rq*
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 21
  %6 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpudl = getelementptr inbounds %struct.root_domain, %struct.root_domain* %6, i64 0, i32 10
  %call27 = call i32 @cpudl_find(%struct.cpudl* noundef %cpudl, %struct.task_struct* noundef %task, %struct.cpumask* noundef nonnull %0) #17
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup84, label %if.end30

if.end30:                                         ; preds = %do.body18
  %call31 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call11, %struct.cpumask* noundef nonnull %0) #16
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %cleanup84

if.end34:                                         ; preds = %if.end30
  %call35 = call fastcc i32 @cpumask_test_cpu(i32 noundef %2, %struct.cpumask* noundef nonnull %0) #16
  %tobool36.not = icmp eq i32 %call35, 0
  %spec.select = select i1 %tobool36.not, i32 -1, i32 %2
  call fastcc void @__rcu_read_lock() #17
  %idxprom50 = sext i32 %call11 to i64
  %arrayidx51 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom50
  %7 = load i64, i64* %arrayidx51, align 8
  %add52 = add i64 %7, ptrtoint (%struct.rq* @runqueues to i64)
  %8 = inttoptr i64 %add52 to %struct.rq*
  %sd53 = getelementptr inbounds %struct.rq, %struct.rq* %8, i64 0, i32 22
  %9 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd53, align 8
  %tobool58.not126 = icmp eq %struct.sched_domain* %9, null
  br i1 %tobool58.not126, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end34
  %cmp61.not = icmp eq i32 %spec.select, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %sd.0127 = phi %struct.sched_domain* [ %9, %for.body.lr.ph ], [ %12, %for.inc ]
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0127, i64 0, i32 9
  %10 = load i32, i32* %flags, align 8
  %and = and i32 %10, 16
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %for.inc, label %if.then60

if.then60:                                        ; preds = %for.body
  %.pre = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %sd.0127) #16
  br i1 %cmp61.not, label %if.end67, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then60
  %call64 = call fastcc i32 @cpumask_test_cpu(i32 noundef %spec.select, %struct.cpumask* noundef %.pre) #16
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %land.lhs.true
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup84

if.end67:                                         ; preds = %if.then60, %land.lhs.true
  %call69 = call i32 @cpumask_any_and_distribute(%struct.cpumask* noundef nonnull %0, %struct.cpumask* noundef %.pre) #17
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %cmp70 = icmp ult i32 %call69, %11
  br i1 %cmp70, label %if.then72, label %for.inc

if.then72:                                        ; preds = %if.end67
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup84

for.inc:                                          ; preds = %if.end67, %for.body
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0127, i64 0, i32 0
  %12 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool58.not = icmp eq %struct.sched_domain* %12, null
  br i1 %tobool58.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end34
  call fastcc void @rcu_read_unlock() #16
  %cmp75.not = icmp eq i32 %spec.select, -1
  br i1 %cmp75.not, label %if.end78, label %cleanup84

if.end78:                                         ; preds = %for.end
  %call79 = call i32 @cpumask_any_distribute(%struct.cpumask* noundef nonnull %0) #17
  %13 = load i32, i32* @nr_cpu_ids, align 4
  %cmp80 = icmp ult i32 %call79, %13
  %call79. = select i1 %cmp80, i32 %call79, i32 -1
  br label %cleanup84

cleanup84:                                        ; preds = %if.then66, %if.then72, %if.end78, %for.end, %if.end30, %do.body18, %if.end, %entry
  %retval.3 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %do.body18 ], [ %call11, %if.end30 ], [ %spec.select, %for.end ], [ %call79., %if.end78 ], [ %spec.select, %if.then66 ], [ %call69, %if.then72 ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i64* @cpu_scale to i64)
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #13 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !60
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef readnone %sd) unnamed_addr #8 {
entry:
  %arraydecay = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 20, i64 0
  %0 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_and_distribute(%struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_distribute(%struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !61
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.sched_dl_entity* @pick_next_dl_entity(%struct.dl_rq* nocapture noundef readonly %dl_rq) unnamed_addr #2 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 0, i32 1
  %0 = bitcast %struct.rb_node** %rb_leftmost to %struct.sched_dl_entity**
  %1 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %0, align 8
  ret %struct.sched_dl_entity* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_intersects(i64* noundef %arraydecay, i64* noundef %arraydecay2) #16
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @cpu_of(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #2 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(%struct.task_struct* noundef, %struct.cpumask* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_intersects(i64* noundef %src1, i64* noundef %src2) unnamed_addr #1 {
entry:
  %call = call i32 @__bitmap_intersects(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_set_freecpu(%struct.cpudl* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_clear_freecpu(%struct.cpudl* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_leftmost(%struct.task_struct* noundef readnone %p, %struct.dl_rq* nocapture noundef readonly %dl_rq) unnamed_addr #2 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %dl_rq, i64 0, i32 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %rb_node = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 0
  %cmp = icmp eq %struct.rb_node* %0, %rb_node
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @deadline_queue_pull_task(%struct.rq* nocapture noundef %rq) unnamed_addr #9 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.callback_head* @dl_pull_head to i64)
  %2 = inttoptr i64 %add to %struct.callback_head*
  call fastcc void @queue_balance_callback(%struct.rq* noundef %rq, %struct.callback_head* noundef %2, void (%struct.rq*)* noundef nonnull @pull_dl_task) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @account_group_exec_runtime(%struct.task_struct* nocapture noundef readonly %tsk, i64 noundef %ns) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.thread_group_cputimer* @get_running_cputimer(%struct.task_struct* noundef %tsk) #16
  %tobool.not = icmp eq %struct.thread_group_cputimer* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sum_exec_runtime = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %call, i64 0, i32 0, i32 2
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %ns, %struct.atomic64_t* noundef %sum_exec_runtime) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @grub_reclaim(i64 noundef %delta, %struct.rq* nocapture noundef readonly %rq, %struct.sched_dl_entity* nocapture noundef readonly %dl_se) unnamed_addr #2 {
entry:
  %this_bw = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 7
  %0 = load i64, i64* %this_bw, align 8
  %running_bw = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 6
  %1 = load i64, i64* %running_bw, align 32
  %sub = sub i64 %0, %1
  %dl_bw = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 4
  %2 = load i64, i64* %dl_bw, align 8
  %bw_ratio = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 9
  %3 = load i64, i64* %bw_ratio, align 8
  %mul = mul i64 %3, %2
  %shr = lshr i64 %mul, 8
  %extra_bw = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 8
  %4 = load i64, i64* %extra_bw, align 16
  %add = add i64 %4, %sub
  %sub4 = sub nsw i64 1048576, %shr
  %cmp = icmp ugt i64 %add, %sub4
  %sub8 = sub i64 1048576, %add
  %u_act.0 = select i1 %cmp, i64 %shr, i64 %sub8
  %mul9 = mul i64 %u_act.0, %delta
  %shr10 = lshr i64 %mul9, 20
  ret i64 %shr10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @topology_get_freq_scale(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i64* @arch_freq_scale to i64)
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dl_runtime_exceeded(%struct.sched_dl_entity* nocapture noundef readonly %dl_se) unnamed_addr #2 {
entry:
  %runtime = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl_se, i64 0, i32 6
  %0 = load i64, i64* %runtime, align 8
  %cmp = icmp slt i64 %0, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_bandwidth_enabled() unnamed_addr #2 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %1 = xor i32 %0, -1
  %.lobit.not = lshr i32 %1, 31
  ret i32 %.lobit.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @sched_rt_bandwidth_account(%struct.rt_rq* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.thread_group_cputimer* @get_running_cputimer(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #10 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 1
  %1 = load volatile i32, i32* %timers_active, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cputimer1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 19
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %tobool3.not = icmp eq %struct.sighand_struct* %2, null
  %.cputimer1 = select i1 %tobool3.not, %struct.thread_group_cputimer* null, %struct.thread_group_cputimer* %cputimer1, !prof !13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct.thread_group_cputimer* [ null, %entry ], [ %.cputimer1, %if.end ]
  ret %struct.thread_group_cputimer* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !62
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_subset(%struct.cpumask* noundef %src1p) unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_subset(i64* noundef %src1) unnamed_addr #1 {
entry:
  %call = call i32 @__bitmap_subset(i64* noundef %src1, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_active_mask, i64 0, i32 0, i64 0), i32 noundef 256) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @capacity_orig_of(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %cpu_capacity_orig = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 24
  %2 = load i64, i64* %cpu_capacity_orig, align 8
  ret i64 %2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__dl_bw_capacity(i32 noundef %i) unnamed_addr #13 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %rd2 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd2, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 3, i64 0
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %call16 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_active_mask) #19
  %cmp17 = icmp ult i32 %call16, %3
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call19 = phi i32 [ %call, %for.body ], [ %call16, %entry ]
  %cap.018 = phi i64 [ %add7, %for.body ], [ 0, %entry ]
  %call6 = call fastcc i64 @capacity_orig_of(i32 noundef %call19) #16
  %add7 = add i64 %call6, %cap.018
  %call = call i32 @cpumask_next_and(i32 noundef %call19, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_active_mask) #19
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %cap.0.lcssa = phi i64 [ 0, %entry ], [ %add7, %for.body ]
  ret i64 %cap.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #17
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { nounwind readonly }

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
!8 = !{i64 2149839172}
!9 = !{i64 2149846453}
!10 = !{i64 0, i64 4294967295001}
!11 = !{i64 -1, i64 2147483647001}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2149824171}
!15 = !{i64 2149850014}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2157283139}
!18 = !{i64 2157296782}
!19 = !{i64 2157345396}
!20 = !{i64 2149602316}
!21 = !{i64 2149602938}
!22 = !{i64 2157215137}
!23 = !{i64 2148118875, i64 2148118908, i64 2148118961, i64 2148119020, i64 2148119054, i64 2148119109, i64 2148119138, i64 2148119158}
!24 = !{i64 2149793301}
!25 = !{i64 2157247951}
!26 = !{i64 2157241874}
!27 = !{i64 2157335592}
!28 = !{i64 2157328338}
!29 = !{i64 2157329742}
!30 = !{i64 2157331154}
!31 = !{i64 2157332562}
!32 = !{i64 2157333950}
!33 = !{i64 2148028977, i64 2148029641, i64 2148029671, i64 2148029703, i64 2148029737, i64 2148029772, i64 2148029797}
!34 = !{i64 2149998477}
!35 = !{i64 2148040759, i64 2148041433, i64 2148041463, i64 2148041495, i64 2148041529, i64 2148041565, i64 2148041590}
!36 = !{i64 2149078719, i64 2149078766, i64 2149078772, i64 2149078809, i64 2149078827, i64 2149080138, i64 2149080186, i64 2149080234, i64 2149080297, i64 2149080346, i64 2149078905, i64 2149078930, i64 2149078956, i64 2149078962, i64 2149079804, i64 2149079844, i64 2149079862, i64 2149079894, i64 2149079922, i64 2149079976, i64 2149079996, i64 2149080093, i64 2149078985, i64 2149078999, i64 2149079005, i64 2149079055, i64 2149079101, i64 2149079134}
!37 = !{i64 2149080898, i64 2149080945, i64 2149080951, i64 2149080988, i64 2149081006, i64 2149081949, i64 2149081997, i64 2149082045, i64 2149082108, i64 2149082157, i64 2149081084, i64 2149081109, i64 2149081135, i64 2149081141, i64 2149081178, i64 2149081184, i64 2149081234, i64 2149081280, i64 2149081313}
!38 = !{i64 2149073016, i64 2149073063, i64 2149073069, i64 2149073106, i64 2149073124, i64 2149074465, i64 2149074513, i64 2149074561, i64 2149074624, i64 2149074673, i64 2149073202, i64 2149073227, i64 2149073253, i64 2149073259, i64 2149074131, i64 2149074171, i64 2149074189, i64 2149074221, i64 2149074249, i64 2149074303, i64 2149074323, i64 2149074420, i64 2149073282, i64 2149073296, i64 2149073302, i64 2149073352, i64 2149073398, i64 2149073431}
!39 = !{i64 2149084732, i64 2149084779, i64 2149084785, i64 2149084822, i64 2149084840, i64 2149086151, i64 2149086199, i64 2149086247, i64 2149086310, i64 2149086359, i64 2149084918, i64 2149084943, i64 2149084969, i64 2149084975, i64 2149085817, i64 2149085857, i64 2149085875, i64 2149085907, i64 2149085935, i64 2149085989, i64 2149086009, i64 2149086106, i64 2149084998, i64 2149085012, i64 2149085018, i64 2149085068, i64 2149085114, i64 2149085147}
!40 = !{i64 2157281675}
!41 = !{i64 2157231106}
!42 = !{i1 (%struct.rb_node*, %struct.rb_node*)* @__dl_less, i1 (%struct.rb_node*, %struct.rb_node*)* @__pushable_less}
!43 = !{i64 2157244901}
!44 = !{i64 2157246547}
!45 = !{i64 2157280110}
!46 = !{i64 2157250614}
!47 = !{i64 2157266498}
!48 = !{i64 2157224925}
!49 = !{i64 2148092093, i64 2148092604, i64 2148092634, i64 2148092660, i64 2148092692, i64 2148092721}
!50 = !{i64 2148023013, i64 2148023529, i64 2148023559, i64 2148023586, i64 2148023620, i64 2148023650}
!51 = !{i64 2148032734, i64 2148033250, i64 2148033280, i64 2148033307, i64 2148033341, i64 2148033371}
!52 = !{i64 2148102663, i64 2148103184, i64 2148103214, i64 2148103240, i64 2148103272, i64 2148103301}
!53 = !{i64 2157217695}
!54 = !{i64 2157268287}
!55 = !{i64 2157273975}
!56 = !{i64 2157336019}
!57 = !{i64 2157338335}
!58 = !{i64 2157344023}
!59 = !{i64 2149594683}
!60 = !{i64 2149221296, i64 2149221343, i64 2149221349, i64 2149221386, i64 2149221404, i64 2149222331, i64 2149222379, i64 2149222427, i64 2149222490, i64 2149222539, i64 2149221482, i64 2149221507, i64 2149221533, i64 2149221539, i64 2149221576, i64 2149221582, i64 2149221632, i64 2149221678, i64 2149221711}
!61 = !{i64 2149594900}
!62 = !{i64 2148063699, i64 2148064213, i64 2148064243, i64 2148064269, i64 2148064301, i64 2148064330}
