; ModuleID = 'drivers/input/ff-core.c'
source_filename = "drivers/input/ff-core.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.input_dev_poller = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.63 = type { %struct.kernfs_elem_dir }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
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
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.51, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.52, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.53, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
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
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
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
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.33, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.9 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.17 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.17 = type { %struct.callback_head }
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.18, %union.anon.19, i32 }
%struct.request_queue = type opaque
%union.anon.18 = type { %struct.list_head }
%union.anon.19 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.20 }
%struct.anon.20 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.24 }
%struct.anon.24 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.32, i32, [12 x i8] }
%union.anon.32 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.33 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.34, %union.anon.49, %struct.atomic_t, [8 x i8] }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.49 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.51 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.52 = type { %struct.callback_head }
%union.anon.53 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.36 }
%union.anon.36 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.input_value = type { i16, i16, i32 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"cannot allocate device without any effects\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot allocate more than FF_MAX_EFFECTS effects\0A\00", align 1
@input_ff_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"&ff->mutex\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_ff_upload(%struct.input_dev* noundef %dev, %struct.ff_effect* noundef %effect, %struct.file* noundef %file) local_unnamed_addr #0 {
entry:
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 20
  %0 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %1 = load volatile i64, i64* %arraydecay, align 8
  %2 = and i64 %1, 2097152
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 0
  %3 = load i16, i16* %type, align 8
  %conv = zext i16 %3 to i32
  %4 = add i16 %3, -88
  %5 = icmp ult i16 %4, -8
  br i1 %5, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %div.i = lshr i32 %conv, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 %idxprom.i
  %6 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %conv, 63
  %sh_prom.i = zext i32 %and.i to i64
  %7 = shl nuw i64 1, %sh_prom.i
  %8 = and i64 %6, %7
  %tobool12.not = icmp eq i64 %8, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false7
  %cmp17 = icmp eq i16 %3, 81
  br i1 %cmp17, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %if.end14
  %waveform = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 0
  %9 = load i16, i16* %waveform, align 8
  %conv19 = zext i16 %9 to i32
  %10 = add i16 %9, -94
  %11 = icmp ult i16 %10, -6
  br i1 %11, label %cleanup, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %land.lhs.true
  %div.i149 = lshr i32 %conv19, 6
  %idxprom.i150 = zext i32 %div.i149 to i64
  %arrayidx.i151 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 %idxprom.i150
  %12 = load volatile i64, i64* %arrayidx.i151, align 8
  %and.i152 = and i32 %conv19, 63
  %sh_prom.i153 = zext i32 %and.i152 to i64
  %13 = shl nuw i64 1, %sh_prom.i153
  %14 = and i64 %12, %13
  %tobool37.not = icmp eq i64 %14, 0
  br i1 %tobool37.not, label %cleanup, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false29, %if.end14
  %arrayidx.i158 = getelementptr %struct.ff_device, %struct.ff_device* %0, i64 0, i32 7, i64 %idxprom.i
  %15 = load volatile i64, i64* %arrayidx.i158, align 8
  %16 = and i64 %15, %7
  %tobool45.not = icmp eq i64 %16, 0
  br i1 %tobool45.not, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end39
  %call47 = call fastcc i32 @compat_effect(%struct.ff_device* noundef %0, %struct.ff_effect* noundef %effect) #7
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end51, label %cleanup

if.end51:                                         ; preds = %if.then46, %if.end39
  %mutex = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 8
  call void @mutex_lock(%struct.mutex* noundef %mutex) #8
  %id52 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 1
  %17 = load i16, i16* %id52, align 2
  %conv53 = sext i16 %17 to i32
  %cmp54 = icmp eq i16 %17, -1
  br i1 %cmp54, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end51
  %max_effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 9
  %18 = load i32, i32* %max_effects, align 8
  %cmp57168 = icmp sgt i32 %18, 0
  br i1 %cmp57168, label %for.body.preheader, label %out

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %18 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.ff_device, %struct.ff_device* %0, i64 0, i32 11, i64 %indvars.iv
  %19 = load %struct.file*, %struct.file** %arrayidx, align 8
  %tobool59.not = icmp eq %struct.file* %19, null
  br i1 %tobool59.not, label %if.end66, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %out, label %for.body

if.end66:                                         ; preds = %for.body
  %20 = trunc i64 %indvars.iv to i32
  %conv67 = trunc i64 %indvars.iv to i16
  store i16 %conv67, i16* %id52, align 2
  br label %if.end81

if.else:                                          ; preds = %if.end51
  %call71 = call fastcc i32 @check_effect_access(%struct.ff_device* noundef %0, i32 noundef %conv53, %struct.file* noundef %file) #7
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %out

if.end74:                                         ; preds = %if.else
  %effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 10
  %21 = load %struct.ff_effect*, %struct.ff_effect** %effects, align 8
  %idxprom75 = sext i16 %17 to i64
  %arrayidx76 = getelementptr %struct.ff_effect, %struct.ff_effect* %21, i64 %idxprom75
  %call77 = call fastcc i32 @check_effects_compatible(%struct.ff_effect* noundef %effect, %struct.ff_effect* noundef %arrayidx76) #7
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %out, label %if.end81

if.end81:                                         ; preds = %if.end74, %if.end66
  %old.0 = phi %struct.ff_effect* [ null, %if.end66 ], [ %arrayidx76, %if.end74 ]
  %id.1 = phi i32 [ %20, %if.end66 ], [ %conv53, %if.end74 ]
  %upload = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 0
  %22 = load i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)** %upload, align 8
  %call82 = call i32 %22(%struct.input_dev* noundef %dev, %struct.ff_effect* noundef %effect, %struct.ff_effect* noundef %old.0) #8
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %out

if.end85:                                         ; preds = %if.end81
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %effects86 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 10
  %23 = load %struct.ff_effect*, %struct.ff_effect** %effects86, align 8
  %idxprom87 = sext i32 %id.1 to i64
  %arrayidx88 = getelementptr %struct.ff_effect, %struct.ff_effect* %23, i64 %idxprom87
  %24 = bitcast %struct.ff_effect* %arrayidx88 to i8*
  %25 = bitcast %struct.ff_effect* %effect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(48) %24, i8* noundef align 8 dereferenceable(48) %25, i64 48, i1 false)
  %arrayidx91 = getelementptr %struct.ff_device, %struct.ff_device* %0, i64 0, i32 11, i64 %idxprom87
  store %struct.file* %file, %struct.file** %arrayidx91, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %out

out:                                              ; preds = %for.inc, %for.cond.preheader, %if.end74, %if.end81, %if.else, %if.end85
  %ret.0 = phi i32 [ %call82, %if.end81 ], [ 0, %if.end85 ], [ %call71, %if.else ], [ -22, %if.end74 ], [ -28, %for.cond.preheader ], [ -28, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %land.lhs.true, %lor.lhs.false29, %if.end, %lor.lhs.false7, %entry, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ -38, %entry ], [ -22, %lor.lhs.false7 ], [ -22, %if.end ], [ -22, %lor.lhs.false29 ], [ -22, %land.lhs.true ], [ %call47, %if.then46 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compat_effect(%struct.ff_device* noundef %ff, %struct.ff_effect* nocapture noundef %effect) unnamed_addr #1 {
entry:
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 0
  %0 = load i16, i16* %type, align 8
  %cond30 = icmp eq i16 %0, 80
  br i1 %cond30, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx.i = getelementptr %struct.ff_device, %struct.ff_device* %ff, i64 0, i32 7, i64 1
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %2 = and i64 %1, 131072
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  store i16 81, i16* %type, align 8
  %waveform = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 0
  store i16 90, i16* %waveform, align 8
  %period = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 1
  store i16 50, i16* %period, align 2
  %magnitude14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 2
  store i16 32767, i16* %magnitude14, align 4
  %offset = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 3
  store i16 0, i16* %offset, align 2
  %phase = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 4
  store i16 0, i16* %phase, align 8
  %attack_length = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 5, i32 0
  store i16 0, i16* %attack_length, align 2
  %attack_level = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 5, i32 1
  store i16 0, i16* %attack_level, align 2
  %fade_length = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 5, i32 2
  store i16 0, i16* %fade_length, align 2
  %fade_level = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %effect, i64 0, i32 5, i32 0, i32 5, i32 3
  store i16 0, i16* %fade_level, align 2
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %sw.bb ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @check_effect_access(%struct.ff_device* nocapture noundef readonly %ff, i32 noundef %effect_id, %struct.file* noundef readnone %file) unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %effect_id, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %max_effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %ff, i64 0, i32 9
  %0 = load i32, i32* %max_effects, align 8
  %cmp1.not = icmp sgt i32 %0, %effect_id
  br i1 %cmp1.not, label %lor.lhs.false2, label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %idxprom16 = zext i32 %effect_id to i64
  %arrayidx = getelementptr %struct.ff_device, %struct.ff_device* %ff, i64 0, i32 11, i64 %idxprom16
  %1 = load %struct.file*, %struct.file** %arrayidx, align 8
  %tobool.not = icmp eq %struct.file* %1, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %tobool3.not = icmp eq %struct.file* %file, null
  %cmp7.not = icmp eq %struct.file* %1, %file
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp7.not
  %spec.select = select i1 %or.cond, i32 0, i32 -13
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false2
  %retval.0 = phi i32 [ -22, %lor.lhs.false2 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @check_effects_compatible(%struct.ff_effect* nocapture noundef readonly %e1, %struct.ff_effect* nocapture noundef readonly %e2) unnamed_addr #3 {
entry:
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %e1, i64 0, i32 0
  %0 = load i16, i16* %type, align 8
  %type1 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %e2, i64 0, i32 0
  %1 = load i16, i16* %type1, align 8
  %cmp = icmp eq i16 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %cmp6.not = icmp eq i16 %0, 81
  br i1 %cmp6.not, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %waveform = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %e1, i64 0, i32 5, i32 0, i32 0
  %2 = load i16, i16* %waveform, align 8
  %waveform11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %e2, i64 0, i32 5, i32 0, i32 0
  %3 = load i16, i16* %waveform11, align 8
  %cmp13 = icmp eq i16 %2, %3
  %phi.cast = zext i1 %cmp13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_ff_erase(%struct.input_dev* noundef %dev, i32 noundef %effect_id, %struct.file* noundef %file) local_unnamed_addr #0 {
entry:
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 20
  %0 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %1 = load volatile i64, i64* %arraydecay, align 8
  %2 = and i64 %1, 2097152
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 8
  call void @mutex_lock(%struct.mutex* noundef %mutex) #8
  %call2 = call fastcc i32 @erase_effect(%struct.input_dev* noundef %dev, i32 noundef %effect_id, %struct.file* noundef %file) #7
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -38, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @erase_effect(%struct.input_dev* noundef %dev, i32 noundef %effect_id, %struct.file* noundef %file) unnamed_addr #0 {
entry:
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 20
  %0 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8
  %call = call fastcc i32 @check_effect_access(%struct.ff_device* noundef %0, i32 noundef %effect_id, %struct.file* noundef %file) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 36, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %playback = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 2
  %1 = load i32 (%struct.input_dev*, i32, i32)*, i32 (%struct.input_dev*, i32, i32)** %playback, align 8
  %call2 = call i32 %1(%struct.input_dev* noundef %dev, i32 noundef %effect_id, i32 noundef 0) #8
  %idxprom = sext i32 %effect_id to i64
  %arrayidx = getelementptr %struct.ff_device, %struct.ff_device* %0, i64 0, i32 11, i64 %idxprom
  store %struct.file* null, %struct.file** %arrayidx, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  %erase = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 1
  %2 = load i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32)** %erase, align 8
  %tobool4.not = icmp eq i32 (%struct.input_dev*, i32)* %2, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = call i32 %2(%struct.input_dev* noundef %dev, i32 noundef %effect_id) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.then5
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  store %struct.file* %file, %struct.file** %arrayidx, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %entry, %if.then9
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ %call, %entry ], [ 0, %if.then5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_ff_flush(%struct.input_dev* noundef %dev, %struct.file* noundef %file) #0 {
entry:
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 20
  %0 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8
  %mutex = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 8
  call void @mutex_lock(%struct.mutex* noundef %mutex) #8
  %max_effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 9
  %1 = load i32, i32* %max_effects, align 8
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.011 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call = call fastcc i32 @erase_effect(%struct.input_dev* noundef %dev, i32 noundef %i.011, %struct.file* noundef %file) #7
  %inc = add nuw nsw i32 %i.011, 1
  %2 = load i32, i32* %max_effects, align 8
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_ff_event(%struct.input_dev* noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #0 {
entry:
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 20
  %0 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8
  %cmp.not = icmp eq i32 %type, 21
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %code, label %sw.default [
    i32 96, label %sw.bb
    i32 97, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 1
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %2 = and i64 %1, 4294967296
  %tobool = icmp eq i64 %2, 0
  %cmp2 = icmp ugt i32 %value, 65535
  %or.cond = or i1 %cmp2, %tobool
  br i1 %or.cond, label %cleanup, label %if.end4

if.end4:                                          ; preds = %sw.bb
  %set_gain = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 3
  %3 = load void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)** %set_gain, align 8
  %conv = trunc i32 %value to i16
  call void %3(%struct.input_dev* noundef %dev, i16 noundef %conv) #8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %arrayidx.i38 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 1
  %4 = load volatile i64, i64* %arrayidx.i38, align 8
  %5 = and i64 %4, 8589934592
  %tobool9 = icmp eq i64 %5, 0
  %cmp11 = icmp ugt i32 %value, 65535
  %or.cond22 = or i1 %cmp11, %tobool9
  br i1 %or.cond22, label %cleanup, label %if.end14

if.end14:                                         ; preds = %sw.bb5
  %set_autocenter = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 4
  %6 = load void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)** %set_autocenter, align 8
  %conv15 = trunc i32 %value to i16
  call void %6(%struct.input_dev* noundef %dev, i16 noundef %conv15) #8
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call16 = call fastcc i32 @check_effect_access(%struct.ff_device* noundef %0, i32 noundef %code, %struct.file* noundef null) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %cleanup

if.then19:                                        ; preds = %sw.default
  %playback = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 2
  %7 = load i32 (%struct.input_dev*, i32, i32)*, i32 (%struct.input_dev*, i32, i32)** %playback, align 8
  %call20 = call i32 %7(%struct.input_dev* noundef %dev, i32 noundef %code, i32 noundef %value) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end14, %sw.bb, %sw.bb5, %if.then19, %sw.default, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_ff_create(%struct.input_dev* noundef %dev, i32 noundef %max_effects) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %max_effects, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev1, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp ugt i32 %max_effects, 96
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev6, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conv = zext i32 %max_effects to i64
  %mul = shl nuw nsw i64 %conv, 3
  %add = add nuw nsw i64 %mul, 120
  %call = call fastcc i8* @kzalloc(i64 noundef %add) #7
  %tobool13.not = icmp eq i8* %call, null
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end7
  %call17 = call fastcc i8* @kcalloc(i64 noundef %conv) #7
  %effects = getelementptr inbounds i8, i8* %call, i64 112
  %0 = bitcast i8* %effects to i8**
  store i8* %call17, i8** %0, align 8
  %tobool19.not = icmp eq i8* %call17, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @kfree(i8* noundef nonnull %call) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %max_effects22 = getelementptr inbounds i8, i8* %call, i64 104
  %1 = bitcast i8* %max_effects22 to i32*
  store i32 %max_effects, i32* %1, align 8
  %mutex = getelementptr inbounds i8, i8* %call, i64 72
  %2 = bitcast i8* %mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @input_ff_create.__key) #8
  %ff26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 20
  %3 = bitcast %struct.ff_device** %ff26 to i8**
  store i8* %call, i8** %3, align 8
  %flush = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 33
  store i32 (%struct.input_dev*, %struct.file*)* @input_ff_flush, i32 (%struct.input_dev*, %struct.file*)** %flush, align 8
  %event = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 34
  store i32 (%struct.input_dev*, i32, i32, i32)* @input_ff_event, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %4 = load i64, i64* %arraydecay, align 8
  %or.i = or i64 %4, 2097152
  store i64 %or.i, i64* %arraydecay, align 8
  %arraydecay27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 0
  %call28 = call fastcc i64 @find_first_bit(i64* noundef %arraydecay27) #7
  %i.080 = trunc i64 %call28 to i32
  %cmp3081 = icmp slt i32 %i.080, 128
  br i1 %cmp3081, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %ffbit32 = getelementptr inbounds i8, i8* %call, i64 56
  %arraydecay33 = bitcast i8* %ffbit32 to i64*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.0.in82 = phi i64 [ %call28, %for.body.lr.ph ], [ %call38, %for.body ]
  %rem.i = and i64 %i.0.in82, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %i.0.in82, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %arraydecay33, i64 %idx.ext.i
  %5 = load i64, i64* %add.ptr.i, align 8
  %or.i77 = or i64 %5, %shl.i
  store i64 %or.i77, i64* %add.ptr.i, align 8
  %add36 = shl i64 %i.0.in82, 32
  %sext = add i64 %add36, 4294967296
  %conv37 = ashr exact i64 %sext, 32
  %call38 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay27, i64 noundef %conv37) #7
  %i.0 = trunc i64 %call38 to i32
  %cmp30 = icmp slt i32 %i.0, 128
  br i1 %cmp30, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end21
  %arrayidx.i = getelementptr i8, i8* %call, i64 64
  %6 = bitcast i8* %arrayidx.i to i64*
  %7 = load volatile i64, i64* %6, align 8
  %8 = and i64 %7, 131072
  %tobool43.not = icmp eq i64 %8, 0
  br i1 %tobool43.not, label %cleanup, label %if.then44

if.then44:                                        ; preds = %for.end
  %add.ptr.i78 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 12, i64 1
  %9 = load i64, i64* %add.ptr.i78, align 8
  %or.i79 = or i64 %9, 65536
  store i64 %or.i79, i64* %add.ptr.i78, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then44, %if.end7, %if.then20, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -12, %if.then20 ], [ -22, %do.end ], [ -12, %if.end7 ], [ 0, %if.then44 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #8
  ret i8* %call10.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #7
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 128) #8
  ret i64 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef 128, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #8
  ret i64 %call12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_ff_destroy(%struct.input_dev* nocapture noundef %dev) local_unnamed_addr #0 {
entry:
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 20
  %0 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %1 = load i64, i64* %arraydecay, align 8
  %and.i = and i64 %1, -2097153
  store i64 %and.i, i64* %arraydecay, align 8
  %tobool.not = icmp eq %struct.ff_device* %0, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %destroy = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 5
  %2 = load void (%struct.ff_device*)*, void (%struct.ff_device*)** %destroy, align 8
  %tobool2.not = icmp eq void (%struct.ff_device*)* %2, null
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void %2(%struct.ff_device* noundef nonnull %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %private = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 6
  %3 = load i8*, i8** %private, align 8
  call void @kfree(i8* noundef %3) #8
  %effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i64 0, i32 10
  %4 = bitcast %struct.ff_effect** %effects to i8**
  %5 = load i8*, i8** %4, align 8
  call void @kfree(i8* noundef %5) #8
  %6 = bitcast %struct.ff_device* %0 to i8*
  call void @kfree(i8* noundef nonnull %6) #8
  store %struct.ff_device* null, %struct.ff_device** %ff1, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #7
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !7
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #7
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #1 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !11
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #7
  call fastcc void @arch_local_irq_enable() #7
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #10, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 48)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { cold nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149819135}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149386437, i64 2149386484, i64 2149386490, i64 2149386527, i64 2149386545, i64 2149387886, i64 2149387934, i64 2149387982, i64 2149388045, i64 2149388094, i64 2149386623, i64 2149386648, i64 2149386674, i64 2149386680, i64 2149387552, i64 2149387592, i64 2149387610, i64 2149387642, i64 2149387670, i64 2149387724, i64 2149387744, i64 2149387841, i64 2149386703, i64 2149386717, i64 2149386723, i64 2149386773, i64 2149386819, i64 2149386852}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147902696, i64 2147902729, i64 2147902782, i64 2147902841, i64 2147902875, i64 2147902930, i64 2147902959, i64 2147902979}
!12 = !{i64 2149843988}
!13 = !{i64 2149783972}
!14 = !{i64 2149376981, i64 2149377028, i64 2149377034, i64 2149377071, i64 2149377089, i64 2149378429, i64 2149378477, i64 2149378525, i64 2149378588, i64 2149378637, i64 2149377167, i64 2149377192, i64 2149377218, i64 2149377224, i64 2149378095, i64 2149378135, i64 2149378153, i64 2149378185, i64 2149378213, i64 2149378267, i64 2149378287, i64 2149378384, i64 2149377247, i64 2149377261, i64 2149377267, i64 2149377317, i64 2149377363, i64 2149377396}
