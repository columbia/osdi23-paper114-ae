; ModuleID = 'mm/mremap.c'
source_filename = "mm/mremap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pgd_t = type { i64 }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.79, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
%struct.anon.79 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.11, %union.anon.28, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.74, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.33, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.33 = type { %struct.kernfs_elem_dir }
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
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.34, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.34 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.35, %union.anon.36, %union.anon.37, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.42, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.35 = type { %struct.hlist_node }
%union.anon.36 = type { %struct.rb_node }
%union.anon.37 = type { %struct.anon.41 }
%struct.anon.41 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.42 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.43, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.43 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.65, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.44 }
%union.anon.44 = type { i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.51 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.51 = type { %struct.callback_head }
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.kernel_siginfo = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.64, i32, [12 x i8] }
%union.anon.64 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.66, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.66 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.68 = type { %struct.callback_head }
%union.anon.69 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, {}*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.29 }
%union.anon.29 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.30, %union.anon.31 }
%union.anon.30 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.31 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.72 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.70, %struct.qspinlock }
%union.anon.70 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.72 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.74 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.28 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [48 x i8] }
%struct.anon.3 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.4, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.mmu_notifier_range = type { i64, i64 }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@swapper_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@init_mm = external dso_local global %struct.mm_struct, align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4
@vma_to_resize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"\014%s (%d): attempted to duplicate a private mapping with mremap.  This is not supported.\0A\00", align 1
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @move_page_tables(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %old_addr, %struct.vm_area_struct* nocapture noundef readonly %new_vma, i64 noundef %new_addr, i64 noundef %len, i1 noundef %need_rmap_locks) local_unnamed_addr #0 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %0 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %add = add i64 %len, %old_addr
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %old_addr, i64 noundef %add) #9
  %vm_mm90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %new_vma, i64 0, i32 6
  %cmp185 = icmp ugt i64 %add, %old_addr
  br i1 %cmp185, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %old_addr.addr.0188 = phi i64 [ %old_addr, %for.body.lr.ph ], [ %add97, %for.inc ]
  %new_addr.addr.0186 = phi i64 [ %new_addr, %for.body.lr.ph ], [ %add98, %for.inc ]
  call fastcc void @_cond_resched() #9
  %add.i = add i64 %old_addr.addr.0188, 1073741824
  %and.i = and i64 %add.i, -1073741824
  %sub.i = sub i64 %and.i, %old_addr.addr.0188
  %sub3.i = sub i64 %add, %old_addr.addr.0188
  %cmp.i = icmp ugt i64 %sub.i, %sub3.i
  %spec.select.i = select i1 %cmp.i, i64 %sub3.i, i64 %sub.i
  %add5.i = add i64 %new_addr.addr.0186, 1073741824
  %and6.i = and i64 %add5.i, -1073741824
  %sub7.i = sub i64 %and6.i, %new_addr.addr.0186
  %cmp8.i = icmp ugt i64 %spec.select.i, %sub7.i
  %extent.1.i = select i1 %cmp8.i, i64 %sub7.i, i64 %spec.select.i
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call2 = call fastcc %struct.pud_t* @get_old_pud(%struct.mm_struct* noundef %1, i64 noundef %old_addr.addr.0188) #9
  %tobool.not = icmp eq %struct.pud_t* %call2, null
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call4 = call fastcc %struct.pud_t* @alloc_new_pud(%struct.mm_struct* noundef %1, i64 noundef %new_addr.addr.0186) #9
  %tobool5.not = icmp eq %struct.pud_t* %call4, null
  br i1 %tobool5.not, label %for.end, label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp25 = icmp eq i64 %extent.1.i, 1073741824
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end7
  %2 = bitcast %struct.pud_t* %call2 to i8*
  %3 = bitcast %struct.pud_t* %call4 to i8*
  %call28 = call fastcc i1 @move_pgt_entry(i32 noundef 2, %struct.vm_area_struct* noundef %vma, i64 noundef %old_addr.addr.0188, i8* noundef nonnull %2, i8* noundef nonnull %3) #9
  br i1 %call28, label %for.inc, label %if.then27.if.end32_crit_edge

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  %.pre = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %if.end7
  %4 = phi %struct.mm_struct* [ %.pre, %if.then27.if.end32_crit_edge ], [ %1, %if.end7 ]
  %add.i174 = add i64 %old_addr.addr.0188, 2097152
  %and.i175 = and i64 %add.i174, -2097152
  %sub.i176 = sub i64 %and.i175, %old_addr.addr.0188
  %cmp.i178 = icmp ugt i64 %sub.i176, %sub3.i
  %spec.select.i179 = select i1 %cmp.i178, i64 %sub3.i, i64 %sub.i176
  %add5.i180 = add i64 %new_addr.addr.0186, 2097152
  %and6.i181 = and i64 %add5.i180, -2097152
  %sub7.i182 = sub i64 %and6.i181, %new_addr.addr.0186
  %cmp8.i183 = icmp ugt i64 %spec.select.i179, %sub7.i182
  %extent.1.i184 = select i1 %cmp8.i183, i64 %sub7.i182, i64 %spec.select.i179
  %call35 = call fastcc %struct.pmd_t* @get_old_pmd(%struct.mm_struct* noundef %4, i64 noundef %old_addr.addr.0188) #9
  %tobool36.not = icmp eq %struct.pmd_t* %call35, null
  br i1 %tobool36.not, label %for.inc, label %if.end38

if.end38:                                         ; preds = %if.end32
  %call40 = call fastcc %struct.pmd_t* @alloc_new_pmd(%struct.mm_struct* noundef %4, i64 noundef %new_addr.addr.0186) #9
  %tobool41.not = icmp eq %struct.pmd_t* %call40, null
  br i1 %tobool41.not, label %for.end, label %if.end43

if.end43:                                         ; preds = %if.end38
  %cmp76 = icmp eq i64 %extent.1.i184, 2097152
  br i1 %cmp76, label %if.then78, label %if.end83

if.then78:                                        ; preds = %if.end43
  %5 = bitcast %struct.pmd_t* %call35 to i8*
  %6 = bitcast %struct.pmd_t* %call40 to i8*
  %call79 = call fastcc i1 @move_pgt_entry(i32 noundef 0, %struct.vm_area_struct* noundef %vma, i64 noundef %old_addr.addr.0188, i8* noundef nonnull %5, i8* noundef nonnull %6) #9
  br i1 %call79, label %for.inc, label %if.end83

if.end83:                                         ; preds = %if.end43, %if.then78
  %pmd = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call40, i64 0, i32 0
  %7 = load i64, i64* %pmd, align 8
  %tobool84.not = icmp eq i64 %7, 0
  br i1 %tobool84.not, label %land.lhs.true89, label %if.end94, !prof !7

land.lhs.true89:                                  ; preds = %if.end83
  %8 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm90, align 8
  %call91 = call i32 @__pte_alloc(%struct.mm_struct* noundef %8, %struct.pmd_t* noundef nonnull %call40) #10
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %for.end

if.end94:                                         ; preds = %land.lhs.true89, %if.end83
  %add95 = add i64 %extent.1.i184, %old_addr.addr.0188
  call fastcc void @move_ptes(%struct.vm_area_struct* noundef %vma, %struct.pmd_t* noundef nonnull %call35, i64 noundef %old_addr.addr.0188, i64 noundef %add95, %struct.pmd_t* noundef nonnull %call40, i64 noundef %new_addr.addr.0186, i1 noundef %need_rmap_locks) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then78, %if.end32, %if.then27, %for.body, %if.end94
  %extent.0 = phi i64 [ %extent.1.i184, %if.end94 ], [ 2097152, %if.then78 ], [ %extent.1.i184, %if.end32 ], [ 1073741824, %if.then27 ], [ %extent.1.i, %for.body ]
  %add97 = add i64 %extent.0, %old_addr.addr.0188
  %add98 = add i64 %extent.0, %new_addr.addr.0186
  %cmp = icmp ugt i64 %add, %add97
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end, %if.end38, %land.lhs.true89, %entry
  %old_addr.addr.0.lcssa = phi i64 [ %old_addr, %entry ], [ %old_addr.addr.0188, %land.lhs.true89 ], [ %old_addr.addr.0188, %if.end38 ], [ %old_addr.addr.0188, %if.end ], [ %add97, %for.inc ]
  %sub = sub i64 %old_addr.addr.0.lcssa, %old_addr
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i64 %sub
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* nocapture noundef writeonly %range, i64 noundef %start, i64 noundef %end) unnamed_addr #2 {
entry:
  %start1 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  store i64 %start, i64* %start1, align 8
  %end2 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  store i64 %end, i64* %end2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pud_t* @get_old_pud(%struct.mm_struct* nocapture noundef readonly %mm, i64 noundef %addr) unnamed_addr #3 {
entry:
  %pgd1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %0 = load %struct.pgd_t*, %struct.pgd_t** %pgd1, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %addr) #9
  %call3 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call) #9
  %call8 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %call3) #9
  %call9 = call fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* noundef %call8) #9
  %tobool10.not = icmp eq i32 %call9, 0
  %retval.0 = select i1 %tobool10.not, %struct.pud_t* %call8, %struct.pud_t* null
  ret %struct.pud_t* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pud_t* @alloc_new_pud(%struct.mm_struct* nocapture noundef readonly %mm, i64 noundef %addr) unnamed_addr #3 {
entry:
  %pgd1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %0 = load %struct.pgd_t*, %struct.pgd_t** %pgd1, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %addr) #9
  %call2 = call fastcc %struct.p4d_t* @p4d_alloc(%struct.pgd_t* noundef %call) #9
  %tobool.not = icmp eq %struct.p4d_t* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc %struct.pud_t* @pud_alloc(%struct.p4d_t* noundef nonnull %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.pud_t* [ %call3, %if.end ], [ null, %entry ]
  ret %struct.pud_t* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @move_pgt_entry(i32 noundef %entry1, %struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %old_addr, i8* noundef %old_entry, i8* noundef %new_entry) unnamed_addr #0 {
entry:
  call fastcc void @take_rmap_locks(%struct.vm_area_struct* noundef %vma) #9
  switch i32 %entry1, label %if.then11 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 1, label %if.then21
  ]

sw.bb:                                            ; preds = %entry
  %0 = bitcast i8* %old_entry to %struct.pmd_t*
  %1 = bitcast i8* %new_entry to %struct.pmd_t*
  %call = call fastcc i1 @move_normal_pmd(%struct.vm_area_struct* noundef %vma, i64 noundef %old_addr, %struct.pmd_t* noundef %0, %struct.pmd_t* noundef %1) #9
  br label %if.then21

sw.bb3:                                           ; preds = %entry
  %2 = bitcast i8* %old_entry to %struct.pud_t*
  %3 = bitcast i8* %new_entry to %struct.pud_t*
  %call4 = call fastcc i1 @move_normal_pud(%struct.vm_area_struct* noundef %vma, i64 noundef %old_addr, %struct.pud_t* noundef %2, %struct.pud_t* noundef %3) #9
  br label %if.then21

if.then11:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mremap.c\22; .popsection; .long 14472b - 14470b; .short 469; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !8
  br label %if.then21

if.then21:                                        ; preds = %sw.bb, %sw.bb3, %if.then11, %entry
  %moved.0.shrunk = phi i1 [ false, %if.then11 ], [ %call4, %sw.bb3 ], [ %call, %sw.bb ], [ false, %entry ]
  call fastcc void @drop_rmap_locks(%struct.vm_area_struct* noundef %vma) #9
  ret i1 %moved.0.shrunk
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pmd_t* @get_old_pmd(%struct.mm_struct* nocapture noundef readonly %mm, i64 noundef %addr) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pud_t* @get_old_pud(%struct.mm_struct* noundef %mm, i64 noundef %addr) #9
  %tobool.not = icmp eq %struct.pud_t* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef nonnull %call, i64 noundef %addr) #9
  %pmd2 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call1, i64 0, i32 0
  %0 = load i64, i64* %pmd2, align 8
  %tobool3.not = icmp eq i64 %0, 0
  %.call1 = select i1 %tobool3.not, %struct.pmd_t* null, %struct.pmd_t* %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct.pmd_t* [ null, %entry ], [ %.call1, %if.end ]
  ret %struct.pmd_t* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pmd_t* @alloc_new_pmd(%struct.mm_struct* noundef %mm, i64 noundef %addr) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pud_t* @alloc_new_pud(%struct.mm_struct* noundef %mm, i64 noundef %addr) #9
  %tobool.not = icmp eq %struct.pud_t* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.pmd_t* @pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef nonnull %call, i64 noundef %addr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct.pmd_t* [ null, %entry ], [ %call1, %if.end ]
  ret %struct.pmd_t* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pte_alloc(%struct.mm_struct* noundef, %struct.pmd_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @move_ptes(%struct.vm_area_struct* nocapture noundef readonly %vma, %struct.pmd_t* nocapture noundef readonly %old_pmd, i64 noundef %old_addr, i64 noundef %old_end, %struct.pmd_t* nocapture noundef readonly %new_pmd, i64 noundef %new_addr, i1 noundef %need_rmap_locks) unnamed_addr #0 {
entry:
  br i1 %need_rmap_locks, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @take_rmap_locks(%struct.vm_area_struct* noundef %vma) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %old_pmd) #9
  %call1 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %old_pmd, i64 noundef %old_addr) #9
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %call2 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %new_pmd, i64 noundef %new_addr) #9
  %call3 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %new_pmd) #9
  %cmp.not = icmp eq %struct.spinlock* %call3, %call
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.end
  %rlock.i4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call3, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i4) #9
  br label %if.end6

if.end6:                                          ; preds = %do.body, %if.end
  %cmp117 = icmp ult i64 %old_addr, %old_end
  br i1 %cmp117, label %for.body, label %if.end35

for.body:                                         ; preds = %if.end6, %for.inc
  %old_addr.addr.013 = phi i64 [ %add, %for.inc ], [ %old_addr, %if.end6 ]
  %old_pte.011 = phi %struct.pte_t* [ %incdec.ptr, %for.inc ], [ %call1, %if.end6 ]
  %new_pte.09 = phi %struct.pte_t* [ %incdec.ptr27, %for.inc ], [ %call2, %if.end6 ]
  %force_flush.0.off08 = phi i1 [ %force_flush.2.off0, %for.inc ], [ false, %if.end6 ]
  %pte12 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %old_pte.011, i64 0, i32 0
  %0 = load i64, i64* %pte12, align 8
  %tobool13.not = icmp eq i64 %0, 0
  br i1 %tobool13.not, label %for.inc, label %if.end15

if.end15:                                         ; preds = %for.body
  %call17 = call fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %old_pte.011) #9
  %and = and i64 %call17, 288230376151711745
  %tobool19.not = icmp ne i64 %and, 0
  %spec.select = select i1 %tobool19.not, i1 true, i1 %force_flush.0.off08
  call fastcc void @set_pte_at(%struct.pte_t* noundef %new_pte.09, i64 %call17) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end15
  %force_flush.2.off0 = phi i1 [ %spec.select, %if.end15 ], [ %force_flush.0.off08, %for.body ]
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %old_pte.011, i64 1
  %add = add i64 %old_addr.addr.013, 4096
  %incdec.ptr27 = getelementptr %struct.pte_t, %struct.pte_t* %new_pte.09, i64 1
  %cmp11 = icmp ult i64 %add, %old_end
  br i1 %cmp11, label %for.body, label %do.end31

do.end31:                                         ; preds = %for.inc
  br i1 %force_flush.2.off0, label %if.then33, label %if.end35

if.then33:                                        ; preds = %do.end31
  call fastcc void @flush_tlb_range(%struct.vm_area_struct* noundef %vma, i64 noundef %old_addr, i64 noundef %old_end) #9
  br label %if.end35

if.end35:                                         ; preds = %if.end6, %if.then33, %do.end31
  br i1 %cmp.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end35
  %rlock.i5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call3, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i5) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  br i1 %need_rmap_locks, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end38
  call fastcc void @drop_rmap_locks(%struct.vm_area_struct* noundef %vma) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end38
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mremap(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_mremap(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mremap(i64 noundef %addr, i64 noundef %old_len, i64 noundef %new_len, i64 noundef %flags, i64 noundef %new_addr) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__do_sys_mremap(i64 noundef %addr, i64 noundef %old_len, i64 noundef %new_len, i64 noundef %flags, i64 noundef %new_addr) #9
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #5 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* nocapture noundef readonly %pud) unnamed_addr #3 {
entry:
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %and = and i64 %0, 3
  %cmp.not = icmp ne i64 %and, 3
  %retval.0 = zext i1 %cmp.not to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_alloc(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #5 {
entry:
  %call5 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #9
  ret %struct.p4d_t* %call5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_alloc(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #5 {
entry:
  %call6 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #9
  ret %struct.pud_t* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @take_rmap_locks(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #0 {
entry:
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  call fastcc void @i_mmap_lock_write(%struct.address_space* noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %2 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool2.not = icmp eq %struct.anon_vma* %2, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @anon_vma_lock_write(%struct.anon_vma* noundef nonnull %2) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @move_normal_pmd(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %old_addr, %struct.pmd_t* noundef %old_pmd, %struct.pmd_t* noundef %new_pmd) unnamed_addr #0 {
entry:
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %new_pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end22, label %if.then11, !prof !9

if.then11:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mremap.c\22; .popsection; .long 14472b - 14470b; .short 255; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !10
  br label %cleanup

if.end22:                                         ; preds = %entry
  %call24 = call fastcc %struct.spinlock* @pmd_lock(%struct.pmd_t* noundef %old_pmd) #9
  %call25 = call fastcc %struct.spinlock* @pmd_lockptr(%struct.pmd_t* noundef %new_pmd) #9
  %cmp.not = icmp eq %struct.spinlock* %call25, %call24
  br i1 %cmp.not, label %if.end29, label %do.body

do.body:                                          ; preds = %if.end22
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call25, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  br label %if.end29

if.end29:                                         ; preds = %do.body, %if.end22
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %old_pmd, i64 0, i32 0
  %pmd.sroa.0.0.copyload = load i64, i64* %pmd.sroa.0.0..sroa_idx, align 8
  call fastcc void @pmd_clear(%struct.pmd_t* noundef %old_pmd) #9
  %1 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %1, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %and = lshr i64 %pmd.sroa.0.0.copyload, 12
  %shr32 = and i64 %and, 68719476735
  %add.ptr33 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr32
  call fastcc void @pmd_populate(%struct.pmd_t* noundef %new_pmd, %struct.page* noundef %add.ptr33) #9
  %add = add i64 %old_addr, 2097152
  call fastcc void @flush_tlb_range(%struct.vm_area_struct* noundef %vma, i64 noundef %old_addr, i64 noundef %add) #9
  br i1 %cmp.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end29
  %rlock.i1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call25, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i1) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end29
  %rlock.i2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call24, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end37
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @move_normal_pud(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %old_addr, %struct.pud_t* noundef %old_pud, %struct.pud_t* noundef %new_pud) unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %new_pud, i64 0, i32 0, i32 0, i32 0
  %1 = load i64, i64* %pgd1, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end22, label %if.then11, !prof !9

if.then11:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mremap.c\22; .popsection; .long 14472b - 14470b; .short 304; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !11
  br label %cleanup

if.end22:                                         ; preds = %entry
  %call24 = call fastcc %struct.spinlock* @pud_lock(%struct.mm_struct* noundef %0) #9
  %call25 = call fastcc %struct.spinlock* @pud_lockptr(%struct.mm_struct* noundef %0) #9
  %cmp.not = icmp eq %struct.spinlock* %call25, %call24
  br i1 %cmp.not, label %if.end36.critedge, label %do.body

do.body:                                          ; preds = %if.end22
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call25, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #9
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %old_pud, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload = load i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  call fastcc void @pud_clear(%struct.pud_t* noundef %old_pud) #9
  %call32 = call fastcc %struct.pmd_t* @pud_pgtable(i64 %pud.sroa.0.0.copyload) #9
  call fastcc void @pud_populate(%struct.mm_struct* noundef %0, %struct.pud_t* noundef %new_pud, %struct.pmd_t* noundef nonnull %call32) #9
  %add = add i64 %old_addr, 1073741824
  call fastcc void @flush_tlb_range(%struct.vm_area_struct* noundef %vma, i64 noundef %old_addr, i64 noundef %add) #9
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %if.end36

if.end36.critedge:                                ; preds = %if.end22
  %pud.sroa.0.0..sroa_idx.c = getelementptr inbounds %struct.pud_t, %struct.pud_t* %old_pud, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload.c = load i64, i64* %pud.sroa.0.0..sroa_idx.c, align 8
  call fastcc void @pud_clear(%struct.pud_t* noundef %old_pud) #9
  %call32.c = call fastcc %struct.pmd_t* @pud_pgtable(i64 %pud.sroa.0.0.copyload.c) #9
  call fastcc void @pud_populate(%struct.mm_struct* noundef %0, %struct.pud_t* noundef %new_pud, %struct.pmd_t* noundef nonnull %call32.c) #9
  %add.c = add i64 %old_addr, 1073741824
  call fastcc void @flush_tlb_range(%struct.vm_area_struct* noundef %vma, i64 noundef %old_addr, i64 noundef %add.c) #9
  br label %if.end36

if.end36:                                         ; preds = %if.end36.critedge, %do.body
  %rlock.i2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call24, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end36
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @drop_rmap_locks(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #0 {
entry:
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %0 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool.not = icmp eq %struct.anon_vma* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @anon_vma_unlock_write(%struct.anon_vma* noundef nonnull %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool2.not = icmp eq %struct.file* %1, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 17
  %2 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %2) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_lock_write(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @down_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_lock_write(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @down_write(%struct.rw_semaphore* noundef %rwsem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.spinlock* @pmd_lock(%struct.pmd_t* noundef %pmd) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.spinlock* @pmd_lockptr(%struct.pmd_t* noundef %pmd) #9
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret %struct.spinlock* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @pmd_lockptr(%struct.pmd_t* noundef readnone %pmd) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.page* @pmd_to_page(%struct.pmd_t* noundef %pmd) #9
  %call1 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %call) #9
  ret %struct.spinlock* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_clear(%struct.pmd_t* noundef %pmdp) unnamed_addr #0 {
entry:
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_populate(%struct.pmd_t* noundef %pmdp, %struct.page* noundef %ptep) unnamed_addr #0 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %ptep to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  call fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %shl) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_range(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  call fastcc void @__flush_tlb_range(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #5 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.page* @pmd_to_page(%struct.pmd_t* noundef %pmd) unnamed_addr #5 {
entry:
  %0 = ptrtoint %struct.pmd_t* %pmd to i64
  %1 = add i64 %0, 549755813888
  %2 = lshr i64 %1, 6
  %mul = and i64 %2, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %3 = inttoptr i64 %add to %struct.page*
  ret %struct.page* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #8, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %pmd.coerce) unnamed_addr #0 {
entry:
  %pmd.sroa.0 = alloca i64, align 8
  store i64 %pmd.coerce, i64* %pmd.sroa.0, align 8
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0, align 8
  store volatile i64 %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload, i64* %pmd.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "isb", "~{memory}"() #8, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %ptep) unnamed_addr #0 {
entry:
  %or = or i64 %ptep, 576460752303423491
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %or) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__flush_tlb_range(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %and = and i64 %start, -4096
  %sub1 = add i64 %end, -1
  %or = or i64 %sub1, 4095
  %add = sub i64 1, %and
  %sub3 = add i64 %add, %or
  %cmp = icmp ugt i64 %sub3, 2097151
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  %vm_mm6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm6, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 42, i32 0, i32 0
  %2 = load volatile i64, i64* %counter.i, align 8
  %cmp9.not10 = icmp eq i64 %sub3, 0
  br i1 %cmp9.not10, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %shr = lshr exact i64 %sub3, 12
  %shl = shl i64 %2, 48
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end191
  %start.addr.012 = phi i64 [ %and, %while.body.lr.ph ], [ %add192, %if.end191 ]
  %pages.011 = phi i64 [ %shr, %while.body.lr.ph ], [ %sub194, %if.end191 ]
  %shr14 = lshr exact i64 %start.addr.012, 12
  %and15 = and i64 %shr14, 17592186044415
  %or16 = or i64 %and15, %shl
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %while.body
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #10
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %while.body
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 7) #10
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or16) #8, !srcloc !17
  %call143 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #9
  br i1 %call143, label %do.body145, label %if.end191

do.body145:                                       ; preds = %cpus_have_const_cap.exit
  %call.i.i1 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i2 = icmp sgt i32 %call.i.i1, 0
  br i1 %cmp.i.i2, label %if.then3.i5, label %if.else5.i7

if.then3.i5:                                      ; preds = %do.body145
  %call.i9.i3 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #10
  br label %cpus_have_const_cap.exit9

if.else5.i7:                                      ; preds = %do.body145
  %call6.i6 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #10
  br label %cpus_have_const_cap.exit9

cpus_have_const_cap.exit9:                        ; preds = %if.then3.i5, %if.else5.i7
  %or147 = or i64 %or16, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or147) #8, !srcloc !18
  br label %if.end191

if.end191:                                        ; preds = %cpus_have_const_cap.exit, %cpus_have_const_cap.exit9
  %add192 = add i64 %start.addr.012, 4096
  %sub194 = add i64 %pages.011, -1
  %cmp9.not = icmp eq i64 %sub194, 0
  br i1 %cmp9.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end191, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !19
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !20
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %0, 48
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %shl) #8, !srcloc !21
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #9
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %shl, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #8, !srcloc !22
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #6 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #10
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #10
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %and.i = and i32 %num, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #9
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #8, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.spinlock* @pud_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.spinlock* @pud_lockptr(%struct.mm_struct* noundef %mm) #9
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret %struct.spinlock* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @pud_lockptr(%struct.mm_struct* noundef readnone %mm) unnamed_addr #5 {
entry:
  %page_table_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 14
  ret %struct.spinlock* %page_table_lock
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pud_clear(%struct.pud_t* noundef %pudp) unnamed_addr #0 {
entry:
  call fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pud_populate(%struct.mm_struct* noundef readnone %mm, %struct.pud_t* noundef %pudp, %struct.pmd_t* noundef %pmdp) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.pmd_t* %pmdp to i64
  %sub = add i64 %0, 549755813888
  %cmp1 = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub4 = sub i64 %0, %2
  %cond5 = select i1 %cmp1, i64 %add, i64 %sub4
  %cmp = icmp eq %struct.mm_struct* %mm, @init_mm
  %or = select i1 %cmp, i64 1152921504606846979, i64 576460752303423491
  call fastcc void @__pud_populate(%struct.pud_t* noundef %pudp, i64 noundef %cond5, i64 noundef %or) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #9
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %pud.coerce) unnamed_addr #0 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  store i64 %pud.coerce, i64* %pud.sroa.0, align 8
  %0 = bitcast %struct.pud_t* %pudp to i8*
  %call = call fastcc i1 @in_swapper_pgdir(i8* noundef %0) #9
  br i1 %call, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %1 = getelementptr %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0
  call void @set_swapper_pgd(%struct.pgd_t* noundef %1, i64 %pud.coerce) #10
  br label %if.end16

do.body7:                                         ; preds = %entry
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0, align 8
  store volatile i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload, i64* %pud.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body7
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !26
  call void asm sideeffect "isb", "~{memory}"() #8, !srcloc !27
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.then15, %do.body7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @in_swapper_pgdir(i8* noundef %addr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %addr to i64
  %1 = xor i64 %0, ptrtoint ([512 x %struct.pgd_t]* @swapper_pg_dir to i64)
  %cmp = icmp ult i64 %1, 4096
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_swapper_pgd(%struct.pgd_t* noundef, i64) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pud_populate(%struct.pud_t* noundef %pudp, i64 noundef %pmdp, i64 noundef %prot) unnamed_addr #0 {
entry:
  %or = or i64 %prot, %pmdp
  call fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %or) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @anon_vma_unlock_write(%struct.anon_vma* nocapture noundef readonly %anon_vma) unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %anon_vma, i64 0, i32 0
  %0 = load %struct.anon_vma*, %struct.anon_vma** %root, align 8
  %rwsem = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %0, i64 0, i32 1
  call void @up_write(%struct.rw_semaphore* noundef %rwsem) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @up_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #3 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #9
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #9
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #5 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pmd_t* @pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 noundef %address) unnamed_addr #0 {
entry:
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %cond.false, !prof !7

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @__pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 noundef %address) #10
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call6 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %address) #9
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi %struct.pmd_t* [ %call6, %cond.false ], [ null, %land.lhs.true ]
  ret %struct.pmd_t* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pmd_alloc(%struct.mm_struct* noundef, %struct.pud_t* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* nocapture noundef readonly %pmd) unnamed_addr #3 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %1 = load i64, i64* %coerce.dive, align 8
  %and = lshr i64 %1, 12
  %shr2 = and i64 %and, 68719476735
  %add.ptr3 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr2
  %call4 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %add.ptr3) #9
  ret %struct.spinlock* %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #9
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #9
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pte_t* %ptep to i8*
  %call11.i = call fastcc i64 @__xchg_case_64(i8* noundef %0) #10
  ret i64 %call11.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte_at(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  %and = and i64 %pte.coerce, 288230376151711745
  %tobool.not = icmp ne i64 %and, 0
  %and3 = and i64 %pte.coerce, 18014398509481984
  %tobool4.not = icmp eq i64 %and3, 0
  %or.cond = and i1 %tobool.not, %tobool4.not
  %and7 = and i64 %pte.coerce, 72057594037927936
  %tobool8.not = icmp eq i64 %and7, 0
  %or.cond1 = select i1 %or.cond, i1 %tobool8.not, i1 false
  br i1 %or.cond1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sync_icache_dcache(i64 %pte.coerce) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #9
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #5 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #8, !srcloc !28
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i64) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  store i64 %pte.coerce, i64* %pte.sroa.0, align 8
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0, align 8
  store volatile i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload, i64* %pte.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload, 18014398509482049
  %cmp = icmp eq i64 %and, 18014398509481985
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !29
  call void asm sideeffect "isb", "~{memory}"() #8, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mremap(i64 noundef %addr, i64 noundef %old_len, i64 noundef %new_len, i64 noundef %flags, i64 noundef %new_addr) unnamed_addr #0 {
entry:
  %charged = alloca i64, align 8
  %locked = alloca i8, align 4
  %uf_unmap_early = alloca %struct.list_head, align 8
  %uf_unmap = alloca %struct.list_head, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !31
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast i64* %charged to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store i64 0, i64* %charged, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %locked) #8
  store i8 0, i8* %locked, align 4
  %4 = bitcast %struct.list_head* %uf_unmap_early to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %uf_unmap_early, i64 0, i32 0
  store %struct.list_head* %uf_unmap_early, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %uf_unmap_early, i64 0, i32 1
  store %struct.list_head* %uf_unmap_early, %struct.list_head** %prev, align 8
  %5 = bitcast %struct.list_head* %uf_unmap to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %uf_unmap, i64 0, i32 0
  store %struct.list_head* %uf_unmap, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %uf_unmap, i64 0, i32 1
  store %struct.list_head* %uf_unmap, %struct.list_head** %prev3, align 8
  %shl.i = shl i64 %addr, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %addr
  %tobool.not = icmp ult i64 %flags, 8
  br i1 %tobool.not, label %if.end, label %cleanup133

if.end:                                           ; preds = %entry
  %and8 = and i64 %flags, 1
  %tobool9.not = icmp eq i64 %and8, 0
  %6 = and i64 %flags, 3
  %7 = icmp eq i64 %6, 2
  br i1 %7, label %cleanup133, label %if.end11

if.end11:                                         ; preds = %if.end
  %and12 = and i64 %flags, 4
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end18, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end11
  %tobool16.not = icmp ne i64 %and8, 0
  %cmp.not = icmp eq i64 %old_len, %new_len
  %or.cond236 = and i1 %cmp.not, %tobool16.not
  %and19 = and i64 %and, 4095
  %tobool20.not = icmp eq i64 %and19, 0
  %or.cond239 = select i1 %or.cond236, i1 %tobool20.not, i1 false
  br i1 %or.cond239, label %if.end22, label %cleanup133

if.end18:                                         ; preds = %if.end11
  %and19.old = and i64 %and, 4095
  %tobool20.not.old = icmp eq i64 %and19.old, 0
  br i1 %tobool20.not.old, label %if.end22, label %cleanup133

if.end22:                                         ; preds = %land.lhs.true14, %if.end18
  %add = add i64 %old_len, 4095
  %and23 = and i64 %add, -4096
  %add24 = add i64 %new_len, 4095
  %and25 = and i64 %add24, -4096
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %cleanup133, label %if.end28

if.end28:                                         ; preds = %if.end22
  %call31 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #9
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %cleanup133

if.end34:                                         ; preds = %if.end28
  %and35 = and i64 %flags, 6
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call38 = call fastcc i64 @mremap_to(i64 noundef %and, i64 noundef %and23, i64 noundef %new_addr, i64 noundef %and25, i8* noundef nonnull %locked, i64 noundef %flags, %struct.list_head* noundef nonnull %uf_unmap_early, %struct.list_head* noundef nonnull %uf_unmap) #9
  br label %out

if.end39:                                         ; preds = %if.end34
  %cmp40.not = icmp ugt i64 %and25, %and23
  br i1 %cmp40.not, label %if.end54, label %if.then41

if.then41:                                        ; preds = %if.end39
  %add43 = add i64 %and25, %and
  %sub = sub i64 %and23, %and25
  %call44 = call i32 @__do_munmap(%struct.mm_struct* noundef %2, i64 noundef %add43, i64 noundef %sub, %struct.list_head* noundef nonnull %uf_unmap, i1 noundef true) #10
  %cmp45 = icmp sgt i32 %call44, -1
  %cmp47.not = icmp eq i64 %and25, %and23
  %or.cond237 = or i1 %cmp47.not, %cmp45
  %conv = sext i32 %call44 to i64
  %cmp49 = icmp eq i32 %call44, 1
  %ret.0 = select i1 %or.cond237, i64 %and, i64 %conv
  %downgraded.1 = and i1 %cmp49, %or.cond237
  br label %out

if.end54:                                         ; preds = %if.end39
  %call55 = call fastcc %struct.vm_area_struct* @vma_to_resize(i64 noundef %and, i64 noundef %and23, i64 noundef %and25, i64 noundef %flags, i64* noundef nonnull %charged) #9
  %8 = bitcast %struct.vm_area_struct* %call55 to i8*
  %call56 = call fastcc i1 @IS_ERR(i8* noundef %8) #9
  br i1 %call56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  %call58 = call fastcc i64 @PTR_ERR(i8* noundef %8) #9
  br label %out

if.end59:                                         ; preds = %if.end54
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call55, i64 0, i32 1
  %9 = load i64, i64* %vm_end, align 8
  %sub60 = sub i64 %9, %and
  %cmp61 = icmp eq i64 %and23, %sub60
  br i1 %cmp61, label %if.then63, label %if.end85

if.then63:                                        ; preds = %if.end59
  %sub64 = sub i64 %and25, %and23
  %call65 = call fastcc i32 @vma_expandable(%struct.vm_area_struct* noundef %call55, i64 noundef %sub64) #9
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end85, label %if.then67

if.then67:                                        ; preds = %if.then63
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call55, i64 0, i32 0
  %10 = load i64, i64* %vm_start, align 8
  %add70 = add i64 %and25, %and
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call55, i64 0, i32 13
  %11 = load i64, i64* %vm_pgoff, align 8
  %call71 = call fastcc i32 @vma_adjust(%struct.vm_area_struct* noundef %call55, i64 noundef %10, i64 noundef %add70, i64 noundef %11) #9
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then114.thread

if.end74:                                         ; preds = %if.then67
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call55, i64 0, i32 8
  %12 = load i64, i64* %vm_flags, align 8
  %sext = shl i64 %sub64, 20
  %conv75 = ashr exact i64 %sext, 32
  call void @vm_stat_account(%struct.mm_struct* noundef %2, i64 noundef %12, i64 noundef %conv75) #10
  %13 = load i64, i64* %vm_flags, align 8
  %and77 = and i64 %13, 8192
  %tobool78.not = icmp eq i64 %and77, 0
  br i1 %tobool78.not, label %out, label %if.then79

if.then79:                                        ; preds = %if.end74
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 20
  %14 = load i64, i64* %locked_vm, align 8
  %add81 = add i64 %14, %conv75
  store i64 %add81, i64* %locked_vm, align 8
  store i8 1, i8* %locked, align 4
  br label %out

if.end85:                                         ; preds = %if.then63, %if.end59
  br i1 %tobool9.not, label %if.then114.thread, label %if.then88

if.then88:                                        ; preds = %if.end85
  %vm_flags89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call55, i64 0, i32 8
  %15 = load i64, i64* %vm_flags89, align 8
  %and90 = lshr i64 %15, 7
  %and90.lobit = and i64 %and90, 1
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call55, i64 0, i32 14
  %16 = load %struct.file*, %struct.file** %vm_file, align 8
  %vm_pgoff94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call55, i64 0, i32 13
  %17 = load i64, i64* %vm_pgoff94, align 8
  %vm_start95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call55, i64 0, i32 0
  %18 = load i64, i64* %vm_start95, align 8
  %sub96 = sub i64 %and, %18
  %shr97 = lshr i64 %sub96, 12
  %add98 = add i64 %shr97, %17
  %call99 = call i64 @get_unmapped_area(%struct.file* noundef %16, i64 noundef 0, i64 noundef %and25, i64 noundef %add98, i64 noundef %and90.lobit) #10
  %cmp100 = icmp ugt i64 %call99, -4096
  br i1 %cmp100, label %out, label %if.end106, !prof !7

if.end106:                                        ; preds = %if.then88
  %call107 = call fastcc i64 @move_vma(%struct.vm_area_struct* noundef %call55, i64 noundef %and, i64 noundef %and23, i64 noundef %and25, i64 noundef %call99, i8* noundef nonnull %locked, i64 noundef %flags, %struct.list_head* noundef nonnull %uf_unmap) #9
  br label %out

out:                                              ; preds = %if.end106, %if.then88, %if.then79, %if.end74, %if.then41, %if.then57, %if.then37
  %new_addr.addr.2 = phi i64 [ %new_addr, %if.then37 ], [ %new_addr, %if.then41 ], [ %new_addr, %if.then57 ], [ %and, %if.then79 ], [ %new_addr, %if.end74 ], [ %call99, %if.then88 ], [ %call99, %if.end106 ]
  %ret.3 = phi i64 [ %call38, %if.then37 ], [ %ret.0, %if.then41 ], [ %call58, %if.then57 ], [ %and, %if.then79 ], [ %and, %if.end74 ], [ %call99, %if.then88 ], [ %call107, %if.end106 ]
  %downgraded.2.off0 = phi i1 [ false, %if.then37 ], [ %downgraded.1, %if.then41 ], [ false, %if.then57 ], [ false, %if.then79 ], [ false, %if.end74 ], [ false, %if.then88 ], [ false, %if.end106 ]
  %and112 = and i64 %ret.3, 4095
  %tobool113.not = icmp eq i64 %and112, 0
  br i1 %tobool113.not, label %if.end115, label %if.then114

if.then114.thread:                                ; preds = %if.end85, %if.then67
  %19 = load i64, i64* %charged, align 8
  call fastcc void @vm_unacct_memory(i64 noundef %19) #9
  store i8 0, i8* %locked, align 4
  br label %if.else120

if.then114:                                       ; preds = %out
  %20 = load i64, i64* %charged, align 8
  call fastcc void @vm_unacct_memory(i64 noundef %20) #9
  store i8 0, i8* %locked, align 4
  br i1 %downgraded.2.off0, label %if.then117, label %if.else120

if.end115:                                        ; preds = %out
  br i1 %downgraded.2.off0, label %if.then117, label %if.else120

if.then117:                                       ; preds = %if.then114, %if.end115
  %21 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %21) #9
  br label %if.end123

if.else120:                                       ; preds = %if.then114.thread, %if.then114, %if.end115
  %new_addr.addr.2246255 = phi i64 [ %new_addr.addr.2, %if.then114 ], [ %new_addr.addr.2, %if.end115 ], [ %new_addr, %if.then114.thread ]
  %ret.3248252 = phi i64 [ %ret.3, %if.then114 ], [ %ret.3, %if.end115 ], [ -12, %if.then114.thread ]
  %22 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %22) #9
  br label %if.end123

if.end123:                                        ; preds = %if.else120, %if.then117
  %new_addr.addr.2246254 = phi i64 [ %new_addr.addr.2246255, %if.else120 ], [ %new_addr.addr.2, %if.then117 ]
  %ret.3248251 = phi i64 [ %ret.3248252, %if.else120 ], [ %ret.3, %if.then117 ]
  %23 = load i8, i8* %locked, align 4, !range !32
  %tobool124.not = icmp ne i8 %23, 0
  %cmp127 = icmp ugt i64 %and25, %and23
  %or.cond238 = and i1 %cmp127, %tobool124.not
  br i1 %or.cond238, label %if.then129, label %cleanup133

if.then129:                                       ; preds = %if.end123
  %add130 = add i64 %new_addr.addr.2246254, %and23
  %sub131 = sub i64 %and25, %and23
  call fastcc void @mm_populate(i64 noundef %add130, i64 noundef %sub131) #9
  br label %cleanup133

cleanup133:                                       ; preds = %if.end123, %if.then129, %if.end28, %if.end22, %if.end18, %land.lhs.true14, %if.end, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ -22, %if.end ], [ -22, %land.lhs.true14 ], [ -22, %if.end18 ], [ -22, %if.end22 ], [ -4, %if.end28 ], [ %ret.3248251, %if.then129 ], [ %ret.3248251, %if.end123 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %locked) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @mremap_to(i64 noundef %addr, i64 noundef %old_len, i64 noundef %new_addr, i64 noundef %new_len, i8* nocapture noundef writeonly %locked, i64 noundef %flags, %struct.list_head* noundef %uf_unmap_early, %struct.list_head* noundef %uf_unmap) unnamed_addr #0 {
entry:
  %charged = alloca i64, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !31
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast i64* %charged to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store i64 0, i64* %charged, align 8
  %and = and i64 %new_addr, 4095
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %4
  %cmp = icmp ult i64 %shl, %new_len
  %sub = sub i64 %shl, %new_len
  %cmp3 = icmp ult i64 %sub, %new_addr
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %add = add i64 %old_len, %addr
  %cmp6 = icmp ugt i64 %add, %new_addr
  %add7 = add i64 %new_len, %new_addr
  %cmp8 = icmp ugt i64 %add7, %addr
  %or.cond1 = and i1 %cmp6, %cmp8
  br i1 %or.cond1, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end5
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 13
  %5 = load i32, i32* %map_count, align 8
  %add11 = add i32 %5, 2
  %6 = load i32, i32* @sysctl_max_map_count, align 4
  %sub12 = add i32 %6, -3
  %cmp13.not = icmp slt i32 %add11, %sub12
  br i1 %cmp13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end10
  %and16 = and i64 %flags, 2
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call19 = call i32 @do_munmap(%struct.mm_struct* noundef %2, i64 noundef %new_addr, i64 noundef %new_len, %struct.list_head* noundef %uf_unmap_early) #10
  %conv = sext i32 %call19 to i64
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.then18, %if.end15
  %cmp24.not = icmp ult i64 %old_len, %new_len
  br i1 %cmp24.not, label %if.end37, label %if.then26

if.then26:                                        ; preds = %if.end23
  %add27 = add i64 %new_len, %addr
  %sub28 = sub i64 %old_len, %new_len
  %call29 = call i32 @do_munmap(%struct.mm_struct* noundef %2, i64 noundef %add27, i64 noundef %sub28, %struct.list_head* noundef %uf_unmap) #10
  %tobool31.not = icmp eq i32 %call29, 0
  %conv30 = sext i32 %call29 to i64
  %cmp33.not = icmp eq i64 %old_len, %new_len
  %or.cond2 = or i1 %cmp33.not, %tobool31.not
  br i1 %or.cond2, label %if.end37, label %cleanup

if.end37:                                         ; preds = %if.then26, %if.end23
  %old_len.addr.0 = phi i64 [ %old_len, %if.end23 ], [ %new_len, %if.then26 ]
  %call38 = call fastcc %struct.vm_area_struct* @vma_to_resize(i64 noundef %addr, i64 noundef %old_len.addr.0, i64 noundef %new_len, i64 noundef %flags, i64* noundef nonnull %charged) #9
  %7 = bitcast %struct.vm_area_struct* %call38 to i8*
  %call39 = call fastcc i1 @IS_ERR(i8* noundef %7) #9
  br i1 %call39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end37
  %call41 = call fastcc i64 @PTR_ERR(i8* noundef %7) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %and43 = and i64 %flags, 4
  %tobool44.not = icmp eq i64 %and43, 0
  br i1 %tobool44.not, label %if.end48, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end42
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call38, i64 0, i32 8
  %8 = load i64, i64* %vm_flags, align 8
  %shr = lshr i64 %old_len.addr.0, 12
  %call46 = call i1 @may_expand_vm(%struct.mm_struct* noundef %2, i64 noundef %8, i64 noundef %shr) #10
  br i1 %call46, label %if.end48, label %cleanup

if.end48:                                         ; preds = %land.lhs.true45, %if.end42
  %9 = shl nuw nsw i64 %and16, 3
  %vm_flags53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call38, i64 0, i32 8
  %10 = load i64, i64* %vm_flags53, align 8
  %and54 = lshr i64 %10, 7
  %11 = and i64 %and54, 1
  %12 = or i64 %11, %9
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call38, i64 0, i32 14
  %13 = load %struct.file*, %struct.file** %vm_file, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call38, i64 0, i32 13
  %14 = load i64, i64* %vm_pgoff, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call38, i64 0, i32 0
  %15 = load i64, i64* %vm_start, align 8
  %sub59 = sub i64 %addr, %15
  %shr60 = lshr i64 %sub59, 12
  %add61 = add i64 %shr60, %14
  %call62 = call i64 @get_unmapped_area(%struct.file* noundef %13, i64 noundef %new_addr, i64 noundef %new_len, i64 noundef %add61, i64 noundef %12) #10
  %cmp63 = icmp ugt i64 %call62, -4096
  br i1 %cmp63, label %out1, label %if.end69, !prof !7

if.end69:                                         ; preds = %if.end48
  %spec.select3 = select i1 %tobool17.not, i64 %call62, i64 %new_addr
  %call74 = call fastcc i64 @move_vma(%struct.vm_area_struct* noundef %call38, i64 noundef %addr, i64 noundef %old_len.addr.0, i64 noundef %new_len, i64 noundef %spec.select3, i8* noundef %locked, i64 noundef %flags, %struct.list_head* noundef %uf_unmap) #9
  %and75 = and i64 %call74, 4095
  %tobool76.not = icmp eq i64 %and75, 0
  br i1 %tobool76.not, label %cleanup, label %out1

out1:                                             ; preds = %if.end69, %if.end48
  %ret.0 = phi i64 [ %call62, %if.end48 ], [ %call74, %if.end69 ]
  %16 = load i64, i64* %charged, align 8
  call fastcc void @vm_unacct_memory(i64 noundef %16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %out1, %entry, %if.end, %if.then18, %if.end69, %if.end5, %if.then26, %land.lhs.true45, %if.end10
  %retval.0 = phi i64 [ -12, %if.end10 ], [ -22, %entry ], [ -22, %if.end ], [ %conv, %if.then18 ], [ %call41, %if.then40 ], [ %ret.0, %out1 ], [ %call74, %if.end69 ], [ -22, %if.end5 ], [ %conv30, %if.then26 ], [ -12, %land.lhs.true45 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__do_munmap(%struct.mm_struct* noundef, i64 noundef, i64 noundef, %struct.list_head* noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vm_area_struct* @vma_to_resize(i64 noundef %addr, i64 noundef %old_len, i64 noundef %new_len, i64 noundef %flags, i64* nocapture noundef writeonly %p) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !31
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %call2 = call fastcc %struct.vm_area_struct* @vma_lookup(%struct.mm_struct* noundef %2, i64 noundef %addr) #9
  %tobool.not = icmp eq %struct.vm_area_struct* %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -14) #9
  %3 = bitcast i8* %call3 to %struct.vm_area_struct*
  br label %cleanup100

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq i64 %old_len, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call2, i64 0, i32 8
  %4 = load i64, i64* %vm_flags, align 8
  %and = and i64 %4, 136
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end26

if.then6:                                         ; preds = %land.lhs.true
  %.b142 = load i1, i1* @vma_to_resize.__already_done, align 1
  br i1 %.b142, label %if.end16, label %if.then12, !prof !9

if.then12:                                        ; preds = %if.then6
  store i1 true, i1* @vma_to_resize.__already_done, align 1
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 50
  %5 = load i32, i32* %pid, align 32
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %5) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then6
  %call25 = call fastcc i8* @ERR_PTR(i64 noundef -22) #9
  %6 = bitcast i8* %call25 to %struct.vm_area_struct*
  br label %cleanup100

if.end26:                                         ; preds = %land.lhs.true, %if.end
  %and27 = and i64 %flags, 4
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %if.end35, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end26
  %vm_flags30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call2, i64 0, i32 8
  %7 = load i64, i64* %vm_flags30, align 8
  %and31 = and i64 %7, 263168
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %land.lhs.true29
  %call34 = call fastcc i8* @ERR_PTR(i64 noundef -22) #9
  %8 = bitcast i8* %call34 to %struct.vm_area_struct*
  br label %cleanup100

if.end35:                                         ; preds = %land.lhs.true29, %if.end26
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call2, i64 0, i32 1
  %9 = load i64, i64* %vm_end, align 8
  %sub = sub i64 %9, %addr
  %cmp = icmp ult i64 %sub, %old_len
  br i1 %cmp, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end35
  %call42 = call fastcc i8* @ERR_PTR(i64 noundef -14) #9
  %10 = bitcast i8* %call42 to %struct.vm_area_struct*
  br label %cleanup100

if.end43:                                         ; preds = %if.end35
  %cmp44 = icmp eq i64 %new_len, %old_len
  br i1 %cmp44, label %cleanup100, label %if.end47

if.end47:                                         ; preds = %if.end43
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call2, i64 0, i32 0
  %11 = load i64, i64* %vm_start, align 8
  %sub48 = sub i64 %addr, %11
  %shr = lshr i64 %sub48, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call2, i64 0, i32 13
  %12 = load i64, i64* %vm_pgoff, align 8
  %add = add i64 %shr, %12
  %shr49 = lshr i64 %new_len, 12
  %13 = xor i64 %add, -1
  %cmp51 = icmp ugt i64 %shr49, %13
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end47
  %call54 = call fastcc i8* @ERR_PTR(i64 noundef -22) #9
  %14 = bitcast i8* %call54 to %struct.vm_area_struct*
  br label %cleanup100

if.end55:                                         ; preds = %if.end47
  %vm_flags56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call2, i64 0, i32 8
  %15 = load i64, i64* %vm_flags56, align 8
  %and57 = and i64 %15, 263168
  %tobool58.not = icmp eq i64 %and57, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end55
  %call60 = call fastcc i8* @ERR_PTR(i64 noundef -14) #9
  %16 = bitcast i8* %call60 to %struct.vm_area_struct*
  br label %cleanup100

if.end61:                                         ; preds = %if.end55
  %and63 = and i64 %15, 8192
  %tobool64.not = icmp eq i64 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end77_crit_edge, label %if.then65

if.end61.if.end77_crit_edge:                      ; preds = %if.end61
  %.pre = sub i64 %new_len, %old_len
  br label %if.end77

if.then65:                                        ; preds = %if.end61
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 20
  %17 = load i64, i64* %locked_vm, align 8
  %shl = shl i64 %17, 12
  %call66 = call fastcc i64 @rlimit() #9
  %sub67 = sub i64 %new_len, %old_len
  %add68 = add i64 %sub67, %shl
  %cmp69 = icmp ugt i64 %add68, %call66
  br i1 %cmp69, label %land.lhs.true71, label %if.end77

land.lhs.true71:                                  ; preds = %if.then65
  %call72 = call i1 @capable(i32 noundef 14) #10
  br i1 %call72, label %if.end77, label %cleanup

cleanup:                                          ; preds = %land.lhs.true71
  %call74 = call fastcc i8* @ERR_PTR(i64 noundef -11) #9
  %18 = bitcast i8* %call74 to %struct.vm_area_struct*
  br label %cleanup100

if.end77:                                         ; preds = %if.end61.if.end77_crit_edge, %if.then65, %land.lhs.true71
  %sub79.pre-phi = phi i64 [ %.pre, %if.end61.if.end77_crit_edge ], [ %sub67, %if.then65 ], [ %sub67, %land.lhs.true71 ]
  %19 = load i64, i64* %vm_flags56, align 8
  %shr80 = lshr i64 %sub79.pre-phi, 12
  %call81 = call i1 @may_expand_vm(%struct.mm_struct* noundef %2, i64 noundef %19, i64 noundef %shr80) #10
  br i1 %call81, label %if.end84, label %if.then82

if.then82:                                        ; preds = %if.end77
  %call83 = call fastcc i8* @ERR_PTR(i64 noundef -12) #9
  %20 = bitcast i8* %call83 to %struct.vm_area_struct*
  br label %cleanup100

if.end84:                                         ; preds = %if.end77
  %21 = load i64, i64* %vm_flags56, align 8
  %and86 = and i64 %21, 1048576
  %tobool87.not = icmp eq i64 %and86, 0
  br i1 %tobool87.not, label %cleanup100, label %if.then88

if.then88:                                        ; preds = %if.end84
  %call91 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %2, i64 noundef %shr80) #9
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %cleanup96.thread, label %cleanup96

cleanup96.thread:                                 ; preds = %if.then88
  store i64 %shr80, i64* %p, align 8
  br label %cleanup100

cleanup96:                                        ; preds = %if.then88
  %call94 = call fastcc i8* @ERR_PTR(i64 noundef -12) #9
  %22 = bitcast i8* %call94 to %struct.vm_area_struct*
  br label %cleanup100

cleanup100:                                       ; preds = %if.end84, %cleanup96.thread, %cleanup96, %cleanup, %if.end43, %if.then82, %if.then59, %if.then53, %if.then41, %if.then33, %if.end16, %if.then
  %retval.3 = phi %struct.vm_area_struct* [ %8, %if.then33 ], [ %10, %if.then41 ], [ %14, %if.then53 ], [ %16, %if.then59 ], [ %22, %cleanup96 ], [ %20, %if.then82 ], [ %18, %cleanup ], [ %6, %if.end16 ], [ %3, %if.then ], [ %call2, %if.end43 ], [ %call2, %cleanup96.thread ], [ %call2, %if.end84 ]
  ret %struct.vm_area_struct* %retval.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vma_expandable(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %delta) unnamed_addr #0 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %add = add i64 %0, %delta
  %cmp = icmp ult i64 %add, %0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %1, null
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 0
  %2 = load i64, i64* %vm_start, align 8
  %cmp3 = icmp ult i64 %2, %add
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %vm_start6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %3 = load i64, i64* %vm_start6, align 8
  %sub = sub i64 %add, %3
  %call = call i64 @get_unmapped_area(%struct.file* noundef null, i64 noundef %3, i64 noundef %sub, i64 noundef 0, i64 noundef 16) #10
  %and = and i64 %call, 4095
  %tobool8.not = icmp eq i64 %and, 0
  %. = zext i1 %tobool8.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %land.lhs.true ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 noundef %pgoff) unnamed_addr #0 {
entry:
  %call = call i32 @__vma_adjust(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i64 noundef %pgoff, %struct.vm_area_struct* noundef null, %struct.vm_area_struct* noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(%struct.mm_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_unmapped_area(%struct.file* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @move_vma(%struct.vm_area_struct* noundef %vma, i64 noundef %old_addr, i64 noundef %old_len, i64 noundef %new_len, i64 noundef %new_addr, i8* nocapture noundef writeonly %locked, i64 noundef %flags, %struct.list_head* noundef %uf_unmap) unnamed_addr #0 {
entry:
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %need_rmap_locks = alloca i8, align 4
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags1, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %need_rmap_locks) #8
  store i8 0, i8* %need_rmap_locks, align 4, !annotation !33
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 13
  %2 = load i32, i32* %map_count, align 8
  %3 = load i32, i32* @sysctl_max_map_count, align 4
  %sub = add i32 %3, -3
  %cmp.not = icmp slt i32 %2, %sub
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %4 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %4, null
  br i1 %tobool.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %may_split = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %4, i64 0, i32 2
  %5 = load i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*, i64)** %may_split, align 8
  %tobool3.not = icmp eq i32 (%struct.vm_area_struct*, i64)* %5, null
  br i1 %tobool3.not, label %if.end22, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %6 = load i64, i64* %vm_start, align 8
  %cmp5.not = icmp eq i64 %6, %old_addr
  br i1 %cmp5.not, label %land.lhs.true11, label %if.end9

if.end9:                                          ; preds = %if.then4
  %call = call i32 %5(%struct.vm_area_struct* noundef %vma, i64 noundef %old_addr) #10
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %if.then20

land.lhs.true11:                                  ; preds = %if.then4, %if.end9
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %7 = load i64, i64* %vm_end, align 8
  %add = add i64 %old_len, %old_addr
  %cmp12.not = icmp eq i64 %7, %add
  br i1 %cmp12.not, label %if.end22, label %if.end18

if.end18:                                         ; preds = %land.lhs.true11
  %8 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %may_split15 = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %8, i64 0, i32 2
  %9 = load i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*, i64)** %may_split15, align 8
  %call17 = call i32 %9(%struct.vm_area_struct* noundef %vma, i64 noundef %add) #10
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end9, %if.end18
  %err.114 = phi i32 [ %call17, %if.end18 ], [ %call, %if.end9 ]
  %conv = sext i32 %err.114 to i64
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true11, %if.end18, %land.lhs.true, %if.end
  %and = and i64 %flags, 4
  %tobool29 = icmp ne i64 %and, 0
  %and30 = and i64 %1, 1048576
  %tobool31 = icmp ne i64 %and30, 0
  %10 = select i1 %tobool29, i1 %tobool31, i1 false
  br i1 %10, label %if.then35, label %if.end40, !prof !7

if.then35:                                        ; preds = %if.end22
  %shr = lshr i64 %new_len, 12
  %call36 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %0, i64 noundef %shr) #9
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %cleanup

if.end40:                                         ; preds = %if.then35, %if.end22
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %11 = load i64, i64* %vm_pgoff, align 8
  %vm_start41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %12 = load i64, i64* %vm_start41, align 8
  %sub42 = sub i64 %old_addr, %12
  %shr43 = lshr i64 %sub42, 12
  %add44 = add i64 %shr43, %11
  %call45 = call %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct** noundef nonnull %vma.addr, i64 noundef %new_addr, i64 noundef %new_len, i64 noundef %add44, i8* noundef nonnull %need_rmap_locks) #10
  %tobool46.not = icmp eq %struct.vm_area_struct* %call45, null
  br i1 %tobool46.not, label %if.then47, label %if.end64

if.then47:                                        ; preds = %if.end40
  br i1 %10, label %if.then61, label %cleanup, !prof !7

if.then61:                                        ; preds = %if.then47
  %shr62 = lshr i64 %new_len, 12
  call fastcc void @vm_unacct_memory(i64 noundef %shr62) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end40
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8
  %14 = load i8, i8* %need_rmap_locks, align 4, !range !32
  %tobool65 = icmp ne i8 %14, 0
  %call66 = call i64 @move_page_tables(%struct.vm_area_struct* noundef %13, i64 noundef %old_addr, %struct.vm_area_struct* noundef nonnull %call45, i64 noundef %new_addr, i64 noundef %old_len, i1 noundef %tobool65) #9
  %cmp67 = icmp ult i64 %call66, %old_len
  br i1 %cmp67, label %if.then89, label %if.else

if.else:                                          ; preds = %if.end64
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8
  %vm_ops70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i64 0, i32 12
  %16 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops70, align 8
  %tobool71.not = icmp eq %struct.vm_operations_struct* %16, null
  br i1 %tobool71.not, label %if.end93, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %if.else
  %mremap = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %16, i64 0, i32 3
  %17 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %mremap, align 8
  %tobool74.not = icmp eq i32 (%struct.vm_area_struct*)* %17, null
  br i1 %tobool74.not, label %if.end93, label %if.end80

if.end80:                                         ; preds = %land.lhs.true72
  %call78 = call i32 %17(%struct.vm_area_struct* noundef nonnull %call45) #10
  %tobool81.not = icmp eq i32 %call78, 0
  br i1 %tobool81.not, label %if.end93, label %if.then89, !prof !9

if.then89:                                        ; preds = %if.end64, %if.end80
  %err.222 = phi i32 [ %call78, %if.end80 ], [ -12, %if.end64 ]
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8
  %call90 = call i64 @move_page_tables(%struct.vm_area_struct* noundef nonnull %call45, i64 noundef %new_addr, %struct.vm_area_struct* noundef %18, i64 noundef %old_addr, i64 noundef %call66, i1 noundef true) #9
  store %struct.vm_area_struct* %call45, %struct.vm_area_struct** %vma.addr, align 8
  %conv91 = sext i32 %err.222 to i64
  br label %if.end93

if.end93:                                         ; preds = %if.else, %land.lhs.true72, %if.end80, %if.then89
  %tobool81.not17 = phi i1 [ false, %if.then89 ], [ true, %if.end80 ], [ true, %land.lhs.true72 ], [ true, %if.else ]
  %new_addr.addr.0 = phi i64 [ %conv91, %if.then89 ], [ %new_addr, %if.end80 ], [ %new_addr, %land.lhs.true72 ], [ %new_addr, %if.else ]
  %old_len.addr.0 = phi i64 [ %new_len, %if.then89 ], [ %old_len, %if.end80 ], [ %old_len, %land.lhs.true72 ], [ %old_len, %if.else ]
  %old_addr.addr.0 = phi i64 [ %new_addr, %if.then89 ], [ %old_addr, %if.end80 ], [ %old_addr, %land.lhs.true72 ], [ %old_addr, %if.else ]
  %tobool95.not = icmp eq i64 %and30, 0
  %brmerge = or i1 %tobool29, %tobool95.not
  %.pre = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8
  %vm_flags118.phi.trans.insert = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %.pre, i64 0, i32 8
  %.pre26 = load i64, i64* %vm_flags118.phi.trans.insert, align 8
  br i1 %brmerge, label %if.end116, label %if.then99

if.then99:                                        ; preds = %if.end93
  %and101 = and i64 %.pre26, -1048577
  store i64 %and101, i64* %vm_flags118.phi.trans.insert, align 8
  %vm_end102 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %.pre, i64 0, i32 1
  %19 = load i64, i64* %vm_end102, align 8
  %vm_start103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %.pre, i64 0, i32 0
  %20 = load i64, i64* %vm_start103, align 8
  %21 = add i64 %old_len.addr.0, %20
  %sub105 = sub i64 %19, %21
  %cmp107 = icmp ule i64 %old_addr.addr.0, %20
  %add110 = add i64 %old_addr.addr.0, %old_len.addr.0
  %cmp112 = icmp uge i64 %add110, %19
  %or.cond = select i1 %cmp107, i1 true, i1 %cmp112
  br label %if.end116

if.end116:                                        ; preds = %if.end93, %if.then99
  %22 = phi i64 [ %and101, %if.then99 ], [ %.pre26, %if.end93 ]
  %excess.0 = phi i64 [ %sub105, %if.then99 ], [ 0, %if.end93 ]
  %tobool184.not = phi i1 [ %or.cond, %if.then99 ], [ true, %if.end93 ]
  %hiwater_vm117 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 18
  %23 = load i64, i64* %hiwater_vm117, align 8
  %shr119 = lshr i64 %new_len, 12
  call void @vm_stat_account(%struct.mm_struct* noundef %0, i64 noundef %22, i64 noundef %shr119) #10
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8
  %vm_flags120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i64 0, i32 8
  %25 = and i1 %tobool29, %tobool81.not17
  br i1 %25, label %if.then144, label %if.end160, !prof !7

if.then144:                                       ; preds = %if.end116
  %26 = load i64, i64* %vm_flags120, align 8
  %and146 = and i64 %26, -532481
  store i64 %and146, i64* %vm_flags120, align 8
  %cmp147.not = icmp eq %struct.vm_area_struct* %call45, %24
  br i1 %cmp147.not, label %cleanup, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %if.then144
  %vm_start150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i64 0, i32 0
  %27 = load i64, i64* %vm_start150, align 8
  %cmp151 = icmp eq i64 %27, %old_addr.addr.0
  br i1 %cmp151, label %land.lhs.true153, label %cleanup

land.lhs.true153:                                 ; preds = %land.lhs.true149
  %vm_end154 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i64 0, i32 1
  %28 = load i64, i64* %vm_end154, align 8
  %add155 = add i64 %old_addr.addr.0, %old_len.addr.0
  %cmp156 = icmp eq i64 %28, %add155
  br i1 %cmp156, label %if.then158, label %cleanup

if.then158:                                       ; preds = %land.lhs.true153
  call void @unlink_anon_vmas(%struct.vm_area_struct* noundef %24) #10
  br label %cleanup

if.end160:                                        ; preds = %if.end116
  %call161 = call i32 @do_munmap(%struct.mm_struct* noundef %0, i64 noundef %old_addr.addr.0, i64 noundef %old_len.addr.0, %struct.list_head* noundef %uf_unmap) #10
  %cmp162 = icmp sgt i32 %call161, -1
  %brmerge24 = select i1 %cmp162, i1 true, i1 %brmerge
  %excess.0.mux = select i1 %cmp162, i64 %excess.0, i64 0
  br i1 %brmerge24, label %if.end173, label %if.then170

if.then170:                                       ; preds = %if.end160
  %shr171 = lshr i64 %old_len.addr.0, 12
  call fastcc void @vm_acct_memory(i64 noundef %shr171) #9
  br label %if.end173

if.end173:                                        ; preds = %if.end160, %if.then170
  %excess.1 = phi i64 [ %excess.0.mux, %if.end160 ], [ 0, %if.then170 ]
  %and174 = and i64 %1, 8192
  %tobool175.not = icmp eq i64 %and174, 0
  br i1 %tobool175.not, label %if.end179, label %if.then176

if.then176:                                       ; preds = %if.end173
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 20
  %29 = load i64, i64* %locked_vm, align 8
  %add178 = add i64 %29, %shr119
  store i64 %add178, i64* %locked_vm, align 8
  store i8 1, i8* %locked, align 1
  br label %if.end179

if.end179:                                        ; preds = %if.then176, %if.end173
  store i64 %23, i64* %hiwater_vm117, align 8
  %tobool181.not = icmp eq i64 %excess.1, 0
  br i1 %tobool181.not, label %cleanup, label %if.then182

if.then182:                                       ; preds = %if.end179
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8
  %vm_flags183 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i64 0, i32 8
  %31 = load i64, i64* %vm_flags183, align 8
  %or = or i64 %31, 1048576
  store i64 %or, i64* %vm_flags183, align 8
  br i1 %tobool184.not, label %cleanup, label %if.then185

if.then185:                                       ; preds = %if.then182
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i64 0, i32 2
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %vm_flags186 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i64 0, i32 8
  %33 = load i64, i64* %vm_flags186, align 8
  %or187 = or i64 %33, 1048576
  store i64 %or187, i64* %vm_flags186, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %if.then185, %if.then182, %if.then144, %land.lhs.true149, %land.lhs.true153, %if.then158, %if.then47, %if.then61, %if.then35, %entry, %if.then20
  %retval.0 = phi i64 [ %conv, %if.then20 ], [ -12, %entry ], [ -12, %if.then35 ], [ -12, %if.then61 ], [ -12, %if.then47 ], [ %new_addr.addr.0, %if.then158 ], [ %new_addr.addr.0, %land.lhs.true153 ], [ %new_addr.addr.0, %land.lhs.true149 ], [ %new_addr.addr.0, %if.then144 ], [ %new_addr.addr.0, %if.then182 ], [ %new_addr.addr.0, %if.then185 ], [ %new_addr.addr.0, %if.end179 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %need_rmap_locks) #8
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_unacct_memory(i64 noundef %pages) unnamed_addr #0 {
entry:
  %sub = sub i64 0, %pages
  call fastcc void @vm_acct_memory(i64 noundef %sub) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_populate(i64 noundef %addr, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call i32 @__mm_populate(i64 noundef %addr, i64 noundef %len, i32 noundef 1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_munmap(%struct.mm_struct* noundef, i64 noundef, i64 noundef, %struct.list_head* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @may_expand_vm(%struct.mm_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vm_area_struct* @vma_lookup(%struct.mm_struct* noundef %mm, i64 noundef %addr) unnamed_addr #0 {
entry:
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %addr) #10
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %0, %addr
  %spec.store.select = select i1 %cmp, %struct.vm_area_struct* null, %struct.vm_area_struct* %call
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %vma.0 = phi %struct.vm_area_struct* [ %spec.store.select, %land.lhs.true ], [ null, %entry ]
  ret %struct.vm_area_struct* %vma.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !31
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #9
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %mm, i64 noundef %pages) unnamed_addr #0 {
entry:
  %call = call i32 @cap_vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages) #10
  %call1 = call i32 @__vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages, i32 noundef %call) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 8, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(%struct.mm_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vma_adjust(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i64 noundef, %struct.vm_area_struct* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct** noundef, i64 noundef, i64 noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_anon_vmas(%struct.vm_area_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_acct_memory(i64 noundef %pages) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef nonnull @vm_committed_as, i64 noundef %pages, i32 noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2155718348}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155707038}
!11 = !{i64 2155711092}
!12 = !{i64 2149563921}
!13 = !{i64 2148074198, i64 2148074231, i64 2148074284, i64 2148074343, i64 2148074377, i64 2148074432, i64 2148074461, i64 2148074481}
!14 = !{i64 2151526505}
!15 = !{i64 2151526554}
!16 = !{i64 2151322947}
!17 = !{i64 2151426595, i64 2151426325, i64 2151426955, i64 2151427001, i64 2151427007, i64 2151428395, i64 2151427044, i64 2151427062, i64 2151428468, i64 2151428516, i64 2151428564, i64 2151428627, i64 2151428676, i64 2151427140, i64 2151427165, i64 2151427191, i64 2151427197, i64 2151428416, i64 2151427234, i64 2151427240, i64 2151427290, i64 2151427336, i64 2151427369}
!18 = !{i64 2151464413, i64 2151464143, i64 2151464773, i64 2151464819, i64 2151464825, i64 2151466213, i64 2151464862, i64 2151464880, i64 2151466286, i64 2151466334, i64 2151466382, i64 2151466445, i64 2151466494, i64 2151464958, i64 2151464983, i64 2151465009, i64 2151465015, i64 2151466234, i64 2151465052, i64 2151465058, i64 2151465108, i64 2151465154, i64 2151465187}
!19 = !{i64 2151479358}
!20 = !{i64 2151309232}
!21 = !{i64 2151310618, i64 2151310343, i64 2151310982, i64 2151311028, i64 2151311034, i64 2151312422, i64 2151311071, i64 2151311089, i64 2151312497, i64 2151312545, i64 2151312593, i64 2151312656, i64 2151312705, i64 2151311167, i64 2151311192, i64 2151311218, i64 2151311224, i64 2151312443, i64 2151311261, i64 2151311267, i64 2151311317, i64 2151311363, i64 2151311396}
!22 = !{i64 2151313464, i64 2151313157, i64 2151313828, i64 2151313874, i64 2151313880, i64 2151315268, i64 2151313917, i64 2151313935, i64 2151315343, i64 2151315391, i64 2151315439, i64 2151315502, i64 2151315551, i64 2151314013, i64 2151314038, i64 2151314064, i64 2151314070, i64 2151315289, i64 2151314107, i64 2151314113, i64 2151314163, i64 2151314209, i64 2151314242}
!23 = !{i64 2151315615}
!24 = !{i64 2149571202}
!25 = !{i64 2149363432}
!26 = !{i64 2151529932}
!27 = !{i64 2151529981}
!28 = !{i64 2148096071, i64 2148096103, i64 2148096147, i64 2148096193, i64 2148096219}
!29 = !{i64 2151510895}
!30 = !{i64 2151510944}
!31 = !{i64 1377495}
!32 = !{i8 0, i8 2}
!33 = !{!"auto-init"}
