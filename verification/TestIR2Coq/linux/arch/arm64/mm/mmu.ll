; ModuleID = 'arch/arm64/mm/mmu.c'
source_filename = "arch/arm64/mm/mmu.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_mmu__442_642_map_entry_trampoline1:\09\09\09"
module asm ".long\09map_entry_trampoline - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mm_struct = type { %struct.anon.23, [0 x i64] }
%struct.anon.23 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.24, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.10, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.69, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.70 }
%union.anon.70 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.72 = type { %struct.list_head }
%union.anon.73 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.36, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.36 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.74, %union.anon.75, %union.anon.76, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.79, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { %struct.rb_node }
%union.anon.76 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.79 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.29 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.37, %union.anon.38, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.52, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.27 }
%union.anon.27 = type { i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
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
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.51, i32, [12 x i8] }
%union.anon.51 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.53, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.53 = type { i64, i64, %struct.user_fpsimd_state }
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
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.57 }
%union.anon.57 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.58, %union.anon.59 }
%union.anon.58 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.59 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.67 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.65, %struct.qspinlock }
%union.anon.65 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.67 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.69 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.56 = type { %struct.atomic_t }
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
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [48 x i8] }
%struct.anon.6 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.7, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.memblock = type { i8, i64, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i64, i64, i64, %struct.memblock_region*, i8* }
%struct.memblock_region = type { i64, i64, i32 }
%struct.vmem_altmap = type { i64, i64, i64, i64, i64, i64 }

@idmap_t0sz = dso_local local_unnamed_addr global i64 25, align 8
@idmap_ptrs_per_pgd = dso_local local_unnamed_addr global i64 512, align 8
@swapper_pgdir_lock = internal global %struct.spinlock zeroinitializer, align 4
@kimage_voffset = dso_local local_unnamed_addr global i64 0, section ".data..ro_after_init", align 8
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@_stext = external dso_local global [0 x i8], align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@__init_begin = external dso_local global [0 x i8], align 1
@__setup_str_enable_crash_mem_map = internal constant [12 x i8] c"crashkernel\00", section ".init.rodata", align 1
@__setup_enable_crash_mem_map = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__setup_str_enable_crash_mem_map, i32 0, i32 0), i32 (i8*)* @enable_crash_mem_map, i32 1 }, section ".init.setup", align 8
@__start_rodata = external dso_local global [0 x i8], align 1
@__setup_str_parse_rodata = internal constant [7 x i8] c"rodata\00", section ".init.rodata", align 1
@__setup_parse_rodata = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__setup_str_parse_rodata, i32 0, i32 0), i32 (i8*)* @parse_rodata, i32 1 }, section ".init.setup", align 8
@__UNIQUE_ID___addressable_map_entry_trampoline443 = internal global i8* bitcast (i32 ()* @map_entry_trampoline to i8*), section ".discard.addressable", align 8
@swapper_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@init_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@init_pg_end = external dso_local global [0 x %struct.pgd_t], align 8
@bm_pmd = internal global [512 x %struct.pmd_t] zeroinitializer, section ".bss..page_aligned", align 4096
@bm_pte = internal global [512 x %struct.pte_t] zeroinitializer, section ".bss..page_aligned", align 4096
@.str = private unnamed_addr constant [21 x i8] c"\014pmdp %p != %p, %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\014fix_to_virt(FIX_BTMAP_BEGIN): %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\014fix_to_virt(FIX_BTMAP_END):   %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\014FIX_BTMAP_END:       %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\014FIX_BTMAP_BEGIN:     %d\0A\00", align 1
@vabits_actual = dso_local local_unnamed_addr global i64 0, section ".mmuoff.data.write", align 8
@empty_zero_page = dso_local local_unnamed_addr global [512 x i64] zeroinitializer, section ".bss..page_aligned", align 4096
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@.str.5 = private unnamed_addr constant [72 x i8] c"\014BUG: not updating mapping for %pa at 0x%016lx - outside kernel range\0A\00", align 1
@crash_mem_map = internal unnamed_addr global i1 false, section ".init.data", align 1
@rodata_enabled = external dso_local global i8, align 1
@rodata_full = external dso_local local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@__entry_tramp_text_start = external dso_local global [0 x i8], align 1
@tramp_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@map_kernel.vmlinux_text = internal global %struct.vm_struct zeroinitializer, align 8
@map_kernel.vmlinux_rodata = internal global %struct.vm_struct zeroinitializer, align 8
@map_kernel.vmlinux_inittext = internal global %struct.vm_struct zeroinitializer, align 8
@map_kernel.vmlinux_initdata = internal global %struct.vm_struct zeroinitializer, align 8
@map_kernel.vmlinux_data = internal global %struct.vm_struct zeroinitializer, align 8
@_etext = external dso_local global [0 x i8], align 1
@__inittext_begin = external dso_local global [0 x i8], align 1
@__inittext_end = external dso_local global [0 x i8], align 1
@__initdata_begin = external dso_local global [0 x i8], align 1
@__initdata_end = external dso_local global [0 x i8], align 1
@_data = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to allocate page table page\0A\00", align 1
@memblock = external dso_local global %struct.memblock, align 8
@idmap_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@reserved_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_map_entry_trampoline443 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_enable_crash_mem_map to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_parse_rodata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_swapper_pgd(%struct.pgd_t* noundef %pgdp, i64 %pgd.coerce) local_unnamed_addr #0 {
entry:
  %pgd.sroa.0 = alloca i64, align 8
  store i64 %pgd.coerce, i64* %pgd.sroa.0, align 8
  call fastcc void @__raw_spin_lock() #12
  %0 = ptrtoint %struct.pgd_t* %pgdp to i64
  %1 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 %0, %1
  %2 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool.not = icmp eq i8 %2, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  call void @__set_fixmap(i32 noundef 1480, i64 noundef %sub, i64 %or3) #13
  %3 = load i64, i64* @kimage_voffset, align 8
  %sub9 = sub i64 %0, %3
  %and = and i64 %sub9, 4095
  %add10 = or i64 %and, -8629551104
  %4 = inttoptr i64 %add10 to %struct.pgd_t*
  %pgd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pgd_t, %struct.pgd_t* %4, i64 0, i32 0
  %pgd.sroa.0.0.pgd.sroa.0.0.pgd.sroa.0.0.pgd.sroa.0.0.copyload = load volatile i64, i64* %pgd.sroa.0, align 8
  store volatile i64 %pgd.sroa.0.0.pgd.sroa.0.0.pgd.sroa.0.0.pgd.sroa.0.0.copyload, i64* %pgd.sroa.0.0..sroa_idx, align 8
  call void @__set_fixmap(i32 noundef 1480, i64 noundef 0, i64 0) #13
  call fastcc void @__raw_spin_unlock() #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__set_fixmap(i32 noundef %idx, i64 noundef %phys, i64 %flags.coerce) local_unnamed_addr #0 {
entry:
  %shl = shl i32 %idx, 12
  %conv = zext i32 %shl to i64
  %sub = sub nuw nsw i64 -8623489024, %conv
  %0 = add i32 %idx, -1481
  %1 = icmp ult i32 %0, -1480
  br i1 %1, label %do.body6, label %do.end11, !prof !8

do.body6:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 1277; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  unreachable

do.end11:                                         ; preds = %entry
  %call = call fastcc %struct.pte_t* @fixmap_pte(i64 noundef %sub) #13
  %tobool12.not = icmp eq i64 %flags.coerce, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end11
  %shr = and i64 %phys, -4096
  %or = or i64 %shr, %flags.coerce
  call fastcc void @set_pte(%struct.pte_t* noundef nonnull %call, i64 %or) #13
  br label %if.end20

if.else:                                          ; preds = %do.end11
  call fastcc void @set_pte(%struct.pte_t* noundef nonnull %call, i64 0) #13
  %add = sub nuw nsw i64 -8623484928, %conv
  call fastcc void @flush_tlb_kernel_range(i64 noundef %sub, i64 noundef %add) #13
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @phys_mem_access_prot(%struct.file* nocapture noundef readonly %file, i64 noundef %pfn, i64 noundef %size, i64 %vma_prot.coerce) local_unnamed_addr #0 {
entry:
  %call = call i32 @pfn_is_map_memory(i64 noundef %pfn) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = and i64 %vma_prot.coerce, -27021597764223005
  %or = or i64 %and, 27021597764222988
  br label %return

if.else:                                          ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and2 = and i32 %0, 1052672
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.else
  %and7 = and i64 %vma_prot.coerce, -27021597764223005
  %or8 = or i64 %and7, 27021597764222984
  br label %return

return:                                           ; preds = %if.else, %if.then4, %if.then
  %retval.sroa.0.0 = phi i64 [ %or8, %if.then4 ], [ %or, %if.then ], [ %vma_prot.coerce, %if.else ]
  ret i64 %retval.sroa.0.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_is_map_memory(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @create_pgd_mapping(%struct.mm_struct* noundef readonly %mm, i64 noundef %phys, i64 noundef %virt, i64 noundef %size, i64 %prot.coerce, i1 noundef %page_mappings_only) local_unnamed_addr #3 section ".init.text" {
entry:
  %cmp = icmp eq %struct.mm_struct* %mm, @init_mm
  br i1 %cmp, label %do.body2, label %do.end7, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 444; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  unreachable

do.end7:                                          ; preds = %entry
  %spec.select = select i1 %page_mappings_only, i32 3, i32 0
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %0 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  call fastcc void @__create_pgd_mapping(%struct.pgd_t* noundef %0, i64 noundef %phys, i64 noundef %virt, i64 noundef %size, i64 %prot.coerce, i64 (i32)* noundef nonnull @pgd_pgtable_alloc, i32 noundef %spec.select) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__create_pgd_mapping(%struct.pgd_t* noundef %pgdir, i64 noundef %phys, i64 noundef %virt, i64 noundef %size, i64 %prot.coerce, i64 (i32)* noundef %pgtable_alloc, i32 noundef %flags) unnamed_addr #0 {
entry:
  %xor = xor i64 %virt, %phys
  %and = and i64 %xor, 4095
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 376; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !12
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %pgdir, i64 noundef %virt) #13
  %and18 = and i64 %phys, -4096
  %and19 = and i64 %virt, -4096
  %add = add i64 %virt, 4095
  %add20 = add i64 %add, %size
  %and21 = and i64 %add20, -4096
  %sub25 = add i64 %and21, -1
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end17
  %pgdp.0 = phi %struct.pgd_t* [ %call, %if.end17 ], [ %incdec.ptr, %do.body ]
  %addr.0 = phi i64 [ %and19, %if.end17 ], [ %cond, %do.body ]
  %phys.addr.0 = phi i64 [ %and18, %if.end17 ], [ %add29, %do.body ]
  %add22 = add i64 %addr.0, 1073741824
  %and23 = and i64 %add22, -1073741824
  %sub = add i64 %and23, -1
  %cmp = icmp ult i64 %sub, %sub25
  %cond = select i1 %cmp, i64 %and23, i64 %and21
  call fastcc void @alloc_init_pud(%struct.pgd_t* noundef %pgdp.0, i64 noundef %addr.0, i64 noundef %cond, i64 noundef %phys.addr.0, i64 %prot.coerce, i64 (i32)* noundef %pgtable_alloc, i32 noundef %flags) #13
  %sub28 = sub i64 %phys.addr.0, %addr.0
  %add29 = add i64 %sub28, %cond
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgdp.0, i64 1
  %cmp30.not = icmp eq i64 %cond, %and21
  br i1 %cmp30.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @pgd_pgtable_alloc(i32 noundef %shift) #0 {
entry:
  %call = call i64 @__pgd_pgtable_alloc(i32 noundef %shift) #13
  switch i32 %shift, label %if.end43 [
    i32 12, label %do.body
    i32 21, label %do.body16
  ]

do.body:                                          ; preds = %entry
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %shr1 = lshr i64 %call, 12
  %add.ptr2 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr1
  call fastcc void @pgtable_pte_page_ctor(%struct.page* noundef %add.ptr2) #13
  br label %if.end43

do.body16:                                        ; preds = %entry
  %1 = load i64, i64* @memstart_addr, align 8
  %shr17 = ashr i64 %1, 12
  %idx.neg18 = sub nsw i64 0, %shr17
  %add.ptr19 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg18
  %shr20 = lshr i64 %call, 12
  %add.ptr21 = getelementptr %struct.page, %struct.page* %add.ptr19, i64 %shr20
  call fastcc void @pgtable_pmd_page_ctor(%struct.page* noundef %add.ptr21) #13
  br label %if.end43

if.end43:                                         ; preds = %entry, %do.body16, %do.body
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @mark_linear_text_alias_ro() local_unnamed_addr #3 section ".init.text" {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([0 x i8]* @_stext to i64), %0
  %1 = load i64, i64* @memstart_addr, align 8
  %sub6 = sub i64 %sub, %1
  %or = or i64 %sub6, -549755813888
  %2 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool.not = icmp eq i8 %2, 0
  %or12 = select i1 %tobool.not, i64 27021597764224899, i64 27021597764226947
  call fastcc void @update_mapping_prot(i64 noundef %sub, i64 noundef %or, i64 noundef sub (i64 ptrtoint ([0 x i8]* @__init_begin to i64), i64 ptrtoint ([0 x i8]* @_stext to i64)), i64 %or12) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_mapping_prot(i64 noundef %phys, i64 noundef %virt, i64 noundef %size, i64 %prot.coerce) unnamed_addr #0 {
entry:
  %phys.addr = alloca i64, align 8
  store i64 %phys, i64* %phys.addr, align 8
  %0 = and i64 %virt, -268435456
  %1 = icmp eq i64 %0, -274877906944
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i64* noundef nonnull %phys.addr, i64 noundef %virt) #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  call fastcc void @__create_pgd_mapping(%struct.pgd_t* noundef %2, i64 noundef %phys, i64 noundef %virt, i64 noundef %size, i64 %prot.coerce, i64 (i32)* noundef null, i32 noundef 2) #13
  %add = add i64 %size, %virt
  call fastcc void @flush_tlb_kernel_range(i64 noundef %virt, i64 noundef %add) #13
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @enable_crash_mem_map(i8* nocapture noundef readnone %arg) #4 section ".init.text" {
entry:
  store i1 true, i1* @crash_mem_map, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mark_rodata_ro() local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([0 x i8]* @__start_rodata to i64), %0
  %1 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool.not = icmp eq i8 %1, 0
  %or5 = select i1 %tobool.not, i64 27021597764224899, i64 27021597764226947
  call fastcc void @update_mapping_prot(i64 noundef %sub, i64 noundef ptrtoint ([0 x i8]* @__start_rodata to i64), i64 noundef sub (i64 ptrtoint ([0 x i8]* @__init_begin to i64), i64 ptrtoint ([0 x i8]* @__start_rodata to i64)), i64 %or5) #13
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @parse_rodata(i8* noundef %arg) #3 section ".init.text" {
entry:
  %call = call fastcc i32 @strtobool(i8* noundef %arg) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  store i8 1, i8* @rodata_enabled, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.end4
  %.sink = phi i8 [ 1, %if.end4 ], [ 0, %entry ]
  store i8 %.sink, i8* @rodata_full, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ -22, %if.end ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @map_entry_trampoline() #3 section ".init.text" {
entry:
  %0 = load i8, i8* @rodata_enabled, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  %prot.sroa.0.0 = select i1 %tobool.not, i64 20266198323169027, i64 18014398509483907
  %1 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([0 x i8]* @__entry_tramp_text_start to i64), %1
  %call = call i8* @memset(i8* noundef bitcast ([512 x %struct.pgd_t]* @tramp_pg_dir to i8*), i32 noundef 0, i64 noundef 4096) #12
  call fastcc void @__create_pgd_mapping(%struct.pgd_t* noundef getelementptr inbounds ([512 x %struct.pgd_t], [512 x %struct.pgd_t]* @tramp_pg_dir, i64 0, i64 0), i64 noundef %sub, i64 noundef -8627699712, i64 noundef 4096, i64 %prot.sroa.0.0, i64 (i32)* noundef nonnull @__pgd_pgtable_alloc, i32 noundef 0) #13
  call void @__set_fixmap(i32 noundef 1028, i64 noundef %sub, i64 %prot.sroa.0.0) #13
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @paging_init() local_unnamed_addr #3 section ".init.text" {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @swapper_pg_dir to i64), %0
  %1 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool.not = icmp eq i8 %1, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  call void @__set_fixmap(i32 noundef 1480, i64 noundef %sub, i64 %or3) #13
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub8 = sub i64 ptrtoint ([512 x %struct.pgd_t]* @swapper_pg_dir to i64), %2
  %and = and i64 %sub8, 4095
  %add9 = or i64 %and, -8629551104
  %3 = inttoptr i64 %add9 to %struct.pgd_t*
  call fastcc void @map_kernel(%struct.pgd_t* noundef nonnull %3) #16
  call fastcc void @map_mem(%struct.pgd_t* noundef nonnull %3) #16
  call void @__set_fixmap(i32 noundef 1480, i64 noundef 0, i64 0) #13
  %4 = load i64, i64* @kimage_voffset, align 8
  %5 = load i64, i64* @memstart_addr, align 8
  %6 = add i64 %4, %5
  %sub19 = sub i64 ptrtoint ([512 x %struct.pgd_t]* @swapper_pg_dir to i64), %6
  %or20 = or i64 %sub19, -549755813888
  %7 = inttoptr i64 %or20 to %struct.pgd_t*
  call fastcc void @cpu_replace_ttbr1(%struct.pgd_t* noundef nonnull %7) #13
  store %struct.pgd_t* getelementptr inbounds ([512 x %struct.pgd_t], [512 x %struct.pgd_t]* @swapper_pg_dir, i64 0, i64 0), %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %8 = load i64, i64* @kimage_voffset, align 8
  %sub24 = sub i64 ptrtoint ([512 x %struct.pgd_t]* @init_pg_dir to i64), %8
  %call34 = call i32 @memblock_free(i64 noundef %sub24, i64 noundef sub (i64 ptrtoint ([0 x %struct.pgd_t]* @init_pg_end to i64), i64 ptrtoint ([512 x %struct.pgd_t]* @init_pg_dir to i64))) #12
  call void @memblock_allow_resize() #12
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @map_kernel(%struct.pgd_t* noundef %pgdp) unnamed_addr #3 section ".init.text" {
entry:
  %.compoundliteral55.sroa.0 = alloca i64, align 8
  %0 = load i8, i8* @rodata_enabled, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  %1 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool8.not = icmp eq i8 %1, 0
  %or6 = select i1 %tobool8.not, i64 18014398509483907, i64 18014398509485955
  %or13 = select i1 %tobool8.not, i64 20266198323169027, i64 20266198323171075
  %text_prot.sroa.0.0 = select i1 %tobool.not, i64 %or13, i64 %or6
  call fastcc void @map_kernel_segment(%struct.pgd_t* noundef %pgdp, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @_stext, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @_etext, i64 0, i64 0), i64 %text_prot.sroa.0.0, %struct.vm_struct* noundef nonnull @map_kernel.vmlinux_text, i32 noundef 0, i64 noundef 64) #16
  %2 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool22.not = icmp eq i8 %2, 0
  %or27 = select i1 %tobool22.not, i64 29273397577910019, i64 29273397577912067
  call fastcc void @map_kernel_segment(%struct.pgd_t* noundef %pgdp, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__start_rodata, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__inittext_begin, i64 0, i64 0), i64 %or27, %struct.vm_struct* noundef nonnull @map_kernel.vmlinux_rodata, i32 noundef 2, i64 noundef 64) #16
  call fastcc void @map_kernel_segment(%struct.pgd_t* noundef %pgdp, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__inittext_begin, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__inittext_end, i64 0, i64 0), i64 %text_prot.sroa.0.0, %struct.vm_struct* noundef nonnull @map_kernel.vmlinux_inittext, i32 noundef 0, i64 noundef 64) #16
  %3 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool33.not = icmp eq i8 %3, 0
  %or38 = select i1 %tobool33.not, i64 29273397577910019, i64 29273397577912067
  call fastcc void @map_kernel_segment(%struct.pgd_t* noundef %pgdp, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__initdata_begin, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__initdata_end, i64 0, i64 0), i64 %or38, %struct.vm_struct* noundef nonnull @map_kernel.vmlinux_initdata, i32 noundef 0, i64 noundef 64) #16
  %4 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool43.not = icmp eq i8 %4, 0
  %or48 = select i1 %tobool43.not, i64 29273397577910019, i64 29273397577912067
  call fastcc void @map_kernel_segment(%struct.pgd_t* noundef %pgdp, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @_data, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @_end, i64 0, i64 0), i64 %or48, %struct.vm_struct* noundef nonnull @map_kernel.vmlinux_data, i32 noundef 0, i64 noundef 0) #16
  %call51 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %pgdp, i64 noundef -8627703808) #13
  %pgd = getelementptr inbounds %struct.pgd_t, %struct.pgd_t* %call51, i64 0, i32 0
  %5 = load volatile i64, i64* %pgd, align 8
  %tobool52.not = icmp eq i64 %5, 0
  br i1 %tobool52.not, label %if.then53, label %do.body64

if.then53:                                        ; preds = %entry
  %6 = bitcast %struct.pgd_t* %call51 to %struct.pud_t*
  %7 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call60 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %7, i64 noundef -8627703808) #13
  %.compoundliteral55.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pgd_t, %struct.pgd_t* %call60, i64 0, i32 0
  %.compoundliteral55.sroa.0.0.copyload = load volatile i64, i64* %.compoundliteral55.sroa.0.0..sroa_idx, align 8
  store volatile i64 %.compoundliteral55.sroa.0.0.copyload, i64* %.compoundliteral55.sroa.0, align 8
  call fastcc void @set_pud(%struct.pud_t* noundef %6, i64 %.compoundliteral55.sroa.0.0.copyload) #13
  ret void

do.body64:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 723; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  unreachable
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @map_mem(%struct.pgd_t* noundef %pgdp) unnamed_addr #3 section ".init.text" {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i64, align 8
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([0 x i8]* @_stext to i64), %0
  %sub4 = sub i64 ptrtoint ([0 x i8]* @__init_begin to i64), %0
  %1 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %start, align 8, !annotation !14
  %2 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store i64 0, i64* %end, align 8, !annotation !14
  %3 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  %call = call i1 @can_set_direct_map() #12
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %.b51 = load i1, i1* @crash_mem_map, align 1
  br i1 %.b51, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %flags.0 = phi i32 [ 7, %if.then ], [ 4, %lor.lhs.false ]
  %sub6 = sub i64 %sub4, %sub
  %call7 = call i32 @memblock_mark_nomap(i64 noundef %sub, i64 noundef %sub6) #12
  store i64 0, i64* %i, align 8
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef -1, i32 noundef 1, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), %struct.memblock_type* noundef null, i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef null) #12
  %4 = load i64, i64* %i, align 8
  %cmp.not52 = icmp eq i64 %4, -1
  br i1 %cmp.not52, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %if.end12
  %5 = load i64, i64* %start, align 8
  %6 = load i64, i64* %end, align 8
  %cmp9.not = icmp ult i64 %5, %6
  br i1 %cmp9.not, label %if.end12, label %for.end

if.end12:                                         ; preds = %for.body
  %7 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool15.not = icmp eq i8 %7, 0
  %or23 = select i1 %tobool15.not, i64 29273397577910023, i64 29273397577912071
  call fastcc void @__map_memblock(%struct.pgd_t* noundef %pgdp, i64 noundef %5, i64 noundef %6, i64 %or23, i32 noundef %flags.0) #16
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef -1, i32 noundef 1, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), %struct.memblock_type* noundef null, i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef null) #12
  %8 = load i64, i64* %i, align 8
  %cmp.not = icmp eq i64 %8, -1
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end12, %for.body, %if.end
  %9 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool26.not = icmp eq i8 %9, 0
  %or32 = select i1 %tobool26.not, i64 29273397577910019, i64 29273397577912067
  call fastcc void @__map_memblock(%struct.pgd_t* noundef %pgdp, i64 noundef %sub, i64 noundef %sub4, i64 %or32, i32 noundef 2) #16
  %call36 = call i32 @memblock_clear_nomap(i64 noundef %sub, i64 noundef %sub6) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_replace_ttbr1(%struct.pgd_t* noundef %pgdp) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pgd_t* %pgdp to i8*
  %call = call fastcc i64 @virt_to_phys(i8* noundef %0) #13
  %1 = load i64, i64* @kimage_voffset, align 8
  %sub25 = sub i64 ptrtoint (void (i64)* @idmap_cpu_replace_ttbr1 to i64), %1
  %2 = inttoptr i64 %sub25 to void (i64)*
  call fastcc void @cpu_install_idmap() #13
  call void %2(i64 noundef %call) #12
  call fastcc void @cpu_uninstall_idmap() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_free(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_allow_resize() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kern_addr_valid(i64 noundef %addr) local_unnamed_addr #0 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  %pmd.sroa.0 = alloca i64, align 8
  %pte.sroa.0 = alloca i64, align 8
  %agg.tmp.sroa.0 = alloca i64, align 8
  %agg.tmp5.sroa.0 = alloca i64, align 8
  %pud.sroa.0.0.sroa_cast116 = bitcast i64* %pud.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast116)
  %pmd.sroa.0.0.sroa_cast114 = bitcast i64* %pmd.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast114)
  %pte.sroa.0.0.sroa_cast112 = bitcast i64* %pte.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast112)
  %cmp.not = icmp ugt i64 %addr, -549755813889
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %addr) #13
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pgd_t, %struct.pgd_t* %call, i64 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %call4 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call) #13
  %agg.tmp5.sroa.0.0..sroa_idx = getelementptr inbounds %struct.p4d_t, %struct.p4d_t* %call4, i64 0, i32 0, i32 0
  %agg.tmp5.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp5.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp5.sroa.0.0.copyload, i64* %agg.tmp5.sroa.0, align 8
  %call15 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %call4) #13
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call15, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pud.sroa.0.0.copyload, i64* %pud.sroa.0, align 8
  %tobool20.not = icmp eq i64 %pud.sroa.0.0.copyload, 0
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end
  %and = and i64 %pud.sroa.0.0.copyload, 3
  %cmp26 = icmp eq i64 %and, 1
  br i1 %cmp26, label %cleanup.sink.split, label %if.end38

if.end38:                                         ; preds = %if.end22
  %call39 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %call15, i64 noundef %addr) #13
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call39, i64 0, i32 0
  %pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmd.sroa.0.0.copyload, i64* %pmd.sroa.0, align 8
  %tobool44.not = icmp eq i64 %pmd.sroa.0.0.copyload, 0
  br i1 %tobool44.not, label %cleanup, label %if.end46

if.end46:                                         ; preds = %if.end38
  %and48 = and i64 %pmd.sroa.0.0.copyload, 3
  %cmp49 = icmp eq i64 %and48, 1
  br i1 %cmp49, label %cleanup.sink.split, label %if.end60

if.end60:                                         ; preds = %if.end46
  %call61 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef nonnull %call39, i64 noundef %addr) #13
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call61, i64 0, i32 0
  %pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pte.sroa.0.0.copyload, i64* %pte.sroa.0, align 8
  %tobool66.not = icmp eq i64 %pte.sroa.0.0.copyload, 0
  br i1 %tobool66.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end60, %if.end46, %if.end22
  %pte.sroa.0.0.copyload.sink = phi i64 [ %pud.sroa.0.0.copyload, %if.end22 ], [ %pmd.sroa.0.0.copyload, %if.end46 ], [ %pte.sroa.0.0.copyload, %if.end60 ]
  %.sink = phi i64 [ 68719214592, %if.end22 ], [ 68719476224, %if.end46 ], [ 68719476735, %if.end60 ]
  %and70 = lshr i64 %pte.sroa.0.0.copyload.sink, 12
  %shr71 = and i64 %and70, %.sink
  %call72 = call i32 @pfn_valid(i64 noundef %shr71) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end60, %if.end38, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end38 ], [ 0, %if.end60 ], [ %call72, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast112)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast114)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast116)
  ret i32 %retval.0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #6 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #13
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #13
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #6 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #13
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #13
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @vmemmap_populate(i64 noundef %start, i64 noundef %end, i32 noundef %node, %struct.vmem_altmap* noundef %altmap) local_unnamed_addr #3 section ".meminit.text" {
entry:
  %agg.tmp.sroa.0 = alloca i64, align 8
  %cmp = icmp ult i64 %start, -8589934592
  %cmp1 = icmp ugt i64 %end, -4294967296
  %0 = or i1 %cmp, %cmp1
  br i1 %0, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 1135; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sub16 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.cond62, %if.end
  %addr.0 = phi i64 [ %start, %if.end ], [ %cond, %do.cond62 ]
  %add = add i64 %addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp17 = icmp ult i64 %sub, %sub16
  %cond = select i1 %cmp17, i64 %and, i64 %end
  %call = call %struct.pgd_t* @vmemmap_pgd_populate(i64 noundef %addr.0, i32 noundef %node) #12
  %tobool19.not = icmp eq %struct.pgd_t* %call, null
  br i1 %tobool19.not, label %cleanup66, label %if.end21

if.end21:                                         ; preds = %do.body
  %call22 = call %struct.p4d_t* @vmemmap_p4d_populate(%struct.pgd_t* noundef nonnull %call, i64 noundef %addr.0, i32 noundef %node) #12
  %tobool23.not = icmp eq %struct.p4d_t* %call22, null
  br i1 %tobool23.not, label %cleanup66, label %if.end25

if.end25:                                         ; preds = %if.end21
  %call26 = call %struct.pud_t* @vmemmap_pud_populate(%struct.p4d_t* noundef nonnull %call22, i64 noundef %addr.0, i32 noundef %node) #12
  %tobool27.not = icmp eq %struct.pud_t* %call26, null
  br i1 %tobool27.not, label %cleanup66, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef nonnull %call26, i64 noundef %addr.0) #13
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call30, i64 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %tobool32.not = icmp eq i64 %agg.tmp.sroa.0.0.copyload, 0
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end29
  %call34 = call i8* @vmemmap_alloc_block_buf(i64 noundef 2097152, i32 noundef %node, %struct.vmem_altmap* noundef %altmap) #12
  %tobool35.not = icmp eq i8* %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.then33
  %call37 = call i32 @vmemmap_populate_basepages(i64 noundef %addr.0, i64 noundef %cond, i32 noundef %node, %struct.vmem_altmap* noundef %altmap) #12
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.cond62, label %cleanup66

if.end41:                                         ; preds = %if.then33
  %1 = ptrtoint i8* %call34 to i64
  %sub43 = add i64 %1, 549755813888
  %cmp44 = icmp ult i64 %sub43, 274877906944
  %2 = load i64, i64* @memstart_addr, align 8
  %add49 = add i64 %2, %sub43
  %3 = load i64, i64* @kimage_voffset, align 8
  %sub51 = sub i64 %1, %3
  %cond53 = select i1 %cmp44, i64 %add49, i64 %sub51
  %4 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool54.not = icmp eq i8 %4, 0
  %or58 = select i1 %tobool54.not, i64 27021597764224769, i64 27021597764226817
  %call60 = call i32 @pmd_set_huge(%struct.pmd_t* noundef nonnull %call30, i64 noundef %cond53, i64 %or58) #13
  br label %do.cond62

if.else:                                          ; preds = %if.end29
  %5 = bitcast %struct.pmd_t* %call30 to %struct.pte_t*
  call void @vmemmap_verify(%struct.pte_t* noundef nonnull %5, i32 noundef %node, i64 noundef %addr.0, i64 noundef %cond) #12
  br label %do.cond62

do.cond62:                                        ; preds = %if.then36, %if.end41, %if.else
  %cmp63.not = icmp eq i64 %cond, %end
  br i1 %cmp63.not, label %cleanup66, label %do.body

cleanup66:                                        ; preds = %if.then36, %do.cond62, %if.end25, %if.end21, %do.body
  %retval.3 = phi i32 [ -12, %do.body ], [ -12, %if.end21 ], [ -12, %if.end25 ], [ 0, %do.cond62 ], [ -12, %if.then36 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pgd_t* @vmemmap_pgd_populate(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.p4d_t* @vmemmap_p4d_populate(%struct.pgd_t* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pud_t* @vmemmap_pud_populate(%struct.p4d_t* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @vmemmap_alloc_block_buf(i64 noundef, i32 noundef, %struct.vmem_altmap* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmemmap_populate_basepages(i64 noundef, i64 noundef, i32 noundef, %struct.vmem_altmap* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pmd_set_huge(%struct.pmd_t* noundef %pmdp, i64 noundef %phys, i64 %prot.coerce) local_unnamed_addr #0 {
entry:
  %shr = and i64 %phys, -4096
  %call = call fastcc i64 @mk_pmd_sect_prot(i64 %prot.coerce) #13
  %or = or i64 %call, %shr
  %pmd3 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %0 = load volatile i64, i64* %pmd3, align 8
  %call5 = call fastcc i1 @pgattr_change_is_safe(i64 noundef %0, i64 noundef %or) #13
  br i1 %call5, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %or) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmemmap_verify(%struct.pte_t* noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @early_fixmap_init() local_unnamed_addr #3 section ".init.text" {
entry:
  %p4d.sroa.0 = alloca i64, align 8
  %agg.tmp.sroa.0 = alloca i64, align 8
  %p4d.sroa.0.0.sroa_cast98 = bitcast i64* %p4d.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast98)
  %0 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef -8627703808) #13
  %call1 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call) #13
  %p4d.sroa.0.0..sroa_idx = getelementptr inbounds %struct.p4d_t, %struct.p4d_t* %call1, i64 0, i32 0, i32 0
  %p4d.sroa.0.0.copyload = load volatile i64, i64* %p4d.sroa.0.0..sroa_idx, align 8
  store volatile i64 %p4d.sroa.0.0.copyload, i64* %p4d.sroa.0, align 8
  %call4 = call fastcc %struct.pud_t* @fixmap_pud(i64 noundef -8627703808) #13
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call4, i64 0, i32 0, i32 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %tobool10.not = icmp eq i64 %agg.tmp.sroa.0.0.copyload, 0
  br i1 %tobool10.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %entry
  %1 = load i64, i64* @kimage_voffset, align 8
  %sub15 = sub i64 ptrtoint ([512 x %struct.pmd_t]* @bm_pmd to i64), %1
  call fastcc void @__pud_populate(%struct.pud_t* noundef %call4, i64 noundef %sub15, i64 noundef 3) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %entry
  %call17 = call fastcc %struct.pmd_t* @fixmap_pmd(i64 noundef -8627703808) #13
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub21 = sub i64 ptrtoint ([512 x %struct.pte_t]* @bm_pte to i64), %2
  call fastcc void @__pmd_populate(%struct.pmd_t* noundef %call17, i64 noundef %sub21, i64 noundef 3) #13
  %call26 = call fastcc %struct.pmd_t* @fixmap_pmd(i64 noundef -8629534720) #13
  %cmp.not = icmp eq %struct.pmd_t* %call17, %call26
  br i1 %cmp.not, label %lor.lhs.false, label %if.then34

lor.lhs.false:                                    ; preds = %if.end16
  %call28 = call fastcc %struct.pmd_t* @fixmap_pmd(i64 noundef -8627703808) #13
  %cmp29.not = icmp eq %struct.pmd_t* %call17, %call28
  br i1 %cmp29.not, label %if.end75, label %if.then34

if.then34:                                        ; preds = %if.end16, %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 1253; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  %call49 = call fastcc %struct.pmd_t* @fixmap_pmd(i64 noundef -8629534720) #13
  %call51 = call fastcc %struct.pmd_t* @fixmap_pmd(i64 noundef -8627703808) #13
  %call52 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.pmd_t* noundef %call17, %struct.pmd_t* noundef %call49, %struct.pmd_t* noundef %call51) #15
  %call58 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 noundef -8629534720) #15
  %call64 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 noundef -8627703808) #15
  %call69 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1029) #15
  %call74 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 1476) #15
  br label %if.end75

if.end75:                                         ; preds = %if.then34, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast98)
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pud_t* @fixmap_pud(i64 noundef %addr) unnamed_addr #7 {
entry:
  %p4d.sroa.0 = alloca i64, align 8
  %0 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %addr) #13
  %call1 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call) #13
  %p4d.sroa.0.0.sroa_cast28 = bitcast i64* %p4d.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast28)
  %p4d.sroa.0.0..sroa_idx = getelementptr inbounds %struct.p4d_t, %struct.p4d_t* %call1, i64 0, i32 0, i32 0
  %p4d.sroa.0.0.copyload = load volatile i64, i64* %p4d.sroa.0.0..sroa_idx, align 8
  store volatile i64 %p4d.sroa.0.0.copyload, i64* %p4d.sroa.0, align 8
  %1 = bitcast %struct.p4d_t* %call1 to %struct.pud_t*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast28)
  ret %struct.pud_t* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pud_populate(%struct.pud_t* noundef %pudp, i64 noundef %pmdp, i64 noundef %prot) unnamed_addr #0 {
entry:
  %or = or i64 %prot, %pmdp
  call fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %or) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pmd_t* @fixmap_pmd(i64 noundef %addr) unnamed_addr #0 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  %agg.tmp.sroa.0 = alloca i64, align 8
  %call = call fastcc %struct.pud_t* @fixmap_pud(i64 noundef %addr) #13
  %pud.sroa.0.0.sroa_cast33 = bitcast i64* %pud.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast33)
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pud.sroa.0.0.copyload, i64* %pud.sroa.0, align 8
  %and = and i64 %pud.sroa.0.0.copyload, 3
  %cmp.not = icmp eq i64 %and, 3
  br i1 %cmp.not, label %do.end19, label %do.body9, !prof !11

do.body9:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 1198; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !17
  unreachable

do.end19:                                         ; preds = %entry
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %call22 = call fastcc i64 @pud_page_paddr(i64 %agg.tmp.sroa.0.0.copyload) #13
  %call23 = call fastcc i64 @pmd_index(i64 noundef %addr) #13
  %mul = shl i64 %call23, 3
  %add = add i64 %mul, %call22
  %0 = load i64, i64* @kimage_voffset, align 8
  %add24 = add i64 %add, %0
  %1 = inttoptr i64 %add24 to %struct.pmd_t*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast33)
  ret %struct.pmd_t* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %ptep, i64 noundef %prot) unnamed_addr #0 {
entry:
  %or = or i64 %prot, %ptep
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %or) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.pte_t* @fixmap_pte(i64 noundef %addr) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @pte_index(i64 noundef %addr) #13
  %arrayidx = getelementptr [512 x %struct.pte_t], [512 x %struct.pte_t]* @bm_pte, i64 0, i64 %call
  ret %struct.pte_t* %arrayidx
}

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
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !18
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_kernel_range(i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %sub = sub i64 %end, %start
  %cmp = icmp ugt i64 %sub, 2097152
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @flush_tlb_all() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %start, 12
  %and = and i64 %shr, 17592186044415
  %shr2 = lshr i64 %end, 12
  %and3 = and i64 %shr2, 17592186044415
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !20
  %cmp620 = icmp ult i64 %and, %and3
  br i1 %cmp620, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %addr.021 = phi i64 [ %add, %for.body ], [ %and, %if.end ]
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vaale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vaale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %addr.021) #14, !srcloc !21
  %add = add nuw nsw i64 %addr.021, 1
  %exitcond.not = icmp eq i64 %add, %and3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #14, !srcloc !22
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @fixmap_remap_fdt(i64 noundef %dt_phys, i32* nocapture noundef writeonly %size, i64 %prot.coerce) local_unnamed_addr #3 section ".init.text" {
entry:
  %tobool.not = icmp ne i64 %dt_phys, 0
  %rem = and i64 %dt_phys, 7
  %tobool1.not = icmp eq i64 %rem, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end7, label %cleanup

do.end7:                                          ; preds = %entry
  %0 = trunc i64 %dt_phys to i32
  %conv = and i32 %0, 2097151
  %1 = zext i32 %conv to i64
  %add.ptr = getelementptr i8, i8* inttoptr (i64 -8627683328 to i8*), i64 %1
  %and = and i64 %dt_phys, -2097152
  call fastcc void @create_mapping_noalloc(i64 noundef %and, i64 noundef 2097152, i64 %prot.coerce) #16
  %magic = bitcast i8* %add.ptr to i32*
  %call = call fastcc i32 @fdt32_ld(i32* noundef %magic) #13
  %cmp.not = icmp eq i32 %call, -804389139
  br i1 %cmp.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %do.end7
  %totalsize = getelementptr inbounds i8, i8* %add.ptr, i64 4
  %2 = bitcast i8* %totalsize to i32*
  %call13 = call fastcc i32 @fdt32_ld(i32* noundef %2) #13
  store i32 %call13, i32* %size, align 4
  %cmp14 = icmp sgt i32 %call13, 2097152
  br i1 %cmp14, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end12
  %add = add nsw i32 %call13, %conv
  %cmp19 = icmp ugt i32 %add, 2097152
  br i1 %cmp19, label %if.then21, label %cleanup

if.then21:                                        ; preds = %if.end17
  %sub = add i32 %add, -1
  %or = or i32 %sub, 2097151
  %add24 = add i32 %or, 1
  %conv25 = sext i32 %add24 to i64
  call fastcc void @create_mapping_noalloc(i64 noundef %and, i64 noundef %conv25, i64 %prot.coerce) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then21, %if.end12, %do.end7, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %do.end7 ], [ null, %if.end12 ], [ %add.ptr, %if.then21 ], [ %add.ptr, %if.end17 ]
  ret i8* %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @create_mapping_noalloc(i64 noundef %phys, i64 noundef %size, i64 %prot.coerce) unnamed_addr #3 section ".init.text" {
entry:
  %0 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  call fastcc void @__create_pgd_mapping(%struct.pgd_t* noundef %0, i64 noundef %phys, i64 noundef -8627683328, i64 noundef %size, i64 %prot.coerce, i64 (i32)* noundef null, i32 noundef 2) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @fdt32_ld(i32* nocapture noundef readonly %p) unnamed_addr #6 {
entry:
  %0 = bitcast i32* %p to i8*
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr i8, i8* %0, i64 1
  %2 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %2 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr i8, i8* %0, i64 2
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr i8, i8* %0, i64 3
  %4 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %4 to i32
  %or10 = or i32 %or7, %conv9
  ret i32 %or10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pud_set_huge(%struct.pud_t* noundef %pudp, i64 noundef %phys, i64 %prot.coerce) local_unnamed_addr #0 {
entry:
  %shr = and i64 %phys, -4096
  %call = call fastcc i64 @mk_pud_sect_prot(i64 %prot.coerce) #13
  %or = or i64 %call, %shr
  %pgd6 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %0 = load volatile i64, i64* %pgd6, align 8
  %call10 = call fastcc i1 @pgattr_change_is_safe(i64 noundef %0, i64 noundef %or) #13
  br i1 %call10, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %or) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @mk_pud_sect_prot(i64 %prot.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %prot.coerce, -4
  %or = or i64 %and, 1
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pgattr_change_is_safe(i64 noundef %old, i64 noundef %new) unnamed_addr #5 {
entry:
  %cmp = icmp eq i64 %old, 0
  %cmp1 = icmp eq i64 %new, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %or = or i64 %new, %old
  %and = and i64 %or, 4503599627370496
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %neg = xor i64 %new, -1
  %and4 = and i64 %old, 2048
  %and5 = and i64 %and4, %neg
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end3
  %and9 = and i64 %old, 28
  switch i64 %and9, label %if.end21 [
    i64 0, label %land.lhs.true
    i64 4, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %if.end8, %if.end8
  %and14 = and i64 %new, 24
  %0 = icmp eq i64 %and14, 0
  %1 = select i1 %0, i64 -11258999068428445, i64 -11258999068428417
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true, %if.end8
  %mask.0 = phi i64 [ -11258999068428417, %if.end8 ], [ %1, %land.lhs.true ]
  %xor = xor i64 %new, %old
  %and23 = and i64 %mask.0, %xor
  %cmp24 = icmp eq i64 %and23, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end21
  %retval.0 = phi i1 [ %cmp24, %if.end21 ], [ true, %entry ], [ false, %if.end ], [ false, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %pud.coerce) unnamed_addr #0 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  store i64 %pud.coerce, i64* %pud.sroa.0, align 8
  %0 = bitcast %struct.pud_t* %pudp to i8*
  %call = call fastcc i1 @in_swapper_pgdir(i8* noundef %0) #13
  br i1 %call, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %1 = getelementptr %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0
  call void @set_swapper_pgd(%struct.pgd_t* noundef %1, i64 %pud.coerce) #13
  br label %if.end16

do.body7:                                         ; preds = %entry
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0, align 8
  store volatile i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload, i64* %pud.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body7
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !24
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !25
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.then15, %do.body7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @mk_pmd_sect_prot(i64 %prot.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %prot.coerce, -4
  %or = or i64 %and, 1
  ret i64 %or
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
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !26
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pud_clear_huge(%struct.pud_t* noundef %pudp) local_unnamed_addr #0 {
entry:
  %agg.tmp.sroa.0 = alloca i64, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %and = and i64 %agg.tmp.sroa.0.0.copyload, 3
  %cmp = icmp eq i64 %and, 1
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @pud_clear(%struct.pud_t* noundef %pudp) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pud_clear(%struct.pud_t* noundef %pudp) unnamed_addr #0 {
entry:
  call fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pmd_clear_huge(%struct.pmd_t* noundef %pmdp) local_unnamed_addr #0 {
entry:
  %agg.tmp.sroa.0 = alloca i64, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %and = and i64 %agg.tmp.sroa.0.0.copyload, 3
  %cmp = icmp eq i64 %and, 1
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @pmd_clear(%struct.pmd_t* noundef %pmdp) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_clear(%struct.pmd_t* noundef %pmdp) unnamed_addr #0 {
entry:
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pmd_free_pte_page(%struct.pmd_t* noundef %pmdp, i64 noundef %addr) local_unnamed_addr #0 {
entry:
  %pmd.sroa.0 = alloca i64, align 8
  %pmd.sroa.0.0.sroa_cast11 = bitcast i64* %pmd.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast11)
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmd.sroa.0.0.copyload, i64* %pmd.sroa.0, align 8
  %and = and i64 %pmd.sroa.0.0.copyload, 3
  %cmp = icmp eq i64 %and, 3
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmdp, i64 noundef %addr) #13
  call fastcc void @pmd_clear(%struct.pmd_t* noundef %pmdp) #13
  call fastcc void @__flush_tlb_kernel_pgtable(i64 noundef %addr) #13
  call fastcc void @pte_free_kernel(%struct.pte_t* noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast11)
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__flush_tlb_kernel_pgtable(i64 noundef %kaddr) unnamed_addr #0 {
entry:
  %shr = lshr i64 %kaddr, 12
  %and = and i64 %shr, 17592186044415
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !28
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vaae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vaae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %and) #14, !srcloc !29
  call void asm sideeffect "dsb ish", "~{memory}"() #14, !srcloc !30
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pte_free_kernel(%struct.pte_t* noundef %pte) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.pte_t* %pte to i64
  call void @free_pages(i64 noundef %0, i32 noundef 0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pud_free_pmd_page(%struct.pud_t* noundef %pudp, i64 noundef %addr) local_unnamed_addr #0 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  %pud.sroa.0.0.sroa_cast29 = bitcast i64* %pud.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast29)
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pud.sroa.0.0.copyload, i64* %pud.sroa.0, align 8
  %and = and i64 %pud.sroa.0.0.copyload, 3
  %cmp = icmp eq i64 %and, 3
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pudp, i64 noundef %addr) #13
  %0 = add i64 %addr, 1071644672
  br label %do.body2

do.body2:                                         ; preds = %do.body2, %if.end
  %pmdp.0 = phi %struct.pmd_t* [ %call, %if.end ], [ %incdec.ptr, %do.body2 ]
  %next.0 = phi i64 [ %addr, %if.end ], [ %add5, %do.body2 ]
  %call3 = call i32 @pmd_free_pte_page(%struct.pmd_t* noundef %pmdp.0, i64 noundef %next.0) #13
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmdp.0, i64 1
  %add5 = add i64 %next.0, 2097152
  %cmp6.not = icmp eq i64 %next.0, %0
  br i1 %cmp6.not, label %do.end7, label %do.body2

do.end7:                                          ; preds = %do.body2
  call fastcc void @pud_clear(%struct.pud_t* noundef %pudp) #13
  call fastcc void @__flush_tlb_kernel_pgtable(i64 noundef %addr) #13
  call fastcc void @pmd_free(%struct.pmd_t* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast29)
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_free(%struct.pmd_t* noundef %pmd) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.pmd_t* %pmd to i64
  %and = and i64 %0, 4095
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/asm-generic/pgalloc.h\22; .popsection; .long 14472b - 14470b; .short 140; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !32
  unreachable

do.end6:                                          ; preds = %entry
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  call fastcc void @pgtable_pmd_page_dtor(%struct.page* noundef %2) #13
  call void @free_pages(i64 noundef %0, i32 noundef 0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  call fastcc void @do_raw_spin_lock() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @swapper_pgdir_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @swapper_pgdir_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @swapper_pgdir_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #14, !srcloc !34
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @swapper_pgdir_lock to i8*), i8 0) #14, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @alloc_init_pud(%struct.pgd_t* noundef %pgdp, i64 noundef %addr, i64 noundef %end, i64 noundef %phys, i64 %prot.coerce, i64 (i32)* noundef %pgtable_alloc, i32 noundef %flags) unnamed_addr #0 {
entry:
  %p4d.sroa.0 = alloca i64, align 8
  %old_pud.sroa.0 = alloca i64, align 8
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgdp) #13
  %p4d.sroa.0.0.sroa_cast176 = bitcast i64* %p4d.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast176)
  %p4d.sroa.0.0..sroa_idx = getelementptr inbounds %struct.p4d_t, %struct.p4d_t* %call, i64 0, i32 0, i32 0
  %p4d.sroa.0.0.copyload = load volatile i64, i64* %p4d.sroa.0.0..sroa_idx, align 8
  store volatile i64 %p4d.sroa.0.0.copyload, i64* %p4d.sroa.0, align 8
  %0 = bitcast %struct.p4d_t* %call to %struct.pud_t*
  %old_pud.sroa.0.0.sroa_cast174 = bitcast i64* %old_pud.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %old_pud.sroa.0.0.sroa_cast174)
  %old_pud.sroa.0.0.copyload = load volatile i64, i64* %p4d.sroa.0.0..sroa_idx, align 8
  store volatile i64 %old_pud.sroa.0.0.copyload, i64* %old_pud.sroa.0, align 8
  %call53 = call fastcc i1 @use_1G_block(i64 noundef %addr, i64 noundef %end, i64 noundef %phys) #13
  %1 = and i32 %flags, 1
  %cmp = icmp eq i32 %1, 0
  %or.cond = and i1 %cmp, %call53
  br i1 %or.cond, label %if.then58, label %if.else

if.then58:                                        ; preds = %entry
  %call60 = call i32 @pud_set_huge(%struct.pud_t* noundef %0, i64 noundef %phys, i64 %prot.coerce) #13
  %old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0. = load i64, i64* %old_pud.sroa.0, align 8
  %2 = load volatile i64, i64* %p4d.sroa.0.0..sroa_idx, align 8
  %call70 = call fastcc i1 @pgattr_change_is_safe(i64 noundef %old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0., i64 noundef %2) #13
  br i1 %call70, label %if.end126, label %do.body81, !prof !11

do.body81:                                        ; preds = %if.then58
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 349; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !37
  unreachable

if.else:                                          ; preds = %entry
  call fastcc void @alloc_init_cont_pmd(%struct.pud_t* noundef %0, i64 noundef %addr, i64 noundef %end, i64 noundef %phys, i64 %prot.coerce, i64 (i32)* noundef %pgtable_alloc, i32 noundef %flags) #13
  %old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0.131 = load i64, i64* %old_pud.sroa.0, align 8
  %cmp95.not = icmp eq i64 %old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0.131, 0
  br i1 %cmp95.not, label %if.end126, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %3 = load volatile i64, i64* %p4d.sroa.0.0..sroa_idx, align 8
  %cmp107.not = icmp eq i64 %old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0.old_pud.sroa.0.0.131, %3
  br i1 %cmp107.not, label %if.end126, label %do.body117, !prof !11

do.body117:                                       ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 355; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !38
  unreachable

if.end126:                                        ; preds = %if.else, %land.rhs, %if.then58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %old_pud.sroa.0.0.sroa_cast174)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast176)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @use_1G_block(i64 noundef %addr, i64 noundef %next, i64 noundef %phys) unnamed_addr #5 {
entry:
  %or = or i64 %next, %addr
  %or1 = or i64 %or, %phys
  %and = and i64 %or1, 1073741823
  %cmp.not = icmp eq i64 %and, 0
  ret i1 %cmp.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @alloc_init_cont_pmd(%struct.pud_t* noundef %pudp, i64 noundef %addr, i64 noundef %end, i64 noundef %phys, i64 %prot.coerce, i64 (i32)* noundef %pgtable_alloc, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  %pud.sroa.0.0.sroa_cast132 = bitcast i64* %pud.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast132)
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pud.sroa.0.0.copyload, i64* %pud.sroa.0, align 8
  %and = and i64 %pud.sroa.0.0.copyload, 3
  %cmp = icmp eq i64 %and, 1
  br i1 %cmp, label %do.body4, label %do.end11, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 266; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !39
  unreachable

do.end11:                                         ; preds = %entry
  %tobool15.not = icmp eq i64 %pud.sroa.0.0.copyload, 0
  br i1 %tobool15.not, label %if.then16, label %do.body47

if.then16:                                        ; preds = %do.end11
  %tobool23.not = icmp eq i64 (i32)* %pgtable_alloc, null
  br i1 %tobool23.not, label %do.body34, label %do.end42, !prof !8

do.body34:                                        ; preds = %if.then16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 273; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !40
  unreachable

do.end42:                                         ; preds = %if.then16
  %0 = and i32 %flags, 4
  %tobool19.not = icmp eq i32 %0, 0
  %spec.select = select i1 %tobool19.not, i64 1152921504606846979, i64 1729382256910270467
  %call = call i64 %pgtable_alloc(i32 noundef 21) #12, !callees !41
  call fastcc void @__pud_populate(%struct.pud_t* noundef %pudp, i64 noundef %call, i64 noundef %spec.select) #13
  %pud.sroa.0.0.copyload106 = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pud.sroa.0.0.copyload106, i64* %pud.sroa.0, align 8
  br label %do.body47

do.body47:                                        ; preds = %do.end11, %do.end42
  %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.107 = phi i64 [ %pud.sroa.0.0.copyload, %do.end11 ], [ %pud.sroa.0.0.copyload106, %do.end42 ]
  %and51 = and i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.107, 3
  %cmp52.not = icmp eq i64 %and51, 3
  br i1 %cmp52.not, label %do.body73.preheader, label %do.body64, !prof !11

do.body73.preheader:                              ; preds = %do.body47
  %sub75 = add i64 %end, -1
  %1 = and i32 %flags, 2
  %cmp85 = icmp eq i32 %1, 0
  %or89 = or i64 %prot.coerce, 4503599627370496
  br label %do.body73

do.body64:                                        ; preds = %do.body47
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 278; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !42
  unreachable

do.body73:                                        ; preds = %do.body73.preheader, %do.body73
  %phys.addr.0 = phi i64 [ %add93, %do.body73 ], [ %phys, %do.body73.preheader ]
  %addr.addr.0 = phi i64 [ %cond, %do.body73 ], [ %addr, %do.body73.preheader ]
  %add = add i64 %addr.addr.0, 33554432
  %and74 = and i64 %add, -33554432
  %sub = add i64 %and74, -1
  %cmp76 = icmp ult i64 %sub, %sub75
  %cond = select i1 %cmp76, i64 %and74, i64 %end
  %or78 = or i64 %addr.addr.0, %phys.addr.0
  %or79 = or i64 %or78, %cond
  %and80 = and i64 %or79, 33554431
  %cmp81 = icmp eq i64 %and80, 0
  %or.cond = and i1 %cmp85, %cmp81
  %__prot.sroa.0.1 = select i1 %or.cond, i64 %or89, i64 %prot.coerce
  call fastcc void @init_pmd(%struct.pud_t* noundef %pudp, i64 noundef %addr.addr.0, i64 noundef %cond, i64 noundef %phys.addr.0, i64 %__prot.sroa.0.1, i64 (i32)* noundef %pgtable_alloc, i32 noundef %flags) #13
  %sub92 = sub i64 %phys.addr.0, %addr.addr.0
  %add93 = add i64 %sub92, %cond
  %cmp95.not = icmp eq i64 %cond, %end
  br i1 %cmp95.not, label %do.end97, label %do.body73

do.end97:                                         ; preds = %do.body73
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast132)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_pmd(%struct.pud_t* noundef %pudp, i64 noundef %addr, i64 noundef %end, i64 noundef %phys, i64 %prot.coerce, i64 (i32)* noundef %pgtable_alloc, i32 noundef %flags) unnamed_addr #0 {
entry:
  %agg.tmp.sroa.0 = alloca i64, align 8
  %agg.tmp11.sroa.0 = alloca i64, align 8
  %old_pmd.sroa.0 = alloca i64, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %call = call fastcc i64 @pud_page_paddr(i64 %agg.tmp.sroa.0.0.copyload) #13
  %call4 = call fastcc i64 @pmd_index(i64 noundef %addr) #13
  %mul = shl i64 %call4, 3
  %add = add i64 %mul, %call
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  %or7 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  call void @__set_fixmap(i32 noundef 1478, i64 noundef %add, i64 %or7) #13
  %agg.tmp11.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp11.sroa.0.0.copyload, i64* %agg.tmp11.sroa.0, align 8
  %call18 = call fastcc i64 @pud_page_paddr(i64 %agg.tmp11.sroa.0.0.copyload) #13
  %add21 = add i64 %call18, %mul
  %and = and i64 %add21, 4095
  %add22 = or i64 %and, -8629542912
  %1 = inttoptr i64 %add22 to %struct.pmd_t*
  %sub30 = add i64 %end, -1
  %2 = and i32 %flags, 1
  %cmp37 = icmp eq i32 %2, 0
  %old_pmd.sroa.0.0.sroa_cast134 = bitcast i64* %old_pmd.sroa.0 to i8*
  br label %do.body23

do.body23:                                        ; preds = %if.end91, %entry
  %pmdp.0 = phi %struct.pmd_t* [ %1, %entry ], [ %incdec.ptr, %if.end91 ]
  %phys.addr.0 = phi i64 [ %phys, %entry ], [ %add93, %if.end91 ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %cond31, %if.end91 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %old_pmd.sroa.0.0.sroa_cast134)
  %old_pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp.0, i64 0, i32 0
  %old_pmd.sroa.0.0.copyload = load volatile i64, i64* %old_pmd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %old_pmd.sroa.0.0.copyload, i64* %old_pmd.sroa.0, align 8
  %add27 = add i64 %addr.addr.0, 2097152
  %and28 = and i64 %add27, -2097152
  %sub = add i64 %and28, -1
  %cmp = icmp ult i64 %sub, %sub30
  %cond31 = select i1 %cmp, i64 %and28, i64 %end
  %or32 = or i64 %addr.addr.0, %phys.addr.0
  %or33 = or i64 %or32, %cond31
  %and34 = and i64 %or33, 2097151
  %cmp35 = icmp eq i64 %and34, 0
  %or.cond = and i1 %cmp37, %cmp35
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %do.body23
  %call40 = call i32 @pmd_set_huge(%struct.pmd_t* noundef %pmdp.0, i64 noundef %phys.addr.0, i64 %prot.coerce) #13
  %old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0. = load i64, i64* %old_pmd.sroa.0, align 8
  %3 = load volatile i64, i64* %old_pmd.sroa.0.0..sroa_idx, align 8
  %call47 = call fastcc i1 @pgattr_change_is_safe(i64 noundef %old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0., i64 noundef %3) #13
  br i1 %call47, label %if.end91, label %do.body53, !prof !11

do.body53:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 241; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !43
  unreachable

if.else:                                          ; preds = %do.body23
  call fastcc void @alloc_init_cont_pte(%struct.pmd_t* noundef %pmdp.0, i64 noundef %addr.addr.0, i64 noundef %cond31, i64 noundef %phys.addr.0, i64 %prot.coerce, i64 (i32)* noundef %pgtable_alloc, i32 noundef %flags) #13
  %old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0.103 = load i64, i64* %old_pmd.sroa.0, align 8
  %cmp64.not = icmp eq i64 %old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0.103, 0
  br i1 %cmp64.not, label %if.end91, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %4 = load volatile i64, i64* %old_pmd.sroa.0.0..sroa_idx, align 8
  %cmp72.not = icmp eq i64 %old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0.old_pmd.sroa.0.0.103, %4
  br i1 %cmp72.not, label %if.end91, label %do.body82, !prof !11

do.body82:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 247; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !44
  unreachable

if.end91:                                         ; preds = %if.else, %land.rhs, %if.then
  %sub92 = sub i64 %phys.addr.0, %addr.addr.0
  %add93 = add i64 %sub92, %cond31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %old_pmd.sroa.0.0.sroa_cast134)
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmdp.0, i64 1
  %cmp95.not = icmp eq i64 %cond31, %end
  br i1 %cmp95.not, label %do.end97, label %do.body23

do.end97:                                         ; preds = %if.end91
  call void @__set_fixmap(i32 noundef 1478, i64 noundef 0, i64 0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #5 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @alloc_init_cont_pte(%struct.pmd_t* noundef %pmdp, i64 noundef %addr, i64 noundef %end, i64 noundef %phys, i64 %prot.coerce, i64 (i32)* noundef readonly %pgtable_alloc, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pmd.sroa.0 = alloca i64, align 8
  %pmd.sroa.0.0.sroa_cast126 = bitcast i64* %pmd.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast126)
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmd.sroa.0.0.copyload, i64* %pmd.sroa.0, align 8
  %and = and i64 %pmd.sroa.0.0.copyload, 3
  %cmp = icmp eq i64 %and, 1
  br i1 %cmp, label %do.body4, label %do.end11, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 188; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !45
  unreachable

do.end11:                                         ; preds = %entry
  %tobool13.not = icmp eq i64 %pmd.sroa.0.0.copyload, 0
  br i1 %tobool13.not, label %if.then14, label %do.body45

if.then14:                                        ; preds = %do.end11
  %tobool21.not = icmp eq i64 (i32)* %pgtable_alloc, null
  br i1 %tobool21.not, label %do.body32, label %do.end40, !prof !8

do.body32:                                        ; preds = %if.then14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 195; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !46
  unreachable

do.end40:                                         ; preds = %if.then14
  %0 = and i32 %flags, 4
  %tobool17.not = icmp eq i32 %0, 0
  %spec.select = select i1 %tobool17.not, i64 1152921504606846979, i64 1729382256910270467
  %call = call i64 %pgtable_alloc(i32 noundef 12) #12, !callees !41
  call fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %call, i64 noundef %spec.select) #13
  %pmd.sroa.0.0.copyload102 = load volatile i64, i64* %pmd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmd.sroa.0.0.copyload102, i64* %pmd.sroa.0, align 8
  br label %do.body45

do.body45:                                        ; preds = %do.end11, %do.end40
  %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.103 = phi i64 [ %pmd.sroa.0.0.copyload, %do.end11 ], [ %pmd.sroa.0.0.copyload102, %do.end40 ]
  %and47 = and i64 %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.103, 3
  %cmp48.not = icmp eq i64 %and47, 3
  br i1 %cmp48.not, label %do.body69.preheader, label %do.body60, !prof !11

do.body69.preheader:                              ; preds = %do.body45
  %sub71 = add i64 %end, -1
  %1 = and i32 %flags, 2
  %cmp81 = icmp eq i32 %1, 0
  %or85 = or i64 %prot.coerce, 4503599627370496
  br label %do.body69

do.body60:                                        ; preds = %do.body45
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 200; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !47
  unreachable

do.body69:                                        ; preds = %do.body69.preheader, %do.body69
  %phys.addr.0 = phi i64 [ %add89, %do.body69 ], [ %phys, %do.body69.preheader ]
  %addr.addr.0 = phi i64 [ %cond, %do.body69 ], [ %addr, %do.body69.preheader ]
  %add = add i64 %addr.addr.0, 65536
  %and70 = and i64 %add, -65536
  %sub = add i64 %and70, -1
  %cmp72 = icmp ult i64 %sub, %sub71
  %cond = select i1 %cmp72, i64 %and70, i64 %end
  %or74 = or i64 %addr.addr.0, %phys.addr.0
  %or75 = or i64 %or74, %cond
  %and76 = and i64 %or75, 65535
  %cmp77 = icmp eq i64 %and76, 0
  %or.cond = and i1 %cmp81, %cmp77
  %__prot.sroa.0.1 = select i1 %or.cond, i64 %or85, i64 %prot.coerce
  call fastcc void @init_pte(%struct.pmd_t* noundef %pmdp, i64 noundef %addr.addr.0, i64 noundef %cond, i64 noundef %phys.addr.0, i64 %__prot.sroa.0.1) #13
  %sub88 = sub i64 %phys.addr.0, %addr.addr.0
  %add89 = add i64 %sub88, %cond
  %cmp91.not = icmp eq i64 %cond, %end
  br i1 %cmp91.not, label %do.end93, label %do.body69

do.end93:                                         ; preds = %do.body69
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast126)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_pte(%struct.pmd_t* noundef %pmdp, i64 noundef %addr, i64 noundef %end, i64 noundef %phys, i64 %prot.coerce) unnamed_addr #0 {
entry:
  %agg.tmp.sroa.0 = alloca i64, align 8
  %agg.tmp9.sroa.0 = alloca i64, align 8
  %old_pte.sroa.0 = alloca i64, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %call = call fastcc i64 @pmd_page_paddr(i64 %agg.tmp.sroa.0.0.copyload) #13
  %call2 = call fastcc i64 @pte_index(i64 noundef %addr) #13
  %mul = shl i64 %call2, 3
  %add = add i64 %mul, %call
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  %or5 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  call void @__set_fixmap(i32 noundef 1477, i64 noundef %add, i64 %or5) #13
  %agg.tmp9.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp9.sroa.0.0.copyload, i64* %agg.tmp9.sroa.0, align 8
  %call14 = call fastcc i64 @pmd_page_paddr(i64 %agg.tmp9.sroa.0.0.copyload) #13
  %add17 = add i64 %call14, %mul
  %and = and i64 %add17, 4095
  %add18 = or i64 %and, -8629538816
  %1 = inttoptr i64 %add18 to %struct.pte_t*
  %old_pte.sroa.0.0.sroa_cast68 = bitcast i64* %old_pte.sroa.0 to i8*
  br label %do.body19

do.body19:                                        ; preds = %do.end45, %entry
  %ptep.0 = phi %struct.pte_t* [ %1, %entry ], [ %incdec.ptr, %do.end45 ]
  %phys.addr.0 = phi i64 [ %phys, %entry ], [ %add46, %do.end45 ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %add48, %do.end45 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %old_pte.sroa.0.0.sroa_cast68)
  %old_pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep.0, i64 0, i32 0
  %old_pte.sroa.0.0.copyload = load volatile i64, i64* %old_pte.sroa.0.0..sroa_idx, align 8
  store volatile i64 %old_pte.sroa.0.0.copyload, i64* %old_pte.sroa.0, align 8
  %shr = and i64 %phys.addr.0, -4096
  %or25 = or i64 %shr, %prot.coerce
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep.0, i64 %or25) #13
  %old_pte.sroa.0.0.old_pte.sroa.0.0.old_pte.sroa.0.0.old_pte.sroa.0.0. = load i64, i64* %old_pte.sroa.0, align 8
  %2 = load volatile i64, i64* %old_pte.sroa.0.0..sroa_idx, align 8
  %call34 = call fastcc i1 @pgattr_change_is_safe(i64 noundef %old_pte.sroa.0.0.old_pte.sroa.0.0.old_pte.sroa.0.0.old_pte.sroa.0.0., i64 noundef %2) #13
  br i1 %call34, label %do.end45, label %do.body38, !prof !11

do.body38:                                        ; preds = %do.body19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 171; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !48
  unreachable

do.end45:                                         ; preds = %do.body19
  %add46 = add i64 %phys.addr.0, 4096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %old_pte.sroa.0.0.sroa_cast68)
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %ptep.0, i64 1
  %add48 = add i64 %addr.addr.0, 4096
  %cmp.not = icmp eq i64 %add48, %end
  br i1 %cmp.not, label %do.end50, label %do.body19

do.end50:                                         ; preds = %do.end45
  call void @__set_fixmap(i32 noundef 1477, i64 noundef 0, i64 0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #5 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #5 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @__pgd_pgtable_alloc(i32 noundef %shift) #0 {
entry:
  %call = call i64 @__get_free_pages(i32 noundef 3520, i32 noundef 0) #12
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 394; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !49
  unreachable

do.end9:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !50
  %sub = add i64 %call, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %0 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %0, %sub
  %1 = load i64, i64* @kimage_voffset, align 8
  %sub13 = sub i64 %call, %1
  %cond = select i1 %cmp, i64 %add, i64 %sub13
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pgtable_pte_page_ctor(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call fastcc void @ptlock_init(%struct.page* noundef %page) #13
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %0, -513
  store i32 %and.i, i32* %page_type.i, align 16
  call fastcc void @inc_lruvec_page_state(%struct.page* noundef %page) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pgtable_pmd_page_ctor(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call fastcc void @pmd_ptlock_init(%struct.page* noundef %page) #13
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %0, -513
  store i32 %and.i, i32* %page_type.i, align 16
  call fastcc void @inc_lruvec_page_state(%struct.page* noundef %page) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ptlock_init(%struct.page* noundef writeonly %page) unnamed_addr #9 {
entry:
  %call3 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %page) #13
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_lruvec_page_state(%struct.page* nocapture noundef readnone %page) unnamed_addr #0 {
entry:
  call fastcc void @mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #5 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %val) unnamed_addr #0 {
entry:
  %conv = sext i32 %val to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef 37, i64 noundef %conv) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pmd_ptlock_init(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  call fastcc void @ptlock_init(%struct.page* noundef %page) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef nonnull @rodata_enabled) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @map_kernel_segment(%struct.pgd_t* noundef %pgdp, i8* noundef %va_start, i8* noundef %va_end, i64 %prot.coerce, %struct.vm_struct* noundef %vma, i32 noundef %flags, i64 noundef %vm_flags) unnamed_addr #3 section ".init.text" {
entry:
  %0 = ptrtoint i8* %va_start to i64
  %1 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 %0, %1
  %sub.ptr.lhs.cast = ptrtoint i8* %va_end to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %0
  %and = and i64 %sub, 4095
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %do.body9, label %do.body3, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 580; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !51
  unreachable

do.body9:                                         ; preds = %entry
  %and10 = and i64 %sub.ptr.sub, 4095
  %cmp11.not = icmp eq i64 %and10, 0
  br i1 %cmp11.not, label %do.end31, label %do.body23, !prof !11

do.body23:                                        ; preds = %do.body9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/mmu.c\22; .popsection; .long 14472b - 14470b; .short 581; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !52
  unreachable

do.end31:                                         ; preds = %do.body9
  call fastcc void @__create_pgd_mapping(%struct.pgd_t* noundef %pgdp, i64 noundef %sub, i64 noundef %0, i64 noundef %sub.ptr.sub, i64 %prot.coerce, i64 (i32)* noundef nonnull @early_pgtable_alloc, i32 noundef %flags) #13
  %and33 = and i64 %vm_flags, 64
  %tobool34.not = icmp eq i64 %and33, 0
  %add36 = add i64 %sub.ptr.sub, 4096
  %spec.select = select i1 %tobool34.not, i64 %add36, i64 %sub.ptr.sub
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vma, i64 0, i32 1
  store i8* %va_start, i8** %addr, align 8
  %phys_addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vma, i64 0, i32 6
  store i64 %sub, i64* %phys_addr, align 8
  %size38 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vma, i64 0, i32 2
  store i64 %spec.select, i64* %size38, align 8
  %or = or i64 %vm_flags, 4
  %flags39 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vma, i64 0, i32 3
  store i64 %or, i64* %flags39, align 8
  %2 = call i8* @llvm.returnaddress(i32 0)
  %3 = ptrtoint i8* %2 to i64
  %and40 = and i64 %3, 36028797018963968
  %tobool41.not = icmp eq i64 %and40, 0
  %4 = load i64, i64* @vabits_actual, align 8
  %shl47.neg = shl nsw i64 -1, %4
  %or46 = or i64 %shl47.neg, %3
  %and50 = and i64 %shl47.neg, 36028797018963967
  %neg = xor i64 %and50, -1
  %and52 = and i64 %neg, %3
  %cond = select i1 %tobool41.not, i64 %and52, i64 %or46
  %5 = inttoptr i64 %cond to i8*
  %caller = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vma, i64 0, i32 7
  store i8* %5, i8** %caller, align 8
  call void @vm_area_add_early(%struct.vm_struct* noundef %vma) #15
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i64 @early_pgtable_alloc(i32 noundef %shift) #3 section ".init.text" {
entry:
  %call = call fastcc i64 @memblock_phys_alloc() #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0)) #17
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !7
  %tobool1.not = icmp eq i8 %0, 0
  %or4 = select i1 %tobool1.not, i64 29273397577910019, i64 29273397577912067
  call void @__set_fixmap(i32 noundef 1477, i64 noundef %call, i64 %or4) #13
  %and = and i64 %call, 4095
  %add = or i64 %and, -8629538816
  %1 = inttoptr i64 %add to i8*
  %call7 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 4096) #12
  call void @__set_fixmap(i32 noundef 1477, i64 noundef 0, i64 0) #13
  ret i64 %call
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vm_area_add_early(%struct.vm_struct* noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @memblock_phys_alloc() unnamed_addr #0 {
entry:
  %call = call i64 @memblock_phys_alloc_range(i64 noundef 4096, i64 noundef 4096, i64 noundef 0, i64 noundef 0) #12
  ret i64 %call
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memblock_phys_alloc_range(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @can_set_direct_map() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(i64* noundef, i32 noundef, i32 noundef, %struct.memblock_type* noundef, %struct.memblock_type* noundef, i64* noundef, i64* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @__map_memblock(%struct.pgd_t* noundef %pgdp, i64 noundef %start, i64 noundef %end, i64 %prot.coerce, i32 noundef %flags) unnamed_addr #3 section ".init.text" {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %start, %0
  %or = or i64 %sub, -549755813888
  %sub1 = sub i64 %end, %start
  call fastcc void @__create_pgd_mapping(%struct.pgd_t* noundef %pgdp, i64 noundef %start, i64 noundef %or, i64 noundef %sub1, i64 %prot.coerce, i64 (i32)* noundef nonnull @early_pgtable_alloc, i32 noundef %flags) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_clear_nomap(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @virt_to_phys(i8* noundef %x) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  ret i64 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idmap_cpu_replace_ttbr1(i64 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_install_idmap() unnamed_addr #0 {
entry:
  call fastcc void @cpu_set_reserved_ttbr0() #13
  call fastcc void @local_flush_tlb_all() #13
  %0 = load i64, i64* @idmap_t0sz, align 8
  call fastcc void @__cpu_set_tcr_t0sz(i64 noundef %0) #13
  %1 = load i64, i64* @kimage_voffset, align 8
  %2 = load i64, i64* @memstart_addr, align 8
  %3 = add i64 %1, %2
  %sub2 = sub i64 ptrtoint ([512 x %struct.pgd_t]* @idmap_pg_dir to i64), %3
  %or = or i64 %sub2, -549755813888
  %4 = inttoptr i64 %or to %struct.pgd_t*
  call fastcc void @cpu_switch_mm(%struct.pgd_t* noundef nonnull %4, %struct.mm_struct* noundef nonnull @init_mm) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_uninstall_idmap() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !53
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %2 = load %struct.mm_struct*, %struct.mm_struct** %active_mm, align 16
  call fastcc void @cpu_set_reserved_ttbr0() #13
  call fastcc void @local_flush_tlb_all() #13
  %3 = load i64, i64* @vabits_actual, align 8
  %sub = sub i64 64, %3
  call fastcc void @__cpu_set_tcr_t0sz(i64 noundef %sub) #13
  %cmp.not = icmp eq %struct.mm_struct* %2, @init_mm
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 8
  %4 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  call fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %4, %struct.mm_struct* noundef %2) #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_set_reserved_ttbr0() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @reserved_pg_dir to i64), %0
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %sub) #14, !srcloc !54
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !55
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_flush_tlb_all() unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb nshst", "~{memory}"() #14, !srcloc !56
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #14, !srcloc !57
  call void asm sideeffect "dsb nsh", "~{memory}"() #14, !srcloc !58
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !59
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cpu_set_tcr_t0sz(i64 noundef %t0sz) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, tcr_el1", "=r"() #14, !srcloc !60
  %and = and i64 %0, 63
  %cmp = icmp eq i64 %and, %t0sz
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and1 = and i64 %0, -64
  %or = or i64 %and1, %t0sz
  call void asm sideeffect "msr tcr_el1, ${0:x}", "rZ"(i64 %or) #14, !srcloc !61
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %pgd, %struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pgd_t* %pgd, getelementptr inbounds ([512 x %struct.pgd_t], [512 x %struct.pgd_t]* @swapper_pg_dir, i64 0, i64 0)
  br i1 %cmp, label %do.body2, label %do.end5, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/include/asm/mmu_context.h\22; .popsection; .long 14472b - 14470b; .short 53; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !63
  unreachable

do.end5:                                          ; preds = %entry
  call fastcc void @cpu_set_reserved_ttbr0() #13
  %0 = bitcast %struct.pgd_t* %pgd to i8*
  %call = call fastcc i64 @virt_to_phys(i8* noundef %0) #13
  call void @cpu_do_switch_mm(i64 noundef %call, %struct.mm_struct* noundef %mm) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_do_switch_mm(i64 noundef, %struct.mm_struct* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #13
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #13
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_all() unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !64
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1is\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1is\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #14, !srcloc !65
  call void asm sideeffect "dsb ish", "~{memory}"() #14, !srcloc !66
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !67
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
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pgtable_pmd_page_dtor(%struct.page* nocapture noundef %page) unnamed_addr #0 {
entry:
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %or.i = or i32 %0, 512
  store i32 %or.i, i32* %page_type.i, align 16
  call fastcc void @dec_lruvec_page_state(%struct.page* noundef %page) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_lruvec_page_state(%struct.page* nocapture noundef readnone %page) unnamed_addr #0 {
entry:
  call fastcc void @mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef -1) #13
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #11 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { cold nobuiltin "no-builtins" }
attributes #17 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #18 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155650527}
!10 = !{i64 2155452239}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155437593}
!13 = !{i64 2155566857}
!14 = !{!"auto-init"}
!15 = !{i64 2155594815}
!16 = !{i64 2155645533}
!17 = !{i64 2155610238}
!18 = !{i64 2151835972}
!19 = !{i64 2151836021}
!20 = !{i64 2151802689}
!21 = !{i64 2151803166, i64 2151802891, i64 2151803530, i64 2151803576, i64 2151803582, i64 2151809031, i64 2151803619, i64 2151803637, i64 2151809106, i64 2151809154, i64 2151809202, i64 2151809265, i64 2151809314, i64 2151803715, i64 2151803740, i64 2151803766, i64 2151803772, i64 2151809052, i64 2151803809, i64 2151803815, i64 2151803865, i64 2151803911, i64 2151803944}
!22 = !{i64 2151809378}
!23 = !{i64 2151809425}
!24 = !{i64 2151855009}
!25 = !{i64 2151855058}
!26 = !{i64 2151851582}
!27 = !{i64 2151851631}
!28 = !{i64 2151810478}
!29 = !{i64 2151810924, i64 2151810651, i64 2151811286, i64 2151811332, i64 2151811338, i64 2151812726, i64 2151811375, i64 2151811393, i64 2151812800, i64 2151812848, i64 2151812896, i64 2151812959, i64 2151813008, i64 2151811471, i64 2151811496, i64 2151811522, i64 2151811528, i64 2151812747, i64 2151811565, i64 2151811571, i64 2151811621, i64 2151811667, i64 2151811700}
!30 = !{i64 2151813072}
!31 = !{i64 2151813119}
!32 = !{i64 2155322225}
!33 = !{i64 2149763792}
!34 = !{i64 2147914121, i64 2147914154, i64 2147914207, i64 2147914266, i64 2147914300, i64 2147914355, i64 2147914384, i64 2147914404}
!35 = !{i64 2149771073}
!36 = !{i64 2149717921}
!37 = !{i64 2155428364}
!38 = !{i64 2155435851}
!39 = !{i64 2155398456}
!40 = !{i64 2155404206}
!41 = !{i64 (i32)* @__pgd_pgtable_alloc, i64 (i32)* @early_pgtable_alloc, i64 (i32)* @pgd_pgtable_alloc}
!42 = !{i64 2155408509}
!43 = !{i64 2155388047}
!44 = !{i64 2155394176}
!45 = !{i64 2155363711}
!46 = !{i64 2155365330}
!47 = !{i64 2155369446}
!48 = !{i64 2155359379}
!49 = !{i64 2155440489}
!50 = !{i64 2155440827}
!51 = !{i64 2155477864}
!52 = !{i64 2155479648}
!53 = !{i64 1172645}
!54 = !{i64 2155295393}
!55 = !{i64 2155295539}
!56 = !{i64 2151624644}
!57 = !{i64 2151625061, i64 2151624809, i64 2151625409, i64 2151625455, i64 2151625461, i64 2151626849, i64 2151625498, i64 2151625516, i64 2151626916, i64 2151626964, i64 2151627012, i64 2151627075, i64 2151627124, i64 2151625594, i64 2151625619, i64 2151625645, i64 2151625651, i64 2151626870, i64 2151625688, i64 2151625694, i64 2151625744, i64 2151625790, i64 2151625823}
!58 = !{i64 2151627188}
!59 = !{i64 2151627235}
!60 = !{i64 2155297417}
!61 = !{i64 2155297813}
!62 = !{i64 2155297952}
!63 = !{i64 2155296852}
!64 = !{i64 2151627439}
!65 = !{i64 2151627864, i64 2151627608, i64 2151628216, i64 2151628262, i64 2151628268, i64 2151629656, i64 2151628305, i64 2151628323, i64 2151629725, i64 2151629773, i64 2151629821, i64 2151629884, i64 2151629933, i64 2151628401, i64 2151628426, i64 2151628452, i64 2151628458, i64 2151629677, i64 2151628495, i64 2151628501, i64 2151628551, i64 2151628597, i64 2151628630}
!66 = !{i64 2151629997}
!67 = !{i64 2151630044}
