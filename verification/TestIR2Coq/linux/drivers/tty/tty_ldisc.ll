; ModuleID = 'drivers/tty/tty_ldisc.c'
source_filename = "drivers/tty/tty_ldisc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.63, %struct.anon.64, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.68, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.60 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
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
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.pipe_inode_info* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, {}*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.63 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.64 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.62, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.62 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.module = type opaque
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kmem_cache = type opaque
%struct.ctl_table_header = type { %union.anon.69, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }

@tty_ldiscs_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@tty_ldiscs = internal unnamed_addr global [30 x %struct.tty_ldisc_ops*] zeroinitializer, align 8
@tty_ldiscs_seq_ops = dso_local local_unnamed_addr constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @tty_ldiscs_seq_start, void (%struct.seq_file*, i8*)* @tty_ldiscs_seq_stop, i8* (%struct.seq_file*, i8*, i64*)* @tty_ldiscs_seq_next, i32 (%struct.seq_file*, i8*)* @tty_ldiscs_seq_show }, align 8
@tty_root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @tty_dir_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str = private unnamed_addr constant [11 x i8] c"%-10s %2d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@tty_ldisc_autoload = internal global i32 0, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"\014Falling back ldisc for %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Couldn't open N_NULL ldisc for %s.\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@tty_dir_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @tty_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@tty_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* bitcast (i32* @tty_ldisc_autoload to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, %struct.ctl_table zeroinitializer], align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"ldisc_autoload\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_register_ldisc(%struct.tty_ldisc_ops* noundef %new_ldisc) local_unnamed_addr #0 {
entry:
  %num = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %new_ldisc, i64 0, i32 1
  %0 = load i32, i32* %num, align 8
  %1 = icmp ugt i32 %0, 29
  br i1 %1, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #9
  %2 = load i32, i32* %num, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [30 x %struct.tty_ldisc_ops*], [30 x %struct.tty_ldisc_ops*]* @tty_ldiscs, i64 0, i64 %idxprom
  store %struct.tty_ldisc_ops* %new_ldisc, %struct.tty_ldisc_ops** %arrayidx, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags() #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #9
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_unregister_ldisc(%struct.tty_ldisc_ops* nocapture noundef readonly %ldisc) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #9
  %num = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %ldisc, i64 0, i32 1
  %0 = load i32, i32* %num, align 8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [30 x %struct.tty_ldisc_ops*], [30 x %struct.tty_ldisc_ops*]* @tty_ldiscs, i64 0, i64 %idxprom
  store %struct.tty_ldisc_ops* null, %struct.tty_ldisc_ops** %arrayidx, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i8* @tty_ldiscs_seq_start(%struct.seq_file* nocapture noundef readnone %m, i64* noundef readonly %pos) #1 {
entry:
  %0 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %0, 30
  %1 = bitcast i64* %pos to i8*
  %2 = select i1 %cmp, i8* %1, i8* null
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @tty_ldiscs_seq_stop(%struct.seq_file* nocapture noundef %m, i8* nocapture noundef %v) #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i8* @tty_ldiscs_seq_next(%struct.seq_file* nocapture noundef readnone %m, i8* nocapture noundef readnone %v, i64* noundef %pos) #3 {
entry:
  %0 = load i64, i64* %pos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pos, align 8
  %cmp = icmp slt i64 %inc, 30
  %1 = bitcast i64* %pos to i8*
  %2 = select i1 %cmp, i8* %1, i8* null
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @tty_ldiscs_seq_show(%struct.seq_file* noundef %m, i8* nocapture noundef readonly %v) #0 {
entry:
  %0 = bitcast i8* %v to i64*
  %1 = load i64, i64* %0, align 8
  %conv = trunc i64 %1 to i32
  %call = call fastcc %struct.tty_ldisc_ops* @get_ldops(i32 noundef %conv) #9
  %2 = bitcast %struct.tty_ldisc_ops* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %2) #9
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %call, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %3, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %3
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef %spec.select, i32 noundef %conv) #11
  call fastcc void @put_ldops(%struct.tty_ldisc_ops* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 6
  %call = call i32 @ldsem_down_read(%struct.ld_semaphore* noundef %ldisc_sem, i64 noundef 9223372036854775807) #11
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %0 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %tobool.not = icmp eq %struct.tty_ldisc* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ldsem_up_read(%struct.ld_semaphore* noundef %ldisc_sem) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.tty_ldisc* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ldsem_down_read(%struct.ld_semaphore* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ldsem_up_read(%struct.ld_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 6
  %call = call i32 @ldsem_down_read_trylock(%struct.ld_semaphore* noundef %ldisc_sem) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %0 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %tobool1.not = icmp eq %struct.tty_ldisc* %0, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.then
  call void @ldsem_up_read(%struct.ld_semaphore* noundef %ldisc_sem) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then2, %entry
  %ld.0 = phi %struct.tty_ldisc* [ %0, %if.then ], [ null, %if.then2 ], [ null, %entry ]
  ret %struct.tty_ldisc* %ld.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ldsem_down_read_trylock(%struct.ld_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_ldisc_deref(%struct.tty_ldisc* nocapture noundef readonly %ld) local_unnamed_addr #0 {
entry:
  %tty = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %ld, i64 0, i32 1
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 6
  call void @ldsem_up_read(%struct.ld_semaphore* noundef %ldisc_sem) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_ldisc_lock(%struct.tty_struct* noundef %tty, i64 noundef %timeout) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 20, i64* noundef %flags) #9
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 0, i8* noundef null) #11
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait, i32 noundef 1, i32 noundef 0, i8* noundef null) #11
  %call = call fastcc i32 @__tty_ldisc_lock(%struct.tty_struct* noundef %tty, i64 noundef %timeout) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @set_bit(i64 noundef 22, i64* noundef %flags) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__tty_ldisc_lock(%struct.tty_struct* noundef %tty, i64 noundef %timeout) unnamed_addr #0 {
entry:
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 6
  %call = call i32 @ldsem_down_write(%struct.ld_semaphore* noundef %ldisc_sem, i64 noundef %timeout) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_ldisc_unlock(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @clear_bit(i64 noundef 22, i64* noundef %flags) #9
  call fastcc void @clear_bit(i64 noundef 20, i64* noundef %flags) #9
  call fastcc void @__tty_ldisc_unlock(%struct.tty_struct* noundef %tty) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__tty_ldisc_unlock(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 6
  call void @ldsem_up_write(%struct.ld_semaphore* noundef %ldisc_sem) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_ldisc_flush(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef %tty) #9
  call void @tty_buffer_flush(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef %call) #11
  %tobool.not = icmp eq %struct.tty_ldisc* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush(%struct.tty_struct* noundef, %struct.tty_ldisc* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_set_ldisc(%struct.tty_struct* noundef %tty, i32 noundef %disc) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* noundef %tty, i32 noundef %disc) #9
  %0 = bitcast %struct.tty_ldisc* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #9
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %0) #9
  %conv = trunc i64 %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @tty_lock(%struct.tty_struct* noundef %tty) #11
  %call4 = call i32 @tty_ldisc_lock(%struct.tty_struct* noundef %tty, i64 noundef 1250) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %err

if.end6:                                          ; preds = %if.end
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %tobool7.not = icmp eq %struct.tty_ldisc* %1, null
  br i1 %tobool7.not, label %out, label %if.end9

if.end9:                                          ; preds = %if.end6
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %1, i64 0, i32 0
  %2 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %num = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %2, i64 0, i32 1
  %3 = load i32, i32* %num, align 8
  %cmp = icmp eq i32 %3, %disc
  br i1 %cmp, label %out, label %if.end13

if.end13:                                         ; preds = %if.end9
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %4 = load volatile i64, i64* %flags, align 8
  %5 = and i64 %4, 262144
  %tobool15.not = icmp eq i64 %5, 0
  br i1 %tobool15.not, label %if.end17, label %out

if.end17:                                         ; preds = %if.end13
  call fastcc void @tty_ldisc_close(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef nonnull %1) #9
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ldisc, align 8
  call fastcc void @tty_set_termios_ldisc(%struct.tty_struct* noundef %tty, i32 noundef %disc) #9
  %call20 = call fastcc i32 @tty_ldisc_open(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef %call) #9
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end17
  call fastcc void @tty_ldisc_put(%struct.tty_ldisc* noundef %call) #9
  call fastcc void @tty_ldisc_restore(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef nonnull %1) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end17
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %ops26 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %6, i64 0, i32 0
  %7 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops26, align 8
  %num27 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %7, i64 0, i32 1
  %8 = load i32, i32* %num27, align 8
  %9 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %num29 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %9, i64 0, i32 1
  %10 = load i32, i32* %num29, align 8
  %cmp30.not = icmp eq i32 %8, %10
  br i1 %cmp30.not, label %out, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24
  %ops32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %11 = load %struct.tty_operations*, %struct.tty_operations** %ops32, align 8
  %set_ldisc = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %11, i64 0, i32 22
  %12 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %set_ldisc, align 8
  %tobool33.not = icmp eq void (%struct.tty_struct*)* %12, null
  br i1 %tobool33.not, label %out, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #11
  %13 = load %struct.tty_operations*, %struct.tty_operations** %ops32, align 8
  %set_ldisc36 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %13, i64 0, i32 22
  %14 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %set_ldisc36, align 8
  call void %14(%struct.tty_struct* noundef %tty) #11
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #11
  br label %out

out:                                              ; preds = %if.end24, %land.lhs.true, %if.then34, %if.end13, %if.end6, %if.end9
  %retval1.0 = phi i32 [ 0, %if.end9 ], [ -5, %if.end6 ], [ -5, %if.end13 ], [ %call20, %if.then34 ], [ %call20, %land.lhs.true ], [ %call20, %if.end24 ]
  %new_ldisc.0 = phi %struct.tty_ldisc* [ %call, %if.end9 ], [ %call, %if.end6 ], [ %call, %if.end13 ], [ %1, %if.then34 ], [ %1, %land.lhs.true ], [ %1, %if.end24 ]
  call void @tty_ldisc_unlock(%struct.tty_struct* noundef %tty) #9
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %15 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %call39 = call i1 @tty_buffer_restart_work(%struct.tty_port* noundef %15) #11
  br label %err

err:                                              ; preds = %if.end, %out
  %retval1.1 = phi i32 [ %call4, %if.end ], [ %retval1.0, %out ]
  %new_ldisc.1 = phi %struct.tty_ldisc* [ %call, %if.end ], [ %new_ldisc.0, %out ]
  call fastcc void @tty_ldisc_put(%struct.tty_ldisc* noundef %new_ldisc.1) #9
  call void @tty_unlock(%struct.tty_struct* noundef %tty) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %retval1.1, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* noundef %tty, i32 noundef %disc) unnamed_addr #0 {
entry:
  %0 = icmp ugt i32 %disc, 29
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.tty_ldisc_ops* @get_ldops(i32 noundef %disc) #9
  %1 = bitcast %struct.tty_ldisc_ops* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %1) #9
  br i1 %call3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %call5 = call i1 @capable(i32 noundef 16) #11
  %2 = load i32, i32* @tty_ldisc_autoload, align 4
  %tobool = icmp ne i32 %2, 0
  %or.cond19 = select i1 %call5, i1 true, i1 %tobool
  br i1 %or.cond19, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then4
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -1) #9
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %call10 = call fastcc %struct.tty_ldisc_ops* @get_ldops(i32 noundef %disc) #9
  %3 = bitcast %struct.tty_ldisc_ops* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %3) #9
  br i1 %call11, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end8, %if.end
  %ldops.0 = phi %struct.tty_ldisc_ops* [ %call10, %if.end8 ], [ %call2, %if.end ]
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %4, i32 noundef 36032) #11
  %ops = bitcast i8* %call.i.i to %struct.tty_ldisc_ops**
  store %struct.tty_ldisc_ops* %ldops.0, %struct.tty_ldisc_ops** %ops, align 8
  %tty17 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %5 = bitcast i8* %tty17 to %struct.tty_struct**
  store %struct.tty_struct* %tty, %struct.tty_struct** %5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end15, %if.then6, %if.then
  %retval.0.in = phi i8* [ %call, %if.then ], [ %call.i.i, %if.end15 ], [ %call7, %if.then6 ], [ %3, %if.end8 ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.tty_ldisc*
  ret %struct.tty_ldisc* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(%struct.tty_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_ldisc_close(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* nocapture noundef readonly %ld) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 2048
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_ldisc.c\22; .popsection; .long 14472b - 14470b; .short 471; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @clear_bit(i64 noundef 11, i64* noundef %flags) #9
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %ld, i64 0, i32 0
  %2 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %close = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %2, i64 0, i32 4
  %3 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %close, align 8
  %tobool17.not = icmp eq void (%struct.tty_struct*)* %3, null
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end
  call void %3(%struct.tty_struct* noundef %tty) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_set_termios_ldisc(%struct.tty_struct* noundef %tty, i32 noundef %disc) unnamed_addr #0 {
entry:
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #11
  %conv = trunc i32 %disc to i8
  %c_line = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 4
  store i8 %conv, i8* %c_line, align 8
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #11
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  store i8* null, i8** %disc_data, align 8
  %receive_room = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 22
  store i32 0, i32* %receive_room, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_ldisc_open(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* nocapture noundef readonly %ld) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %call = call fastcc i1 @test_and_set_bit(i64* noundef %flags) #9
  br i1 %call, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_ldisc.c\22; .popsection; .long 14472b - 14470b; .short 445; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %ld, i64 0, i32 0
  %0 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %open = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %0, i64 0, i32 3
  %1 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %open, align 8
  %tobool14.not = icmp eq i32 (%struct.tty_struct*)* %1, null
  br i1 %tobool14.not, label %return, label %if.then15

if.then15:                                        ; preds = %if.end
  %call18 = call i32 %1(%struct.tty_struct* noundef %tty) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %return, label %if.then20

if.then20:                                        ; preds = %if.then15
  call fastcc void @clear_bit(i64 noundef 11, i64* noundef %flags) #9
  br label %return

return:                                           ; preds = %if.end, %if.then15, %if.then20
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ 0, %if.then15 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_ldisc_put(%struct.tty_ldisc* noundef %ld) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_ldisc* %ld, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_ldisc.c\22; .popsection; .long 14472b - 14470b; .short 186; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !12
  br label %return

if.end18:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %ld, i64 0, i32 0
  %0 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  call fastcc void @put_ldops(%struct.tty_ldisc_ops* noundef %0) #9
  %1 = bitcast %struct.tty_ldisc* %ld to i8*
  call void @kfree(i8* noundef nonnull %1) #11
  br label %return

return:                                           ; preds = %if.then, %if.end18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_ldisc_restore(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* nocapture noundef readonly %old) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %old, i64 0, i32 0
  %0 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %num = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %0, i64 0, i32 1
  %1 = load i32, i32* %num, align 8
  %call = call fastcc i32 @tty_ldisc_failto(%struct.tty_struct* noundef %tty, i32 noundef %1) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call1 = call i8* @tty_name(%struct.tty_struct* noundef %tty) #11
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call1) #12
  %call3 = call fastcc i32 @tty_ldisc_failto(%struct.tty_struct* noundef %tty, i32 noundef 0) #9
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.then
  %call5 = call fastcc i32 @tty_ldisc_failto(%struct.tty_struct* noundef %tty, i32 noundef 27) #9
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call1) #13
  unreachable

if.end8:                                          ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @tty_buffer_restart_work(%struct.tty_port* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(%struct.tty_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_ldisc_reinit(%struct.tty_struct* noundef %tty, i32 noundef %disc) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* noundef %tty, i32 noundef %disc) #9
  %0 = bitcast %struct.tty_ldisc* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #9
  br i1 %call2, label %do.body3, label %if.end16

do.body3:                                         ; preds = %entry
  %cmp = icmp eq i32 %disc, 0
  br i1 %cmp, label %do.body6, label %do.end13, !prof !9

do.body6:                                         ; preds = %do.body3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_ldisc.c\22; .popsection; .long 14472b - 14470b; .short 674; .short 0; .popsection; 14471: brk 0x800", ""() #10, !srcloc !13
  unreachable

do.end13:                                         ; preds = %do.body3
  %call14 = call fastcc i64 @PTR_ERR(i8* noundef %0) #9
  %conv15 = trunc i64 %call14 to i32
  br label %cleanup

if.end16:                                         ; preds = %entry
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %tobool17.not = icmp eq %struct.tty_ldisc* %1, null
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end16
  call fastcc void @tty_ldisc_close(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef nonnull %1) #9
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  call fastcc void @tty_ldisc_put(%struct.tty_ldisc* noundef %2) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ldisc, align 8
  call fastcc void @tty_set_termios_ldisc(%struct.tty_struct* noundef %tty, i32 noundef %disc) #9
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %call24 = call fastcc i32 @tty_ldisc_open(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef %3) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.end21
  %4 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  call fastcc void @tty_ldisc_put(%struct.tty_ldisc* noundef %4) #9
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %ldisc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then26, %do.end13
  %retval.0 = phi i32 [ %conv15, %do.end13 ], [ %call24, %if.then26 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_ldisc_hangup(%struct.tty_struct* noundef %tty, i1 noundef %reinit) local_unnamed_addr #0 {
entry:
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef %tty) #9
  %cmp.not = icmp eq %struct.tty_ldisc* %call, null
  br i1 %cmp.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call, i64 0, i32 0
  %0 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %0, i64 0, i32 5
  %1 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8
  %tobool.not = icmp eq void (%struct.tty_struct*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void %1(%struct.tty_struct* noundef %tty) #11
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  call void @tty_driver_flush_buffer(%struct.tty_struct* noundef %tty) #11
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %2 = load volatile i64, i64* %flags, align 8
  %3 = and i64 %2, 32
  %tobool5.not = icmp eq i64 %3, 0
  br i1 %tobool5.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %write_wakeup = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %4, i64 0, i32 14
  %5 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %write_wakeup, align 8
  %tobool7.not = icmp eq void (%struct.tty_struct*)* %5, null
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  call void %5(%struct.tty_struct* noundef %tty) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true, %if.end
  %6 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %hangup = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %6, i64 0, i32 12
  %7 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %hangup, align 8
  %tobool13.not = icmp eq i32 (%struct.tty_struct*)* %7, null
  br i1 %tobool13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call17 = call i32 %7(%struct.tty_struct* noundef %tty) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call) #9
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %entry
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait, i32 noundef 1, i32 noundef 1, i8* noundef nonnull inttoptr (i64 4 to i8*)) #11
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef nonnull inttoptr (i64 1 to i8*)) #11
  %call20 = call i32 @tty_ldisc_lock(%struct.tty_struct* noundef %tty, i64 noundef 9223372036854775807) #9
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %8 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %flags21 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %8, i64 0, i32 13
  %9 = load i64, i64* %flags21, align 8
  %and = and i64 %9, 2
  %tobool22.not = icmp eq i64 %and, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  call fastcc void @tty_reset_termios(%struct.tty_struct* noundef %tty) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %10 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %tobool25.not = icmp eq %struct.tty_ldisc* %10, null
  br i1 %tobool25.not, label %if.end59, label %if.then26

if.then26:                                        ; preds = %if.end24
  br i1 %reinit, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then26
  %c_line = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 4
  %11 = load i8, i8* %c_line, align 8
  %conv = zext i8 %11 to i32
  %call29 = call i32 @tty_ldisc_reinit(%struct.tty_struct* noundef %tty, i32 noundef %conv) #9
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %land.lhs.true32, label %if.end59

land.lhs.true32:                                  ; preds = %if.then28
  %call33 = call i32 @tty_ldisc_reinit(%struct.tty_struct* noundef %tty, i32 noundef 0) #9
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end59

if.then36:                                        ; preds = %land.lhs.true32
  %call37 = call i32 @tty_ldisc_reinit(%struct.tty_struct* noundef %tty, i32 noundef 27) #9
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then48, label %if.end59, !prof !9

if.then48:                                        ; preds = %if.then36
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_ldisc.c\22; .popsection; .long 14472b - 14470b; .short 747; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !14
  br label %if.end59

if.else:                                          ; preds = %if.then26
  call fastcc void @tty_ldisc_kill(%struct.tty_struct* noundef %tty) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then36, %if.then48, %if.else, %land.lhs.true32, %if.then28, %if.end24
  call void @tty_ldisc_unlock(%struct.tty_struct* noundef %tty) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(%struct.tty_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_reset_termios(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #11
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %init_termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 12
  %1 = bitcast %struct.ktermios* %termios to i8*
  %2 = bitcast %struct.ktermios* %init_termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(44) %1, i8* noundef align 4 dereferenceable(44) %2, i64 44, i1 false)
  %call = call i32 @tty_termios_input_baud_rate(%struct.ktermios* noundef %termios) #11
  %c_ispeed = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 6
  store i32 %call, i32* %c_ispeed, align 4
  %call4 = call i32 @tty_termios_baud_rate(%struct.ktermios* noundef %termios) #11
  %c_ospeed = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 7
  store i32 %call4, i32* %c_ospeed, align 8
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_ldisc_kill(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %0 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %tobool.not = icmp eq %struct.tty_ldisc* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @tty_ldisc_close(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef nonnull %0) #9
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  call fastcc void @tty_ldisc_put(%struct.tty_ldisc* noundef %1) #9
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %ldisc, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_ldisc_setup(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %o_tty) local_unnamed_addr #0 {
entry:
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %0 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %call = call fastcc i32 @tty_ldisc_open(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef %0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.tty_struct* %o_tty, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %ldisc4 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %o_tty, i64 0, i32 7
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc4, align 8
  %call5 = call fastcc i32 @tty_ldisc_open(%struct.tty_struct* noundef nonnull %o_tty, %struct.tty_ldisc* noundef %1) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.then3
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  call fastcc void @tty_ldisc_close(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry, %if.then7
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call, %entry ], [ 0, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_ldisc_release(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  call fastcc void @tty_ldisc_lock_pair(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %0) #9
  call fastcc void @tty_ldisc_kill(%struct.tty_struct* noundef %tty) #9
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @tty_ldisc_kill(%struct.tty_struct* noundef nonnull %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @tty_ldisc_unlock_pair(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_ldisc_lock_pair(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %tty2) unnamed_addr #0 {
entry:
  call fastcc void @tty_ldisc_lock_pair_timeout(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %tty2) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_ldisc_unlock_pair(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %tty2) unnamed_addr #0 {
entry:
  call fastcc void @__tty_ldisc_unlock(%struct.tty_struct* noundef %tty) #9
  %tobool.not = icmp eq %struct.tty_struct* %tty2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__tty_ldisc_unlock(%struct.tty_struct* noundef nonnull %tty2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_ldisc_init(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* noundef %tty, i32 noundef 0) #9
  %0 = bitcast %struct.tty_ldisc* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #9
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #9
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ldisc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_ldisc_deinit(%struct.tty_struct* nocapture noundef %tty) local_unnamed_addr #0 {
entry:
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %0 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %tobool.not = icmp eq %struct.tty_ldisc* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @tty_ldisc_put(%struct.tty_ldisc* noundef nonnull %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %ldisc, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_sysctl_init() local_unnamed_addr #0 {
entry:
  %call = call %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @tty_root_table, i64 0, i64 0)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef) local_unnamed_addr #4

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
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @tty_ldiscs_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #10, !srcloc !16
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #10, !srcloc !17
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
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @tty_ldiscs_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @tty_ldiscs_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #10, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @tty_ldiscs_lock to i8*), i8 0) #10, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #10, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_ldisc_ops* @get_ldops(i32 noundef %disc) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #9
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -22) #9
  %0 = bitcast i8* %call1 to %struct.tty_ldisc_ops*
  %idxprom = sext i32 %disc to i64
  %arrayidx = getelementptr [30 x %struct.tty_ldisc_ops*], [30 x %struct.tty_ldisc_ops*]* @tty_ldiscs, i64 0, i64 %idxprom
  %1 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %arrayidx, align 8
  %tobool.not = icmp eq %struct.tty_ldisc_ops* %1, null
  %spec.select = select i1 %tobool.not, %struct.tty_ldisc_ops* %0, %struct.tty_ldisc_ops* %1
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #9
  ret %struct.tty_ldisc_ops* %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_ldops(%struct.tty_ldisc_ops* nocapture noundef readnone %ldops) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #9
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #2 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ldsem_down_write(%struct.ld_semaphore* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #10, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ldsem_up_write(%struct.ld_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 2048
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #11
  %2 = and i64 %call.i.i.i, 2048
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 2048, i64* elementtype(i64) %counter) #10, !srcloc !24
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_ldisc_failto(%struct.tty_struct* noundef %tty, i32 noundef %ld) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* noundef %tty, i32 noundef %ld) #9
  %0 = bitcast %struct.tty_ldisc* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #9
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #9
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ldisc, align 8
  call fastcc void @tty_set_termios_ldisc(%struct.tty_struct* noundef %tty, i32 noundef %ld) #9
  %call3 = call fastcc i32 @tty_ldisc_open(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef %call) #9
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  call fastcc void @tty_ldisc_put(%struct.tty_ldisc* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call3, %if.then5 ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @tty_name(%struct.tty_struct* noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_input_baud_rate(%struct.ktermios* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_ldisc_lock_pair_timeout(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %tty2) unnamed_addr #0 {
entry:
  %cmp = icmp ult %struct.tty_struct* %tty, %tty2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @__tty_ldisc_lock(%struct.tty_struct* noundef %tty, i64 noundef 9223372036854775807) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.then
  %call2 = call fastcc i32 @__tty_ldisc_lock_nested(%struct.tty_struct* noundef nonnull %tty2) #9
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end41

if.then4:                                         ; preds = %if.then1
  call fastcc void @__tty_ldisc_unlock(%struct.tty_struct* noundef %tty) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp6 = icmp eq %struct.tty_struct* %tty, %tty2
  br i1 %cmp6, label %if.end15.thread, label %if.end15, !prof !9

if.end15.thread:                                  ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_ldisc.c\22; .popsection; .long 14472b - 14470b; .short 354; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #10, !srcloc !25
  br label %if.end38

if.end15:                                         ; preds = %if.else
  %tobool23.not = icmp eq %struct.tty_struct* %tty2, null
  br i1 %tobool23.not, label %if.end38, label %if.then26

if.then26:                                        ; preds = %if.end15
  %call27 = call fastcc i32 @__tty_ldisc_lock(%struct.tty_struct* noundef nonnull %tty2, i64 noundef 9223372036854775807) #9
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %if.then26
  %call30 = call fastcc i32 @__tty_ldisc_lock_nested(%struct.tty_struct* noundef %tty) #9
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end41.thread

if.end41.thread:                                  ; preds = %if.then29
  %flags9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 22, i64* noundef %flags9) #9
  br label %if.then43

if.then32:                                        ; preds = %if.then29
  call fastcc void @__tty_ldisc_unlock(%struct.tty_struct* noundef nonnull %tty2) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end15, %if.end15.thread
  %call36 = call fastcc i32 @__tty_ldisc_lock(%struct.tty_struct* noundef %tty, i64 noundef 9223372036854775807) #9
  %tobool39.not = icmp eq i32 %call36, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.then1, %if.end38
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 22, i64* noundef %flags) #9
  %tobool42.not = icmp eq %struct.tty_struct* %tty2, null
  br i1 %tobool42.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end41.thread, %if.end41
  %flags44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty2, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 22, i64* noundef %flags44) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then32, %if.then, %if.then4, %if.end41, %if.then43, %if.end38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__tty_ldisc_lock_nested(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 6
  %call = call i32 @ldsem_down_write(%struct.ld_semaphore* noundef %ldisc_sem, i64 noundef 9223372036854775807) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149438896}
!8 = !{i64 2149464739}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153473457}
!11 = !{i64 2153471757}
!12 = !{i64 2153467169}
!13 = !{i64 2153475547}
!14 = !{i64 2153481746}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2149004723, i64 2149004770, i64 2149004776, i64 2149004813, i64 2149004831, i64 2149006142, i64 2149006190, i64 2149006238, i64 2149006301, i64 2149006350, i64 2149004909, i64 2149004934, i64 2149004960, i64 2149004966, i64 2149005808, i64 2149005848, i64 2149005866, i64 2149005898, i64 2149005926, i64 2149005980, i64 2149006000, i64 2149006097, i64 2149004989, i64 2149005003, i64 2149005009, i64 2149005059, i64 2149005105, i64 2149005138}
!17 = !{i64 2149006902, i64 2149006949, i64 2149006955, i64 2149006992, i64 2149007010, i64 2149007953, i64 2149008001, i64 2149008049, i64 2149008112, i64 2149008161, i64 2149007088, i64 2149007113, i64 2149007139, i64 2149007145, i64 2149007182, i64 2149007188, i64 2149007238, i64 2149007284, i64 2149007317}
!18 = !{i64 2148999020, i64 2148999067, i64 2148999073, i64 2148999110, i64 2148999128, i64 2149000469, i64 2149000517, i64 2149000565, i64 2149000628, i64 2149000677, i64 2148999206, i64 2148999231, i64 2148999257, i64 2148999263, i64 2149000135, i64 2149000175, i64 2149000193, i64 2149000225, i64 2149000253, i64 2149000307, i64 2149000327, i64 2149000424, i64 2148999286, i64 2148999300, i64 2148999306, i64 2148999356, i64 2148999402, i64 2148999435}
!19 = !{i64 2147990809, i64 2147990842, i64 2147990895, i64 2147990954, i64 2147990988, i64 2147991043, i64 2147991072, i64 2147991092}
!20 = !{i64 2149253408}
!21 = !{i64 2149010736, i64 2149010783, i64 2149010789, i64 2149010826, i64 2149010844, i64 2149012155, i64 2149012203, i64 2149012251, i64 2149012314, i64 2149012363, i64 2149010922, i64 2149010947, i64 2149010973, i64 2149010979, i64 2149011821, i64 2149011861, i64 2149011879, i64 2149011911, i64 2149011939, i64 2149011993, i64 2149012013, i64 2149012110, i64 2149011002, i64 2149011016, i64 2149011022, i64 2149011072, i64 2149011118, i64 2149011151}
!22 = !{i64 2147959966, i64 2147960477, i64 2147960507, i64 2147960533, i64 2147960565, i64 2147960594}
!23 = !{i64 2147970536, i64 2147971057, i64 2147971087, i64 2147971113, i64 2147971145, i64 2147971174}
!24 = !{i64 2147960812, i64 2147961464, i64 2147961494, i64 2147961525, i64 2147961557, i64 2147961592, i64 2147961617}
!25 = !{i64 2153469960}
