; ModuleID = 'drivers/tty/n_tty.c'
source_filename = "drivers/tty/n_tty.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.63, %struct.anon.64, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.cgroup_namespace = type opaque
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
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.n_tty_data = type { i64, i64, i64, i64, i64, i64, [4 x i64], i64, i32, i8, i8, [4096 x i8], [64 x i64], [4096 x i8], i64, i64, i32, i32, i64, %struct.mutex, %struct.mutex }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@n_tty_ops = internal global %struct.tty_ldisc_ops { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 (%struct.tty_struct*)* @n_tty_open, void (%struct.tty_struct*)* @n_tty_close, void (%struct.tty_struct*)* @n_tty_flush_buffer, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)* @n_tty_read, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)* @n_tty_write, i32 (%struct.tty_struct*, %struct.file*, i32, i64)* @n_tty_ioctl, i32 (%struct.tty_struct*, %struct.file*, i32, i64)* null, void (%struct.tty_struct*, %struct.ktermios*)* @n_tty_set_termios, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)* @n_tty_poll, i32 (%struct.tty_struct*)* null, void (%struct.tty_struct*, i8*, i8*, i32)* @n_tty_receive_buf, void (%struct.tty_struct*)* @n_tty_write_wakeup, void (%struct.tty_struct*, i32)* null, i32 (%struct.tty_struct*, i8*, i8*, i32)* @n_tty_receive_buf2, %struct.module* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"n_tty\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@n_tty_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"&ldata->atomic_read_lock\00", align 1
@n_tty_open.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"&ldata->output_lock\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@n_tty_kick_worker._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.n_tty_kick_worker = private unnamed_addr constant [18 x i8] c"n_tty_kick_worker\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"scheduling with invalid itty\0A\00", align 1
@n_tty_kick_worker._rs.5 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"scheduling buffer work for halted ldisc\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\013%s %s: unknown flag %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\014%s %s: %d input overrun(s)\0A\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local void @n_tty_inherit_ops(%struct.tty_ldisc_ops* nocapture noundef writeonly %ops) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.tty_ldisc_ops* %ops to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(136) %0, i8* noundef align 8 dereferenceable(136) bitcast (%struct.tty_ldisc_ops* @n_tty_ops to i8*), i64 128, i1 false)
  %owner = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %ops, i64 0, i32 17
  store %struct.module* null, %struct.module** %owner, align 8
  %flags = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %ops, i64 0, i32 2
  store i32 0, i32* %flags, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @n_tty_init() local_unnamed_addr #2 section ".init.text" {
entry:
  %call = call i32 @tty_register_ldisc(%struct.tty_ldisc_ops* noundef nonnull @n_tty_ops) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(%struct.tty_ldisc_ops* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @n_tty_open(%struct.tty_struct* noundef %tty) #4 {
entry:
  %call = call i8* @vzalloc(i64 noundef 8896) #13
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load volatile i64, i64* @jiffies, align 64
  %overrun_time = getelementptr inbounds i8, i8* %call, i64 80
  %1 = bitcast i8* %overrun_time to i64*
  store i64 %0, i64* %1, align 8
  %atomic_read_lock = getelementptr inbounds i8, i8* %call, i64 8832
  %2 = bitcast i8* %atomic_read_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @n_tty_open.__key) #13
  %output_lock = getelementptr inbounds i8, i8* %call, i64 8864
  %3 = bitcast i8* %output_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @n_tty_open.__key.2) #13
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  store i8* %call, i8** %disc_data, align 8
  %closing = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 33
  store i32 0, i32* %closing, align 8
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @clear_bit(i64 noundef 22, i64* noundef %flags) #14
  call void @n_tty_set_termios(%struct.tty_struct* noundef %tty, %struct.ktermios* noundef null) #14
  call void @tty_unthrottle(%struct.tty_struct* noundef %tty) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @n_tty_close(%struct.tty_struct* noundef %tty) #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = load i8*, i8** %disc_data, align 8
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %1 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @n_tty_packet_mode_flush(%struct.tty_struct* noundef %tty) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #13
  call void @vfree(i8* noundef %0) #13
  store i8* null, i8** %disc_data, align 8
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @n_tty_flush_buffer(%struct.tty_struct* noundef %tty) #4 {
entry:
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #13
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  call fastcc void @reset_buffer_flags(%struct.n_tty_data* noundef %1) #14
  call fastcc void @n_tty_kick_worker(%struct.tty_struct* noundef %tty) #14
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %2 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @n_tty_packet_mode_flush(%struct.tty_struct* noundef %tty) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @n_tty_read(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, i8* noundef %kbuf, i64 noundef %nr, i8** noundef %cookie, i64 noundef %offset) #4 {
entry:
  %nr.addr = alloca i64, align 8
  %kb = alloca i8*, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  store i64 %nr, i64* %nr.addr, align 8
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %2 = bitcast i8** %kb to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store i8* %kbuf, i8** %kb, align 8
  %3 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #15
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !7
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %6 = bitcast i8** %private to %struct.task_struct**
  %7 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %7, align 8
  store %struct.task_struct* %5, %struct.task_struct** %6, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @woken_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %8 = load i8*, i8** %cookie, align 8
  %tobool.not = icmp eq i8* %8, null
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %icanon = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %icanon, align 1
  %9 = and i8 %bf.load, 16
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %10 = load i32, i32* %c_lflag, align 4
  %and = and i32 %10, 65536
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call fastcc i1 @canon_copy_from_read_buf(%struct.tty_struct* noundef %tty, i8** noundef nonnull %kb, i64* noundef nonnull %nr.addr) #14
  br i1 %call8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.then7
  %11 = load i8*, i8** %kb, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %kbuf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup199

if.else:                                          ; preds = %land.lhs.true, %if.then
  %call10 = call fastcc i1 @copy_from_read_buf(%struct.tty_struct* noundef %tty, i8** noundef nonnull %kb, i64* noundef nonnull %nr.addr) #14
  br i1 %call10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.else
  %12 = load i8*, i8** %kb, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %kbuf to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  br label %cleanup199

if.end16:                                         ; preds = %if.else, %if.then7
  call fastcc void @n_tty_kick_worker(%struct.tty_struct* noundef %tty) #14
  call fastcc void @n_tty_check_unthrottle(%struct.tty_struct* noundef %tty) #14
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  %atomic_read_lock = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 19
  call void @mutex_unlock(%struct.mutex* noundef %atomic_read_lock) #13
  store i8* null, i8** %cookie, align 8
  %13 = load i8*, i8** %kb, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %kbuf to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  br label %cleanup199

if.end20:                                         ; preds = %entry
  %call21 = call fastcc i32 @job_control(%struct.tty_struct* noundef %tty, %struct.file* noundef %file) #14
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %conv24 = sext i32 %call21 to i64
  br label %cleanup199

if.end25:                                         ; preds = %if.end20
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %14 = load i32, i32* %f_flags, align 8
  %and26 = and i32 %14, 2048
  %tobool27.not = icmp eq i32 %and26, 0
  %atomic_read_lock35 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 19
  br i1 %tobool27.not, label %if.else34, label %if.then28

if.then28:                                        ; preds = %if.end25
  %call30 = call i32 @mutex_trylock(%struct.mutex* noundef %atomic_read_lock35) #13
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup199, label %if.end40

if.else34:                                        ; preds = %if.end25
  %call36 = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %atomic_read_lock35) #13
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %cleanup199

if.end40:                                         ; preds = %if.else34, %if.then28
  %termios_rwsem41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem41) #13
  %icanon42 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load43 = load i8, i8* %icanon42, align 1
  %15 = and i8 %bf.load43, 16
  %tobool46.not = icmp eq i8 %15, 0
  br i1 %tobool46.not, label %if.then47, label %if.end64

if.then47:                                        ; preds = %if.end40
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 6
  %16 = load i8, i8* %arrayidx, align 1
  %tobool50.not = icmp eq i8 %16, 0
  %arrayidx59 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 5
  %17 = load i8, i8* %arrayidx59, align 1
  br i1 %tobool50.not, label %if.else56, label %if.then51

if.then51:                                        ; preds = %if.then47
  %conv55 = zext i8 %17 to i32
  %mul = mul nuw nsw i32 %conv55, 25
  %phi.cast = zext i8 %16 to i64
  br label %if.end64

if.else56:                                        ; preds = %if.then47
  %conv60 = zext i8 %17 to i64
  %mul61 = mul nuw nsw i64 %conv60, 25
  br label %if.end64

if.end64:                                         ; preds = %if.then51, %if.else56, %if.end40
  %minimum.0 = phi i64 [ 0, %if.end40 ], [ %phi.cast, %if.then51 ], [ 1, %if.else56 ]
  %time.0 = phi i32 [ 0, %if.end40 ], [ %mul, %if.then51 ], [ 0, %if.else56 ]
  %timeout.0 = phi i64 [ 9223372036854775807, %if.end40 ], [ 9223372036854775807, %if.then51 ], [ %mul61, %if.else56 ]
  %packet65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 4
  %18 = load i8, i8* %packet65, align 1, !range !8
  %tobool66.not = icmp eq i8 %18, 0
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %19 = load i64, i64* %read_tail, align 8
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 27
  call void @add_wait_queue(%struct.wait_queue_head* noundef %read_wait, %struct.wait_queue_entry* noundef nonnull %wait) #13
  %tobool67.not289 = icmp eq i64 %nr, 0
  br i1 %tobool67.not289, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end64
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %c_lflag137 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %sub.ptr.rhs.cast158 = ptrtoint i8* %kbuf to i64
  %tobool178.not = icmp eq i32 %time.0, 0
  %20 = zext i32 %time.0 to i64
  %flags99 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %incdec.ptr151 = getelementptr i8, i8* %kbuf, i64 1
  %tobool66.not.not = xor i1 %tobool66.not, true
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %21 = phi i64 [ %nr, %while.body.lr.ph ], [ %33, %while.cond.backedge ]
  %22 = phi i8* [ %kbuf, %while.body.lr.ph ], [ %34, %while.cond.backedge ]
  %timeout.1290 = phi i64 [ %timeout.0, %while.body.lr.ph ], [ %timeout.1.be, %while.cond.backedge ]
  br i1 %tobool66.not, label %if.end90, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %while.body
  %23 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i64 0, i32 20, i32 3
  %24 = load i8, i8* %pktstatus, align 8
  %tobool73.not = icmp eq i8 %24, 0
  br i1 %tobool73.not, label %if.end90, label %if.then74

if.then74:                                        ; preds = %land.lhs.true70
  %cmp75.not = icmp eq i8* %22, %kbuf
  br i1 %cmp75.not, label %if.end78, label %while.end

if.end78:                                         ; preds = %if.then74
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i64 0, i32 20, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #13
  %25 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %pktstatus83 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i64 0, i32 20, i32 3
  %26 = load i8, i8* %pktstatus83, align 8
  store i8 0, i8* %pktstatus83, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %rlock.i283 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i64 0, i32 20, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i283) #13
  %incdec.ptr = getelementptr i8, i8* %kbuf, i64 1
  store i8* %incdec.ptr, i8** %kb, align 8
  store i8 %26, i8* %kbuf, align 1
  %dec = add i64 %21, -1
  store i64 %dec, i64* %nr.addr, align 8
  br label %while.end

if.end90:                                         ; preds = %land.lhs.true70, %while.body
  %call91 = call fastcc i32 @input_available_p(%struct.tty_struct* noundef %tty, i32 noundef 0) #14
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end128

if.then93:                                        ; preds = %if.end90
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem41) #13
  %28 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call void @tty_buffer_flush_work(%struct.tty_port* noundef %28) #13
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem41) #13
  %call96 = call fastcc i32 @input_available_p(%struct.tty_struct* noundef %tty, i32 noundef 0) #14
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end128

if.then98:                                        ; preds = %if.then93
  %29 = load volatile i64, i64* %flags99, align 8
  %30 = and i64 %29, 4
  %tobool101.not = icmp eq i64 %30, 0
  br i1 %tobool101.not, label %if.end103, label %while.end

if.end103:                                        ; preds = %if.then98
  %call104 = call i32 @tty_hung_up_p(%struct.file* noundef %file) #13
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %while.end

if.end107:                                        ; preds = %if.end103
  %31 = load volatile i64, i64* %flags99, align 8
  %32 = and i64 %31, 524288
  %tobool110 = icmp eq i64 %32, 0
  %tobool113 = icmp ne i64 %timeout.1290, 0
  %or.cond = select i1 %tobool110, i1 %tobool113, i1 false
  br i1 %or.cond, label %if.end115, label %while.end

if.end115:                                        ; preds = %if.end107
  %call116 = call fastcc i1 @tty_io_nonblock(%struct.tty_struct* noundef %tty, %struct.file* noundef %file) #14
  br i1 %call116, label %while.end, label %if.end118

if.end118:                                        ; preds = %if.end115
  %call120 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %5) #14
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %while.end

if.end123:                                        ; preds = %if.end118
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem41) #13
  %call125 = call i64 @wait_woken(%struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 1, i64 noundef %timeout.1290) #13
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem41) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end123, %if.end177
  %33 = phi i64 [ %.pre300, %if.end177 ], [ %21, %if.end123 ]
  %34 = phi i8* [ %39, %if.end177 ], [ %22, %if.end123 ]
  %timeout.1.be = phi i64 [ %spec.select, %if.end177 ], [ %call125, %if.end123 ]
  %tobool67.not = icmp eq i64 %33, 0
  br i1 %tobool67.not, label %while.end, label %while.body

if.end128:                                        ; preds = %if.then93, %if.end90
  %bf.load130 = load i8, i8* %icanon42, align 1
  %35 = and i8 %bf.load130, 16
  %tobool134.not = icmp eq i8 %35, 0
  br i1 %tobool134.not, label %if.else144, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %if.end128
  %36 = load i32, i32* %c_lflag137, align 4
  %and138 = and i32 %36, 65536
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.then140, label %if.else144

if.then140:                                       ; preds = %land.lhs.true135
  %call141 = call fastcc i1 @canon_copy_from_read_buf(%struct.tty_struct* noundef %tty, i8** noundef nonnull %kb, i64* noundef nonnull %nr.addr) #14
  br i1 %call141, label %if.then140.more_to_be_read_crit_edge, label %if.end169

if.then140.more_to_be_read_crit_edge:             ; preds = %if.then140
  %.pre = load i8*, i8** %kb, align 8
  %.pre301 = ptrtoint i8* %.pre to i64
  %.pre302 = sub i64 %.pre301, %sub.ptr.rhs.cast158
  br label %more_to_be_read

if.else144:                                       ; preds = %land.lhs.true135, %if.end128
  %cmp148 = icmp eq i8* %22, %kbuf
  %or.cond311 = select i1 %tobool66.not.not, i1 %cmp148, i1 false
  br i1 %or.cond311, label %if.then150, label %if.end153

if.then150:                                       ; preds = %if.else144
  store i8* %incdec.ptr151, i8** %kb, align 8
  store i8 0, i8* %kbuf, align 1
  %dec152 = add i64 %21, -1
  store i64 %dec152, i64* %nr.addr, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.else144
  %call154 = call fastcc i1 @copy_from_read_buf(%struct.tty_struct* noundef %tty, i8** noundef nonnull %kb, i64* noundef nonnull %nr.addr) #14
  br i1 %call154, label %land.lhs.true156, label %if.end169

land.lhs.true156:                                 ; preds = %if.end153
  %37 = load i8*, i8** %kb, align 8
  %sub.ptr.lhs.cast157 = ptrtoint i8* %37 to i64
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast158
  %cmp161.not = icmp slt i64 %sub.ptr.sub159, %minimum.0
  br i1 %cmp161.not, label %if.end169, label %more_to_be_read

more_to_be_read:                                  ; preds = %land.lhs.true156, %if.then140.more_to_be_read_crit_edge
  %sub.ptr.sub167.pre-phi = phi i64 [ %.pre302, %if.then140.more_to_be_read_crit_edge ], [ %sub.ptr.sub159, %land.lhs.true156 ]
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %read_wait, %struct.wait_queue_entry* noundef nonnull %wait) #13
  %38 = bitcast i8** %cookie to i8***
  store i8** %cookie, i8*** %38, align 8
  br label %cleanup199

if.end169:                                        ; preds = %if.end153, %land.lhs.true156, %if.then140
  call fastcc void @n_tty_check_unthrottle(%struct.tty_struct* noundef %tty) #14
  %39 = load i8*, i8** %kb, align 8
  %sub.ptr.lhs.cast170 = ptrtoint i8* %39 to i64
  %sub.ptr.sub172 = sub i64 %sub.ptr.lhs.cast170, %sub.ptr.rhs.cast158
  %cmp174.not = icmp slt i64 %sub.ptr.sub172, %minimum.0
  br i1 %cmp174.not, label %if.end177, label %while.end

if.end177:                                        ; preds = %if.end169
  %spec.select = select i1 %tobool178.not, i64 %timeout.1290, i64 %20
  %.pre300 = load i64, i64* %nr.addr, align 8
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %if.end103, %if.end107, %if.end169, %if.then98, %if.end115, %if.end118, %if.end64, %if.end78, %if.then74
  %40 = phi i8* [ %22, %if.then74 ], [ %incdec.ptr, %if.end78 ], [ %kbuf, %if.end64 ], [ %34, %while.cond.backedge ], [ %22, %if.end103 ], [ %22, %if.end107 ], [ %39, %if.end169 ], [ %22, %if.then98 ], [ %22, %if.end115 ], [ %22, %if.end118 ]
  %retval4.0 = phi i64 [ 0, %if.then74 ], [ 0, %if.end78 ], [ 0, %if.end64 ], [ 0, %while.cond.backedge ], [ 0, %if.end103 ], [ 0, %if.end107 ], [ 0, %if.end169 ], [ -5, %if.then98 ], [ -11, %if.end115 ], [ -512, %if.end118 ]
  %41 = load i64, i64* %read_tail, align 8
  %cmp183.not = icmp eq i64 %19, %41
  br i1 %cmp183.not, label %if.end186, label %if.then185

if.then185:                                       ; preds = %while.end
  call fastcc void @n_tty_kick_worker(%struct.tty_struct* noundef %tty) #14
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %while.end
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem41) #13
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %read_wait, %struct.wait_queue_entry* noundef nonnull %wait) #13
  %atomic_read_lock189 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 19
  call void @mutex_unlock(%struct.mutex* noundef %atomic_read_lock189) #13
  %sub.ptr.lhs.cast190 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast191 = ptrtoint i8* %kbuf to i64
  %sub.ptr.sub192 = sub i64 %sub.ptr.lhs.cast190, %sub.ptr.rhs.cast191
  %tobool193.not = icmp eq i64 %sub.ptr.sub192, 0
  %spec.select282 = select i1 %tobool193.not, i64 %retval4.0, i64 %sub.ptr.sub192
  br label %cleanup199

cleanup199:                                       ; preds = %if.else34, %if.then28, %if.end186, %more_to_be_read, %if.then23, %if.end16, %if.then11, %if.then9
  %retval.0 = phi i64 [ %sub.ptr.sub14, %if.then11 ], [ %sub.ptr.sub19, %if.end16 ], [ %sub.ptr.sub, %if.then9 ], [ %conv24, %if.then23 ], [ %spec.select282, %if.end186 ], [ %sub.ptr.sub167.pre-phi, %more_to_be_read ], [ -11, %if.then28 ], [ -512, %if.else34 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @n_tty_write(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, i8* noundef %buf, i64 noundef %nr) #4 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @woken_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %5 = load i32, i32* %c_lflag, align 4
  %and = and i32 %5, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %6 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %6, i64 0, i32 5
  %7 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %cmp.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %7, @redirected_tty_write
  br i1 %cmp.not, label %if.end8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i32 @tty_check_change(%struct.tty_struct* noundef %tty) #13
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then
  %conv = sext i32 %call5 to i64
  br label %cleanup102

if.end8:                                          ; preds = %if.then, %land.lhs.true, %entry
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  call fastcc void @process_echoes(%struct.tty_struct* noundef %tty) #14
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  call void @add_wait_queue(%struct.wait_queue_head* noundef %write_wait, %struct.wait_queue_entry* noundef nonnull %wait) #13
  %call10235 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %2) #14
  %tobool11.not236 = icmp eq i32 %call10235, 0
  br i1 %tobool11.not236, label %if.end13.lr.ph, label %break_out

if.end13.lr.ph:                                   ; preds = %if.end8
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %c_oflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 1
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %8 = bitcast i8** %disc_data to %struct.n_tty_data**
  br label %if.end13

if.end13:                                         ; preds = %if.end13.lr.ph, %if.end85
  %b.0239 = phi i8* [ %buf, %if.end13.lr.ph ], [ %b.5203, %if.end85 ]
  %nr.addr.0237 = phi i64 [ %nr, %if.end13.lr.ph ], [ %nr.addr.5202, %if.end85 ]
  %call14 = call i32 @tty_hung_up_p(%struct.file* noundef %file) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %break_out

lor.lhs.false:                                    ; preds = %if.end13
  %9 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool16.not = icmp eq %struct.tty_struct* %9, null
  br i1 %tobool16.not, label %if.end21, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i64 0, i32 17
  %10 = load i32, i32* %count, align 8
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %break_out, label %if.end21

if.end21:                                         ; preds = %land.lhs.true17, %lor.lhs.false
  %11 = load i32, i32* %c_oflag, align 4
  %and23 = and i32 %11, 1
  %tobool24.not = icmp eq i32 %and23, 0
  %cmp57.not230 = icmp eq i64 %nr.addr.0237, 0
  br i1 %tobool24.not, label %if.else, label %while.cond26.preheader

while.cond26.preheader:                           ; preds = %if.end21
  br i1 %cmp57.not230, label %while.end, label %while.body29

while.body29:                                     ; preds = %while.cond26.preheader, %cleanup
  %b.1224 = phi i8* [ %incdec.ptr, %cleanup ], [ %b.0239, %while.cond26.preheader ]
  %nr.addr.1223 = phi i64 [ %dec, %cleanup ], [ %nr.addr.0237, %while.cond26.preheader ]
  %conv30 = trunc i64 %nr.addr.1223 to i32
  %call31 = call fastcc i64 @process_output_block(%struct.tty_struct* noundef %tty, i8* noundef %b.1224, i32 noundef %conv30) #14
  %cmp32 = icmp slt i64 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end39

if.then34:                                        ; preds = %while.body29
  %cmp35 = icmp eq i64 %call31, -11
  br i1 %cmp35, label %while.end, label %land.lhs.true92.sink.split

if.end39:                                         ; preds = %while.body29
  %add.ptr = getelementptr i8, i8* %b.1224, i64 %call31
  %sub = sub i64 %nr.addr.1223, %call31
  %cmp40 = icmp eq i64 %sub, 0
  br i1 %cmp40, label %while.end, label %if.end43

if.end43:                                         ; preds = %if.end39
  %12 = load i8, i8* %add.ptr, align 1
  %call46 = call fastcc i32 @process_output(i8 noundef %12, %struct.tty_struct* noundef %tty) #14
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %while.end, label %cleanup

cleanup:                                          ; preds = %if.end43
  %incdec.ptr = getelementptr i8, i8* %add.ptr, i64 1
  %dec = add i64 %sub, -1
  %cmp27.not = icmp eq i64 %dec, 0
  br i1 %cmp27.not, label %while.end, label %while.body29

while.end:                                        ; preds = %cleanup, %if.end39, %if.end43, %while.cond26.preheader, %if.then34
  %nr.addr.3 = phi i64 [ %nr.addr.1223, %if.then34 ], [ 0, %while.cond26.preheader ], [ 0, %cleanup ], [ 0, %if.end39 ], [ %sub, %if.end43 ]
  %b.3 = phi i8* [ %b.1224, %if.then34 ], [ %b.0239, %while.cond26.preheader ], [ %incdec.ptr, %cleanup ], [ %add.ptr, %if.end39 ], [ %add.ptr, %if.end43 ]
  %13 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %flush_chars = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %13, i64 0, i32 9
  %14 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_chars, align 8
  %tobool51.not = icmp eq void (%struct.tty_struct*)* %14, null
  br i1 %tobool51.not, label %if.end79, label %if.then52

if.then52:                                        ; preds = %while.end
  call void %14(%struct.tty_struct* noundef %tty) #13
  br label %if.end79

if.else:                                          ; preds = %if.end21
  br i1 %cmp57.not230, label %break_out.thread186, label %while.body59.lr.ph

while.body59.lr.ph:                               ; preds = %if.else
  %15 = load %struct.n_tty_data*, %struct.n_tty_data** %8, align 8
  %output_lock = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %15, i64 0, i32 20
  br label %while.body59

while.body59:                                     ; preds = %while.body59.lr.ph, %if.end71
  %b.4232 = phi i8* [ %b.0239, %while.body59.lr.ph ], [ %add.ptr72, %if.end71 ]
  %nr.addr.4231 = phi i64 [ %nr.addr.0237, %while.body59.lr.ph ], [ %sub74, %if.end71 ]
  call void @mutex_lock(%struct.mutex* noundef %output_lock) #13
  %16 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %16, i64 0, i32 7
  %17 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write, align 8
  %conv61 = trunc i64 %nr.addr.4231 to i32
  %call62 = call i32 %17(%struct.tty_struct* noundef %tty, i8* noundef %b.4232, i32 noundef %conv61) #13
  call void @mutex_unlock(%struct.mutex* noundef %output_lock) #13
  %cmp64 = icmp slt i32 %call62, 0
  br i1 %cmp64, label %cleanup76, label %if.end68

if.end68:                                         ; preds = %while.body59
  %tobool69.not = icmp eq i32 %call62, 0
  br i1 %tobool69.not, label %if.end82, label %if.end71

if.end71:                                         ; preds = %if.end68
  %idx.ext205 = zext i32 %call62 to i64
  %add.ptr72 = getelementptr i8, i8* %b.4232, i64 %idx.ext205
  %sub74 = sub i64 %nr.addr.4231, %idx.ext205
  %cmp57.not = icmp eq i64 %sub74, 0
  br i1 %cmp57.not, label %break_out.thread186, label %while.body59

cleanup76:                                        ; preds = %while.body59
  %conv67 = sext i32 %call62 to i64
  br label %land.lhs.true92.sink.split

if.end79:                                         ; preds = %while.end, %if.then52
  %tobool80.not = icmp eq i64 %nr.addr.3, 0
  br i1 %tobool80.not, label %break_out.thread186, label %if.end82

break_out.thread186:                              ; preds = %if.end79, %if.else, %if.end71
  %b.5195 = phi i8* [ %add.ptr72, %if.end71 ], [ %b.0239, %if.else ], [ %b.3, %if.end79 ]
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %write_wait, %struct.wait_queue_entry* noundef nonnull %wait) #13
  br label %if.end96

if.end82:                                         ; preds = %if.end68, %if.end79
  %b.5203 = phi i8* [ %b.3, %if.end79 ], [ %b.4232, %if.end68 ]
  %nr.addr.5202 = phi i64 [ %nr.addr.3, %if.end79 ], [ %nr.addr.4231, %if.end68 ]
  %call83 = call fastcc i1 @tty_io_nonblock(%struct.tty_struct* noundef %tty, %struct.file* noundef %file) #14
  br i1 %call83, label %land.lhs.true92.sink.split, label %if.end85

if.end85:                                         ; preds = %if.end82
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  %call87 = call i64 @wait_woken(%struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 1, i64 noundef 9223372036854775807) #13
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  %call10 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %2) #14
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %land.lhs.true92.sink.split

break_out:                                        ; preds = %land.lhs.true17, %if.end13, %if.end8
  %nr.addr.0.lcssa = phi i64 [ %nr, %if.end8 ], [ %nr.addr.0237, %if.end13 ], [ %nr.addr.0237, %land.lhs.true17 ]
  %b.0.lcssa = phi i8* [ %buf, %if.end8 ], [ %b.0239, %if.end13 ], [ %b.0239, %land.lhs.true17 ]
  %retval4.7 = phi i64 [ -512, %if.end8 ], [ -5, %if.end13 ], [ -5, %land.lhs.true17 ]
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %write_wait, %struct.wait_queue_entry* noundef nonnull %wait) #13
  %tobool91.not = icmp eq i64 %nr.addr.0.lcssa, 0
  br i1 %tobool91.not, label %if.end96, label %land.lhs.true92

land.lhs.true92.sink.split:                       ; preds = %if.then34, %if.end82, %if.end85, %cleanup76
  %retval4.7184.ph = phi i64 [ %conv67, %cleanup76 ], [ -512, %if.end85 ], [ %call31, %if.then34 ], [ -11, %if.end82 ]
  %b.6182.ph = phi i8* [ %b.4232, %cleanup76 ], [ %b.5203, %if.end85 ], [ %b.1224, %if.then34 ], [ %b.5203, %if.end82 ]
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %write_wait, %struct.wait_queue_entry* noundef nonnull %wait) #13
  br label %land.lhs.true92

land.lhs.true92:                                  ; preds = %land.lhs.true92.sink.split, %break_out
  %retval4.7184 = phi i64 [ %retval4.7, %break_out ], [ %retval4.7184.ph, %land.lhs.true92.sink.split ]
  %b.6182 = phi i8* [ %b.0.lcssa, %break_out ], [ %b.6182.ph, %land.lhs.true92.sink.split ]
  %fasync = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 25
  %18 = load %struct.fasync_struct*, %struct.fasync_struct** %fasync, align 8
  %tobool93.not = icmp eq %struct.fasync_struct* %18, null
  br i1 %tobool93.not, label %if.end96, label %if.then94

if.then94:                                        ; preds = %land.lhs.true92
  %flags95 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %flags95) #14
  br label %if.end96

if.end96:                                         ; preds = %break_out.thread186, %if.then94, %land.lhs.true92, %break_out
  %retval4.7185 = phi i64 [ %retval4.7184, %if.then94 ], [ %retval4.7184, %land.lhs.true92 ], [ %retval4.7, %break_out ], [ 0, %break_out.thread186 ]
  %b.6183 = phi i8* [ %b.6182, %if.then94 ], [ %b.6182, %land.lhs.true92 ], [ %b.0.lcssa, %break_out ], [ %b.5195, %break_out.thread186 ]
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  %sub.ptr.lhs.cast = ptrtoint i8* %b.6183 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool98.not = icmp eq i64 %sub.ptr.sub, 0
  %cond = select i1 %tobool98.not, i64 %retval4.7185, i64 %sub.ptr.sub
  br label %cleanup102

cleanup102:                                       ; preds = %if.end96, %if.then7
  %retval.0 = phi i64 [ %conv, %if.then7 ], [ %cond, %if.end96 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @n_tty_ioctl(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  switch i32 %cmd, label %sw.default [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %2 = inttoptr i64 %arg to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %2) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %sw.bb
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #14
  %3 = bitcast i8* %call2 to i32*
  %call6 = call i32 @tty_chars_in_buffer(%struct.tty_struct* noundef %tty) #13
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call6, i32* %3, i32 -14, i32 0) #15, !srcloc !9
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #13
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %5 = load i32, i32* %c_lflag, align 4
  %6 = and i32 %5, 65538
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %if.then18, label %if.else20

if.then18:                                        ; preds = %sw.bb12
  %call19 = call fastcc i64 @inq_canon(%struct.n_tty_data* noundef %1) #14
  br label %if.end23

if.else20:                                        ; preds = %sw.bb12
  %call21 = call fastcc i64 @read_cnt(%struct.n_tty_data* noundef %1) #14
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then18
  %retval1.0.in = phi i64 [ %call21, %if.else20 ], [ %call19, %if.then18 ]
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #13
  %8 = inttoptr i64 %arg to i8*
  %call28 = call fastcc i64 @__range_ok(i8* noundef %8) #14
  %tobool29.not = icmp eq i64 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.then30

if.then30:                                        ; preds = %if.end23
  %retval1.0 = trunc i64 %retval1.0.in to i32
  %call31 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %8) #14
  %9 = bitcast i8* %call31 to i32*
  %10 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %retval1.0, i32* %9, i32 -14, i32 0) #15, !srcloc !10
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call46 = call i32 @n_tty_ioctl_helper(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end23, %if.then, %sw.bb, %sw.default
  %retval.0 = phi i32 [ %call46, %sw.default ], [ %4, %if.then ], [ -14, %sw.bb ], [ %10, %if.then30 ], [ -14, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @n_tty_set_termios(%struct.tty_struct* noundef %tty, %struct.ktermios* noundef readonly %old) #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %tobool = icmp ne %struct.ktermios* %old, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %c_lflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 3
  %2 = load i32, i32* %c_lflag, align 4
  %c_lflag1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %3 = load i32, i32* %c_lflag1, align 4
  %xor = xor i32 %3, %2
  %and = and i32 %xor, 65538
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end27_crit_edge, label %if.then

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  %icanon.phi.trans.insert = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load32.pre = load i8, i8* %icanon.phi.trans.insert, align 1
  br label %if.end27

if.then:                                          ; preds = %lor.lhs.false, %entry
  %arraydecay = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 12, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay, i32 noundef 4096) #14
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %4 = load i64, i64* %read_tail, align 8
  %line_start = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 15
  store i64 %4, i64* %line_start, align 8
  %c_lflag4 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %5 = load i32, i32* %c_lflag4, align 4
  %and5 = and i32 %5, 2
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.then
  %call = call fastcc i64 @read_cnt(%struct.n_tty_data* noundef %1) #14
  %tobool8.not = icmp eq i64 %call, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %lor.lhs.false7, %if.then
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  store i64 %4, i64* %canon_head, align 8
  %push = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %push, align 1
  %bf.clear = and i8 %bf.load, -33
  %read_head20.phi.trans.insert = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %.pre = load i64, i64* %read_head20.phi.trans.insert, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false7
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %6 = load i64, i64* %read_head, align 8
  %sub = add i64 %6, 4095
  %and11 = and i64 %sub, 4095
  call fastcc void @set_bit(i64 noundef %and11, i64* noundef %arraydecay) #14
  %7 = load i64, i64* %read_head, align 8
  %canon_head15 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  store i64 %7, i64* %canon_head15, align 8
  %push16 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load17 = load i8, i8* %push16, align 1
  %bf.set19 = or i8 %bf.load17, 32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %bf.load21 = phi i8 [ %bf.set19, %if.else ], [ %bf.clear, %if.then9 ]
  %8 = phi i64 [ %7, %if.else ], [ %.pre, %if.then9 ]
  %commit_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 1
  store i64 %8, i64* %commit_head, align 8
  %erasing = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.clear25 = and i8 %bf.load21, -4
  store i8 %bf.clear25, i8* %erasing, align 1
  %.pre383 = load i32, i32* %c_lflag4, align 4
  br label %if.end27

if.end27:                                         ; preds = %lor.lhs.false.if.end27_crit_edge, %if.end
  %bf.load32 = phi i8 [ %bf.clear25, %if.end ], [ %bf.load32.pre, %lor.lhs.false.if.end27_crit_edge ]
  %9 = phi i32 [ %.pre383, %if.end ], [ %3, %lor.lhs.false.if.end27_crit_edge ]
  %c_lflag29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %10 = trunc i32 %9 to i8
  %icanon = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %11 = shl i8 %10, 3
  %bf.shl = and i8 %11, 16
  %bf.clear33 = and i8 %bf.load32, -17
  %bf.set34 = or i8 %bf.shl, %bf.clear33
  store i8 %bf.set34, i8* %icanon, align 1
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %12 = load i32, i32* %c_iflag, align 8
  %13 = and i32 %12, 992
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %lor.lhs.false58, label %if.then83

lor.lhs.false58:                                  ; preds = %if.end27
  %15 = load i32, i32* %c_lflag29, align 4
  %and61 = and i32 %15, 2
  %tobool62.not = icmp eq i32 %and61, 0
  %and66 = and i32 %12, 1024
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond372 = select i1 %tobool62.not, i1 %tobool67.not, i1 false
  %and71 = and i32 %15, 1
  %tobool72.not = icmp eq i32 %and71, 0
  %or.cond373 = select i1 %or.cond372, i1 %tobool72.not, i1 false
  %and76 = and i32 %15, 8
  %tobool77.not = icmp eq i32 %and76, 0
  %or.cond374 = select i1 %or.cond373, i1 %tobool77.not, i1 false
  %and81 = and i32 %12, 8
  %tobool82.not = icmp eq i32 %and81, 0
  %or.cond375 = select i1 %or.cond374, i1 %tobool82.not, i1 false
  br i1 %or.cond375, label %if.else222, label %if.then83

if.then83:                                        ; preds = %lor.lhs.false58, %if.end27
  %arraydecay84 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 6, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay84, i32 noundef 256) #14
  %16 = load i32, i32* %c_iflag, align 8
  %17 = and i32 %16, 384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.end97, label %if.then94

if.then94:                                        ; preds = %if.then83
  call fastcc void @set_bit(i64 noundef 13, i64* noundef %arraydecay84) #14
  %.pre385 = load i32, i32* %c_iflag, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then83, %if.then94
  %19 = phi i32 [ %16, %if.then83 ], [ %.pre385, %if.then94 ]
  %and100 = and i32 %19, 64
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end105, label %if.then102

if.then102:                                       ; preds = %if.end97
  call fastcc void @set_bit(i64 noundef 10, i64* noundef %arraydecay84) #14
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end97
  %20 = load i32, i32* %c_lflag29, align 4
  %and108 = and i32 %20, 2
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end171, label %if.then110

if.then110:                                       ; preds = %if.end105
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 2
  %21 = load i8, i8* %arrayidx, align 1
  %conv112 = zext i8 %21 to i64
  call fastcc void @set_bit(i64 noundef %conv112, i64* noundef %arraydecay84) #14
  %arrayidx117 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 3
  %22 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %22 to i64
  call fastcc void @set_bit(i64 noundef %conv118, i64* noundef %arraydecay84) #14
  %arrayidx123 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 4
  %23 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %23 to i64
  call fastcc void @set_bit(i64 noundef %conv124, i64* noundef %arraydecay84) #14
  call fastcc void @set_bit(i64 noundef 10, i64* noundef %arraydecay84) #14
  %arrayidx131 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 11
  %24 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %24 to i64
  call fastcc void @set_bit(i64 noundef %conv132, i64* noundef %arraydecay84) #14
  %25 = load i32, i32* %c_lflag29, align 4
  %and137 = and i32 %25, 32768
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end171, label %if.then139

if.then139:                                       ; preds = %if.then110
  %arrayidx142 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 14
  %26 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %26 to i64
  call fastcc void @set_bit(i64 noundef %conv143, i64* noundef %arraydecay84) #14
  %arrayidx148 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 15
  %27 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %27 to i64
  call fastcc void @set_bit(i64 noundef %conv149, i64* noundef %arraydecay84) #14
  %arrayidx154 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 16
  %28 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %28 to i64
  call fastcc void @set_bit(i64 noundef %conv155, i64* noundef %arraydecay84) #14
  %29 = load i32, i32* %c_lflag29, align 4
  %and160 = and i32 %29, 8
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end171, label %if.then162

if.then162:                                       ; preds = %if.then139
  %arrayidx165 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 12
  %30 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %30 to i64
  call fastcc void @set_bit(i64 noundef %conv166, i64* noundef %arraydecay84) #14
  br label %if.end171

if.end171:                                        ; preds = %if.then110, %if.then162, %if.then139, %if.end105
  %31 = load i32, i32* %c_iflag, align 8
  %and174 = and i32 %31, 1024
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end189, label %if.then176

if.then176:                                       ; preds = %if.end171
  %arrayidx179 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 8
  %32 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %32 to i64
  call fastcc void @set_bit(i64 noundef %conv180, i64* noundef %arraydecay84) #14
  %arrayidx185 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 9
  %33 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %33 to i64
  call fastcc void @set_bit(i64 noundef %conv186, i64* noundef %arraydecay84) #14
  br label %if.end189

if.end189:                                        ; preds = %if.then176, %if.end171
  %34 = load i32, i32* %c_lflag29, align 4
  %and192 = and i32 %34, 1
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.end213, label %if.then194

if.then194:                                       ; preds = %if.end189
  %arrayidx197 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 0
  %35 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %35 to i64
  call fastcc void @set_bit(i64 noundef %conv198, i64* noundef %arraydecay84) #14
  %arrayidx203 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 1
  %36 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %36 to i64
  call fastcc void @set_bit(i64 noundef %conv204, i64* noundef %arraydecay84) #14
  %arrayidx209 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 10
  %37 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %37 to i64
  call fastcc void @set_bit(i64 noundef %conv210, i64* noundef %arraydecay84) #14
  br label %if.end213

if.end213:                                        ; preds = %if.then194, %if.end189
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %arraydecay84) #14
  %bf.load216 = load i8, i8* %icanon, align 1
  %bf.clear220 = and i8 %bf.load216, -13
  br label %if.end264

if.else222:                                       ; preds = %lor.lhs.false58
  %bf.set226 = or i8 %bf.set34, 4
  store i8 %bf.set226, i8* %icanon, align 1
  %38 = load i32, i32* %c_iflag, align 8
  %and229 = and i32 %38, 1
  %tobool230.not = icmp eq i32 %and229, 0
  %39 = and i32 %38, 10
  %40 = icmp ne i32 %39, 0
  %or.cond380.not = and i1 %tobool230.not, %40
  %41 = and i32 %38, 20
  %.not = icmp eq i32 %41, 16
  %or.cond381 = select i1 %or.cond380.not, i1 true, i1 %.not
  br i1 %or.cond381, label %if.else258, label %land.lhs.true250

land.lhs.true250:                                 ; preds = %if.else222
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %42 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %42, i64 0, i32 13
  %43 = load i64, i64* %flags, align 8
  %and251 = and i64 %43, 4
  %tobool252.not = icmp eq i64 %and251, 0
  br i1 %tobool252.not, label %if.else258, label %if.then253

if.then253:                                       ; preds = %land.lhs.true250
  %bf.set257 = or i8 %bf.set34, 12
  br label %if.end264

if.else258:                                       ; preds = %if.else222, %land.lhs.true250
  %bf.clear261 = and i8 %bf.set226, -9
  br label %if.end264

if.end264:                                        ; preds = %if.then253, %if.else258, %if.end213
  %bf.set257.sink = phi i8 [ %bf.set257, %if.then253 ], [ %bf.clear261, %if.else258 ], [ %bf.clear220, %if.end213 ]
  store i8 %bf.set257.sink, i8* %icanon, align 1
  %44 = load i32, i32* %c_iflag, align 8
  %and267 = and i32 %44, 1024
  %tobool268 = icmp eq i32 %and267, 0
  %or.cond = and i1 %tobool, %tobool268
  br i1 %or.cond, label %land.lhs.true271, label %if.end278

land.lhs.true271:                                 ; preds = %if.end264
  %c_iflag272 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 0
  %45 = load i32, i32* %c_iflag272, align 4
  %and273 = and i32 %45, 1024
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %if.end278, label %land.lhs.true275

land.lhs.true275:                                 ; preds = %land.lhs.true271
  %tco_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 2
  %46 = load i8, i8* %tco_stopped, align 1, !range !8
  %tobool276.not = icmp eq i8 %46, 0
  br i1 %tobool276.not, label %if.then277, label %if.end278

if.then277:                                       ; preds = %land.lhs.true275
  call void @start_tty(%struct.tty_struct* noundef %tty) #13
  call fastcc void @process_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end278

if.end278:                                        ; preds = %if.then277, %land.lhs.true275, %land.lhs.true271, %if.end264
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #13
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @n_tty_poll(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #4 {
entry:
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 27
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef %read_wait, %struct.poll_table_struct* noundef %wait) #14
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef %write_wait, %struct.poll_table_struct* noundef %wait) #14
  %call = call fastcc i32 @input_available_p(%struct.tty_struct* noundef %tty, i32 noundef 1) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end5

if.else:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %0 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call void @tty_buffer_flush_work(%struct.tty_port* noundef %0) #13
  %call1 = call fastcc i32 @input_available_p(%struct.tty_struct* noundef %tty, i32 noundef 1) #14
  %tobool2.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 65
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry
  %mask.0 = phi i32 [ 65, %entry ], [ %spec.select, %if.else ]
  %packet = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 4
  %1 = load i8, i8* %packet, align 1, !range !8
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %2 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i64 0, i32 20, i32 3
  %3 = load i8, i8* %pktstatus, align 8
  %tobool8.not = icmp eq i8 %3, 0
  %spec.select56 = select i1 %tobool8.not, i32 %mask.0, i32 67
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end5
  %mask.1 = phi i32 [ %mask.0, %if.end5 ], [ %spec.select56, %land.lhs.true ]
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %4 = load volatile i64, i64* %flags, align 8
  %5 = and i64 %4, 4
  %tobool13.not = icmp eq i64 %5, 0
  %or15 = or i32 %mask.1, 16
  %call17 = call i32 @tty_hung_up_p(%struct.file* noundef %file) #13
  %tobool18.not = icmp eq i32 %call17, 0
  %6 = select i1 %tobool18.not, i1 %tobool13.not, i1 false
  %mask.3 = select i1 %6, i32 %mask.1, i32 %or15
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %7 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %7, i64 0, i32 7
  %8 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write, align 8
  %tobool22.not = icmp eq i32 (%struct.tty_struct*, i8*, i32)* %8, null
  br i1 %tobool22.not, label %if.end34, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end11
  %atomic_write_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 8
  %call24 = call i1 @mutex_is_locked(%struct.mutex* noundef %atomic_write_lock) #13
  br i1 %call24, label %if.end34, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %call26 = call i32 @tty_chars_in_buffer(%struct.tty_struct* noundef %tty) #13
  %cmp = icmp ult i32 %call26, 256
  br i1 %cmp, label %land.lhs.true28, label %if.end34

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %call29 = call i32 @tty_write_room(%struct.tty_struct* noundef %tty) #13
  %cmp30.not = icmp eq i32 %call29, 0
  %or33 = or i32 %mask.3, 260
  %spec.select58 = select i1 %cmp30.not, i32 %mask.3, i32 %or33
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true28, %land.lhs.true25, %land.lhs.true23, %if.end11
  %mask.4 = phi i32 [ %mask.3, %land.lhs.true23 ], [ %mask.3, %land.lhs.true25 ], [ %mask.3, %if.end11 ], [ %spec.select58, %land.lhs.true28 ]
  ret i32 %mask.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @n_tty_receive_buf(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count) #4 {
entry:
  %call = call fastcc i32 @n_tty_receive_buf_common(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count, i32 noundef 0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @n_tty_write_wakeup(%struct.tty_struct* noundef %tty) #4 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags) #14
  %fasync = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 25
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync, i32 noundef 29, i32 noundef 2) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @n_tty_receive_buf2(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count) #4 {
entry:
  %call = call fastcc i32 @n_tty_receive_buf_common(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count, i32 noundef 1) #14
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @vzalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #4 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_packet_mode_flush(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %packet = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 20, i32 4
  %1 = load i8, i8* %packet, align 1, !range !8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.body1

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #14
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 3
  %2 = load i8, i8* %pktstatus, align 8
  %3 = or i8 %2, 1
  store i8 %3, i8* %pktstatus, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #13
  %4 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #14
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #4 {
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
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #4 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #15, !srcloc !14
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #4 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #15, !srcloc !15
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #4 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !16

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #15, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #4 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #15, !srcloc !18
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #15, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #4 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #15, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @reset_buffer_flags(%struct.n_tty_data* noundef %ldata) unnamed_addr #4 {
entry:
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 14
  store i64 0, i64* %read_tail, align 8
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 2
  store i64 0, i64* %canon_head, align 8
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 0
  store i64 0, i64* %read_head, align 8
  %commit_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 1
  store i64 0, i64* %commit_head, align 8
  %line_start = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 15
  store i64 0, i64* %line_start, align 8
  %erasing = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 10
  %bf.load = load i8, i8* %erasing, align 1
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %erasing, align 1
  %arraydecay = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 12, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay, i32 noundef 4096) #14
  %bf.load1 = load i8, i8* %erasing, align 1
  %bf.clear2 = and i8 %bf.load1, -33
  store i8 %bf.clear2, i8* %erasing, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_kick_worker(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %no_room = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 9
  %2 = load i8, i8* %no_room, align 4, !range !8
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end105, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  store i8 0, i8* %no_room, align 4
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %3 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %itty = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i64 0, i32 2
  %4 = load %struct.tty_struct*, %struct.tty_struct** %itty, align 8
  %cmp = icmp eq %struct.tty_struct* %4, null
  br i1 %cmp, label %land.rhs, label %if.end46

land.rhs:                                         ; preds = %if.then
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @n_tty_kick_worker._rs, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.n_tty_kick_worker, i64 0, i64 0)) #13
  %tobool10.not123 = icmp eq i32 %call, 0
  br i1 %tobool10.not123, label %if.end46, label %do.end, !prof !22

do.end:                                           ; preds = %land.rhs
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/n_tty.c\22; .popsection; .long 14472b - 14470b; .short 209; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !23
  br label %if.end46

if.end46:                                         ; preds = %land.rhs, %if.then, %do.end
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %5 = load volatile i64, i64* %flags, align 8
  %6 = and i64 %5, 4194304
  %tobool50.not = icmp eq i64 %6, 0
  br i1 %tobool50.not, label %if.end101, label %land.rhs56

land.rhs56:                                       ; preds = %if.end46
  %call57 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @n_tty_kick_worker._rs.5, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.n_tty_kick_worker, i64 0, i64 0)) #13
  %tobool58.not122 = icmp eq i32 %call57, 0
  br i1 %tobool58.not122, label %if.end101, label %do.end86, !prof !22

do.end86:                                         ; preds = %land.rhs56
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0)) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/n_tty.c\22; .popsection; .long 14472b - 14470b; .short 215; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !24
  br label %if.end101

if.end101:                                        ; preds = %land.rhs56, %if.end46, %do.end86
  %7 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %call104 = call i1 @tty_buffer_restart_work(%struct.tty_port* noundef %7) #13
  br label %if.end105

if.end105:                                        ; preds = %if.end101, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst, i32 noundef %nbits) unnamed_addr #4 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %0 = lshr i64 %sub, 3
  %conv1 = and i64 %0, 1073741816
  %1 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %conv1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @tty_buffer_restart_work(%struct.tty_port* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @canon_copy_from_read_buf(%struct.tty_struct* nocapture noundef readonly %tty, i8** nocapture noundef %kbp, i64* nocapture noundef %nr) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %2 = load i64, i64* %nr, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %canon_head1 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %3 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(i64* elementtype(i64) %canon_head1) #15, !srcloc !25
  %4 = load i64, i64* %nr, align 8
  %add = add i64 %4, 1
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %5 = load i64, i64* %read_tail, align 8
  %sub = sub i64 %3, %5
  %cmp = icmp ult i64 %add, %sub
  %cond = select i1 %cmp, i64 %add, i64 %sub
  %and = and i64 %5, 4095
  %add4 = add i64 %cond, %and
  %cmp6 = icmp ult i64 %add4, 4096
  %cond10 = select i1 %cmp6, i64 %add4, i64 4096
  %arraydecay12 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 12, i64 0
  %call13 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay12, i64 noundef %cond10, i64 noundef %and) #14
  %sub14.neg = sub nsw i64 %and, %cond10
  %sub15 = add i64 %sub14.neg, %cond
  %cmp16 = icmp eq i64 %call13, 4096
  %tobool17 = icmp ne i64 %sub15, 0
  %or.cond = select i1 %cmp16, i1 %tobool17, i1 false
  br i1 %or.cond, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end
  %call21 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay12, i64 noundef %sub15, i64 noundef 0) #14
  %cmp22 = icmp ne i64 %call21, %sub15
  %sub26164 = sub i64 %call21, %and
  %cmp27165 = icmp ugt i64 %sub26164, 4096
  %add30166 = add i64 %sub26164, 4096
  %spec.select167 = select i1 %cmp27165, i64 %add30166, i64 %sub26164
  %6 = zext i1 %cmp22 to i64
  %add33168 = add i64 %spec.select167, %6
  br i1 %cmp22, label %lor.lhs.false, label %if.then39

if.end25:                                         ; preds = %if.end
  %cmp23 = icmp ne i64 %call13, %cond10
  %sub26 = sub i64 %call13, %and
  %cmp27 = icmp ugt i64 %sub26, 4096
  %add30 = add i64 %sub26, 4096
  %spec.select = select i1 %cmp27, i64 %add30, i64 %sub26
  %7 = zext i1 %cmp23 to i64
  %add33 = add i64 %spec.select, %7
  br i1 %cmp23, label %lor.lhs.false, label %if.then39

lor.lhs.false:                                    ; preds = %if.then18, %if.end25
  %add33177 = phi i64 [ %add33168, %if.then18 ], [ %add33, %if.end25 ]
  %spec.select175 = phi i64 [ %spec.select167, %if.then18 ], [ %spec.select, %if.end25 ]
  %eol.0172 = phi i64 [ %call21, %if.then18 ], [ %call13, %if.end25 ]
  %call35 = call fastcc i8 @read_buf(%struct.n_tty_data* noundef %1, i64 noundef %eol.0172) #14
  %cmp37.not = icmp eq i8 %call35, 0
  br i1 %cmp37.not, label %if.end47, label %if.then39

if.then39:                                        ; preds = %if.then18, %lor.lhs.false, %if.end25
  %add33176 = phi i64 [ %add33168, %if.then18 ], [ %add33177, %lor.lhs.false ], [ %add33, %if.end25 ]
  %eol.0173 = phi i64 [ %sub15, %if.then18 ], [ %eol.0172, %lor.lhs.false ], [ %cond10, %if.end25 ]
  %found.0.in170 = phi i1 [ false, %if.then18 ], [ true, %lor.lhs.false ], [ false, %if.end25 ]
  %8 = load i64, i64* %nr, align 8
  %cmp41 = icmp ult i64 %8, %add33176
  %cond46 = select i1 %cmp41, i64 %8, i64 %add33176
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %lor.lhs.false
  %eol.0174 = phi i64 [ %eol.0173, %if.then39 ], [ %eol.0172, %lor.lhs.false ]
  %found.0.in169 = phi i1 [ %found.0.in170, %if.then39 ], [ true, %lor.lhs.false ]
  %c.0 = phi i64 [ %cond46, %if.then39 ], [ %add33177, %lor.lhs.false ]
  %n.1 = phi i64 [ %cond46, %if.then39 ], [ %spec.select175, %lor.lhs.false ]
  %9 = load i8*, i8** %kbp, align 8
  call fastcc void @tty_copy(%struct.tty_struct* noundef %tty, i8* noundef %9, i64 noundef %and, i64 noundef %n.1) #14
  %10 = load i8*, i8** %kbp, align 8
  %add.ptr = getelementptr i8, i8* %10, i64 %n.1
  store i8* %add.ptr, i8** %kbp, align 8
  %11 = load i64, i64* %nr, align 8
  %sub49 = sub i64 %11, %n.1
  store i64 %sub49, i64* %nr, align 8
  br i1 %found.0.in169, label %if.then51, label %if.end81.critedge

if.then51:                                        ; preds = %if.end47
  call fastcc void @clear_bit(i64 noundef %eol.0174, i64* noundef %arraydecay12) #14
  %12 = load i64, i64* %read_tail, align 8
  %add61 = add i64 %12, %c.0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %read_tail, i64 %add61) #15, !srcloc !26
  %push = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %push, align 1
  %13 = and i8 %bf.load, 32
  %tobool72.not = icmp eq i8 %13, 0
  br i1 %tobool72.not, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.then51
  %14 = load i64, i64* %read_tail, align 8
  %line_start = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 15
  store i64 %14, i64* %line_start, align 8
  br label %cleanup

if.else75:                                        ; preds = %if.then51
  %bf.clear78 = and i8 %bf.load, -33
  store i8 %bf.clear78, i8* %push, align 1
  br label %cleanup

if.end81.critedge:                                ; preds = %if.end47
  %15 = load i64, i64* %read_tail, align 8
  %add61.c = add i64 %15, %c.0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %read_tail, i64 %add61.c) #15, !srcloc !26
  %16 = load i64, i64* %read_tail, align 8
  %cmp83 = icmp ne i64 %16, %3
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.else75, %entry, %if.end81.critedge
  %retval.0 = phi i1 [ %cmp83, %if.end81.critedge ], [ false, %entry ], [ false, %if.else75 ], [ false, %if.then73 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @copy_from_read_buf(%struct.tty_struct* nocapture noundef readonly %tty, i8** nocapture noundef %kbp, i64* nocapture noundef %nr) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %commit_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 1
  %2 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(i64* elementtype(i64) %commit_head) #15, !srcloc !27
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %3 = load i64, i64* %read_tail, align 8
  %and = and i64 %3, 4095
  %sub = sub i64 %2, %3
  %sub2 = sub nuw nsw i64 4096, %and
  %cmp = icmp ult i64 %sub, %sub2
  %cond = select i1 %cmp, i64 %sub, i64 %sub2
  %4 = load i64, i64* %nr, align 8
  %cmp5 = icmp ult i64 %4, %cond
  %cond9 = select i1 %cmp5, i64 %4, i64 %cond
  %tobool.not = icmp eq i64 %cond9, 0
  br i1 %tobool.not, label %cleanup49, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call fastcc i8* @read_buf_addr(%struct.n_tty_data* noundef %1, i64 noundef %and) #14
  %5 = load i8*, i8** %kbp, align 8
  %call11 = call i8* @memcpy(i8* noundef %5, i8* noundef %call10, i64 noundef %cond9) #13
  %cmp12 = icmp eq i64 %cond9, 1
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %6 = load i8, i8* %call10, align 1
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 4
  %7 = load i8, i8* %arrayidx, align 1
  %cmp14 = icmp ne i8 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %8 = phi i1 [ true, %if.then ], [ %cmp14, %land.rhs ]
  %conv16 = trunc i64 %cond9 to i32
  call fastcc void @zero_buffer(%struct.tty_struct* noundef %tty, i8* noundef %call10, i32 noundef %conv16) #14
  %9 = load i64, i64* %read_tail, align 8
  %add = add i64 %9, %cond9
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %read_tail, i64 %add) #15, !srcloc !28
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %10 = load i32, i32* %c_lflag, align 4
  %and32 = and i32 %10, 65536
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %icanon = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %icanon, align 1
  %11 = and i8 %bf.load, 16
  %tobool35.not = icmp eq i8 %11, 0
  %brmerge = select i1 %tobool35.not, i1 true, i1 %8
  br i1 %brmerge, label %if.end, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true
  %12 = load i64, i64* %read_tail, align 8
  %cmp41 = icmp eq i64 %2, %12
  br i1 %cmp41, label %cleanup49, label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true39, %land.end
  %13 = load i8*, i8** %kbp, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 %cond9
  store i8* %add.ptr, i8** %kbp, align 8
  %14 = load i64, i64* %nr, align 8
  %sub44 = sub i64 %14, %cond9
  store i64 %sub44, i64* %nr, align 8
  %15 = load i64, i64* %read_tail, align 8
  %cmp46 = icmp ne i64 %2, %15
  br label %cleanup49

cleanup49:                                        ; preds = %entry, %if.end, %land.lhs.true39
  %retval.1 = phi i1 [ %cmp46, %if.end ], [ false, %land.lhs.true39 ], [ false, %entry ]
  ret i1 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_check_unthrottle(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 10
  %1 = load i16, i16* %type, align 8
  %cmp = icmp eq i16 %1, 4
  br i1 %cmp, label %if.then, label %while.body

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @chars_in_buffer(%struct.tty_struct* noundef %tty) #14
  %cmp2 = icmp sgt i64 %call, 128
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %if.then
  call fastcc void @n_tty_kick_worker(%struct.tty_struct* noundef %tty) #14
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %2 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  call void @tty_wakeup(%struct.tty_struct* noundef %2) #13
  br label %return

while.body:                                       ; preds = %entry, %if.end10
  call fastcc void @tty_set_flow_change(%struct.tty_struct* noundef %tty, i32 noundef 2) #14
  %call6 = call fastcc i64 @chars_in_buffer(%struct.tty_struct* noundef %tty) #14
  %cmp7 = icmp sgt i64 %call6, 128
  br i1 %cmp7, label %while.end, label %if.end10

if.end10:                                         ; preds = %while.body
  call fastcc void @n_tty_kick_worker(%struct.tty_struct* noundef %tty) #14
  %call11 = call i32 @tty_unthrottle_safe(%struct.tty_struct* noundef %tty) #13
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end10, %while.body
  call fastcc void @__tty_set_flow_change(%struct.tty_struct* noundef %tty) #14
  br label %return

return:                                           ; preds = %if.then, %while.end, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @job_control(%struct.tty_struct* noundef %tty, %struct.file* nocapture noundef readonly %file) unnamed_addr #4 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 5
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %cmp = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %1, @redirected_tty_write
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @__tty_check_change(%struct.tty_struct* noundef %tty, i32 noundef 21) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @input_available_p(%struct.tty_struct* nocapture noundef readonly %tty, i32 noundef %poll) unnamed_addr #7 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %tobool.not = icmp eq i32 %poll, 0
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 5
  %2 = load i8, i8* %arrayidx, align 1
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %cond.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx5 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 6
  %3 = load i8, i8* %arrayidx5, align 1
  %tobool6.not = icmp eq i8 %3, 0
  %narrow = select i1 %tobool6.not, i8 1, i8 %3
  %spec.select = zext i8 %narrow to i64
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true2, %entry, %land.lhs.true
  %cond = phi i64 [ 1, %land.lhs.true ], [ 1, %entry ], [ %spec.select, %land.lhs.true2 ]
  %icanon = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %icanon, align 1
  %4 = and i8 %bf.load, 16
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %if.else, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %cond.end
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %5 = load i32, i32* %c_lflag, align 4
  %and = and i32 %5, 65536
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true13
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %6 = load i64, i64* %canon_head, align 8
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %7 = load i64, i64* %read_tail, align 8
  %cmp = icmp ne i64 %6, %7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true13, %cond.end
  %commit_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 1
  %8 = load i64, i64* %commit_head, align 8
  %read_tail17 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %9 = load i64, i64* %read_tail17, align 8
  %sub = sub i64 %8, %9
  %cmp19 = icmp uge i64 %sub, %cond
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0.in = phi i1 [ %cmp19, %if.else ], [ %cmp, %if.then ]
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush_work(%struct.tty_port* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @tty_io_nonblock(%struct.tty_struct* noundef %tty, %struct.file* nocapture noundef readonly %file) unnamed_addr #6 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %1 = load volatile i64, i64* %flags, align 8
  %2 = and i64 %1, 1048576
  %tobool1 = icmp ne i64 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !13

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wait_woken(%struct.wait_queue_entry* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #4 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #13
  ret i64 %call12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @read_buf(%struct.n_tty_data* nocapture noundef readonly %ldata, i64 noundef %i) unnamed_addr #7 {
entry:
  %and = and i64 %i, 4095
  %arrayidx = getelementptr %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 11, i64 %and
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_copy(%struct.tty_struct* nocapture noundef readonly %tty, i8* noundef %to, i64 noundef %tail, i64 noundef %n) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %sub = sub i64 4096, %tail
  %call = call fastcc i8* @read_buf_addr(%struct.n_tty_data* noundef %1, i64 noundef %tail) #14
  %cmp = icmp ult i64 %sub, %n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @memcpy(i8* noundef %to, i8* noundef %call, i64 noundef %sub) #13
  %conv = trunc i64 %sub to i32
  call fastcc void @zero_buffer(%struct.tty_struct* noundef %tty, i8* noundef %call, i32 noundef %conv) #14
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %sub2 = sub i64 %n, %sub
  %arraydecay = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 11, i64 0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %to.addr.0 = phi i8* [ %add.ptr, %if.then ], [ %to, %entry ]
  %n.addr.0 = phi i64 [ %sub2, %if.then ], [ %n, %entry ]
  %from.0 = phi i8* [ %arraydecay, %if.then ], [ %call, %entry ]
  %call3 = call i8* @memcpy(i8* noundef %to.addr.0, i8* noundef %from.0, i64 noundef %n.addr.0) #13
  %conv4 = trunc i64 %n.addr.0 to i32
  call fastcc void @zero_buffer(%struct.tty_struct* noundef %tty, i8* noundef %from.0, i32 noundef %conv4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @read_buf_addr(%struct.n_tty_data* noundef readnone %ldata, i64 noundef %i) unnamed_addr #8 {
entry:
  %and = and i64 %i, 4095
  %arrayidx = getelementptr %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 11, i64 %and
  ret i8* %arrayidx
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_buffer(%struct.tty_struct* nocapture noundef readonly %tty, i8* noundef %buffer, i32 noundef %size) unnamed_addr #4 {
entry:
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %0 = load i32, i32* %c_lflag, align 4
  %1 = and i32 %0, 10
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %size to i64
  %call = call i8* @memset(i8* noundef %buffer, i32 noundef 0, i64 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @chars_in_buffer(%struct.tty_struct* nocapture noundef readonly %tty) unnamed_addr #7 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %icanon = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %icanon, align 1
  %2 = and i8 %bf.load, 16
  %tobool.not = icmp eq i8 %2, 0
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %commit_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 1
  %canon_head.sink = select i1 %tobool.not, i64* %commit_head, i64* %canon_head
  %3 = load i64, i64* %canon_head.sink, align 8
  %read_tail1 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %4 = load i64, i64* %read_tail1, align 8
  %sub2 = sub i64 %3, %4
  ret i64 %sub2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_set_flow_change(%struct.tty_struct* nocapture noundef writeonly %tty, i32 noundef %val) unnamed_addr #4 {
entry:
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 23
  store i32 %val, i32* %flow_change, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_unthrottle_safe(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__tty_set_flow_change(%struct.tty_struct* nocapture noundef writeonly %tty) unnamed_addr #9 {
entry:
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 23
  store i32 0, i32* %flow_change, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @redirected_tty_write(%struct.kiocb* noundef, %struct.iov_iter* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_check_change(%struct.tty_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @arch_local_irq_disable() #14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_enable() #14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #4 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #15, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #14
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #14
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #14
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %div.i = lshr i32 %flag, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %flags, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #8 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_check_change(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @process_echoes(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %echo_mark = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 5
  %2 = load i64, i64* %echo_mark, align 8
  %echo_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 18
  %3 = load i64, i64* %echo_tail, align 8
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %output_lock = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 20
  call void @mutex_lock(%struct.mutex* noundef %output_lock) #13
  %4 = load i64, i64* %echo_mark, align 8
  %echo_commit = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 4
  store i64 %4, i64* %echo_commit, align 8
  %call = call fastcc i64 @__process_echoes(%struct.tty_struct* noundef %tty) #14
  call void @mutex_unlock(%struct.mutex* noundef %output_lock) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %5 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %flush_chars = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %5, i64 0, i32 9
  %6 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_chars, align 8
  %tobool3.not = icmp eq void (%struct.tty_struct*)* %6, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call void %6(%struct.tty_struct* noundef %tty) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then4, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @process_output_block(%struct.tty_struct* noundef %tty, i8* noundef %buf, i32 noundef %nr) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %output_lock = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 20
  call void @mutex_lock(%struct.mutex* noundef %output_lock) #13
  %call = call i32 @tty_write_room(%struct.tty_struct* noundef %tty) #13
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup66, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i32 %call, %nr
  %spec.select = select i1 %cmp2, i32 %call, i32 %nr
  %c_oflag51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 1
  %cmp6106.not = icmp eq i32 %spec.select, 0
  br i1 %cmp6106.not, label %break_out, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %column38 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  %canon_column35 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %cp.0110 = phi i8* [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %for.inc ]
  %2 = load i8, i8* %cp.0110, align 1
  switch i8 %2, label %sw.default [
    i8 10, label %sw.bb
    i8 13, label %sw.bb18
    i8 9, label %break_out
    i8 8, label %sw.bb37
  ]

sw.bb:                                            ; preds = %for.body
  %3 = load i32, i32* %c_oflag51, align 4
  %and = and i32 %3, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %sw.bb
  store i32 0, i32* %column38, align 8
  %.pre = load i32, i32* %c_oflag51, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb
  %4 = phi i32 [ %.pre, %if.then9 ], [ %3, %sw.bb ]
  %and13 = and i32 %4, 4
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %break_out

if.end16:                                         ; preds = %if.end10
  %5 = load i32, i32* %column38, align 8
  store i32 %5, i32* %canon_column35, align 4
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  %6 = load i32, i32* %c_oflag51, align 4
  %and21 = and i32 %6, 16
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb18
  %7 = load i32, i32* %column38, align 8
  %cmp24 = icmp ne i32 %7, 0
  %and30 = and i32 %6, 8
  %tobool31.not = icmp eq i32 %and30, 0
  %or.cond = select i1 %cmp24, i1 %tobool31.not, i1 false
  br i1 %or.cond, label %if.end33, label %break_out

if.end27:                                         ; preds = %sw.bb18
  %and30.old = and i32 %6, 8
  %tobool31.not.old = icmp eq i32 %and30.old, 0
  br i1 %tobool31.not.old, label %if.end33, label %break_out

if.end33:                                         ; preds = %land.lhs.true, %if.end27
  store i32 0, i32* %column38, align 8
  store i32 0, i32* %canon_column35, align 4
  br label %for.inc

sw.bb37:                                          ; preds = %for.body
  %8 = load i32, i32* %column38, align 8
  %cmp39.not = icmp eq i32 %8, 0
  br i1 %cmp39.not, label %for.inc, label %if.then41

if.then41:                                        ; preds = %sw.bb37
  %dec = add i32 %8, -1
  store i32 %dec, i32* %column38, align 8
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %9 = zext i8 %2 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %9
  %10 = load i8, i8* %arrayidx, align 1
  %11 = and i8 %10, 8
  %cmp47.not = icmp eq i8 %11, 0
  br i1 %cmp47.not, label %if.then49, label %for.inc

if.then49:                                        ; preds = %sw.default
  %12 = load i32, i32* %c_oflag51, align 4
  %and52 = and i32 %12, 2
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end55, label %break_out

if.end55:                                         ; preds = %if.then49
  %call56 = call fastcc i32 @is_continuation(i8 noundef %2, %struct.tty_struct* noundef %tty) #14
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %for.inc

if.then58:                                        ; preds = %if.end55
  %13 = load i32, i32* %column38, align 8
  %inc = add i32 %13, 1
  store i32 %inc, i32* %column38, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %if.then58, %if.end55, %sw.bb37, %if.then41, %if.end33, %if.end16
  %inc62 = add nuw i32 %i.0107, 1
  %incdec.ptr = getelementptr i8, i8* %cp.0110, i64 1
  %exitcond.not = icmp eq i32 %inc62, %spec.select
  br i1 %exitcond.not, label %break_out, label %for.body

break_out:                                        ; preds = %for.inc, %if.then49, %for.body, %if.end27, %land.lhs.true, %if.end10, %if.end
  %i.0.lcssa = phi i32 [ 0, %if.end ], [ %i.0107, %if.end10 ], [ %i.0107, %land.lhs.true ], [ %i.0107, %if.end27 ], [ %i.0107, %for.body ], [ %i.0107, %if.then49 ], [ %spec.select, %for.inc ]
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %14 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %14, i64 0, i32 7
  %15 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write, align 8
  %call63 = call i32 %15(%struct.tty_struct* noundef %tty, i8* noundef %buf, i32 noundef %i.0.lcssa) #13
  br label %cleanup66

cleanup66:                                        ; preds = %entry, %break_out
  %retval.0.in = phi i32 [ %call63, %break_out ], [ %call, %entry ]
  call void @mutex_unlock(%struct.mutex* noundef %output_lock) #13
  %retval.0 = sext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @process_output(i8 noundef %c, %struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %output_lock = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 20
  call void @mutex_lock(%struct.mutex* noundef %output_lock) #13
  %call = call i32 @tty_write_room(%struct.tty_struct* noundef %tty) #13
  %call2 = call fastcc i32 @do_output_char(i8 noundef %c, %struct.tty_struct* noundef %tty, i32 noundef %call) #14
  call void @mutex_unlock(%struct.mutex* noundef %output_lock) #13
  %call2.lobit = ashr i32 %call2, 31
  ret i32 %call2.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #4 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__process_echoes(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %call = call i32 @tty_write_room(%struct.tty_struct* noundef %tty) #13
  %echo_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 18
  %2 = load i64, i64* %echo_tail, align 8
  %echo_commit = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 4
  %3 = load i64, i64* %echo_commit, align 8
  %4 = xor i64 %3, %2
  %5 = and i64 %4, 4095
  %cmp.not262 = icmp eq i64 %5, 0
  br i1 %cmp.not262, label %while.end108, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %c_oflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 1
  %column65 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  %canon_column49 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 17
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end107
  %tail.0264 = phi i64 [ %2, %while.body.lr.ph ], [ %add50, %if.end107 ]
  %space.0263 = phi i32 [ %call, %while.body.lr.ph ], [ %space.6, %if.end107 ]
  %call2 = call fastcc i8 @echo_buf(%struct.n_tty_data* noundef %1, i64 noundef %tail.0264) #14
  %cmp3 = icmp eq i8 %call2, -1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i64, i64* %echo_commit, align 8
  %add = add i64 %tail.0264, 1
  %7 = xor i64 %6, %add
  %8 = and i64 %7, 4095
  %cmp8 = icmp eq i64 %8, 0
  br i1 %cmp8, label %cleanup140, label %if.end

if.end:                                           ; preds = %if.then
  %call12 = call fastcc i8 @echo_buf(%struct.n_tty_data* noundef %1, i64 noundef %add) #14
  switch i8 %call12, label %sw.default [
    i8 -126, label %sw.bb
    i8 -127, label %sw.bb47
    i8 -128, label %sw.bb51
    i8 -1, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load i64, i64* %echo_commit, align 8
  %add16 = add i64 %tail.0264, 2
  %10 = xor i64 %9, %add16
  %11 = and i64 %10, 4095
  %cmp18 = icmp eq i64 %11, 0
  br i1 %cmp18, label %cleanup140, label %if.end21

if.end21:                                         ; preds = %sw.bb
  %call23 = call fastcc i8 @echo_buf(%struct.n_tty_data* noundef %1, i64 noundef %add16) #14
  %conv24 = zext i8 %call23 to i32
  %and25 = and i32 %conv24, 128
  %tobool.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %12 = load i32, i32* %canon_column49, align 4
  %add27 = add i32 %12, %conv24
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21
  %num_chars.0 = phi i32 [ %conv24, %if.end21 ], [ %add27, %if.then26 ]
  %and29 = and i32 %num_chars.0, 7
  %sub = sub nuw nsw i32 8, %and29
  %cmp30 = icmp ult i32 %space.0263, %sub
  br i1 %cmp30, label %while.end108.loopexit, label %while.body37.preheader

while.body37.preheader:                           ; preds = %if.end28
  %sub34 = sub i32 %space.0263, %sub
  %call38 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 8) #13
  %13 = load i32, i32* %column65, align 8
  %cmp39.not = icmp eq i32 %13, 0
  br i1 %cmp39.not, label %if.end44, label %if.then41

if.then41:                                        ; preds = %while.body37.preheader
  %dec43 = add i32 %13, -1
  store i32 %dec43, i32* %column65, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %while.body37.preheader
  %tobool36.not = icmp eq i32 %and29, 7
  br i1 %tobool36.not, label %if.end107, label %while.body37.1

while.body37.1:                                   ; preds = %if.end44
  %call38.1 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 8) #13
  %14 = load i32, i32* %column65, align 8
  %cmp39.not.1 = icmp eq i32 %14, 0
  br i1 %cmp39.not.1, label %if.end44.1, label %if.then41.1

if.then41.1:                                      ; preds = %while.body37.1
  %dec43.1 = add i32 %14, -1
  store i32 %dec43.1, i32* %column65, align 8
  br label %if.end44.1

if.end44.1:                                       ; preds = %if.then41.1, %while.body37.1
  %tobool36.not.1 = icmp eq i32 %and29, 6
  br i1 %tobool36.not.1, label %if.end107, label %while.body37.2

while.body37.2:                                   ; preds = %if.end44.1
  %call38.2 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 8) #13
  %15 = load i32, i32* %column65, align 8
  %cmp39.not.2 = icmp eq i32 %15, 0
  br i1 %cmp39.not.2, label %if.end44.2, label %if.then41.2

if.then41.2:                                      ; preds = %while.body37.2
  %dec43.2 = add i32 %15, -1
  store i32 %dec43.2, i32* %column65, align 8
  br label %if.end44.2

if.end44.2:                                       ; preds = %if.then41.2, %while.body37.2
  %tobool36.not.2 = icmp eq i32 %and29, 5
  br i1 %tobool36.not.2, label %if.end107, label %while.body37.3

while.body37.3:                                   ; preds = %if.end44.2
  %call38.3 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 8) #13
  %16 = load i32, i32* %column65, align 8
  %cmp39.not.3 = icmp eq i32 %16, 0
  br i1 %cmp39.not.3, label %if.end44.3, label %if.then41.3

if.then41.3:                                      ; preds = %while.body37.3
  %dec43.3 = add i32 %16, -1
  store i32 %dec43.3, i32* %column65, align 8
  br label %if.end44.3

if.end44.3:                                       ; preds = %if.then41.3, %while.body37.3
  %tobool36.not.3 = icmp eq i32 %and29, 4
  br i1 %tobool36.not.3, label %if.end107, label %while.body37.4

while.body37.4:                                   ; preds = %if.end44.3
  %call38.4 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 8) #13
  %17 = load i32, i32* %column65, align 8
  %cmp39.not.4 = icmp eq i32 %17, 0
  br i1 %cmp39.not.4, label %if.end44.4, label %if.then41.4

if.then41.4:                                      ; preds = %while.body37.4
  %dec43.4 = add i32 %17, -1
  store i32 %dec43.4, i32* %column65, align 8
  br label %if.end44.4

if.end44.4:                                       ; preds = %if.then41.4, %while.body37.4
  %tobool36.not.4 = icmp eq i32 %and29, 3
  br i1 %tobool36.not.4, label %if.end107, label %while.body37.5

while.body37.5:                                   ; preds = %if.end44.4
  %call38.5 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 8) #13
  %18 = load i32, i32* %column65, align 8
  %cmp39.not.5 = icmp eq i32 %18, 0
  br i1 %cmp39.not.5, label %if.end44.5, label %if.then41.5

if.then41.5:                                      ; preds = %while.body37.5
  %dec43.5 = add i32 %18, -1
  store i32 %dec43.5, i32* %column65, align 8
  br label %if.end44.5

if.end44.5:                                       ; preds = %if.then41.5, %while.body37.5
  %tobool36.not.5 = icmp eq i32 %and29, 2
  br i1 %tobool36.not.5, label %if.end107, label %while.body37.6

while.body37.6:                                   ; preds = %if.end44.5
  %call38.6 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 8) #13
  %19 = load i32, i32* %column65, align 8
  %cmp39.not.6 = icmp eq i32 %19, 0
  br i1 %cmp39.not.6, label %if.end44.6, label %if.then41.6

if.then41.6:                                      ; preds = %while.body37.6
  %dec43.6 = add i32 %19, -1
  store i32 %dec43.6, i32* %column65, align 8
  br label %if.end44.6

if.end44.6:                                       ; preds = %if.then41.6, %while.body37.6
  %tobool36.not.6 = icmp eq i32 %and29, 1
  br i1 %tobool36.not.6, label %if.end107, label %while.body37.7

while.body37.7:                                   ; preds = %if.end44.6
  %call38.7 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 8) #13
  %20 = load i32, i32* %column65, align 8
  %cmp39.not.7 = icmp eq i32 %20, 0
  br i1 %cmp39.not.7, label %if.end107, label %if.then41.7

if.then41.7:                                      ; preds = %while.body37.7
  %dec43.7 = add i32 %20, -1
  store i32 %dec43.7, i32* %column65, align 8
  br label %if.end107

sw.bb47:                                          ; preds = %if.end
  %21 = load i32, i32* %column65, align 8
  store i32 %21, i32* %canon_column49, align 4
  br label %if.end107

sw.bb51:                                          ; preds = %if.end
  %22 = load i32, i32* %column65, align 8
  %cmp53.not = icmp eq i32 %22, 0
  br i1 %cmp53.not, label %if.end107, label %if.then55

if.then55:                                        ; preds = %sw.bb51
  %dec57 = add i32 %22, -1
  store i32 %dec57, i32* %column65, align 8
  br label %if.end107

sw.bb60:                                          ; preds = %if.end
  %tobool61.not = icmp eq i32 %space.0263, 0
  br i1 %tobool61.not, label %while.end108.loopexit, label %if.end63

if.end63:                                         ; preds = %sw.bb60
  %call64 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef -1) #13
  %23 = load i32, i32* %column65, align 8
  %inc = add i32 %23, 1
  store i32 %inc, i32* %column65, align 8
  %dec66 = add i32 %space.0263, -1
  br label %if.end107

sw.default:                                       ; preds = %if.end
  %cmp68 = icmp slt i32 %space.0263, 2
  br i1 %cmp68, label %while.end108.loopexit, label %if.end71

if.end71:                                         ; preds = %sw.default
  %call72 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef 94) #13
  %24 = xor i8 %call12, 64
  %call75 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef %24) #13
  %25 = load i32, i32* %column65, align 8
  %add77 = add i32 %25, 2
  store i32 %add77, i32* %column65, align 8
  %sub78 = add nsw i32 %space.0263, -2
  br label %if.end107

if.else:                                          ; preds = %while.body
  %26 = load i32, i32* %c_oflag, align 4
  %and86 = and i32 %26, 1
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else99, label %if.then88

if.then88:                                        ; preds = %if.else
  %call90 = call fastcc i32 @do_output_char(i8 noundef %call2, %struct.tty_struct* noundef %tty, i32 noundef %space.0263) #14
  %cmp91 = icmp slt i32 %call90, 0
  %sub95 = sub i32 %space.0263, %call90
  br i1 %cmp91, label %while.end108.loopexit, label %if.end107

if.else99:                                        ; preds = %if.else
  %tobool100.not = icmp eq i32 %space.0263, 0
  br i1 %tobool100.not, label %while.end108.loopexit, label %if.end102

if.end102:                                        ; preds = %if.else99
  %call103 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef %call2) #13
  %sub104 = add i32 %space.0263, -1
  br label %if.end107

if.end107:                                        ; preds = %if.end44, %if.end44.1, %if.end44.2, %if.end44.3, %if.end44.4, %if.end44.5, %if.end44.6, %if.then41.7, %while.body37.7, %if.end102, %if.then88, %sw.bb51, %if.then55, %sw.bb47, %if.end63, %if.end71
  %.sink = phi i64 [ 2, %sw.bb47 ], [ 2, %if.end63 ], [ 2, %if.end71 ], [ 2, %if.then55 ], [ 2, %sw.bb51 ], [ 1, %if.then88 ], [ 1, %if.end102 ], [ 3, %while.body37.7 ], [ 3, %if.then41.7 ], [ 3, %if.end44.6 ], [ 3, %if.end44.5 ], [ 3, %if.end44.4 ], [ 3, %if.end44.3 ], [ 3, %if.end44.2 ], [ 3, %if.end44.1 ], [ 3, %if.end44 ]
  %space.6 = phi i32 [ %space.0263, %sw.bb47 ], [ %dec66, %if.end63 ], [ %sub78, %if.end71 ], [ %space.0263, %if.then55 ], [ %space.0263, %sw.bb51 ], [ %sub95, %if.then88 ], [ %sub104, %if.end102 ], [ %sub34, %while.body37.7 ], [ %sub34, %if.then41.7 ], [ %sub34, %if.end44.6 ], [ %sub34, %if.end44.5 ], [ %sub34, %if.end44.4 ], [ %sub34, %if.end44.3 ], [ %sub34, %if.end44.2 ], [ %sub34, %if.end44.1 ], [ %sub34, %if.end44 ]
  %add50 = add i64 %tail.0264, %.sink
  %27 = load i64, i64* %echo_commit, align 8
  %28 = xor i64 %27, %add50
  %29 = and i64 %28, 4095
  %cmp.not = icmp eq i64 %29, 0
  br i1 %cmp.not, label %while.end108.loopexit, label %while.body

while.end108.loopexit:                            ; preds = %sw.default, %sw.bb60, %if.end28, %if.then88, %if.else99, %if.end107
  %tail.0.lcssa.ph = phi i64 [ %add50, %if.end107 ], [ %tail.0264, %if.else99 ], [ %tail.0264, %if.then88 ], [ %tail.0264, %if.end28 ], [ %tail.0264, %sw.bb60 ], [ %tail.0264, %sw.default ]
  %space.7.ph = phi i32 [ %space.6, %if.end107 ], [ 0, %if.else99 ], [ %space.0263, %if.then88 ], [ %space.0263, %if.end28 ], [ 0, %sw.bb60 ], [ %space.0263, %sw.default ]
  %.pre = load i64, i64* %echo_commit, align 8
  br label %while.end108

while.end108:                                     ; preds = %while.end108.loopexit, %entry
  %30 = phi i64 [ %3, %entry ], [ %.pre, %while.end108.loopexit ]
  %tail.0.lcssa = phi i64 [ %2, %entry ], [ %tail.0.lcssa.ph, %while.end108.loopexit ]
  %space.7 = phi i32 [ %call, %entry ], [ %space.7.ph, %while.end108.loopexit ]
  %cmp111283 = icmp ugt i64 %30, %tail.0.lcssa
  %sub114284 = sub i64 %30, %tail.0.lcssa
  %cmp115285 = icmp ugt i64 %sub114284, 3807
  %or.cond286 = and i1 %cmp111283, %cmp115285
  br i1 %or.cond286, label %while.body117, label %cleanup140

while.body117:                                    ; preds = %while.end108, %if.end135
  %tail.6287 = phi i64 [ %tail.7, %if.end135 ], [ %tail.0.lcssa, %while.end108 ]
  %call118 = call fastcc i8 @echo_buf(%struct.n_tty_data* noundef %1, i64 noundef %tail.6287) #14
  %cmp120 = icmp eq i8 %call118, -1
  %add123 = add nuw i64 %tail.6287, 1
  br i1 %cmp120, label %if.then122, label %if.end135

if.then122:                                       ; preds = %while.body117
  %call124 = call fastcc i8 @echo_buf(%struct.n_tty_data* noundef %1, i64 noundef %add123) #14
  %cmp126 = icmp eq i8 %call124, -126
  br i1 %cmp126, label %if.then128, label %if.else130

if.then128:                                       ; preds = %if.then122
  %add129 = add i64 %tail.6287, 3
  br label %if.end135

if.else130:                                       ; preds = %if.then122
  %add131 = add i64 %tail.6287, 2
  br label %if.end135

if.end135:                                        ; preds = %while.body117, %if.then128, %if.else130
  %tail.7 = phi i64 [ %add129, %if.then128 ], [ %add131, %if.else130 ], [ %add123, %while.body117 ]
  %31 = load i64, i64* %echo_commit, align 8
  %cmp111 = icmp ugt i64 %31, %tail.7
  %sub114 = sub i64 %31, %tail.7
  %cmp115 = icmp ugt i64 %sub114, 3807
  %or.cond = and i1 %cmp111, %cmp115
  br i1 %or.cond, label %while.body117, label %cleanup140

cleanup140:                                       ; preds = %sw.bb, %if.then, %if.end135, %while.end108
  %space.8 = phi i32 [ %space.7, %while.end108 ], [ %space.7, %if.end135 ], [ %space.0263, %if.then ], [ %space.0263, %sw.bb ]
  %tail.8 = phi i64 [ %tail.0.lcssa, %while.end108 ], [ %tail.7, %if.end135 ], [ %tail.0264, %if.then ], [ %tail.0264, %sw.bb ]
  store i64 %tail.8, i64* %echo_tail, align 8
  %sub138 = sub i32 %call, %space.8
  %conv139 = sext i32 %sub138 to i64
  ret i64 %conv139
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @echo_buf(%struct.n_tty_data* nocapture noundef readonly %ldata, i64 noundef %i) unnamed_addr #4 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #15, !srcloc !33
  %and = and i64 %i, 4095
  %arrayidx = getelementptr %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 13, i64 %and
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_put_char(%struct.tty_struct* noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_output_char(i8 noundef %c, %struct.tty_struct* noundef %tty, i32 noundef %space) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %tobool.not = icmp eq i32 %space, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i8 %c, label %sw.default [
    i8 10, label %sw.bb
    i8 13, label %sw.bb16
    i8 9, label %sw.bb42
    i8 8, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.end
  %c_oflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 1
  %2 = load i32, i32* %c_oflag, align 4
  %and = and i32 %2, 32
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %sw.bb
  %column = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  store i32 0, i32* %column, align 8
  %.pre = load i32, i32* %c_oflag, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %sw.bb
  %3 = phi i32 [ %.pre, %if.then2 ], [ %2, %sw.bb ]
  %and6 = and i32 %3, 4
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end3
  %cmp = icmp slt i32 %space, 2
  br i1 %cmp, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then8
  %column12 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  store i32 0, i32* %column12, align 8
  %canon_column = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 17
  store i32 0, i32* %canon_column, align 4
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %4 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %4, i64 0, i32 7
  %5 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write, align 8
  %call = call i32 %5(%struct.tty_struct* noundef %tty, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef 2) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %column14 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  %6 = load i32, i32* %column14, align 8
  %canon_column15 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 17
  store i32 %6, i32* %canon_column15, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %c_oflag18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 1
  %7 = load i32, i32* %c_oflag18, align 4
  %and19 = and i32 %7, 16
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb16
  %column21 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  %8 = load i32, i32* %column21, align 8
  %cmp22 = icmp eq i32 %8, 0
  br i1 %cmp22, label %cleanup, label %if.end25

if.end25:                                         ; preds = %land.lhs.true, %sw.bb16
  %and28 = and i32 %7, 8
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end39, label %if.then30

if.then30:                                        ; preds = %if.end25
  %and33 = and i32 %7, 32
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %sw.epilog, label %if.then35

if.then35:                                        ; preds = %if.then30
  %column36 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  store i32 0, i32* %column36, align 8
  %canon_column37 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 17
  store i32 0, i32* %canon_column37, align 4
  br label %sw.epilog

if.end39:                                         ; preds = %if.end25
  %column40 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  store i32 0, i32* %column40, align 8
  %canon_column41 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 17
  store i32 0, i32* %canon_column41, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end
  %column43 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  %9 = load i32, i32* %column43, align 8
  %and44 = and i32 %9, 7
  %sub = sub nuw nsw i32 8, %and44
  %c_oflag46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 1
  %10 = load i32, i32* %c_oflag46, align 4
  %and47 = and i32 %10, 6144
  %cmp48 = icmp eq i32 %and47, 6144
  br i1 %cmp48, label %if.then50, label %if.end59

if.then50:                                        ; preds = %sw.bb42
  %cmp51 = icmp sgt i32 %sub, %space
  br i1 %cmp51, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.then50
  %add = add i32 %sub, %9
  store i32 %add, i32* %column43, align 8
  %ops56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %11 = load %struct.tty_operations*, %struct.tty_operations** %ops56, align 8
  %write57 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %11, i64 0, i32 7
  %12 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write57, align 8
  %call58 = call i32 %12(%struct.tty_struct* noundef %tty, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 noundef %sub) #13
  br label %cleanup

if.end59:                                         ; preds = %sw.bb42
  %add61 = add i32 %sub, %9
  store i32 %add61, i32* %column43, align 8
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  %column63 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  %13 = load i32, i32* %column63, align 8
  %cmp64.not = icmp eq i32 %13, 0
  br i1 %cmp64.not, label %sw.epilog, label %if.then66

if.then66:                                        ; preds = %sw.bb62
  %dec = add i32 %13, -1
  store i32 %dec, i32* %column63, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %14 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %14
  %15 = load i8, i8* %arrayidx, align 1
  %16 = and i8 %15, 8
  %cmp72.not = icmp eq i8 %16, 0
  br i1 %cmp72.not, label %if.then74, label %sw.epilog

if.then74:                                        ; preds = %sw.default
  %c_oflag76 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 1
  %17 = load i32, i32* %c_oflag76, align 4
  %and77 = and i32 %17, 2
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.then74
  %call80 = call fastcc i8 @__toupper(i8 noundef %c) #14
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.then74
  %c.addr.0 = phi i8 [ %call80, %if.then79 ], [ %c, %if.then74 ]
  %call82 = call fastcc i32 @is_continuation(i8 noundef %c.addr.0, %struct.tty_struct* noundef %tty) #14
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %sw.epilog

if.then84:                                        ; preds = %if.end81
  %column85 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 16
  %18 = load i32, i32* %column85, align 8
  %inc = add i32 %18, 1
  store i32 %inc, i32* %column85, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then84, %if.end81, %sw.bb62, %if.then66, %if.then30, %if.then35, %if.end59, %if.end39, %if.end13
  %c.addr.1 = phi i8 [ %c, %sw.default ], [ %c.addr.0, %if.end81 ], [ %c.addr.0, %if.then84 ], [ 8, %if.then66 ], [ 8, %sw.bb62 ], [ 9, %if.end59 ], [ 10, %if.then35 ], [ 10, %if.then30 ], [ 13, %if.end39 ], [ 10, %if.end13 ]
  %call88 = call i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef %c.addr.1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %land.lhs.true, %if.then8, %entry, %sw.epilog, %if.end54, %if.end11
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ %sub, %if.end54 ], [ 2, %if.end11 ], [ -1, %entry ], [ -1, %if.then8 ], [ 0, %land.lhs.true ], [ -1, %if.then50 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @__toupper(i8 noundef %c) unnamed_addr #8 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 2
  %cmp.not = icmp eq i8 %2, 0
  %sub = add i8 %c, -32
  %spec.select = select i1 %cmp.not, i8 %c, i8 %sub
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_continuation(i8 noundef %c, %struct.tty_struct* nocapture noundef readonly %tty) unnamed_addr #7 {
entry:
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %0 = load i32, i32* %c_iflag, align 8
  %and = and i32 %0, 16384
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call fastcc i32 @is_utf8_continuation(i8 noundef %c) #14
  %tobool1 = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_utf8_continuation(i8 noundef %c) unnamed_addr #8 {
entry:
  %0 = and i8 %c, -64
  %cmp = icmp eq i8 %0, -128
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #4 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #4 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 4, i8* %addr, i64 549755813887) #15, !srcloc !35
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #15, !srcloc !36
  call void asm sideeffect "hint #20", "~{memory}"() #15, !srcloc !37
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i64 @inq_canon(%struct.n_tty_data* noundef %ldata) unnamed_addr #10 {
entry:
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 2
  %0 = load i64, i64* %canon_head, align 8
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 14
  %1 = load i64, i64* %read_tail, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %0, %1
  %and = and i64 %0, 4095
  %and330 = and i64 %1, 4095
  %cmp4.not31 = icmp eq i64 %and, %and330
  br i1 %cmp4.not31, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end, %if.end11
  %and334 = phi i64 [ %and3, %if.end11 ], [ %and330, %if.end ]
  %tail.033 = phi i64 [ %inc, %if.end11 ], [ %1, %if.end ]
  %nr.032 = phi i64 [ %nr.1, %if.end11 ], [ %sub, %if.end ]
  %div.i = lshr i64 %and334, 6
  %arrayidx.i = getelementptr %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 12, i64 %div.i
  %2 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i64 %tail.033, 63
  %3 = shl nuw i64 1, %and.i
  %4 = and i64 %2, %3
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call6 = call fastcc i8 @read_buf(%struct.n_tty_data* noundef %ldata, i64 noundef %tail.033) #14
  %cmp8 = icmp eq i8 %call6, 0
  %dec = sext i1 %cmp8 to i64
  %spec.select = add i64 %nr.032, %dec
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %while.body
  %nr.1 = phi i64 [ %nr.032, %while.body ], [ %spec.select, %land.lhs.true ]
  %inc = add i64 %tail.033, 1
  %and3 = and i64 %inc, 4095
  %cmp4.not = icmp eq i64 %and, %and3
  br i1 %cmp4.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end11, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %sub, %if.end ], [ %nr.1, %if.end11 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @read_cnt(%struct.n_tty_data* nocapture noundef readonly %ldata) unnamed_addr #7 {
entry:
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 0
  %0 = load i64, i64* %read_head, align 8
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 14
  %1 = load i64, i64* %read_tail, align 8
  %sub = sub i64 %0, %1
  ret i64 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(%struct.tty_struct* noundef, %struct.file* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_tty(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  %tobool3 = icmp ne %struct.wait_queue_head* %wait_address, null
  %or.cond = and i1 %tobool3, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mutex_is_locked(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @n_tty_receive_buf_common(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count, i32 noundef %flow) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %icanon = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %tobool16 = icmp ne i32 %flow, 0
  %no_room = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 9
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  br label %do.body

do.body:                                          ; preds = %do.cond43, %entry
  %rcvd.0 = phi i32 [ 0, %entry ], [ %add42, %do.cond43 ]
  %count.addr.0 = phi i32 [ %count, %entry ], [ %sub41, %do.cond43 ]
  %fp.addr.0 = phi i8* [ %fp, %entry ], [ %spec.select, %do.cond43 ]
  %cp.addr.0 = phi i8* [ %cp, %entry ], [ %add.ptr, %do.cond43 ]
  %2 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(i64* elementtype(i64) %read_tail) #15, !srcloc !38
  %3 = load i64, i64* %read_head, align 8
  %sub.neg = sub i64 %2, %3
  %4 = trunc i64 %sub.neg to i32
  %conv = add i32 %4, 4096
  %5 = load i32, i32* %c_iflag, align 8
  %and = and i32 %5, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %add = add i32 %4, 4098
  %div = sdiv i32 %add, 3
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %room.0 = phi i32 [ %div, %if.then ], [ %conv, %do.body ]
  %dec = add i32 %room.0, -1
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then4, label %if.end21

if.then4:                                         ; preds = %if.end
  %bf.load = load i8, i8* %icanon, align 1
  %6 = and i8 %bf.load, 16
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end15, label %land.end

land.end:                                         ; preds = %if.then4
  %7 = load i64, i64* %canon_head, align 8
  %cmp7 = icmp eq i64 %7, %2
  %cmp10 = icmp slt i32 %dec, 0
  %or.cond = select i1 %cmp7, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.end
  %dec14 = add i64 %3, -1
  store i64 %dec14, i64* %read_head, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then4, %if.then12, %land.end
  %8 = phi i1 [ true, %if.then12 ], [ %cmp7, %land.end ], [ false, %if.then4 ]
  %land.ext119 = zext i1 %8 to i32
  %lnot = xor i1 %8, true
  %9 = select i1 %tobool16, i1 %lnot, i1 false
  %frombool = zext i1 %9 to i8
  store i8 %frombool, i8* %no_room, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.end15
  %overflow.0 = phi i32 [ %land.ext119, %if.end15 ], [ 0, %if.end ]
  %room.1 = phi i32 [ %land.ext119, %if.end15 ], [ %dec, %if.end ]
  %cmp23 = icmp slt i32 %count.addr.0, %room.1
  %cond = select i1 %cmp23, i32 %count.addr.0, i32 %room.1
  %tobool25.not = icmp eq i32 %cond, 0
  br i1 %tobool25.not, label %do.end47, label %if.end27

if.end27:                                         ; preds = %if.end21
  %tobool28 = icmp ne i32 %overflow.0, 0
  %tobool29 = icmp ne i8* %fp.addr.0, null
  %or.cond64 = select i1 %tobool28, i1 %tobool29, i1 false
  br i1 %or.cond64, label %lor.lhs.false30, label %if.then34

lor.lhs.false30:                                  ; preds = %if.end27
  %10 = load i8, i8* %fp.addr.0, align 1
  %cmp32.not = icmp eq i8 %10, 3
  br i1 %cmp32.not, label %do.cond43, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false30, %if.end27
  call fastcc void @__receive_buf(%struct.tty_struct* noundef %tty, i8* noundef %cp.addr.0, i8* noundef %fp.addr.0, i32 noundef %cond) #14
  br label %do.cond43

do.cond43:                                        ; preds = %lor.lhs.false30, %if.then34
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr i8, i8* %cp.addr.0, i64 %idx.ext
  %add.ptr39 = getelementptr i8, i8* %fp.addr.0, i64 %idx.ext
  %spec.select = select i1 %tobool29, i8* %add.ptr39, i8* null
  %sub41 = sub i32 %count.addr.0, %cond
  %add42 = add i32 %cond, %rcvd.0
  %11 = load volatile i64, i64* %flags, align 8
  %12 = and i64 %11, 1048576
  %tobool45.not = icmp eq i64 %12, 0
  br i1 %tobool45.not, label %do.body, label %do.end47

do.end47:                                         ; preds = %if.end21, %do.cond43
  %rcvd.1126 = phi i32 [ %add42, %do.cond43 ], [ %rcvd.0, %if.end21 ]
  %receive_room = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 22
  store i32 %room.1, i32* %receive_room, align 4
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %13 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %13, i64 0, i32 10
  %14 = load i16, i16* %type, align 8
  %cmp49 = icmp eq i16 %14, 4
  br i1 %cmp49, label %if.then51, label %if.else56

if.then51:                                        ; preds = %do.end47
  %tobool52.not = icmp eq i32 %overflow.0, 0
  br i1 %tobool52.not, label %if.end57, label %if.then53

if.then53:                                        ; preds = %if.then51
  call fastcc void @tty_set_flow_change(%struct.tty_struct* noundef %tty, i32 noundef 2) #14
  %call54 = call i32 @tty_unthrottle_safe(%struct.tty_struct* noundef %tty) #13
  call fastcc void @__tty_set_flow_change(%struct.tty_struct* noundef %tty) #14
  br label %if.end57

if.else56:                                        ; preds = %do.end47
  call fastcc void @n_tty_check_throttle(%struct.tty_struct* noundef %tty) #14
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.then53, %if.else56
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  ret i32 %rcvd.1126
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__receive_buf(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %2 = load i32, i32* %c_iflag, align 8
  %and = and i32 %2, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %and3 = and i32 %2, 512
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %3 = load i32, i32* %c_lflag, align 4
  %and6 = and i32 %3, 32768
  %tobool7 = icmp ne i32 %and6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ false, %lor.rhs ], [ %tobool7, %land.rhs ]
  %real_raw = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %real_raw, align 1
  %5 = and i8 %bf.load, 8
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.end
  call fastcc void @n_tty_receive_buf_real_raw(%struct.tty_struct* noundef %tty, i8* noundef %cp, i32 noundef %count) #14
  br label %if.end34

if.else:                                          ; preds = %lor.end
  %6 = and i8 %bf.load, 4
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %if.else
  %c_lflag14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %7 = load i32, i32* %c_lflag14, align 4
  %and15 = and i32 %7, 65536
  %tobool16.not = icmp eq i32 %and15, 0
  %brmerge = select i1 %tobool16.not, i1 true, i1 %4
  br i1 %brmerge, label %if.else19, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %if.else
  call fastcc void @n_tty_receive_buf_raw(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count) #14
  br label %if.end34

if.else19:                                        ; preds = %lor.lhs.false
  %closing = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 33
  %8 = load i32, i32* %closing, align 8
  %tobool20.not = icmp eq i32 %8, 0
  %tobool16.not.not = xor i1 %tobool16.not, true
  %brmerge90 = select i1 %tobool20.not, i1 true, i1 %tobool16.not.not
  br i1 %brmerge90, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.else19
  call fastcc void @n_tty_receive_buf_closing(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count) #14
  br label %if.end34

if.else27:                                        ; preds = %if.else19
  call fastcc void @n_tty_receive_buf_standard(%struct.tty_struct* noundef %tty, i8* noundef %cp, i8* noundef %fp, i32 noundef %count) #14
  call fastcc void @flush_echoes(%struct.tty_struct* noundef %tty) #14
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %9 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %flush_chars = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %9, i64 0, i32 9
  %10 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_chars, align 8
  %tobool28.not = icmp eq void (%struct.tty_struct*)* %10, null
  br i1 %tobool28.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.else27
  call void %10(%struct.tty_struct* noundef %tty) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then18, %if.else27, %if.then29, %if.then26, %if.then
  %bf.load35 = load i8, i8* %real_raw, align 1
  %11 = and i8 %bf.load35, 16
  %tobool39.not = icmp eq i8 %11, 0
  br i1 %tobool39.not, label %do.body, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.end34
  %c_lflag42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %12 = load i32, i32* %c_lflag42, align 4
  %and43 = and i32 %12, 65536
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end34, %land.lhs.true40
  %commit_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 1
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %13 = load i64, i64* %read_head, align 8
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %commit_head, i64 %13) #15, !srcloc !39
  %call50 = call fastcc i64 @read_cnt(%struct.n_tty_data* noundef %1) #14
  %tobool51.not = icmp eq i64 %call50, 0
  br i1 %tobool51.not, label %cleanup, label %if.then52

if.then52:                                        ; preds = %do.body
  %fasync = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 25
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync, i32 noundef 29, i32 noundef 1) #13
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef nonnull inttoptr (i64 1 to i8*)) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then52, %land.lhs.true40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_check_throttle(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %icanon = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %icanon, align 1
  %2 = and i8 %bf.load, 16
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.cond.preheader, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %3 = load i64, i64* %canon_head, align 8
  %read_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 14
  %4 = load i64, i64* %read_tail, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %cleanup10, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end5
  call fastcc void @tty_set_flow_change(%struct.tty_struct* noundef %tty, i32 noundef 1) #14
  %call = call fastcc i64 @read_cnt(%struct.n_tty_data* noundef %1) #14
  %notsub = add i64 %call, -4097
  %cmp2 = icmp ult i64 %notsub, -128
  br i1 %cmp2, label %while.end, label %if.end5

if.end5:                                          ; preds = %while.cond
  %call6 = call i32 @tty_throttle_safe(%struct.tty_struct* noundef %tty) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %while.end, label %while.cond

while.end:                                        ; preds = %if.end5, %while.cond
  call fastcc void @__tty_set_flow_change(%struct.tty_struct* noundef %tty) #14
  br label %cleanup10

cleanup10:                                        ; preds = %land.lhs.true, %while.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_buf_real_raw(%struct.tty_struct* nocapture noundef readonly %tty, i8* noundef %cp, i32 noundef %count) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %2 = load i64, i64* %read_head, align 8
  %and = and i64 %2, 4095
  %conv = sext i32 %count to i64
  %sub = sub nuw nsw i64 4096, %and
  %cmp = icmp ugt i64 %sub, %conv
  %cond = select i1 %cmp, i64 %conv, i64 %sub
  %call = call fastcc i8* @read_buf_addr(%struct.n_tty_data* noundef %1, i64 noundef %and) #14
  %call2 = call i8* @memcpy(i8* noundef %call, i8* noundef %cp, i64 noundef %cond) #13
  %3 = load i64, i64* %read_head, align 8
  %add = add i64 %cond, %3
  store i64 %add, i64* %read_head, align 8
  %add.ptr = getelementptr i8, i8* %cp, i64 %cond
  %4 = trunc i64 %cond to i32
  %conv6 = sub i32 %count, %4
  %and8 = and i64 %add, 4095
  %conv9 = sext i32 %conv6 to i64
  %sub10 = sub nuw nsw i64 4096, %and8
  %cmp12 = icmp ugt i64 %sub10, %conv9
  %cond17 = select i1 %cmp12, i64 %conv9, i64 %sub10
  %call18 = call fastcc i8* @read_buf_addr(%struct.n_tty_data* noundef %1, i64 noundef %and8) #14
  %call19 = call i8* @memcpy(i8* noundef %call18, i8* noundef %add.ptr, i64 noundef %cond17) #13
  %5 = load i64, i64* %read_head, align 8
  %add21 = add i64 %cond17, %5
  store i64 %add21, i64* %read_head, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_buf_raw(%struct.tty_struct* noundef %tty, i8* nocapture noundef readonly %cp, i8* noundef readonly %fp, i32 noundef %count) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %tobool.not16 = icmp eq i32 %count, 0
  br i1 %tobool.not16, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end9
  %dec20.in = phi i32 [ %dec20, %if.end9 ], [ %count, %entry ]
  %flag.019 = phi i8 [ %flag.1, %if.end9 ], [ 0, %entry ]
  %fp.addr.018 = phi i8* [ %fp.addr.1, %if.end9 ], [ %fp, %entry ]
  %cp.addr.017 = phi i8* [ %cp.addr.1, %if.end9 ], [ %cp, %entry ]
  %dec20 = add i32 %dec20.in, -1
  %tobool1.not = icmp eq i8* %fp.addr.018, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %fp.addr.018, i64 1
  %2 = load i8, i8* %fp.addr.018, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %fp.addr.1 = phi i8* [ %incdec.ptr, %if.then ], [ null, %while.body ]
  %flag.1 = phi i8 [ %2, %if.then ], [ %flag.019, %while.body ]
  %cmp = icmp eq i8 %flag.1, 0
  %3 = load i8, i8* %cp.addr.017, align 1
  br i1 %cmp, label %if.then6, label %if.else, !prof !13

if.then6:                                         ; preds = %if.end
  call fastcc void @put_tty_queue(i8 noundef %3, %struct.n_tty_data* noundef %1) #14
  br label %if.end9

if.else:                                          ; preds = %if.end
  call fastcc void @n_tty_receive_char_flagged(%struct.tty_struct* noundef %tty, i8 noundef %3, i8 noundef %flag.1) #14
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %cp.addr.1 = getelementptr i8, i8* %cp.addr.017, i64 1
  %tobool.not = icmp eq i32 %dec20, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end9, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_buf_closing(%struct.tty_struct* noundef %tty, i8* nocapture noundef readonly %cp, i8* noundef readonly %fp, i32 noundef %count) unnamed_addr #4 {
entry:
  %tobool.not11 = icmp eq i32 %count, 0
  br i1 %tobool.not11, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end8
  %dec15.in = phi i32 [ %dec15, %if.end8 ], [ %count, %entry ]
  %flag.014 = phi i8 [ %flag.1, %if.end8 ], [ 0, %entry ]
  %fp.addr.013 = phi i8* [ %fp.addr.1, %if.end8 ], [ %fp, %entry ]
  %cp.addr.012 = phi i8* [ %cp.addr.1, %if.end8 ], [ %cp, %entry ]
  %dec15 = add i32 %dec15.in, -1
  %tobool1.not = icmp eq i8* %fp.addr.013, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %fp.addr.013, i64 1
  %0 = load i8, i8* %fp.addr.013, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %fp.addr.1 = phi i8* [ %incdec.ptr, %if.then ], [ null, %while.body ]
  %flag.1 = phi i8 [ %0, %if.then ], [ %flag.014, %while.body ]
  %cmp = icmp eq i8 %flag.1, 0
  br i1 %cmp, label %if.then6, label %if.end8, !prof !13

if.then6:                                         ; preds = %if.end
  %incdec.ptr7 = getelementptr i8, i8* %cp.addr.012, i64 1
  %1 = load i8, i8* %cp.addr.012, align 1
  call fastcc void @n_tty_receive_char_closing(%struct.tty_struct* noundef %tty, i8 noundef %1) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %cp.addr.1 = phi i8* [ %incdec.ptr7, %if.then6 ], [ %cp.addr.012, %if.end ]
  %tobool.not = icmp eq i32 %dec15, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end8, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_buf_standard(%struct.tty_struct* noundef %tty, i8* nocapture noundef readonly %cp, i8* noundef readonly %fp, i32 noundef %count) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %tobool.not61 = icmp eq i32 %count, 0
  br i1 %tobool.not61, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %lnext = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %dec65.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec65, %cleanup ]
  %flag.064 = phi i8 [ 0, %while.body.lr.ph ], [ %flag.1, %cleanup ]
  %fp.addr.063 = phi i8* [ %fp, %while.body.lr.ph ], [ %fp.addr.1, %cleanup ]
  %cp.addr.062 = phi i8* [ %cp, %while.body.lr.ph ], [ %incdec.ptr, %cleanup ]
  %dec65 = add i32 %dec65.in, -1
  %incdec.ptr = getelementptr i8, i8* %cp.addr.062, i64 1
  %2 = load i8, i8* %cp.addr.062, align 1
  %tobool1.not = icmp eq i8* %fp.addr.063, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %incdec.ptr2 = getelementptr i8, i8* %fp.addr.063, i64 1
  %3 = load i8, i8* %fp.addr.063, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %fp.addr.1 = phi i8* [ %incdec.ptr2, %if.then ], [ null, %while.body ]
  %flag.1 = phi i8 [ %3, %if.then ], [ %flag.064, %while.body ]
  %bf.load = load i8, i8* %lnext, align 1
  %bf.clear = and i8 %bf.load, 1
  %tobool3.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @n_tty_receive_char_lnext(%struct.tty_struct* noundef %tty, i8 noundef %2, i8 noundef %flag.1) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp.not = icmp eq i8 %flag.1, 0
  br i1 %cmp.not, label %if.end11, label %if.then10, !prof !13

if.then10:                                        ; preds = %if.end5
  call fastcc void @n_tty_receive_char_flagged(%struct.tty_struct* noundef %tty, i8 noundef %2, i8 noundef %flag.1) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %4 = load i32, i32* %c_iflag, align 8
  %and = and i32 %4, 32
  %tobool12.not = icmp eq i32 %and, 0
  %5 = and i8 %2, 127
  %spec.select = select i1 %tobool12.not, i8 %2, i8 %5
  %and20 = and i32 %4, 512
  %tobool21.not = icmp eq i32 %and20, 0
  %.pre = load i32, i32* %c_lflag, align 4
  %and23 = and i32 %.pre, 32768
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond = select i1 %tobool21.not, i1 true, i1 %tobool24.not
  br i1 %or.cond, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end11
  %call = call fastcc i8 @__tolower(i8 noundef %spec.select) #14
  br label %if.end26

if.end26:                                         ; preds = %if.end11, %if.then25
  %c.1 = phi i8 [ %call, %if.then25 ], [ %spec.select, %if.end11 ]
  %and29 = and i32 %.pre, 65536
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end26
  call fastcc void @put_tty_queue(i8 noundef %c.1, %struct.n_tty_data* noundef %1) #14
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %conv33 = zext i8 %c.1 to i32
  %div.i = lshr i32 %conv33, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 6, i64 %idxprom.i
  %6 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %conv33, 63
  %sh_prom.i = zext i32 %and.i to i64
  %7 = shl nuw i64 1, %sh_prom.i
  %8 = and i64 %6, %7
  %tobool35.not = icmp eq i64 %8, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end32
  call fastcc void @n_tty_receive_char_special(%struct.tty_struct* noundef %tty, i8 noundef %c.1) #14
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call fastcc void @n_tty_receive_char(%struct.tty_struct* noundef %tty, i8 noundef %c.1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.else, %if.then31, %if.then10, %if.then4
  %tobool.not = icmp eq i32 %dec65, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_echoes(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %2 = load i32, i32* %c_lflag, align 4
  %3 = and i32 %2, 72
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %echo_commit = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 4
  %5 = load i64, i64* %echo_commit, align 8
  %echo_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 3
  %6 = load i64, i64* %echo_head, align 8
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %output_lock = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 20
  call void @mutex_lock(%struct.mutex* noundef %output_lock) #13
  %7 = load i64, i64* %echo_head, align 8
  store i64 %7, i64* %echo_commit, align 8
  %call = call fastcc i64 @__process_echoes(%struct.tty_struct* noundef %tty) #14
  call void @mutex_unlock(%struct.mutex* noundef %output_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(%struct.fasync_struct** noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @put_tty_queue(i8 noundef %c, %struct.n_tty_data* noundef %ldata) unnamed_addr #11 {
entry:
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 0
  %0 = load i64, i64* %read_head, align 8
  %call = call fastcc i8* @read_buf_addr(%struct.n_tty_data* noundef %ldata, i64 noundef %0) #14
  store i8 %c, i8* %call, align 1
  %1 = load i64, i64* %read_head, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %read_head, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_char_flagged(%struct.tty_struct* noundef %tty, i8 noundef %c, i8 noundef %flag) unnamed_addr #4 {
entry:
  switch i8 %flag, label %do.end [
    i8 1, label %sw.bb
    i8 3, label %sw.bb1
    i8 2, label %sw.bb1
    i8 4, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call fastcc void @n_tty_receive_break(%struct.tty_struct* noundef %tty) #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  call fastcc void @n_tty_receive_parity_error(%struct.tty_struct* noundef %tty, i8 noundef %c) #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call fastcc void @n_tty_receive_overrun(%struct.tty_struct* noundef %tty) #14
  br label %sw.epilog

do.end:                                           ; preds = %entry
  %conv = zext i8 %flag to i32
  %call = call i8* @tty_driver_name(%struct.tty_struct* noundef %tty) #13
  %call3 = call i8* @tty_name(%struct.tty_struct* noundef %tty) #13
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call, i8* noundef %call3, i32 noundef %conv) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_break(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %2 = load i32, i32* %c_iflag, align 8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %2, 2
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call fastcc void @isig(i32 noundef 2, %struct.tty_struct* noundef %tty) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and9 = and i32 %2, 8
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end6
  call fastcc void @put_tty_queue(i8 noundef -1, %struct.n_tty_data* noundef %1) #14
  call fastcc void @put_tty_queue(i8 noundef 0, %struct.n_tty_data* noundef %1) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end6
  call fastcc void @put_tty_queue(i8 noundef 0, %struct.n_tty_data* noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @n_tty_receive_parity_error(%struct.tty_struct* nocapture noundef readonly %tty, i8 noundef %c) unnamed_addr #11 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %2 = load i32, i32* %c_iflag, align 8
  %and = and i32 %2, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i32 %2, 4
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %and8 = and i32 %2, 8
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %if.then10

if.then10:                                        ; preds = %if.end
  call fastcc void @put_tty_queue(i8 noundef -1, %struct.n_tty_data* noundef %1) #14
  call fastcc void @put_tty_queue(i8 noundef 0, %struct.n_tty_data* noundef %1) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.end, %if.then10
  %c.sink = phi i8 [ %c, %if.then10 ], [ 0, %if.end ], [ %c, %entry ]
  call fastcc void @put_tty_queue(i8 noundef %c.sink, %struct.n_tty_data* noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_overrun(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %num_overrun = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 8
  %2 = load i32, i32* %num_overrun, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %num_overrun, align 8
  %overrun_time = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 7
  %3 = load i64, i64* %overrun_time, align 8
  %add = add i64 %3, 250
  %4 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add, %4
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load volatile i64, i64* @jiffies, align 64
  %sub2 = sub i64 %5, %3
  %cmp3 = icmp slt i64 %sub2, 0
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %entry, %lor.lhs.false
  %call = call i8* @tty_driver_name(%struct.tty_struct* noundef %tty) #13
  %call4 = call i8* @tty_name(%struct.tty_struct* noundef %tty) #13
  %6 = load i32, i32* %num_overrun, align 8
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call, i8* noundef %call4, i32 noundef %6) #17
  %7 = load volatile i64, i64* @jiffies, align 64
  store i64 %7, i64* %overrun_time, align 8
  store i32 0, i32* %num_overrun, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @tty_driver_name(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @tty_name(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @isig(i32 noundef %sig, %struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %2 = load i32, i32* %c_lflag, align 4
  %and = and i32 %2, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__isig(i32 noundef %sig, %struct.tty_struct* noundef %tty) #14
  br label %if.end8

if.else:                                          ; preds = %entry
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #13
  call fastcc void @__isig(i32 noundef %sig, %struct.tty_struct* noundef %tty) #14
  %output_lock = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 20
  call void @mutex_lock(%struct.mutex* noundef %output_lock) #13
  %echo_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 18
  store i64 0, i64* %echo_tail, align 8
  %echo_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 3
  store i64 0, i64* %echo_head, align 8
  %echo_commit = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 4
  store i64 0, i64* %echo_commit, align 8
  %echo_mark = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 5
  store i64 0, i64* %echo_mark, align 8
  call void @mutex_unlock(%struct.mutex* noundef %output_lock) #13
  call void @tty_driver_flush_buffer(%struct.tty_struct* noundef %tty) #13
  %3 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  call fastcc void @reset_buffer_flags(%struct.n_tty_data* noundef %3) #14
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %4 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool4.not = icmp eq %struct.tty_struct* %4, null
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  call fastcc void @n_tty_packet_mode_flush(%struct.tty_struct* noundef %tty) #14
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #13
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #13
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__isig(i32 noundef %sig, %struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %call = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef %tty) #13
  %tobool.not = icmp eq %struct.pid* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %call, i32 noundef %sig, i32 noundef 1) #13
  call void @put_pid(%struct.pid* noundef nonnull %call) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(%struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_char_closing(%struct.tty_struct* noundef %tty, i8 noundef %c) unnamed_addr #4 {
entry:
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %0 = load i32, i32* %c_iflag, align 8
  %and = and i32 %0, 32
  %tobool.not = icmp eq i32 %and, 0
  %1 = and i8 %c, 127
  %spec.select = select i1 %tobool.not, i8 %c, i8 %1
  %and5 = and i32 %0, 512
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %2 = load i32, i32* %c_lflag, align 4
  %and8 = and i32 %2, 32768
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %call = call fastcc i8 @__tolower(i8 noundef %spec.select) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %entry
  %c.addr.1 = phi i8 [ %call, %if.then10 ], [ %spec.select, %land.lhs.true ], [ %spec.select, %entry ]
  %and14 = and i32 %0, 1024
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end66, label %if.then16

if.then16:                                        ; preds = %if.end11
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 9
  %3 = load i8, i8* %arrayidx, align 1
  %cmp = icmp eq i8 %c.addr.1, %3
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then16
  call void @stop_tty(%struct.tty_struct* noundef %tty) #13
  br label %if.end66

if.else:                                          ; preds = %if.then16
  %arrayidx25 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 8
  %4 = load i8, i8* %arrayidx25, align 1
  %cmp27 = icmp eq i8 %c.addr.1, %4
  br i1 %cmp27, label %if.then63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %5 = load i8, i8* %stopped, align 4, !range !8
  %tobool29.not = icmp eq i8 %5, 0
  br i1 %tobool29.not, label %if.end66, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %lor.lhs.false
  %tco_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 2
  %6 = load i8, i8* %tco_stopped, align 1, !range !8
  %tobool33.not = icmp ne i8 %6, 0
  %and37 = and i32 %0, 2048
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond = select i1 %tobool33.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %if.end66, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true31
  %arrayidx43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 0
  %7 = load i8, i8* %arrayidx43, align 1
  %cmp45.not = icmp eq i8 %c.addr.1, %7
  br i1 %cmp45.not, label %if.end66, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true39
  %arrayidx51 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 1
  %8 = load i8, i8* %arrayidx51, align 1
  %cmp53.not = icmp eq i8 %c.addr.1, %8
  br i1 %cmp53.not, label %if.end66, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %land.lhs.true47
  %arrayidx59 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 10
  %9 = load i8, i8* %arrayidx59, align 1
  %cmp61.not = icmp eq i8 %c.addr.1, %9
  br i1 %cmp61.not, label %if.end66, label %if.then63

if.then63:                                        ; preds = %land.lhs.true55, %if.else
  call void @start_tty(%struct.tty_struct* noundef %tty) #13
  call fastcc void @process_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then21, %if.then63, %land.lhs.true55, %land.lhs.true47, %land.lhs.true39, %land.lhs.true31, %lor.lhs.false, %if.end11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @__tolower(i8 noundef %c) unnamed_addr #8 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 1
  %cmp.not = icmp eq i8 %2, 0
  %sub = add i8 %c, 32
  %spec.select = select i1 %cmp.not, i8 %c, i8 %sub
  ret i8 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_char_lnext(%struct.tty_struct* noundef %tty, i8 noundef %c, i8 noundef %flag) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %lnext = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %lnext, align 1
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %lnext, align 1
  %cmp = icmp eq i8 %flag, 0
  br i1 %cmp, label %if.then, label %if.else, !prof !13

if.then:                                          ; preds = %entry
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %2 = load i32, i32* %c_iflag, align 8
  %and = and i32 %2, 32
  %tobool4.not = icmp eq i32 %and, 0
  %3 = and i8 %c, 127
  %spec.select = select i1 %tobool4.not, i8 %c, i8 %3
  %and11 = and i32 %2, 512
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %4 = load i32, i32* %c_lflag, align 4
  %and14 = and i32 %4, 32768
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  %call = call fastcc i8 @__tolower(i8 noundef %spec.select) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %if.then
  %c.addr.1 = phi i8 [ %call, %if.then16 ], [ %spec.select, %land.lhs.true ], [ %spec.select, %if.then ]
  call fastcc void @n_tty_receive_char(%struct.tty_struct* noundef %tty, i8 noundef %c.addr.1) #14
  br label %if.end18

if.else:                                          ; preds = %entry
  call fastcc void @n_tty_receive_char_flagged(%struct.tty_struct* noundef %tty, i8 noundef %c, i8 noundef %flag) #14
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_char_special(%struct.tty_struct* noundef %tty, i8 noundef %c) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %2 = load i32, i32* %c_iflag, align 8
  %and = and i32 %2, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 8
  %3 = load i8, i8* %arrayidx, align 1
  %cmp = icmp eq i8 %3, %c
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @start_tty(%struct.tty_struct* noundef %tty) #13
  call fastcc void @process_echoes(%struct.tty_struct* noundef %tty) #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arrayidx8 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 9
  %4 = load i8, i8* %arrayidx8, align 1
  %cmp10 = icmp eq i8 %4, %c
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @stop_tty(%struct.tty_struct* noundef %tty) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end, %entry
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %5 = load i32, i32* %c_lflag, align 4
  %and16 = and i32 %5, 1
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end47, label %if.then18

if.then18:                                        ; preds = %if.end14
  %arrayidx22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 0
  %6 = load i8, i8* %arrayidx22, align 1
  %cmp24 = icmp eq i8 %6, %c
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then18
  call fastcc void @n_tty_receive_signal_char(%struct.tty_struct* noundef %tty, i32 noundef 2, i8 noundef %c) #14
  br label %cleanup

if.else:                                          ; preds = %if.then18
  %arrayidx30 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 1
  %7 = load i8, i8* %arrayidx30, align 1
  %cmp32 = icmp eq i8 %7, %c
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else
  call fastcc void @n_tty_receive_signal_char(%struct.tty_struct* noundef %tty, i32 noundef 3, i8 noundef %c) #14
  br label %cleanup

if.else35:                                        ; preds = %if.else
  %arrayidx39 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 10
  %8 = load i8, i8* %arrayidx39, align 1
  %cmp41 = icmp eq i8 %8, %c
  br i1 %cmp41, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.else35
  call fastcc void @n_tty_receive_signal_char(%struct.tty_struct* noundef %tty, i32 noundef 20, i8 noundef %c) #14
  br label %cleanup

if.end47:                                         ; preds = %if.else35, %if.end14
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %9 = load i8, i8* %stopped, align 4, !range !8
  %tobool48.not = icmp eq i8 %9, 0
  br i1 %tobool48.not, label %if.end63, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end47
  %tco_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 2
  %10 = load i8, i8* %tco_stopped, align 1, !range !8
  %tobool51.not = icmp eq i8 %10, 0
  %11 = and i32 %2, 3072
  %.not402 = icmp eq i32 %11, 3072
  %or.cond = select i1 %tobool51.not, i1 %.not402, i1 false
  br i1 %or.cond, label %if.then62, label %if.end63

if.then62:                                        ; preds = %land.lhs.true
  call void @start_tty(%struct.tty_struct* noundef %tty) #13
  call fastcc void @process_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true, %if.end47
  switch i8 %c, label %if.end91 [
    i8 13, label %if.then67
    i8 10, label %land.lhs.true84
  ]

if.then67:                                        ; preds = %if.end63
  %12 = load i32, i32* %c_iflag, align 8
  %and70 = and i32 %12, 128
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end73, label %cleanup

if.end73:                                         ; preds = %if.then67
  %and76 = and i32 %12, 256
  %tobool77.not = icmp eq i32 %and76, 0
  %spec.select = select i1 %tobool77.not, i8 13, i8 10
  br label %if.end91

land.lhs.true84:                                  ; preds = %if.end63
  %13 = load i32, i32* %c_iflag, align 8
  %and87 = and i32 %13, 64
  %tobool88.not = icmp eq i32 %and87, 0
  %spec.select399 = select i1 %tobool88.not, i8 10, i8 13
  br label %if.end91

if.end91:                                         ; preds = %land.lhs.true84, %if.end73, %if.end63
  %c.addr.0 = phi i8 [ %spec.select, %if.end73 ], [ %c, %if.end63 ], [ %spec.select399, %land.lhs.true84 ]
  %icanon = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  %bf.load = load i8, i8* %icanon, align 1
  %14 = and i8 %bf.load, 16
  %tobool92.not = icmp eq i8 %14, 0
  br i1 %tobool92.not, label %if.end252, label %if.then93

if.then93:                                        ; preds = %if.end91
  %arrayidx97 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 2
  %15 = load i8, i8* %arrayidx97, align 1
  %cmp99 = icmp eq i8 %c.addr.0, %15
  br i1 %cmp99, label %if.then121, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then93
  %arrayidx104 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 3
  %16 = load i8, i8* %arrayidx104, align 1
  %cmp106 = icmp eq i8 %c.addr.0, %16
  br i1 %cmp106, label %if.then121, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false
  %arrayidx112 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 14
  %17 = load i8, i8* %arrayidx112, align 1
  %cmp114 = icmp eq i8 %c.addr.0, %17
  br i1 %cmp114, label %land.lhs.true116, label %if.end122

land.lhs.true116:                                 ; preds = %lor.lhs.false108
  %18 = load i32, i32* %c_lflag, align 4
  %and119 = and i32 %18, 32768
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end122, label %if.then121

if.then121:                                       ; preds = %land.lhs.true116, %lor.lhs.false, %if.then93
  call fastcc void @eraser(i8 noundef %c.addr.0, %struct.tty_struct* noundef %tty) #14
  call fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) #14
  br label %cleanup

if.end122:                                        ; preds = %land.lhs.true116, %lor.lhs.false108
  %arrayidx126 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 15
  %19 = load i8, i8* %arrayidx126, align 1
  %cmp128 = icmp eq i8 %c.addr.0, %19
  br i1 %cmp128, label %land.lhs.true130, label %if.end150

land.lhs.true130:                                 ; preds = %if.end122
  %20 = load i32, i32* %c_lflag, align 4
  %and133 = and i32 %20, 32768
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end150, label %if.then135

if.then135:                                       ; preds = %land.lhs.true130
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %icanon, align 1
  %21 = load i32, i32* %c_lflag, align 4
  %and140 = and i32 %21, 8
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %cleanup, label %if.then142

if.then142:                                       ; preds = %if.then135
  call fastcc void @finish_erasing(%struct.n_tty_data* noundef %1) #14
  %22 = load i32, i32* %c_lflag, align 4
  %and145 = and i32 %22, 512
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %cleanup, label %if.then147

if.then147:                                       ; preds = %if.then142
  call fastcc void @echo_char_raw(i8 noundef 94, %struct.n_tty_data* noundef %1) #14
  call fastcc void @echo_char_raw(i8 noundef 8, %struct.n_tty_data* noundef %1) #14
  call fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) #14
  br label %cleanup

if.end150:                                        ; preds = %land.lhs.true130, %if.end122
  %arrayidx154 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 12
  %23 = load i8, i8* %arrayidx154, align 1
  %cmp156 = icmp eq i8 %c.addr.0, %23
  br i1 %cmp156, label %land.lhs.true158, label %if.end173

land.lhs.true158:                                 ; preds = %if.end150
  %24 = load i32, i32* %c_lflag, align 4
  %25 = and i32 %24, 32776
  %.not = icmp eq i32 %25, 32776
  br i1 %.not, label %if.then168, label %if.end173

if.then168:                                       ; preds = %land.lhs.true158
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %26 = load i64, i64* %canon_head, align 8
  call fastcc void @finish_erasing(%struct.n_tty_data* noundef %1) #14
  call fastcc void @echo_char(i8 noundef %c.addr.0, %struct.tty_struct* noundef %tty) #14
  call fastcc void @echo_char_raw(i8 noundef 10, %struct.n_tty_data* noundef %1) #14
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %27 = load i64, i64* %read_head, align 8
  %28 = xor i64 %27, %26
  %29 = and i64 %28, 4095
  %cmp171.not403 = icmp eq i64 %29, 0
  br i1 %cmp171.not403, label %while.end, label %while.body

while.body:                                       ; preds = %if.then168, %while.body
  %tail.0404 = phi i64 [ %inc, %while.body ], [ %26, %if.then168 ]
  %call = call fastcc i8 @read_buf(%struct.n_tty_data* noundef %1, i64 noundef %tail.0404) #14
  call fastcc void @echo_char(i8 noundef %call, %struct.tty_struct* noundef %tty) #14
  %inc = add i64 %tail.0404, 1
  %30 = load i64, i64* %read_head, align 8
  %31 = xor i64 %30, %inc
  %32 = and i64 %31, 4095
  %cmp171.not = icmp eq i64 %32, 0
  br i1 %cmp171.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.then168
  call fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) #14
  br label %cleanup

if.end173:                                        ; preds = %land.lhs.true158, %if.end150
  %cmp175 = icmp eq i8 %c.addr.0, 10
  br i1 %cmp175, label %if.then177, label %if.end189

if.then177:                                       ; preds = %if.end173
  %33 = load i32, i32* %c_lflag, align 4
  %34 = and i32 %33, 72
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %handle_newline, label %if.then187

if.then187:                                       ; preds = %if.then177
  call fastcc void @echo_char_raw(i8 noundef 10, %struct.n_tty_data* noundef %1) #14
  call fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) #14
  br label %handle_newline

if.end189:                                        ; preds = %if.end173
  %arrayidx193 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 4
  %36 = load i8, i8* %arrayidx193, align 1
  %cmp195 = icmp eq i8 %c.addr.0, %36
  br i1 %cmp195, label %handle_newline, label %if.end198

if.end198:                                        ; preds = %if.end189
  %arrayidx202 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 11
  %37 = load i8, i8* %arrayidx202, align 1
  %cmp204 = icmp eq i8 %c.addr.0, %37
  br i1 %cmp204, label %if.end198.if.then219_crit_edge, label %lor.lhs.false206

if.end198.if.then219_crit_edge:                   ; preds = %if.end198
  %.pre = load i32, i32* %c_lflag, align 4
  br label %if.then219

lor.lhs.false206:                                 ; preds = %if.end198
  %arrayidx210 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 16
  %38 = load i8, i8* %arrayidx210, align 1
  %cmp212 = icmp eq i8 %c.addr.0, %38
  br i1 %cmp212, label %land.lhs.true214, label %if.end252

land.lhs.true214:                                 ; preds = %lor.lhs.false206
  %39 = load i32, i32* %c_lflag, align 4
  %and217 = and i32 %39, 32768
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.end252, label %if.then219

if.then219:                                       ; preds = %if.end198.if.then219_crit_edge, %land.lhs.true214
  %40 = phi i32 [ %.pre, %if.end198.if.then219_crit_edge ], [ %39, %land.lhs.true214 ]
  %and222 = and i32 %40, 8
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %if.end231, label %if.then224

if.then224:                                       ; preds = %if.then219
  %canon_head225 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %41 = load i64, i64* %canon_head225, align 8
  %read_head226 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %42 = load i64, i64* %read_head226, align 8
  %cmp227 = icmp eq i64 %41, %42
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %if.then224
  call fastcc void @echo_set_canon_col(%struct.n_tty_data* noundef %1) #14
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %if.then224
  call fastcc void @echo_char(i8 noundef %c.addr.0, %struct.tty_struct* noundef %tty) #14
  call fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.then219
  %cmp233 = icmp eq i8 %c.addr.0, -1
  br i1 %cmp233, label %land.lhs.true235, label %handle_newline

land.lhs.true235:                                 ; preds = %if.end231
  %43 = load i32, i32* %c_iflag, align 8
  %and238 = and i32 %43, 8
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %handle_newline, label %if.then240

if.then240:                                       ; preds = %land.lhs.true235
  call fastcc void @put_tty_queue(i8 noundef -1, %struct.n_tty_data* noundef %1) #14
  br label %handle_newline

handle_newline:                                   ; preds = %if.end189, %if.then177, %if.end231, %land.lhs.true235, %if.then240, %if.then187
  %c.addr.1 = phi i8 [ 10, %if.then187 ], [ -1, %if.then240 ], [ -1, %land.lhs.true235 ], [ %c.addr.0, %if.end231 ], [ 10, %if.then177 ], [ 0, %if.end189 ]
  %read_head242 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %44 = load i64, i64* %read_head242, align 8
  %and243 = and i64 %44, 4095
  %arraydecay = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 12, i64 0
  call fastcc void @set_bit(i64 noundef %and243, i64* noundef %arraydecay) #14
  call fastcc void @put_tty_queue(i8 noundef %c.addr.1, %struct.n_tty_data* noundef %1) #14
  %canon_head244 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %45 = load i64, i64* %read_head242, align 8
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %canon_head244, i64 %45) #15, !srcloc !40
  %fasync = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 25
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync, i32 noundef 29, i32 noundef 1) #13
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef nonnull inttoptr (i64 1 to i8*)) #13
  br label %cleanup

if.end252:                                        ; preds = %lor.lhs.false206, %land.lhs.true214, %if.end91
  %46 = load i32, i32* %c_lflag, align 4
  %and255 = and i32 %46, 8
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.end270, label %if.then257

if.then257:                                       ; preds = %if.end252
  call fastcc void @finish_erasing(%struct.n_tty_data* noundef %1) #14
  %cmp259 = icmp eq i8 %c.addr.0, 10
  br i1 %cmp259, label %if.then261, label %if.else262

if.then261:                                       ; preds = %if.then257
  call fastcc void @echo_char_raw(i8 noundef 10, %struct.n_tty_data* noundef %1) #14
  br label %if.end269

if.else262:                                       ; preds = %if.then257
  %canon_head263 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %47 = load i64, i64* %canon_head263, align 8
  %read_head264 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %48 = load i64, i64* %read_head264, align 8
  %cmp265 = icmp eq i64 %47, %48
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.else262
  call fastcc void @echo_set_canon_col(%struct.n_tty_data* noundef %1) #14
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %if.else262
  call fastcc void @echo_char(i8 noundef %c.addr.0, %struct.tty_struct* noundef %tty) #14
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.then261
  call fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.end252
  %cmp272 = icmp eq i8 %c.addr.0, -1
  br i1 %cmp272, label %land.lhs.true274, label %if.end280

land.lhs.true274:                                 ; preds = %if.end270
  %49 = load i32, i32* %c_iflag, align 8
  %and277 = and i32 %49, 8
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %if.end280, label %if.then279

if.then279:                                       ; preds = %land.lhs.true274
  call fastcc void @put_tty_queue(i8 noundef -1, %struct.n_tty_data* noundef %1) #14
  br label %if.end280

if.end280:                                        ; preds = %if.then279, %land.lhs.true274, %if.end270
  call fastcc void @put_tty_queue(i8 noundef %c.addr.0, %struct.n_tty_data* noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %if.then147, %if.then142, %if.then67, %if.end280, %handle_newline, %while.end, %if.then121, %if.then43, %if.then34, %if.then26, %if.then12, %if.then4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_char(%struct.tty_struct* noundef %tty, i8 noundef %c) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %2 = load i8, i8* %stopped, align 4, !range !8
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %tco_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 2
  %3 = load i8, i8* %tco_stopped, align 1, !range !8
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %4 = load i32, i32* %c_iflag, align 8
  %5 = and i32 %4, 3072
  %.not = icmp eq i32 %5, 3072
  br i1 %.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @start_tty(%struct.tty_struct* noundef %tty) #13
  call fastcc void @process_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %6 = load i32, i32* %c_lflag, align 4
  %and11 = and i32 %6, 8
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  call fastcc void @finish_erasing(%struct.n_tty_data* noundef %1) #14
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %7 = load i64, i64* %canon_head, align 8
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %8 = load i64, i64* %read_head, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then13
  call fastcc void @echo_set_canon_col(%struct.n_tty_data* noundef %1) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then13
  call fastcc void @echo_char(i8 noundef %c, %struct.tty_struct* noundef %tty) #14
  call fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %cmp17 = icmp eq i8 %c, -1
  br i1 %cmp17, label %land.lhs.true19, label %if.end25

land.lhs.true19:                                  ; preds = %if.end16
  %c_iflag21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %9 = load i32, i32* %c_iflag21, align 8
  %and22 = and i32 %9, 8
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %land.lhs.true19
  call fastcc void @put_tty_queue(i8 noundef -1, %struct.n_tty_data* noundef %1) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true19, %if.end16
  call fastcc void @put_tty_queue(i8 noundef %c, %struct.n_tty_data* noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @n_tty_receive_signal_char(%struct.tty_struct* noundef %tty, i32 noundef %signal, i8 noundef %c) unnamed_addr #4 {
entry:
  call fastcc void @isig(i32 noundef %signal, %struct.tty_struct* noundef %tty) #14
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %0 = load i32, i32* %c_iflag, align 8
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @start_tty(%struct.tty_struct* noundef %tty) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %1 = load i32, i32* %c_lflag, align 4
  %and2 = and i32 %1, 8
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @echo_char(i8 noundef %c, %struct.tty_struct* noundef %tty) #14
  call fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end5

if.else:                                          ; preds = %if.end
  call fastcc void @process_echoes(%struct.tty_struct* noundef %tty) #14
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @eraser(i8 noundef %c, %struct.tty_struct* nocapture noundef readonly %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %read_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 0
  %2 = load i64, i64* %read_head, align 8
  %canon_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 2
  %3 = load i64, i64* %canon_head, align 8
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 2
  %4 = load i8, i8* %arrayidx, align 1
  %cmp2 = icmp eq i8 %4, %c
  br i1 %cmp2, label %if.end46, label %if.else

if.else:                                          ; preds = %if.end
  %arrayidx8 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 14
  %5 = load i8, i8* %arrayidx8, align 1
  %cmp10 = icmp eq i8 %5, %c
  br i1 %cmp10, label %if.end46, label %if.else13

if.else13:                                        ; preds = %if.else
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %6 = load i32, i32* %c_lflag, align 4
  %and = and i32 %6, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.else13
  store i64 %3, i64* %read_head, align 8
  br label %cleanup

if.end18:                                         ; preds = %if.else13
  %7 = and i32 %6, 2096
  %.not = icmp eq i32 %7, 2096
  br i1 %.not, label %if.end46, label %if.then32

if.then32:                                        ; preds = %if.end18
  store i64 %3, i64* %read_head, align 8
  call fastcc void @finish_erasing(%struct.n_tty_data* noundef %1) #14
  %arrayidx37 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 3
  %8 = load i8, i8* %arrayidx37, align 1
  call fastcc void @echo_char(i8 noundef %8, %struct.tty_struct* noundef %tty) #14
  %9 = load i32, i32* %c_lflag, align 4
  %and40 = and i32 %9, 32
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %cleanup, label %if.then42

if.then42:                                        ; preds = %if.then32
  call fastcc void @echo_char_raw(i8 noundef 10, %struct.n_tty_data* noundef %1) #14
  br label %cleanup

if.end46:                                         ; preds = %if.end18, %if.else, %if.end
  %cmp65 = phi i1 [ false, %if.end ], [ true, %if.else ], [ false, %if.end18 ]
  %cmp197 = phi i1 [ true, %if.end ], [ false, %if.else ], [ false, %if.end18 ]
  %c_lflag88 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %erasing = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %if.end196, %if.end46
  %10 = phi i64 [ %3, %if.end46 ], [ %.pre331.pre, %if.end196 ]
  %11 = phi i64 [ %2, %if.end46 ], [ %.pre330.pre, %if.end196 ]
  %seen_alnums.0 = phi i32 [ 0, %if.end46 ], [ %seen_alnums.1, %if.end196 ]
  %12 = xor i64 %10, %11
  %13 = and i64 %12, 4095
  %cmp51.not = icmp eq i64 %13, 0
  br i1 %cmp51.not, label %while.end201, label %do.body

do.body:                                          ; preds = %while.cond, %land.rhs
  %head.0 = phi i64 [ %dec, %land.rhs ], [ %11, %while.cond ]
  %dec = add i64 %head.0, -1
  %call = call fastcc i8 @read_buf(%struct.n_tty_data* noundef %1, i64 noundef %dec) #14
  %call54 = call fastcc i32 @is_continuation(i8 noundef %call, %struct.tty_struct* noundef %tty) #14
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end64, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %14 = xor i64 %dec, %10
  %15 = and i64 %14, 4095
  %cmp59.not = icmp eq i64 %15, 0
  br i1 %cmp59.not, label %while.end201, label %do.body

if.end64:                                         ; preds = %do.body
  br i1 %cmp65, label %if.then67, label %if.end84

if.then67:                                        ; preds = %if.end64
  %16 = zext i8 %call to i64
  %arrayidx69 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %16
  %17 = load i8, i8* %arrayidx69, align 1
  %18 = and i8 %17, 7
  %cmp72 = icmp ne i8 %18, 0
  %cmp76 = icmp eq i8 %call, 95
  %or.cond = or i1 %cmp76, %cmp72
  br i1 %or.cond, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.then67
  %inc = add i32 %seen_alnums.0, 1
  br label %if.end84

if.else79:                                        ; preds = %if.then67
  %tobool80.not = icmp eq i32 %seen_alnums.0, 0
  br i1 %tobool80.not, label %if.end84, label %while.end201

if.end84:                                         ; preds = %if.then78, %if.else79, %if.end64
  %seen_alnums.1 = phi i32 [ %inc, %if.then78 ], [ 0, %if.else79 ], [ %seen_alnums.0, %if.end64 ]
  store i64 %dec, i64* %read_head, align 8
  %19 = load i32, i32* %c_lflag88, align 4
  %and89 = and i32 %19, 8
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end196, label %if.then91

if.then91:                                        ; preds = %if.end84
  %and94 = and i32 %19, 1024
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else110, label %if.then96

if.then96:                                        ; preds = %if.then91
  %bf.load = load i8, i8* %erasing, align 1
  %20 = and i8 %bf.load, 2
  %tobool97.not = icmp eq i8 %20, 0
  br i1 %tobool97.not, label %if.then98, label %if.end102

if.then98:                                        ; preds = %if.then96
  call fastcc void @echo_char_raw(i8 noundef 92, %struct.n_tty_data* noundef %1) #14
  %bf.load100 = load i8, i8* %erasing, align 1
  %bf.set = or i8 %bf.load100, 2
  store i8 %bf.set, i8* %erasing, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.then96
  call fastcc void @echo_char(i8 noundef %call, %struct.tty_struct* noundef %tty) #14
  %dec104313 = sub i64 %11, %head.0
  %cmp105.not314 = icmp eq i64 %dec104313, 0
  br i1 %cmp105.not314, label %if.end196, label %while.body107

while.body107:                                    ; preds = %if.end102, %while.body107
  %dec104316 = phi i64 [ %dec104, %while.body107 ], [ %dec104313, %if.end102 ]
  %head.1315 = phi i64 [ %inc108, %while.body107 ], [ %dec, %if.end102 ]
  %inc108 = add i64 %head.1315, 1
  %call109 = call fastcc i8 @read_buf(%struct.n_tty_data* noundef %1, i64 noundef %inc108) #14
  call fastcc void @echo_char_raw(i8 noundef %call109, %struct.n_tty_data* noundef %1) #14
  call fastcc void @echo_move_back_col(%struct.n_tty_data* noundef %1) #14
  %dec104 = add i64 %dec104316, -1
  %cmp105.not = icmp eq i64 %dec104, 0
  br i1 %cmp105.not, label %if.end196, label %while.body107

if.else110:                                       ; preds = %if.then91
  %and115 = and i32 %19, 16
  %tobool116.not = icmp eq i32 %and115, 0
  %or.cond307 = select i1 %cmp197, i1 %tobool116.not, i1 false
  br i1 %or.cond307, label %if.then117, label %if.else121

if.then117:                                       ; preds = %if.else110
  %21 = load i8, i8* %arrayidx, align 1
  call fastcc void @echo_char(i8 noundef %21, %struct.tty_struct* noundef %tty) #14
  br label %if.end196

if.else121:                                       ; preds = %if.else110
  %cmp123 = icmp eq i8 %call, 9
  br i1 %cmp123, label %while.cond127.preheader, label %if.else164

while.cond127.preheader:                          ; preds = %if.else121
  %22 = xor i64 %dec, %10
  %23 = and i64 %22, 4095
  %cmp131.not317 = icmp eq i64 %23, 0
  br i1 %cmp131.not317, label %while.end163, label %while.body133.lr.ph

while.body133.lr.ph:                              ; preds = %while.cond127.preheader
  %and151 = and i32 %19, 512
  %tobool152.not = icmp eq i32 %and151, 0
  br label %while.body133

while.body133:                                    ; preds = %while.body133.lr.ph, %if.end162
  %tail.0319 = phi i64 [ %dec, %while.body133.lr.ph ], [ %dec134, %if.end162 ]
  %num_chars.0318 = phi i32 [ 0, %while.body133.lr.ph ], [ %num_chars.1, %if.end162 ]
  %dec134 = add i64 %tail.0319, -1
  %call135 = call fastcc i8 @read_buf(%struct.n_tty_data* noundef %1, i64 noundef %dec134) #14
  %cmp137 = icmp eq i8 %call135, 9
  br i1 %cmp137, label %while.end163, label %if.else140

if.else140:                                       ; preds = %while.body133
  %idxprom142 = zext i8 %call135 to i64
  %arrayidx143 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom142
  %24 = load i8, i8* %arrayidx143, align 1
  %25 = and i8 %24, 8
  %cmp146.not = icmp eq i8 %25, 0
  br i1 %cmp146.not, label %if.else155, label %if.then148

if.then148:                                       ; preds = %if.else140
  %add = add i32 %num_chars.0318, 2
  %spec.select = select i1 %tobool152.not, i32 %num_chars.0318, i32 %add
  br label %if.end162

if.else155:                                       ; preds = %if.else140
  %call156 = call fastcc i32 @is_continuation(i8 noundef %call135, %struct.tty_struct* noundef %tty) #14
  %tobool157.not = icmp eq i32 %call156, 0
  %inc159 = zext i1 %tobool157.not to i32
  %spec.select308 = add i32 %num_chars.0318, %inc159
  br label %if.end162

if.end162:                                        ; preds = %if.else155, %if.then148
  %num_chars.1 = phi i32 [ %spec.select, %if.then148 ], [ %spec.select308, %if.else155 ]
  %26 = xor i64 %dec134, %10
  %27 = and i64 %26, 4095
  %cmp131.not = icmp eq i64 %27, 0
  br i1 %cmp131.not, label %while.end163, label %while.body133

while.end163:                                     ; preds = %if.end162, %while.body133, %while.cond127.preheader
  %num_chars.0.lcssa = phi i32 [ 0, %while.cond127.preheader ], [ %num_chars.0318, %while.body133 ], [ %num_chars.1, %if.end162 ]
  %after_tab.0 = phi i32 [ 0, %while.cond127.preheader ], [ 1, %while.body133 ], [ 0, %if.end162 ]
  call fastcc void @echo_erase_tab(i32 noundef %num_chars.0.lcssa, i32 noundef %after_tab.0, %struct.n_tty_data* noundef %1) #14
  br label %if.end196

if.else164:                                       ; preds = %if.else121
  %idxprom166 = zext i8 %call to i64
  %arrayidx167 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom166
  %28 = load i8, i8* %arrayidx167, align 1
  %29 = and i8 %28, 8
  %cmp170.not = icmp eq i8 %29, 0
  br i1 %cmp170.not, label %if.then191, label %land.lhs.true172

land.lhs.true172:                                 ; preds = %if.else164
  %and175 = and i32 %19, 512
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end196, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %land.lhs.true172
  call fastcc void @echo_char_raw(i8 noundef 8, %struct.n_tty_data* noundef %1) #14
  call fastcc void @echo_char_raw(i8 noundef 32, %struct.n_tty_data* noundef %1) #14
  call fastcc void @echo_char_raw(i8 noundef 8, %struct.n_tty_data* noundef %1) #14
  %.pre329 = load i32, i32* %c_lflag88, align 4
  %.pre334 = and i32 %.pre329, 512
  %tobool190.not = icmp eq i32 %.pre334, 0
  br i1 %tobool190.not, label %if.end196, label %if.then191

if.then191:                                       ; preds = %if.else164, %lor.lhs.false186
  call fastcc void @echo_char_raw(i8 noundef 8, %struct.n_tty_data* noundef %1) #14
  call fastcc void @echo_char_raw(i8 noundef 32, %struct.n_tty_data* noundef %1) #14
  call fastcc void @echo_char_raw(i8 noundef 8, %struct.n_tty_data* noundef %1) #14
  br label %if.end196

if.end196:                                        ; preds = %while.body107, %land.lhs.true172, %if.end102, %while.end163, %if.then191, %lor.lhs.false186, %if.then117, %if.end84
  %.pre330.pre = load i64, i64* %read_head, align 8
  %.pre331.pre = load i64, i64* %canon_head, align 8
  br i1 %cmp197, label %while.end201, label %while.cond

while.end201:                                     ; preds = %if.else79, %while.cond, %if.end196, %land.rhs
  %30 = phi i64 [ %10, %land.rhs ], [ %.pre331.pre, %if.end196 ], [ %10, %while.cond ], [ %10, %if.else79 ]
  %31 = phi i64 [ %11, %land.rhs ], [ %.pre330.pre, %if.end196 ], [ %11, %while.cond ], [ %11, %if.else79 ]
  %cmp204 = icmp eq i64 %31, %30
  br i1 %cmp204, label %land.lhs.true206, label %cleanup

land.lhs.true206:                                 ; preds = %while.end201
  %32 = load i32, i32* %c_lflag88, align 4
  %and209 = and i32 %32, 8
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %cleanup, label %if.then211

if.then211:                                       ; preds = %land.lhs.true206
  call fastcc void @finish_erasing(%struct.n_tty_data* noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end201, %land.lhs.true206, %if.then211, %if.then32, %if.then42, %entry, %if.then15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @commit_echoes(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %output_lock = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 20
  call void @mutex_lock(%struct.mutex* noundef %output_lock) #13
  %echo_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 3
  %2 = load i64, i64* %echo_head, align 8
  %echo_mark = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 5
  store i64 %2, i64* %echo_mark, align 8
  %echo_commit = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 4
  %echo_tail = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %1, i64 0, i32 18
  %3 = load i64, i64* %echo_tail, align 8
  %sub2 = sub i64 %2, %3
  %cmp = icmp ult i64 %sub2, 256
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %echo_commit, align 8
  %sub = sub i64 %4, %3
  %rem = and i64 %sub2, 255
  %rem3 = and i64 %sub, 255
  %cmp4 = icmp ugt i64 %rem, %rem3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @mutex_unlock(%struct.mutex* noundef %output_lock) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i64 %2, i64* %echo_commit, align 8
  %call = call fastcc i64 @__process_echoes(%struct.tty_struct* noundef %tty) #14
  call void @mutex_unlock(%struct.mutex* noundef %output_lock) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %5 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %flush_chars = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %5, i64 0, i32 9
  %6 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_chars, align 8
  %tobool8.not = icmp eq void (%struct.tty_struct*)* %6, null
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  call void %6(%struct.tty_struct* noundef %tty) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then9, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @finish_erasing(%struct.n_tty_data* noundef %ldata) unnamed_addr #4 {
entry:
  %erasing = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 10
  %bf.load = load i8, i8* %erasing, align 1
  %0 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @echo_char_raw(i8 noundef 47, %struct.n_tty_data* noundef %ldata) #14
  %bf.load2 = load i8, i8* %erasing, align 1
  %bf.clear3 = and i8 %bf.load2, -3
  store i8 %bf.clear3, i8* %erasing, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @echo_char_raw(i8 noundef %c, %struct.n_tty_data* noundef %ldata) unnamed_addr #4 {
entry:
  %cmp = icmp eq i8 %c, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @add_echo_byte(i8 noundef -1, %struct.n_tty_data* noundef %ldata) #14
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %c.sink = phi i8 [ -1, %if.then ], [ %c, %entry ]
  call fastcc void @add_echo_byte(i8 noundef %c.sink, %struct.n_tty_data* noundef %ldata) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @echo_char(i8 noundef %c, %struct.tty_struct* nocapture noundef readonly %tty) unnamed_addr #4 {
entry:
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 29
  %0 = bitcast i8** %disc_data to %struct.n_tty_data**
  %1 = load %struct.n_tty_data*, %struct.n_tty_data** %0, align 8
  %cmp = icmp eq i8 %c, -1
  br i1 %cmp, label %if.end12.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %2 = load i32, i32* %c_lflag, align 4
  %and = and i32 %2, 512
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %idxprom = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %4 = and i8 %3, 8
  %cmp5 = icmp ne i8 %4, 0
  %cmp9 = icmp ne i8 %c, 9
  %or.cond = and i1 %cmp9, %cmp5
  br i1 %or.cond, label %if.end12.sink.split, label %if.end12

if.end12.sink.split:                              ; preds = %land.lhs.true, %entry
  %c.sink.ph = phi i8 [ -1, %entry ], [ %c, %land.lhs.true ]
  call fastcc void @add_echo_byte(i8 noundef -1, %struct.n_tty_data* noundef %1) #14
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else, %land.lhs.true
  %c.sink = phi i8 [ %c, %land.lhs.true ], [ %c, %if.else ], [ %c.sink.ph, %if.end12.sink.split ]
  call fastcc void @add_echo_byte(i8 noundef %c.sink, %struct.n_tty_data* noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @echo_set_canon_col(%struct.n_tty_data* noundef %ldata) unnamed_addr #4 {
entry:
  call fastcc void @add_echo_byte(i8 noundef -1, %struct.n_tty_data* noundef %ldata) #14
  call fastcc void @add_echo_byte(i8 noundef -127, %struct.n_tty_data* noundef %ldata) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @echo_move_back_col(%struct.n_tty_data* noundef %ldata) unnamed_addr #4 {
entry:
  call fastcc void @add_echo_byte(i8 noundef -1, %struct.n_tty_data* noundef %ldata) #14
  call fastcc void @add_echo_byte(i8 noundef -128, %struct.n_tty_data* noundef %ldata) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @echo_erase_tab(i32 noundef %num_chars, i32 noundef %after_tab, %struct.n_tty_data* noundef %ldata) unnamed_addr #4 {
entry:
  call fastcc void @add_echo_byte(i8 noundef -1, %struct.n_tty_data* noundef %ldata) #14
  call fastcc void @add_echo_byte(i8 noundef -126, %struct.n_tty_data* noundef %ldata) #14
  %and = and i32 %num_chars, 7
  %tobool.not = icmp eq i32 %after_tab, 0
  %or = or i32 %and, 128
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  %conv = trunc i32 %spec.select to i8
  call fastcc void @add_echo_byte(i8 noundef %conv, %struct.n_tty_data* noundef %ldata) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_echo_byte(i8 noundef %c, %struct.n_tty_data* noundef %ldata) unnamed_addr #4 {
entry:
  %echo_head = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 3
  %0 = load i64, i64* %echo_head, align 8
  %call = call fastcc i8* @echo_buf_addr(%struct.n_tty_data* noundef %ldata, i64 noundef %0) #14
  store i8 %c, i8* %call, align 1
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !41
  %1 = load i64, i64* %echo_head, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %echo_head, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @echo_buf_addr(%struct.n_tty_data* noundef readnone %ldata, i64 noundef %i) unnamed_addr #8 {
entry:
  %and = and i64 %i, 4095
  %arrayidx = getelementptr %struct.n_tty_data, %struct.n_tty_data* %ldata, i64 0, i32 13, i64 %and
  ret i8* %arrayidx
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_throttle_safe(%struct.tty_struct* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1558001}
!8 = !{i8 0, i8 2}
!9 = !{i64 2153695397, i64 2153695435, i64 2153695452, i64 2153695486, i64 2153695508, i64 2153695534, i64 2153695552, i64 2153695710, i64 2153695751, i64 2153695773, i64 2153695819}
!10 = !{i64 2153699565, i64 2153699603, i64 2153699620, i64 2153699654, i64 2153699676, i64 2153699702, i64 2153699720, i64 2153699878, i64 2153699919, i64 2153699941, i64 2153699987}
!11 = !{i64 2147998387, i64 2147998908, i64 2147998938, i64 2147998964, i64 2147998996, i64 2147999025}
!12 = !{i64 2149845494}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149430972, i64 2149431019, i64 2149431025, i64 2149431062, i64 2149431080, i64 2149436452, i64 2149436500, i64 2149436548, i64 2149436611, i64 2149436660, i64 2149431158, i64 2149431183, i64 2149431209, i64 2149431215, i64 2149436118, i64 2149436158, i64 2149436176, i64 2149436208, i64 2149436236, i64 2149436290, i64 2149436310, i64 2149436407, i64 2149431238, i64 2149431252, i64 2149431258, i64 2149431308, i64 2149431354, i64 2149431387}
!15 = !{i64 2149437212, i64 2149437259, i64 2149437265, i64 2149437302, i64 2149437320, i64 2149438263, i64 2149438311, i64 2149438359, i64 2149438422, i64 2149438471, i64 2149437398, i64 2149437423, i64 2149437449, i64 2149437455, i64 2149437492, i64 2149437498, i64 2149437548, i64 2149437594, i64 2149437627}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2149425269, i64 2149425316, i64 2149425322, i64 2149425359, i64 2149425377, i64 2149426718, i64 2149426766, i64 2149426814, i64 2149426877, i64 2149426926, i64 2149425455, i64 2149425480, i64 2149425506, i64 2149425512, i64 2149426384, i64 2149426424, i64 2149426442, i64 2149426474, i64 2149426502, i64 2149426556, i64 2149426576, i64 2149426673, i64 2149425535, i64 2149425549, i64 2149425555, i64 2149425605, i64 2149425651, i64 2149425684}
!18 = !{i64 2148018660, i64 2148018693, i64 2148018746, i64 2148018805, i64 2148018839, i64 2148018894, i64 2148018923, i64 2148018943}
!19 = !{i64 2149871337}
!20 = !{i64 2149814624}
!21 = !{i64 2149441046, i64 2149441093, i64 2149441099, i64 2149441136, i64 2149441154, i64 2149442465, i64 2149442513, i64 2149442561, i64 2149442624, i64 2149442673, i64 2149441232, i64 2149441257, i64 2149441283, i64 2149441289, i64 2149442131, i64 2149442171, i64 2149442189, i64 2149442221, i64 2149442249, i64 2149442303, i64 2149442323, i64 2149442420, i64 2149441312, i64 2149441326, i64 2149441332, i64 2149441382, i64 2149441428, i64 2149441461}
!22 = !{!"branch_weights", i32 4004000, i32 1}
!23 = !{i64 2153626360}
!24 = !{i64 2153633358}
!25 = !{i64 2153678522}
!26 = !{i64 2153687876}
!27 = !{i64 2153667907}
!28 = !{i64 2153674305}
!29 = !{i64 2153621795}
!30 = !{i64 2149849787}
!31 = !{i64 2149874640}
!32 = !{i64 2149415813, i64 2149415860, i64 2149415866, i64 2149415903, i64 2149415921, i64 2149417261, i64 2149417309, i64 2149417357, i64 2149417420, i64 2149417469, i64 2149415999, i64 2149416024, i64 2149416050, i64 2149416056, i64 2149416927, i64 2149416967, i64 2149416985, i64 2149417017, i64 2149417045, i64 2149417099, i64 2149417119, i64 2149417216, i64 2149416079, i64 2149416093, i64 2149416099, i64 2149416149, i64 2149416195, i64 2149416228}
!33 = !{i64 2153623377}
!34 = !{i64 2147987817, i64 2147988328, i64 2147988358, i64 2147988384, i64 2147988416, i64 2147988445}
!35 = !{i64 4853314, i64 4853397, i64 4853621, i64 4853841, i64 4853864}
!36 = !{i64 4858016, i64 4858040}
!37 = !{i64 2152368794}
!38 = !{i64 2153659651}
!39 = !{i64 2153655256}
!40 = !{i64 2153644152}
!41 = !{i64 2153636799}
