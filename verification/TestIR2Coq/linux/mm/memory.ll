; ModuleID = 'mm/memory.c'
source_filename = "mm/memory.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_memory__427_168_init_zero_pfnearly:\09\09\09"
module asm ".long\09init_zero_pfn - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.3, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.4, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.3 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.4 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.5, %union.anon.75, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.52, %struct.list_head, %struct.list_head, %union.anon.53 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.9, i8* }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.14, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.14 = type { %struct.kernfs_elem_dir }
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
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.15, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.15 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.16, %union.anon.17, %union.anon.18, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.23, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.16 = type { %struct.hlist_node }
%union.anon.17 = type { %struct.rb_node }
%union.anon.18 = type { %struct.anon.22 }
%struct.anon.22 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.23 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.24 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.20, %union.anon.21, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.20 = type { %struct.list_head }
%union.anon.21 = type { %struct.hlist_node }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.36 = type { %struct.callback_head }
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
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.51, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.51 = type { i64, i64, %struct.user_fpsimd_state }
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
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.54 }
%union.anon.54 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.55, %union.anon.56 }
%union.anon.55 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.56 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.58, %struct.qspinlock }
%union.anon.58 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.75 = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33, [48 x i8] }
%struct.anon.33 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.vm_event_state = type { [53 x i64] }
%struct.mmu_gather = type { %struct.mm_struct*, %struct.mmu_table_batch*, i64, i64, i16, i32, %struct.mmu_gather_batch*, %struct.mmu_gather_batch, [8 x %struct.page*] }
%struct.mmu_table_batch = type { %struct.callback_head, i32, [0 x i8*] }
%struct.mmu_gather_batch = type { %struct.mmu_gather_batch*, i32, i32, [0 x %struct.page*] }
%struct.mmu_notifier_range = type { i64, i64 }
%struct.zap_details = type { %struct.address_space*, i64, i64, %struct.page* }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.anon.69 = type { i64, i8, i8, %struct.atomic_t, i32 }
%struct.nodemask_t = type { [1 x i64] }

@randomize_va_space = dso_local local_unnamed_addr global i32 2, section ".data..read_mostly", align 4
@__setup_str_disable_randmaps = internal constant [11 x i8] c"norandmaps\00", section ".init.rodata", align 1
@__setup_disable_randmaps = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_disable_randmaps, i32 0, i32 0), i32 (i8*)* @disable_randmaps, i32 0 }, section ".init.setup", align 8
@__UNIQUE_ID___addressable_init_zero_pfn428 = internal global i8* bitcast (i32 ()* @init_zero_pfn to i8*), section ".discard.addressable", align 8
@init_mm = external dso_local global %struct.mm_struct, align 8
@highest_memmap_pfn = dso_local local_unnamed_addr global i64 0, section ".data..read_mostly", align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s%s[%lx+%lx]\00", align 1
@max_mapnr = dso_local local_unnamed_addr global i64 0, align 8
@mem_map = dso_local local_unnamed_addr global %struct.page* null, align 8
@high_memory = dso_local local_unnamed_addr global i8* null, align 8
@zero_pfn = dso_local local_unnamed_addr global i64 0, section ".data..read_mostly", align 8
@empty_zero_page = external dso_local global [512 x i64], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@swapper_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@print_bad_pte.resume = internal unnamed_addr global i64 0, align 8
@print_bad_pte.nr_shown = internal unnamed_addr global i64 0, align 8
@print_bad_pte.nr_unshown = internal unnamed_addr global i64 0, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [46 x i8] c"\011BUG: Bad page map: %lu messages suppressed\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"\011BUG: Bad page map in process %s  pte:%08llx pmd:%08llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bad pte\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\011addr:%px vm_flags:%08lx anon_vma:%px mapping:%px index:%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\011file:%pD fault:%ps mmap:%ps readpage:%ps\0A\00", align 1
@mmlist_lock = external dso_local global %struct.spinlock, align 4
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@fault_around_bytes = internal global i64 65536, section ".data..read_mostly", align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_zero_pfn428 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_disable_randmaps to i8*)], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @disable_randmaps(i8* nocapture noundef readnone %s) #0 section ".init.text" {
entry:
  store i32 0, i32* @randomize_va_space, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn
define internal i32 @init_zero_pfn() #1 section ".init.text" {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x i64]* @empty_zero_page to i64), %0
  %1 = lshr i64 %sub, 12
  store i64 %1, i64* @zero_pfn, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @mm_trace_rss_stat(%struct.mm_struct* nocapture %mm, i32 %member, i64 %count) local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sync_mm_rss(%struct.mm_struct* noundef %mm) local_unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %arrayidx = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 38, i32 1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %2 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0, i64 noundef %conv) #17
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %arrayidx.1 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 38, i32 1, i64 1
  %3 = load i32, i32* %arrayidx.1, align 4
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %conv.1 = sext i32 %3 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1, i64 noundef %conv.1) #17
  store i32 0, i32* %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %arrayidx.2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 38, i32 1, i64 2
  %4 = load i32, i32* %arrayidx.2, align 4
  %tobool.not.2 = icmp eq i32 %4, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %conv.2 = sext i32 %4 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 2, i64 noundef %conv.2) #17
  store i32 0, i32* %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %arrayidx.3 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 38, i32 1, i64 3
  %5 = load i32, i32* %arrayidx.3, align 4
  %tobool.not.3 = icmp eq i32 %5, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %conv.3 = sext i32 %5 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3, i64 noundef %conv.3) #17
  store i32 0, i32* %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %events = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 38, i32 0
  store i32 0, i32* %events, align 32
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member, i64 noundef %value) unnamed_addr #3 {
entry:
  %idxprom = sext i32 %member to i64
  %arrayidx = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %idxprom
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %value, %struct.atomic64_t* noundef %arrayidx) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_pgd_range(%struct.mmu_gather* noundef %tlb, i64 noundef %addr, i64 noundef %end, i64 noundef %floor, i64 noundef %ceiling) local_unnamed_addr #3 {
entry:
  %and = and i64 %addr, -2097152
  %cmp = icmp ult i64 %and, %floor
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %add = add i64 %and, 2097152
  %tobool.not = icmp eq i64 %add, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.then, %entry
  %addr.addr.0 = phi i64 [ %add, %if.then ], [ %and, %entry ]
  %tobool3.not = icmp eq i64 %ceiling, 0
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end2
  %and5 = and i64 %ceiling, -2097152
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end2
  %ceiling.addr.0 = phi i64 [ %and5, %if.then4 ], [ 0, %if.end2 ]
  %sub = add i64 %end, -1
  %sub10 = add i64 %ceiling.addr.0, -1
  %cmp11 = icmp ugt i64 %sub, %sub10
  %sub13 = add i64 %end, -2097152
  %spec.select = select i1 %cmp11, i64 %sub13, i64 %end
  %sub15 = add i64 %spec.select, -1
  %cmp16 = icmp ugt i64 %addr.addr.0, %sub15
  br i1 %cmp16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end9
  %mm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %pgd19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 8
  %1 = load %struct.pgd_t*, %struct.pgd_t** %pgd19, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %addr.addr.0) #17
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end18
  %pgd.0 = phi %struct.pgd_t* [ %call, %if.end18 ], [ %incdec.ptr, %do.body ]
  %addr.addr.1 = phi i64 [ %addr.addr.0, %if.end18 ], [ %cond, %do.body ]
  %add20 = add i64 %addr.addr.1, 1073741824
  %and21 = and i64 %add20, -1073741824
  %sub22 = add i64 %and21, -1
  %cmp24 = icmp ult i64 %sub22, %sub15
  %cond = select i1 %cmp24, i64 %and21, i64 %spec.select
  call fastcc void @free_p4d_range(%struct.mmu_gather* noundef %tlb, %struct.pgd_t* noundef %pgd.0, i64 noundef %addr.addr.1, i64 noundef %cond, i64 noundef %floor, i64 noundef %ceiling.addr.0) #17
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %cmp29.not = icmp eq i64 %cond, %spec.select
  br i1 %cmp29.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.body, %if.end9, %if.then4, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #2 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_p4d_range(%struct.mmu_gather* noundef %tlb, %struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, i64 noundef %floor, i64 noundef %ceiling) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #17
  call fastcc void @free_pud_range(%struct.mmu_gather* noundef %tlb, %struct.p4d_t* noundef %call, i64 noundef %addr, i64 noundef %end, i64 noundef %floor, i64 noundef %ceiling) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_pgtables(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %floor, i64 noundef %ceiling) local_unnamed_addr #3 {
entry:
  %tobool.not53 = icmp eq %struct.vm_area_struct* %vma, null
  br i1 %tobool.not53, label %while.end17, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %vm_next76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 2
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next76, align 8
  %vm_start77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start77, align 8
  call void @unlink_anon_vmas(%struct.vm_area_struct* noundef nonnull %vma) #18
  call void @unlink_file_vma(%struct.vm_area_struct* noundef nonnull %vma) #18
  %tobool4.not4978 = icmp eq %struct.vm_area_struct* %0, null
  br i1 %tobool4.not4978, label %while.end17.loopexit, label %land.lhs.true.preheader

land.lhs.true.preheader:                          ; preds = %while.body.preheader, %cond.end15
  %2 = phi i64 [ %9, %cond.end15 ], [ %1, %while.body.preheader ]
  %3 = phi %struct.vm_area_struct* [ %8, %cond.end15 ], [ %0, %while.body.preheader ]
  %vma.addr.05479 = phi %struct.vm_area_struct* [ %next.051, %cond.end15 ], [ %vma, %while.body.preheader ]
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.preheader, %land.rhs
  %next.051 = phi %struct.vm_area_struct* [ %6, %land.rhs ], [ %3, %land.lhs.true.preheader ]
  %vma.addr.150 = phi %struct.vm_area_struct* [ %next.051, %land.rhs ], [ %vma.addr.05479, %land.lhs.true.preheader ]
  %vm_start5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.051, i64 0, i32 0
  %4 = load i64, i64* %vm_start5, align 8
  %vm_end6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.150, i64 0, i32 1
  %5 = load i64, i64* %vm_end6, align 8
  %add = add i64 %5, 2097152
  %cmp.not = icmp ugt i64 %4, %add
  br i1 %cmp.not, label %cond.end15, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %vm_next9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.051, i64 0, i32 2
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next9, align 8
  call void @unlink_anon_vmas(%struct.vm_area_struct* noundef nonnull %next.051) #18
  call void @unlink_file_vma(%struct.vm_area_struct* noundef nonnull %next.051) #18
  %tobool4.not = icmp eq %struct.vm_area_struct* %6, null
  br i1 %tobool4.not, label %while.end17.loopexit, label %land.lhs.true

cond.end15:                                       ; preds = %land.lhs.true
  %.in = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.150, i64 0, i32 1
  %7 = load i64, i64* %.in, align 8
  call void @free_pgd_range(%struct.mmu_gather* noundef %tlb, i64 noundef %2, i64 noundef %7, i64 noundef %floor, i64 noundef %4) #17
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.051, i64 0, i32 2
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %next.051, i64 0, i32 0
  %9 = load i64, i64* %vm_start, align 8
  call void @unlink_anon_vmas(%struct.vm_area_struct* noundef nonnull %next.051) #18
  call void @unlink_file_vma(%struct.vm_area_struct* noundef nonnull %next.051) #18
  %tobool4.not49 = icmp eq %struct.vm_area_struct* %8, null
  br i1 %tobool4.not49, label %while.end17.loopexit, label %land.lhs.true.preheader

while.end17.loopexit:                             ; preds = %cond.end15, %land.rhs, %while.body.preheader
  %10 = phi i64 [ %1, %while.body.preheader ], [ %2, %land.rhs ], [ %9, %cond.end15 ]
  %vma.addr.148.ph = phi %struct.vm_area_struct* [ %vma, %while.body.preheader ], [ %next.051, %land.rhs ], [ %next.051, %cond.end15 ]
  %.in60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.148.ph, i64 0, i32 1
  %11 = load i64, i64* %.in60, align 8
  call void @free_pgd_range(%struct.mmu_gather* noundef %tlb, i64 noundef %10, i64 noundef %11, i64 noundef %floor, i64 noundef %ceiling) #17
  br label %while.end17

while.end17:                                      ; preds = %while.end17.loopexit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_anon_vmas(%struct.vm_area_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_file_vma(%struct.vm_area_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__pte_alloc(%struct.mm_struct* noundef %mm, %struct.pmd_t* noundef %pmd) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.page* @pte_alloc_one() #17
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !8
  %call1 = call fastcc %struct.spinlock* @pmd_lock(%struct.pmd_t* noundef %pmd) #17
  %pmd2 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd2, align 8
  %tobool3.not = icmp eq i64 %0, 0
  br i1 %tobool3.not, label %if.end8.thread, label %if.then10, !prof !9

if.end8.thread:                                   ; preds = %if.end
  call fastcc void @mm_inc_nr_ptes(%struct.mm_struct* noundef %mm) #17
  call fastcc void @pmd_populate(%struct.pmd_t* noundef %pmd, %struct.page* noundef nonnull %call) #17
  %rlock.i25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call1, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i25) #18
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call1, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  call fastcc void @pte_free(%struct.page* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8.thread, %if.then10, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %if.then10 ], [ 0, %if.end8.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @pte_alloc_one() unnamed_addr #3 {
entry:
  %call = call fastcc %struct.page* @__pte_alloc_one() #17
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.spinlock* @pmd_lock(%struct.pmd_t* noundef %pmd) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.spinlock* @pmd_lockptr(%struct.pmd_t* noundef %pmd) #17
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  ret %struct.spinlock* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_inc_nr_ptes(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %pgtables_bytes = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12
  call fastcc void @__ll_sc_atomic64_add(i64 noundef 4096, %struct.atomic64_t* noundef %pgtables_bytes) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_populate(%struct.pmd_t* noundef %pmdp, %struct.page* noundef %ptep) unnamed_addr #3 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %ptep to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  call fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %shl, i64 noundef 576460752303423491) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pte_free(%struct.page* noundef %pte_page) unnamed_addr #3 {
entry:
  call fastcc void @pgtable_pte_page_dtor(%struct.page* noundef %pte_page) #17
  call void @__free_pages(%struct.page* noundef %pte_page, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__pte_alloc_kernel(%struct.pmd_t* noundef %pmd) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pte_t* @pte_alloc_one_kernel() #17
  %tobool.not = icmp eq %struct.pte_t* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !10
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 14, i32 0, i32 0)) #18
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool2.not = icmp eq i64 %0, 0
  br i1 %tobool2.not, label %if.end7.thread, label %if.then9, !prof !9

if.end7.thread:                                   ; preds = %if.end
  call fastcc void @pmd_populate_kernel(%struct.pmd_t* noundef %pmd, %struct.pte_t* noundef nonnull %call) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 14, i32 0, i32 0)) #18
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 14, i32 0, i32 0)) #18
  call fastcc void @pte_free_kernel(%struct.pte_t* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end7.thread, %if.then9, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %if.then9 ], [ 0, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pte_t* @pte_alloc_one_kernel() unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pte_t* @__pte_alloc_one_kernel() #17
  ret %struct.pte_t* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_populate_kernel(%struct.pmd_t* noundef %pmdp, %struct.pte_t* noundef %ptep) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.pte_t* %ptep to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  call fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %cond, i64 noundef 1152921504606846979) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pte_free_kernel(%struct.pte_t* noundef %pte) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.pte_t* %pte to i64
  call void @free_pages(i64 noundef %0, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pte.coerce) local_unnamed_addr #3 {
entry:
  %and = lshr i64 %pte.coerce, 12
  %shr = and i64 %and, 68719476735
  %and3 = and i64 %pte.coerce, 72057594037927936
  %tobool.not = icmp eq i64 %and3, 0
  br i1 %tobool.not, label %check_pfn, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool9.not = icmp eq %struct.vm_operations_struct* %0, null
  br i1 %tobool9.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %find_special_page = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %0, i64 0, i32 13
  %1 = load %struct.page* (%struct.vm_area_struct*, i64)*, %struct.page* (%struct.vm_area_struct*, i64)** %find_special_page, align 8
  %tobool11.not = icmp eq %struct.page* (%struct.vm_area_struct*, i64)* %1, null
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %call = call %struct.page* %1(%struct.vm_area_struct* noundef %vma, i64 noundef %addr) #18
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true, %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %and16 = and i64 %2, 268436480
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i32 @is_zero_pfn(i64 noundef %shr) #17
  %tobool21.not = icmp eq i32 %call20, 0
  %and25 = and i64 %pte.coerce, 144115188075855872
  %tobool26.not = icmp eq i64 %and25, 0
  %or.cond = select i1 %tobool21.not, i1 %tobool26.not, i1 false
  br i1 %or.cond, label %if.end28, label %cleanup

if.end28:                                         ; preds = %if.end19
  call fastcc void @print_bad_pte(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pte.coerce, %struct.page* noundef null) #17
  br label %cleanup

check_pfn:                                        ; preds = %entry
  %3 = load i64, i64* @highest_memmap_pfn, align 8
  %cmp = icmp ugt i64 %shr, %3
  br i1 %cmp, label %if.then38, label %out, !prof !11

if.then38:                                        ; preds = %check_pfn
  call fastcc void @print_bad_pte(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pte.coerce, %struct.page* noundef null) #17
  br label %cleanup

out:                                              ; preds = %check_pfn
  %4 = load i64, i64* @memstart_addr, align 8
  %shr41 = ashr i64 %4, 12
  %idx.neg = sub nsw i64 0, %shr41
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr42 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15, %out, %if.then38, %if.end28, %if.then12
  %retval.0 = phi %struct.page* [ null, %if.then38 ], [ %add.ptr42, %out ], [ %call, %if.then12 ], [ null, %if.end28 ], [ null, %if.end15 ], [ null, %if.end19 ]
  ret %struct.page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_zero_pfn(i64 noundef %pfn) unnamed_addr #6 {
entry:
  %0 = load i64, i64* @zero_pfn, align 8
  %cmp = icmp eq i64 %0, %pfn
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_bad_pte(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %addr, i64 %pte.coerce, %struct.page* noundef %page) unnamed_addr #3 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %pgd1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 8
  %1 = load %struct.pgd_t*, %struct.pgd_t** %pgd1, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %addr) #17
  %call2 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call) #17
  %call3 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %call2) #17
  %call4 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %call3, i64 noundef %addr) #17
  %2 = load i64, i64* @print_bad_pte.nr_shown, align 8
  %cmp = icmp eq i64 %2, 60
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load volatile i64, i64* @jiffies, align 64
  %4 = load i64, i64* @print_bad_pte.resume, align 8
  %sub = sub i64 %3, %4
  %cmp5 = icmp slt i64 %sub, 0
  %5 = load i64, i64* @print_bad_pte.nr_unshown, align 8
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %inc = add i64 %5, 1
  store i64 %inc, i64* @print_bad_pte.nr_unshown, align 8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %if.end10.thread, label %do.end

do.end:                                           ; preds = %if.end
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 noundef %5) #20
  store i64 0, i64* @print_bad_pte.nr_unshown, align 8
  br label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end, %do.end
  store i64 1, i64* @print_bad_pte.nr_shown, align 8
  br label %if.then13

if.end10:                                         ; preds = %entry
  %inc11 = add i64 %2, 1
  store i64 %inc11, i64* @print_bad_pte.nr_shown, align 8
  %cmp12 = icmp eq i64 %2, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10.thread, %if.end10
  %6 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %6, 15000
  store i64 %add, i64* @print_bad_pte.resume, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %7 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool15.not = icmp eq %struct.file* %7, null
  br i1 %tobool15.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end14
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %7, i64 0, i32 17
  %8 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end14, %cond.true
  %cond = phi %struct.address_space* [ %8, %cond.true ], [ null, %if.end14 ]
  %call17 = call fastcc i64 @linear_page_index(%struct.vm_area_struct* noundef %vma, i64 noundef %addr) #17
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i64 0, i32 81, i64 0
  %pmd24 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call4, i64 0, i32 0
  %11 = load i64, i64* %pmd24, align 8
  %call25 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* noundef %arraydecay, i64 noundef %pte.coerce, i64 noundef %11) #20
  %tobool26.not = icmp eq %struct.page* %page, null
  br i1 %tobool26.not, label %do.end31, label %if.then27

if.then27:                                        ; preds = %cond.end
  call void @dump_page(%struct.page* noundef nonnull %page, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #18
  br label %do.end31

do.end31:                                         ; preds = %cond.end, %if.then27
  %12 = inttoptr i64 %addr to i8*
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %13 = load i64, i64* %vm_flags, align 8
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %14 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* noundef %12, i64 noundef %13, %struct.anon_vma* noundef %14, %struct.address_space* noundef %cond, i64 noundef %call17) #20
  %15 = load %struct.file*, %struct.file** %vm_file, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %16 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool39.not = icmp eq %struct.vm_operations_struct* %16, null
  br i1 %tobool39.not, label %cond.end43, label %cond.true40

cond.true40:                                      ; preds = %do.end31
  %fault = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %16, i64 0, i32 5
  %17 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %fault, align 8
  br label %cond.end43

cond.end43:                                       ; preds = %do.end31, %cond.true40
  %cond44 = phi i32 (%struct.vm_fault*)* [ %17, %cond.true40 ], [ null, %do.end31 ]
  %tobool46.not = icmp eq %struct.file* %15, null
  br i1 %tobool46.not, label %cond.end50, label %cond.true47

cond.true47:                                      ; preds = %cond.end43
  %f_op = getelementptr inbounds %struct.file, %struct.file* %15, i64 0, i32 3
  %18 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %mmap = getelementptr inbounds %struct.file_operations, %struct.file_operations* %18, i64 0, i32 12
  %19 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %mmap, align 8
  br label %cond.end50

cond.end50:                                       ; preds = %cond.end43, %cond.true47
  %cond51 = phi i32 (%struct.file*, %struct.vm_area_struct*)* [ %19, %cond.true47 ], [ null, %cond.end43 ]
  %tobool52.not = icmp eq %struct.address_space* %cond, null
  br i1 %tobool52.not, label %cond.end55, label %cond.true53

cond.true53:                                      ; preds = %cond.end50
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %cond, i64 0, i32 9
  %20 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %readpage = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %20, i64 0, i32 1
  %21 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %readpage, align 8
  br label %cond.end55

cond.end55:                                       ; preds = %cond.end50, %cond.true53
  %cond56 = phi i32 (%struct.file*, %struct.page*)* [ %21, %cond.true53 ], [ null, %cond.end50 ]
  %call57 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), %struct.file* noundef %15, i32 (%struct.vm_fault*)* noundef %cond44, i32 (%struct.file*, %struct.vm_area_struct*)* noundef %cond51, i32 (%struct.file*, %struct.page*)* noundef %cond56) #20
  call void @dump_stack() #20
  call void @add_taint(i32 noundef 5, i32 noundef 1) #18
  br label %cleanup

cleanup:                                          ; preds = %cond.end55, %if.then6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @copy_page_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma) local_unnamed_addr #3 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src_vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src_vma, i64 0, i32 1
  %1 = load i64, i64* %vm_end, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %dst_vma, i64 0, i32 6
  %2 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_mm1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src_vma, i64 0, i32 6
  %3 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm1, align 8
  %4 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #19
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src_vma, i64 0, i32 8
  %5 = load i64, i64* %vm_flags, align 8
  %and = and i64 %5, 272630784
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %entry
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src_vma, i64 0, i32 11
  %6 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool2.not = icmp eq %struct.anon_vma* %6, null
  br i1 %tobool2.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %entry, %land.lhs.true
  %call18 = call fastcc i1 @is_cow_mapping(i64 noundef %5) #17
  br i1 %call18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end16
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %0, i64 noundef %1) #17
  %write_protect_seq = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 26
  call fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* noundef %write_protect_seq) #17
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end16
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 8
  %7 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  %call27 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %7, i64 noundef %0) #17
  %pgd28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 8
  %8 = load %struct.pgd_t*, %struct.pgd_t** %pgd28, align 8
  %call29 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %8, i64 noundef %0) #17
  %sub32 = add i64 %1, -1
  br label %do.body30

do.body30:                                        ; preds = %do.cond49, %if.end26
  %dst_pgd.0 = phi %struct.pgd_t* [ %call27, %if.end26 ], [ %incdec.ptr, %do.cond49 ]
  %addr.0 = phi i64 [ %0, %if.end26 ], [ %cond, %do.cond49 ]
  %src_pgd.0 = phi %struct.pgd_t* [ %call29, %if.end26 ], [ %incdec.ptr50, %do.cond49 ]
  %add = add i64 %addr.0, 1073741824
  %and31 = and i64 %add, -1073741824
  %sub = add i64 %and31, -1
  %cmp = icmp ult i64 %sub, %sub32
  %cond = select i1 %cmp, i64 %and31, i64 %1
  %call38 = call fastcc i32 @copy_p4d_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pgd_t* noundef %dst_pgd.0, %struct.pgd_t* noundef %src_pgd.0, i64 noundef %addr.0, i64 noundef %cond) #17
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.cond49, label %do.end53, !prof !9

do.cond49:                                        ; preds = %do.body30
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %dst_pgd.0, i64 1
  %incdec.ptr50 = getelementptr %struct.pgd_t, %struct.pgd_t* %src_pgd.0, i64 1
  %cmp51.not = icmp eq i64 %cond, %1
  br i1 %cmp51.not, label %do.end53, label %do.body30

do.end53:                                         ; preds = %do.body30, %do.cond49
  %ret.0 = phi i32 [ 0, %do.cond49 ], [ -12, %do.body30 ]
  br i1 %call18, label %do.body56, label %cleanup

do.body56:                                        ; preds = %do.end53
  %write_protect_seq57 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 26
  call fastcc void @do_raw_write_seqcount_end(%struct.seqcount* noundef %write_protect_seq57) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.body56, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ %ret.0, %do.body56 ], [ %ret.0, %do.end53 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_cow_mapping(i64 noundef %flags) unnamed_addr #2 {
entry:
  %and = and i64 %flags, 40
  %cmp = icmp eq i64 %and, 32
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* nocapture noundef writeonly %range, i64 noundef %start, i64 noundef %end) unnamed_addr #8 {
entry:
  %start1 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  store i64 %start, i64* %start1, align 8
  %end2 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  store i64 %end, i64* %end2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #3 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_p4d_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pgd_t* noundef %dst_pgd, %struct.pgd_t* noundef %src_pgd, i64 noundef %addr, i64 noundef %end) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_alloc(%struct.pgd_t* noundef %dst_pgd) #17
  %tobool.not = icmp eq %struct.p4d_t* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %src_pgd) #17
  %call6 = call fastcc i32 @copy_pud_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.p4d_t* noundef nonnull %call, %struct.p4d_t* noundef %call1, i64 noundef %addr, i64 noundef %end) #17
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #3 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !14
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unmap_page_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %end, %struct.zap_details* noundef %details) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp ult i64 %addr, %end
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !9

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 1545; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !15
  unreachable

do.end7:                                          ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %pgd8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 8
  %1 = load %struct.pgd_t*, %struct.pgd_t** %pgd8, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %addr) #17
  %sub10 = add i64 %end, -1
  br label %do.body9

do.body9:                                         ; preds = %do.body9, %do.end7
  %pgd.0 = phi %struct.pgd_t* [ %call, %do.end7 ], [ %incdec.ptr, %do.body9 ]
  %addr.addr.0 = phi i64 [ %addr, %do.end7 ], [ %call17, %do.body9 ]
  %add = add i64 %addr.addr.0, 1073741824
  %and = and i64 %add, -1073741824
  %sub = add i64 %and, -1
  %cmp11 = icmp ult i64 %sub, %sub10
  %cond = select i1 %cmp11, i64 %and, i64 %end
  %call17 = call fastcc i64 @zap_p4d_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, %struct.pgd_t* noundef %pgd.0, i64 noundef %addr.addr.0, i64 noundef %cond, %struct.zap_details* noundef %details) #17
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %cmp19.not = icmp eq i64 %call17, %end
  br i1 %cmp19.not, label %do.end21, label %do.body9

do.end21:                                         ; preds = %do.body9
  call fastcc void @tlb_end_vma(%struct.mmu_gather* noundef %tlb) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @zap_p4d_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, %struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, %struct.zap_details* noundef %details) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #17
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %call2, %do.body ]
  %p4d.0 = phi %struct.p4d_t* [ %call, %entry ], [ %incdec.ptr, %do.body ]
  %call2 = call fastcc i64 @zap_pud_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, %struct.p4d_t* noundef %p4d.0, i64 noundef %addr.addr.0, i64 noundef %end, %struct.zap_details* noundef %details) #17
  %incdec.ptr = getelementptr %struct.p4d_t, %struct.p4d_t* %p4d.0, i64 1
  %cmp.not = icmp eq i64 %call2, %end
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret i64 %end
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_end_vma(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #3 {
entry:
  %fullmm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %fullmm, align 8
  %bf.clear = and i16 %bf.load, 1
  %tobool.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @tlb_flush_mmu_tlbonly(%struct.mmu_gather* noundef %tlb) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unmap_vmas(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %start_addr, i64 noundef %end_addr) local_unnamed_addr #3 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %0 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %start_addr, i64 noundef %end_addr) #17
  %tobool.not7 = icmp eq %struct.vm_area_struct* %vma, null
  br i1 %tobool.not7, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %for.body
  %vma.addr.08 = phi %struct.vm_area_struct* [ %2, %for.body ], [ %vma, %entry ]
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.08, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %cmp = icmp ult i64 %1, %end_addr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  call fastcc void @unmap_single_vma(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef nonnull %vma.addr.08, i64 noundef %start_addr, i64 noundef %end_addr, %struct.zap_details* noundef null) #17
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.08, i64 0, i32 2
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %2, null
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %for.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unmap_single_vma(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %start_addr, i64 noundef %end_addr, %struct.zap_details* noundef %details) unnamed_addr #3 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %0, %start_addr
  %cond = select i1 %cmp, i64 %0, i64 %start_addr
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %1 = load i64, i64* %vm_end, align 8
  %cmp1.not = icmp ult i64 %cond, %1
  br i1 %cmp1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp4 = icmp ult i64 %1, %end_addr
  %cond8 = select i1 %cmp4, i64 %1, i64 %end_addr
  %cmp10.not = icmp ule i64 %cond8, %0
  %cmp20.not = icmp eq i64 %cond, %cond8
  %or.cond = select i1 %cmp10.not, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %cleanup, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @unmap_page_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %cond, i64 noundef %cond8, %struct.zap_details* noundef %details) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @zap_page_range(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %size) local_unnamed_addr #3 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %tlb = alloca %struct.mmu_gather, align 8
  %0 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !16
  %1 = bitcast %struct.mmu_gather* %tlb to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !16
  call void @lru_add_drain() #18
  %add = add i64 %size, %start
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %start, i64 noundef %add) #17
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %2 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call void @tlb_gather_mmu(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %2) #18
  %3 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %3) #17
  %tobool.not10 = icmp eq %struct.vm_area_struct* %vma, null
  br i1 %tobool.not10, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %end = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  %4 = load i64, i64* %end, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body
  %vma.addr.011 = phi %struct.vm_area_struct* [ %vma, %land.rhs.lr.ph ], [ %6, %for.body ]
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.011, i64 0, i32 0
  %5 = load i64, i64* %vm_start, align 8
  %cmp = icmp ult i64 %5, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  call fastcc void @unmap_single_vma(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef nonnull %vma.addr.011, i64 noundef %start, i64 noundef %4, %struct.zap_details* noundef null) #17
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.011, i64 0, i32 2
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %6, null
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %for.body, %entry
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #18
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(%struct.mmu_gather* noundef, %struct.mm_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %mm) unnamed_addr #9 {
entry:
  %call = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) #17
  %hiwater_rss = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 17
  %0 = load i64, i64* %hiwater_rss, align 8
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %call, i64* %hiwater_rss, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(%struct.mmu_gather* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @zap_vma_ptes(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i64 noundef %size) local_unnamed_addr #3 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %0, %address
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %add = add i64 %size, %address
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %1 = load i64, i64* %vm_end, align 8
  %cmp1 = icmp ugt i64 %add, %1
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %and = and i64 %2, 1024
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  call fastcc void @zap_page_range_single(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i64 noundef %size, %struct.zap_details* noundef null) #17
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zap_page_range_single(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i64 noundef %size, %struct.zap_details* noundef %details) unnamed_addr #3 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %tlb = alloca %struct.mmu_gather, align 8
  %0 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !16
  %1 = bitcast %struct.mmu_gather* %tlb to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !16
  call void @lru_add_drain() #18
  %add = add i64 %size, %address
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %address, i64 noundef %add) #17
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %2 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call void @tlb_gather_mmu(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %2) #18
  %3 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @update_hiwater_rss(%struct.mm_struct* noundef %3) #17
  %end = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  %4 = load i64, i64* %end, align 8
  call fastcc void @unmap_single_vma(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef %vma, i64 noundef %address, i64 noundef %4, %struct.zap_details* noundef %details) #17
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #18
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pte_t* @__get_locked_pte(%struct.mm_struct* noundef %mm, i64 noundef %addr, %struct.spinlock** nocapture noundef writeonly %ptl) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pmd_t* @walk_to_pmd(%struct.mm_struct* noundef %mm, i64 noundef %addr) #17
  %tobool.not = icmp eq %struct.pmd_t* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool2.not = icmp eq i64 %0, 0
  br i1 %tobool2.not, label %land.lhs.true, label %cond.false, !prof !11

land.lhs.true:                                    ; preds = %if.end
  %call6 = call i32 @__pte_alloc(%struct.mm_struct* noundef %mm, %struct.pmd_t* noundef nonnull %call) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %call8 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef nonnull %call) #17
  %call9 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef nonnull %call, i64 noundef %addr) #17
  store %struct.spinlock* %call8, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call8, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %land.lhs.true, %entry
  %retval.0 = phi %struct.pte_t* [ null, %entry ], [ %call9, %cond.false ], [ null, %land.lhs.true ]
  ret %struct.pte_t* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pmd_t* @walk_to_pmd(%struct.mm_struct* noundef %mm, i64 noundef %addr) unnamed_addr #3 {
entry:
  %pgd1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %0 = load %struct.pgd_t*, %struct.pgd_t** %pgd1, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %addr) #17
  %call2 = call fastcc %struct.p4d_t* @p4d_alloc(%struct.pgd_t* noundef %call) #17
  %tobool.not = icmp eq %struct.p4d_t* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc %struct.pud_t* @pud_alloc(%struct.p4d_t* noundef nonnull %call2) #17
  %tobool4.not = icmp eq %struct.pud_t* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc %struct.pmd_t* @pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef nonnull %call3, i64 noundef %addr) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry
  %retval.0 = phi %struct.pmd_t* [ null, %entry ], [ null, %if.end ], [ %call7, %if.end6 ]
  ret %struct.pmd_t* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* nocapture noundef readonly %pmd) unnamed_addr #6 {
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
  %call4 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %add.ptr3) #17
  ret %struct.spinlock* %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #6 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #17
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #17
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vm_insert_pages(%struct.vm_area_struct* nocapture noundef %vma, i64 noundef %addr, %struct.page** nocapture noundef readonly %pages, i64* nocapture noundef %num) local_unnamed_addr #3 {
entry:
  %0 = load i64, i64* %num, align 8
  %cmp11.not = icmp eq i64 %0, 0
  br i1 %cmp11.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %idx.012 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %mul = shl i64 %idx.012, 12
  %add = add i64 %mul, %addr
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idx.012
  %1 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call = call i32 @vm_insert_page(%struct.vm_area_struct* noundef %vma, i64 noundef %add, %struct.page* noundef %1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %idx.012, 1
  %exitcond.not = icmp eq i64 %inc, %0
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %idx.0.lcssa = phi i64 [ 0, %entry ], [ %idx.012, %for.body ], [ %0, %for.inc ]
  %err.1 = phi i32 [ -22, %entry ], [ %call, %for.body ], [ 0, %for.inc ]
  %sub = sub i64 %0, %idx.0.lcssa
  store i64 %sub, i64* %num, align 8
  ret i32 %err.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vm_insert_page(%struct.vm_area_struct* nocapture noundef %vma, i64 noundef %addr, %struct.page* noundef %page) local_unnamed_addr #3 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %0, %addr
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %1 = load i64, i64* %vm_end, align 8
  %cmp1.not = icmp ugt i64 %1, %addr
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call fastcc i32 @page_count(%struct.page* noundef %page) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %and = and i64 %2, 268435456
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %do.body, label %if.end34

do.body:                                          ; preds = %if.end3
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %3 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call6 = call fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %3) #17
  br i1 %call6, label %do.body10, label %do.body15, !prof !11

do.body10:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 1942; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !17
  unreachable

do.body15:                                        ; preds = %do.body
  %4 = load i64, i64* %vm_flags, align 8
  %and17 = and i64 %4, 1024
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %do.end32, label %do.body27, !prof !9

do.body27:                                        ; preds = %do.body15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 1943; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !18
  unreachable

do.end32:                                         ; preds = %do.body15
  %or = or i64 %4, 268435456
  store i64 %or, i64* %vm_flags, align 8
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end3
  %coerce.dive = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %5 = load i64, i64* %coerce.dive, align 8
  %call35 = call fastcc i32 @insert_page(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, %struct.page* noundef %page, i64 %5) #17
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %if.end34
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ -14, %lor.lhs.false ], [ -14, %entry ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_count(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 3, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %mmap_lock) #18
  %cmp = icmp ne i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @insert_page(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %addr, %struct.page* noundef %page, i64 %prot.coerce) unnamed_addr #3 {
entry:
  %ptl = alloca %struct.spinlock*, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %1 = bitcast %struct.spinlock** %ptl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #19
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8, !annotation !16
  %call = call fastcc i32 @validate_page_before_insert(%struct.page* noundef %page) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.pte_t* @get_locked_pte(%struct.mm_struct* noundef %0, i64 noundef %addr, %struct.spinlock** noundef nonnull %ptl) #17
  %tobool3.not = icmp eq %struct.pte_t* %call2, null
  br i1 %tobool3.not, label %out, label %if.end5

if.end5:                                          ; preds = %if.end
  %call7 = call fastcc i32 @insert_page_into_pte_locked(%struct.mm_struct* noundef %0, %struct.pte_t* noundef nonnull %call2, %struct.page* noundef %page, i64 %prot.coerce) #17
  %2 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %out

out:                                              ; preds = %if.end, %entry, %if.end5
  %retval1.0 = phi i32 [ %call, %entry ], [ %call7, %if.end5 ], [ -12, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  ret i32 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vm_map_pages(%struct.vm_area_struct* nocapture noundef %vma, %struct.page** nocapture noundef readonly %pages, i64 noundef %num) local_unnamed_addr #3 {
entry:
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %0 = load i64, i64* %vm_pgoff, align 8
  %call = call fastcc i32 @__vm_map_pages(%struct.vm_area_struct* noundef %vma, %struct.page** noundef %pages, i64 noundef %num, i64 noundef %0) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__vm_map_pages(%struct.vm_area_struct* nocapture noundef %vma, %struct.page** nocapture noundef readonly %pages, i64 noundef %num, i64 noundef %offset) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %vma) #17
  %cmp.not = icmp ule i64 %num, %offset
  %sub = sub i64 %num, %offset
  %cmp1 = icmp ugt i64 %call, %sub
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp430.not = icmp eq i64 %call, 0
  br i1 %cmp430.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end11
  %conv33 = phi i64 [ %conv, %if.end11 ], [ 0, %for.body.preheader ]
  %uaddr.031 = phi i64 [ %add12, %if.end11 ], [ %0, %for.body.preheader ]
  %add = add i64 %conv33, %offset
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %add
  %1 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call7 = call i32 @vm_insert_page(%struct.vm_area_struct* noundef %vma, i64 noundef %uaddr.031, %struct.page* noundef %1) #17
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %for.body
  %add12 = add i64 %uaddr.031, 4096
  %inc = shl nsw i64 %conv33, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %cmp4 = icmp ugt i64 %call, %conv
  br i1 %cmp4, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end11, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ -6, %entry ], [ 0, %for.cond.preheader ], [ %call7, %for.body ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vm_map_pages_zero(%struct.vm_area_struct* nocapture noundef %vma, %struct.page** nocapture noundef readonly %pages, i64 noundef %num) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__vm_map_pages(%struct.vm_area_struct* noundef %vma, %struct.page** noundef %pages, i64 noundef %num, i64 noundef 0) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmf_insert_pfn_prot(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %pfn, i64 %pgprot.coerce) local_unnamed_addr #3 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 268436480
  switch i64 %and, label %do.body26 [
    i64 0, label %do.body4
    i64 268436480, label %do.body20
  ], !prof !19

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2114; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !20
  unreachable

do.body20:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2116; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !21
  unreachable

do.body26:                                        ; preds = %entry
  %and28 = and i64 %0, 1024
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %do.body46, label %land.rhs

land.rhs:                                         ; preds = %do.body26
  %call = call fastcc i1 @is_cow_mapping(i64 noundef %0) #17
  br i1 %call, label %do.body40, label %do.body46, !prof !11

do.body40:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2117; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !22
  unreachable

do.body46:                                        ; preds = %do.body26, %land.rhs
  %and48 = and i64 %0, 268435456
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %do.end67, label %land.rhs50

land.rhs50:                                       ; preds = %do.body46
  %call51 = call i32 @pfn_valid(i64 noundef %pfn) #18
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.end67, label %do.body62, !prof !9

do.body62:                                        ; preds = %land.rhs50
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2118; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !23
  unreachable

do.end67:                                         ; preds = %do.body46, %land.rhs50
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %cmp68 = icmp ugt i64 %1, %addr
  br i1 %cmp68, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end67
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %2 = load i64, i64* %vm_end, align 8
  %cmp70.not = icmp ugt i64 %2, %addr
  br i1 %cmp70.not, label %if.end73, label %return

if.end73:                                         ; preds = %lor.lhs.false
  %call82 = call fastcc i64 @__pfn_to_pfn_t(i64 noundef %pfn) #17
  %call86 = call fastcc i32 @insert_pfn(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %call82, i64 %pgprot.coerce, i1 noundef false) #17
  br label %return

return:                                           ; preds = %do.end67, %lor.lhs.false, %if.end73
  %retval.0 = phi i32 [ %call86, %if.end73 ], [ 2, %lor.lhs.false ], [ 2, %do.end67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__pfn_to_pfn_t(i64 noundef %pfn) unnamed_addr #2 {
entry:
  %or = or i64 %pfn, 2305843009213693952
  ret i64 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @insert_pfn(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce, i64 %prot.coerce, i1 noundef %mkwrite) unnamed_addr #3 {
entry:
  %ptl = alloca %struct.spinlock*, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %1 = bitcast %struct.spinlock** %ptl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #19
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8, !annotation !16
  %call = call fastcc %struct.pte_t* @get_locked_pte(%struct.mm_struct* noundef %0, i64 noundef %addr, %struct.spinlock** noundef nonnull %ptl) #17
  %tobool.not = icmp eq %struct.pte_t* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pte3 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call, i64 0, i32 0
  %2 = load i64, i64* %pte3, align 8
  %tobool4.not = icmp eq i64 %2, 0
  br i1 %tobool4.not, label %if.end52, label %if.then5

if.then5:                                         ; preds = %if.end
  br i1 %mkwrite, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.then5
  %and = lshr i64 %2, 12
  %shr = and i64 %and, 68719476735
  %call10 = call fastcc i64 @pfn_t_to_pfn(i64 %pfn.coerce) #17
  %cmp.not = icmp eq i64 %shr, %call10
  br i1 %cmp.not, label %if.end34, label %if.then11

if.then11:                                        ; preds = %if.then7
  %call15 = call fastcc i32 @is_zero_pfn(i64 noundef %shr) #17
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then25, label %do.body, !prof !11

if.then25:                                        ; preds = %if.then11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2054; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !24
  br label %do.body

if.end34:                                         ; preds = %if.then7
  %call37 = call fastcc i64 @pte_mkyoung(i64 %2) #17
  %call41 = call fastcc i64 @pte_mkdirty(i64 %call37) #17
  %call44 = call fastcc i64 @maybe_mkwrite(i64 %call41, %struct.vm_area_struct* noundef %vma) #17
  %call47 = call i32 @ptep_set_access_flags(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, %struct.pte_t* noundef nonnull %call, i64 %call44, i32 noundef 1) #18
  br label %do.body

if.end52:                                         ; preds = %if.end
  %call54 = call fastcc i1 @pfn_t_devmap(i64 %pfn.coerce) #17
  %call60 = call fastcc i64 @pfn_t_pte(i64 %pfn.coerce, i64 %prot.coerce) #17
  br i1 %call54, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end52
  %call63 = call fastcc i64 @pte_mkdevmap(i64 %call60) #17
  br label %if.end74

if.else:                                          ; preds = %if.end52
  %call72 = call fastcc i64 @pte_mkspecial(i64 %call60) #17
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then55
  %entry2.sroa.0.0 = phi i64 [ %call63, %if.then55 ], [ %call72, %if.else ]
  br i1 %mkwrite, label %if.then76, label %if.end89

if.then76:                                        ; preds = %if.end74
  %call79 = call fastcc i64 @pte_mkyoung(i64 %entry2.sroa.0.0) #17
  %call84 = call fastcc i64 @pte_mkdirty(i64 %call79) #17
  %call87 = call fastcc i64 @maybe_mkwrite(i64 %call84, %struct.vm_area_struct* noundef %vma) #17
  br label %if.end89

if.end89:                                         ; preds = %if.then76, %if.end74
  %entry2.sroa.0.1 = phi i64 [ %call87, %if.then76 ], [ %entry2.sroa.0.0, %if.end74 ]
  call fastcc void @set_pte_at(%struct.pte_t* noundef nonnull %call, i64 %entry2.sroa.0.1) #17
  br label %do.body

do.body:                                          ; preds = %if.end34, %if.then11, %if.then25, %if.end89, %if.then5
  %3 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body
  %retval.0 = phi i32 [ 256, %do.body ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmf_insert_pfn(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %pfn) local_unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call i32 @vmf_insert_pfn_prot(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %pfn, i64 %0) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmf_insert_mixed_prot(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce, i64 %pgprot.coerce) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__vm_insert_mixed(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce, i64 %pgprot.coerce, i1 noundef false) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__vm_insert_mixed(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce, i64 %pgprot.coerce, i1 noundef %mkwrite) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @vm_mixed_ok(%struct.vm_area_struct* noundef %vma, i64 %pfn.coerce) #17
  br i1 %call, label %do.end10, label %do.body5, !prof !9

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2180; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !25
  unreachable

do.end10:                                         ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %0, %addr
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end10
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %1 = load i64, i64* %vm_end, align 8
  %cmp12.not = icmp ugt i64 %1, %addr
  br i1 %cmp12.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %call26 = call fastcc i32 @insert_pfn(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce, i64 %pgprot.coerce, i1 noundef %mkwrite) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false, %if.end15
  %retval.0 = phi i32 [ %call26, %if.end15 ], [ 2, %lor.lhs.false ], [ 2, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmf_insert_mixed(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce) local_unnamed_addr #3 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc i32 @__vm_insert_mixed(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce, i64 %0, i1 noundef false) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmf_insert_mixed_mkwrite(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce) local_unnamed_addr #3 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc i32 @__vm_insert_mixed(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 %pfn.coerce, i64 %0, i1 noundef true) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remap_pfn_range_notrack(%struct.vm_area_struct* nocapture noundef %vma, i64 noundef %addr, i64 noundef %pfn, i64 noundef %size, i64 %prot.coerce) local_unnamed_addr #3 {
entry:
  %add = add i64 %size, 4095
  %and = and i64 %add, -4096
  %add1 = add i64 %and, %addr
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %and2 = and i64 %addr, 4095
  %cmp.not = icmp eq i64 %and2, 0
  br i1 %cmp.not, label %if.end19, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2383; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !26
  br label %cleanup

if.end19:                                         ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %call = call fastcc i1 @is_cow_mapping(i64 noundef %1) #17
  br i1 %call, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end19
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %2 = load i64, i64* %vm_start, align 8
  %cmp21.not = icmp eq i64 %2, %addr
  br i1 %cmp21.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then20
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %3 = load i64, i64* %vm_end, align 8
  %cmp23.not = icmp eq i64 %add1, %3
  br i1 %cmp23.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  store i64 %pfn, i64* %vm_pgoff, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end19
  %or = or i64 %1, 67388416
  store i64 %or, i64* %vm_flags, align 8
  %cmp29.not = icmp ugt i64 %add1, %addr
  br i1 %cmp29.not, label %do.end45, label %do.body39, !prof !9

do.body39:                                        ; preds = %if.end27
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2412; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !27
  unreachable

do.end45:                                         ; preds = %if.end27
  %shr = lshr i64 %addr, 12
  %sub = sub i64 %pfn, %shr
  %pgd46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 8
  %4 = load %struct.pgd_t*, %struct.pgd_t** %pgd46, align 8
  %call47 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %4, i64 noundef %addr) #17
  %sub53 = add i64 %add1, -1
  br label %do.body48

do.body48:                                        ; preds = %do.cond63, %do.end45
  %pgd.0 = phi %struct.pgd_t* [ %call47, %do.end45 ], [ %incdec.ptr, %do.cond63 ]
  %addr.addr.0 = phi i64 [ %addr, %do.end45 ], [ %cond, %do.cond63 ]
  %add49 = add i64 %addr.addr.0, 1073741824
  %and50 = and i64 %add49, -1073741824
  %sub52 = add i64 %and50, -1
  %cmp54 = icmp ult i64 %sub52, %sub53
  %cond = select i1 %cmp54, i64 %and50, i64 %add1
  %shr56 = lshr i64 %addr.addr.0, 12
  %add57 = add i64 %sub, %shr56
  %call59 = call fastcc i32 @remap_p4d_range(%struct.mm_struct* noundef %0, %struct.pgd_t* noundef %pgd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 noundef %add57, i64 %prot.coerce) #17
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.cond63, label %cleanup

do.cond63:                                        ; preds = %do.body48
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %cmp64.not = icmp eq i64 %cond, %add1
  br i1 %cmp64.not, label %cleanup, label %do.body48

cleanup:                                          ; preds = %do.cond63, %do.body48, %if.then, %if.then20, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %lor.lhs.false ], [ -22, %if.then20 ], [ 0, %do.cond63 ], [ %call59, %do.body48 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @remap_p4d_range(%struct.mm_struct* noundef %mm, %struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, i64 noundef %pfn, i64 %prot.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_alloc(%struct.pgd_t* noundef %pgd) #17
  %tobool.not = icmp eq %struct.p4d_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call3 = call fastcc i32 @remap_pud_range(%struct.mm_struct* noundef %mm, %struct.p4d_t* noundef nonnull %call, i64 noundef %addr, i64 noundef %end, i64 noundef %pfn, i64 %prot.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call3, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remap_pfn_range(%struct.vm_area_struct* nocapture noundef %vma, i64 noundef %addr, i64 noundef %pfn, i64 noundef %size, i64 %prot.coerce) local_unnamed_addr #3 {
entry:
  %call2 = call i32 @remap_pfn_range_notrack(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %pfn, i64 noundef %size, i64 %prot.coerce) #17
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vm_iomap_memory(%struct.vm_area_struct* nocapture noundef %vma, i64 noundef %start, i64 noundef %len) local_unnamed_addr #3 {
entry:
  %0 = xor i64 %start, -1
  %cmp = icmp ult i64 %0, %len
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %start, 4095
  %shr = lshr i64 %start, 12
  %add1 = add i64 %len, 4095
  %add2 = add i64 %add1, %and
  %shr3 = lshr i64 %add2, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %1 = load i64, i64* %vm_pgoff, align 8
  %cmp8 = icmp ult i64 %shr3, %1
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %sub = sub i64 %shr3, %1
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %2 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %sub14 = sub i64 %2, %3
  %shr15 = lshr i64 %sub14, 12
  %cmp16 = icmp ugt i64 %shr15, %sub
  br i1 %cmp16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end10
  %add12 = add i64 %1, %shr
  %coerce.dive = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 7, i32 0
  %4 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i32 @io_remap_pfn_range(%struct.vm_area_struct* noundef %vma, i64 noundef %3, i64 noundef %add12, i64 noundef %sub14, i64 %4) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end, %entry, %if.end18
  %retval.0 = phi i32 [ %call, %if.end18 ], [ -22, %entry ], [ -22, %if.end ], [ -22, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @io_remap_pfn_range(%struct.vm_area_struct* nocapture noundef %vma, i64 noundef %addr, i64 noundef %pfn, i64 noundef %size, i64 %prot.coerce) unnamed_addr #3 {
entry:
  %call = call i32 @remap_pfn_range(%struct.vm_area_struct* noundef %vma, i64 noundef %addr, i64 noundef %pfn, i64 noundef %size, i64 %prot.coerce) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @apply_to_page_range(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %size, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__apply_to_page_range(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %size, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef true) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__apply_to_page_range(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %size, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef %create) unnamed_addr #3 {
entry:
  %mask = alloca i32, align 4
  %add = add i64 %size, %addr
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %mask, align 4
  %cmp.not = icmp ugt i64 %add, %addr
  br i1 %cmp.not, label %if.end16, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2667; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !28
  br label %cleanup

if.end16:                                         ; preds = %entry
  %pgd17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %1 = load %struct.pgd_t*, %struct.pgd_t** %pgd17, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %addr) #17
  %sub20 = add i64 %add, -1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end16
  %pgd.0 = phi %struct.pgd_t* [ %call, %if.end16 ], [ %incdec.ptr, %do.cond ]
  %addr.addr.0 = phi i64 [ %addr, %if.end16 ], [ %cond, %do.cond ]
  %add18 = add i64 %addr.addr.0, 1073741824
  %and = and i64 %add18, -1073741824
  %sub = add i64 %and, -1
  %cmp21 = icmp ult i64 %sub, %sub20
  %cond = select i1 %cmp21, i64 %and, i64 %add
  %call87 = call fastcc i32 @apply_to_p4d_range(%struct.mm_struct* noundef %mm, %struct.pgd_t* noundef %pgd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef %create, i32* noundef nonnull %mask) #17
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.cond, label %cleanup

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %cmp91.not = icmp eq i64 %cond, %add
  br i1 %cmp91.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.body, %do.cond, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %do.cond ], [ %call87, %do.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @apply_to_existing_page_range(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %size, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @__apply_to_page_range(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %size, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef false) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @finish_mkwrite_fault(%struct.vm_fault* nocapture noundef %vmf) local_unnamed_addr #3 {
entry:
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %and = and i64 %1, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 3153; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %2 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %call = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %2) #17
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %3 = load i64, i64* %address, align 8
  %call18 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %2, i64 noundef %3) #17
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call18, %struct.pte_t** %pte, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call18, i64 0, i32 0
  %4 = load i64, i64* %coerce.dive, align 8
  %coerce.dive21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 4, i32 0, i32 0
  %5 = load i64, i64* %coerce.dive21, align 8
  %call22 = call fastcc i32 @pte_same(i64 %4, i64 %5) #17
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end
  %6 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i50 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i50) #18
  br label %return

if.end30:                                         ; preds = %if.end
  call fastcc void @wp_page_reuse(%struct.vm_fault* noundef %vmf) #17
  br label %return

return:                                           ; preds = %if.end30, %if.then24
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 256, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pte_same(i64 %pte_a.coerce, i64 %pte_b.coerce) unnamed_addr #2 {
entry:
  %cmp = icmp eq i64 %pte_a.coerce, %pte_b.coerce
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wp_page_reuse(%struct.vm_fault* nocapture noundef readonly %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 4, i32 0, i32 0
  %1 = load i64, i64* %pte, align 8
  %call5 = call fastcc i64 @pte_mkyoung(i64 %1) #17
  %call9 = call fastcc i64 @pte_mkdirty(i64 %call5) #17
  %call12 = call fastcc i64 @maybe_mkwrite(i64 %call9, %struct.vm_area_struct* noundef %0) #17
  %2 = load i64, i64* %address, align 8
  %pte15 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  %3 = load %struct.pte_t*, %struct.pte_t** %pte15, align 8
  %call17 = call i32 @ptep_set_access_flags(%struct.vm_area_struct* noundef %0, i64 noundef %2, %struct.pte_t* noundef %3, i64 %call12, i32 noundef 1) #18
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  %4 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  call fastcc void @count_vm_event(i32 noundef 24) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unmap_mapping_page(%struct.page* noundef %page) local_unnamed_addr #3 {
entry:
  %details = alloca %struct.zap_details, align 8
  %mapping1 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %0 = load %struct.address_space*, %struct.address_space** %mapping1, align 8
  %1 = bitcast %struct.zap_details* %details to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #19
  %check_mapping = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 0
  store %struct.address_space* %0, %struct.address_space** %check_mapping, align 8
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %2 = load i64, i64* %index, align 8
  %first_index = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 1
  store i64 %2, i64* %first_index, align 8
  %last_index = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 2
  store i64 %2, i64* %last_index, align 8
  %single_page = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 3
  store %struct.page* %page, %struct.page** %single_page, align 8
  call fastcc void @i_mmap_lock_write(%struct.address_space* noundef %0) #17
  %i_mmap = getelementptr inbounds %struct.address_space, %struct.address_space* %0, i64 0, i32 5
  %rb_node = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %i_mmap, i64 0, i32 0, i32 0
  %3 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp.not = icmp eq %struct.rb_node* %3, null
  br i1 %cmp.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call fastcc void @unmap_mapping_range_tree(%struct.rb_root_cached* noundef %i_mmap, %struct.zap_details* noundef nonnull %details) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %0) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_lock_write(%struct.address_space* noundef %mapping) unnamed_addr #3 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @down_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unmap_mapping_range_tree(%struct.rb_root_cached* noundef %root, %struct.zap_details* noundef %details) unnamed_addr #3 {
entry:
  %first_index = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 1
  %0 = load i64, i64* %first_index, align 8
  %last_index = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 2
  %1 = load i64, i64* %last_index, align 8
  %call = call %struct.vm_area_struct* @vma_interval_tree_iter_first(%struct.rb_root_cached* noundef %root, i64 noundef %0, i64 noundef %1) #18
  %tobool.not43 = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not43, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %vma.044 = phi %struct.vm_area_struct* [ %call16, %for.body ], [ %call, %entry ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.044, i64 0, i32 13
  %2 = load i64, i64* %vm_pgoff, align 8
  %call1 = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef nonnull %vma.044) #17
  %add = add i64 %2, -1
  %sub = add i64 %add, %call1
  %3 = load i64, i64* %first_index, align 8
  %4 = load i64, i64* %last_index, align 8
  %cmp4 = icmp ugt i64 %4, %sub
  %zea.0 = select i1 %cmp4, i64 %sub, i64 %4
  %5 = call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %shl = shl i64 %5, 12
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.044, i64 0, i32 0
  %6 = load i64, i64* %vm_start, align 8
  %add8 = add i64 %shl, %6
  %sub9 = sub i64 %zea.0, %2
  %add10 = shl i64 %sub9, 12
  %shl11 = add i64 %6, 4096
  %add13 = add i64 %shl11, %add10
  call fastcc void @unmap_mapping_range_vma(%struct.vm_area_struct* noundef nonnull %vma.044, i64 noundef %add8, i64 noundef %add13, %struct.zap_details* noundef %details) #17
  %7 = load i64, i64* %first_index, align 8
  %8 = load i64, i64* %last_index, align 8
  %call16 = call %struct.vm_area_struct* @vma_interval_tree_iter_next(%struct.vm_area_struct* noundef nonnull %vma.044, i64 noundef %7, i64 noundef %8) #18
  %tobool.not = icmp eq %struct.vm_area_struct* %call16, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping) unnamed_addr #3 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @up_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unmap_mapping_pages(%struct.address_space* noundef %mapping, i64 noundef %start, i64 noundef %nr, i1 noundef %even_cows) local_unnamed_addr #3 {
entry:
  %details = alloca %struct.zap_details, align 8
  %0 = bitcast %struct.zap_details* %details to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 3
  %2 = bitcast %struct.page** %1 to i64*
  store i64 0, i64* %2, align 8
  %cond = select i1 %even_cows, %struct.address_space* null, %struct.address_space* %mapping
  %check_mapping = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 0
  store %struct.address_space* %cond, %struct.address_space** %check_mapping, align 8
  %first_index = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 1
  store i64 %start, i64* %first_index, align 8
  %add = add i64 %start, -1
  %sub = add i64 %add, %nr
  %last_index = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 2
  %cmp = icmp ult i64 %sub, %start
  %spec.select = select i1 %cmp, i64 -1, i64 %sub
  store i64 %spec.select, i64* %last_index, align 8
  call fastcc void @i_mmap_lock_write(%struct.address_space* noundef %mapping) #17
  %i_mmap = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 5
  %rb_node = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %i_mmap, i64 0, i32 0, i32 0
  %3 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp4.not = icmp eq %struct.rb_node* %3, null
  br i1 %cmp4.not, label %if.end10, label %if.then8, !prof !9

if.then8:                                         ; preds = %entry
  call fastcc void @unmap_mapping_range_tree(%struct.rb_root_cached* noundef %i_mmap, %struct.zap_details* noundef nonnull %details) #17
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %entry
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unmap_mapping_range(%struct.address_space* noundef %mapping, i64 noundef %holebegin, i64 noundef %holelen, i32 noundef %even_cows) local_unnamed_addr #3 {
entry:
  %shr = ashr i64 %holebegin, 12
  %sub = add i64 %holelen, 4095
  %shr1 = lshr i64 %sub, 12
  %tobool = icmp ne i32 %even_cows, 0
  call void @unmap_mapping_pages(%struct.address_space* noundef %mapping, i64 noundef %shr, i64 noundef %shr1, i1 noundef %tobool) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @do_swap_page(%struct.vm_fault* nocapture noundef readonly %vmf) local_unnamed_addr #6 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  call fastcc void @numa_node_id() #17
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) #17
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_event(i32 noundef %item) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_mm_counter_fast(%struct.mm_struct* noundef %mm, i32 noundef %member, i32 noundef %val) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %cmp = icmp eq %struct.mm_struct* %2, %mm
  br i1 %cmp, label %if.then, label %if.else, !prof !9

if.then:                                          ; preds = %entry
  %3 = zext i32 %member to i64
  %arrayidx = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 38, i32 1, i64 %3
  %4 = load i32, i32* %arrayidx, align 4
  %add = add i32 %4, %val
  store i32 %add, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %conv3 = sext i32 %val to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member, i64 noundef %conv3) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @maybe_mkwrite(i64 %pte.coerce, %struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @pte_mkwrite(i64 %pte.coerce) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pte.sroa.0.0 = phi i64 [ %call, %if.then ], [ %pte.coerce, %entry ]
  ret i64 %pte.sroa.0.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkdirty(i64 %pte.coerce) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 36028797018963968) #17
  %and = and i64 %call, 2251799813685248
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call fastcc i64 @clear_pte_bit(i64 %call, i64 128) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pte.sroa.0.0 = phi i64 [ %call10, %if.then ], [ %call, %entry ]
  ret i64 %pte.sroa.0.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_wrprotect(i64 %pte.coerce) unnamed_addr #2 {
entry:
  %0 = and i64 %pte.coerce, 2251799813685376
  %1 = icmp eq i64 %0, 2251799813685248
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @pte_mkdirty(i64 %pte.coerce) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pte.sroa.0.0 = phi i64 [ %call, %if.then ], [ %pte.coerce, %entry ]
  %call10 = call fastcc i64 @clear_pte_bit(i64 %pte.sroa.0.0, i64 2251799813685248) #17
  %call17 = call fastcc i64 @set_pte_bit(i64 %call10, i64 128) #17
  ret i64 %call17
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte_at(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #3 {
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
  call void @__sync_icache_dcache(i64 %pte.coerce) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_new_anon_rmap(%struct.page* noundef, %struct.vm_area_struct* noundef, i64 noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add_inactive_or_unevictable(%struct.page* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_wp_page(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %address12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %1 = load i64, i64* %address12, align 8
  %coerce.dive13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 4, i32 0, i32 0
  %2 = load i64, i64* %coerce.dive13, align 8
  %call14 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %0, i64 noundef %1, i64 %2) #17
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  store %struct.page* %call14, %struct.page** %page, align 8
  %tobool16.not = icmp eq %struct.page* %call14, null
  br i1 %tobool16.not, label %if.then17, label %if.end28

if.then17:                                        ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %3 = load i64, i64* %vm_flags, align 8
  %and = and i64 %3, 10
  %cmp = icmp eq i64 %and, 10
  br i1 %cmp, label %if.then19, label %do.body22

if.then19:                                        ; preds = %if.then17
  %call20 = call fastcc i32 @wp_pfn_shared(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup80

do.body22:                                        ; preds = %if.then17
  %ptl23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  %4 = load %struct.spinlock*, %struct.spinlock** %ptl23, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  %call27 = call fastcc i32 @wp_page_copy(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup80

if.end28:                                         ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call14) #18
  %5 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 1, i32 0, i32 1
  %6 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %7 = ptrtoint %struct.address_space* %6 to i64
  %8 = and i64 %7, 1
  %tobool31.not = icmp eq i64 %8, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end28
  %9 = load %struct.page*, %struct.page** %page, align 8
  %call37 = call fastcc i32 @page_count(%struct.page* noundef %9) #17
  %cmp38.not = icmp eq i32 %call37, 1
  br i1 %cmp38.not, label %if.end41, label %copy

if.end41:                                         ; preds = %if.then32
  %call42 = call fastcc i32 @trylock_page(%struct.page* noundef %9) #17
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %copy, label %if.end45

if.end45:                                         ; preds = %if.end41
  %call49 = call fastcc i32 @page_mapcount(%struct.page* noundef %9) #17
  %cmp50.not = icmp eq i32 %call49, 1
  br i1 %cmp50.not, label %lor.lhs.false52, label %if.then56

lor.lhs.false52:                                  ; preds = %if.end45
  %call53 = call fastcc i32 @page_count(%struct.page* noundef %9) #17
  %cmp54.not = icmp eq i32 %call53, 1
  br i1 %cmp54.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %lor.lhs.false52, %if.end45
  call void @unlock_page(%struct.page* noundef %9) #18
  br label %copy

if.end57:                                         ; preds = %lor.lhs.false52
  call void @unlock_page(%struct.page* noundef %9) #18
  call fastcc void @wp_page_reuse(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup80

if.else:                                          ; preds = %if.end28
  %vm_flags58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %10 = load i64, i64* %vm_flags58, align 8
  %and59 = and i64 %10, 10
  %cmp60 = icmp eq i64 %and59, 10
  br i1 %cmp60, label %if.then69, label %copy, !prof !11

if.then69:                                        ; preds = %if.else
  %call70 = call fastcc i32 @wp_page_shared(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup80

copy:                                             ; preds = %if.then32, %if.end41, %if.then56, %if.else
  %11 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @get_page(%struct.page* noundef %11) #17
  %ptl75 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  %12 = load %struct.spinlock*, %struct.spinlock** %ptl75, align 8
  %rlock.i117 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i117) #18
  %call79 = call fastcc i32 @wp_page_copy(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup80

cleanup80:                                        ; preds = %if.end57, %copy, %if.then69, %do.body22, %if.then19
  %retval.1 = phi i32 [ %call79, %copy ], [ %call70, %if.then69 ], [ %call20, %if.then19 ], [ %call27, %do.body22 ], [ 8, %if.end57 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @do_set_pmd(%struct.vm_fault* nocapture noundef readnone %vmf, %struct.page* nocapture noundef readnone %page) local_unnamed_addr #2 {
entry:
  ret i32 2048
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_set_pte(%struct.vm_fault* nocapture noundef readonly %vmf, %struct.page* noundef %page, i64 noundef %addr) local_unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %pgprot = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 7, i32 0
  %3 = load i64, i64* %pgprot, align 8
  %or = or i64 %shl, %3
  br i1 %tobool.not, label %if.else26, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %entry
  %call15 = call fastcc i64 @pte_mkdirty(i64 %or) #17
  %call18 = call fastcc i64 @maybe_mkwrite(i64 %call15, %struct.vm_area_struct* noundef %0) #17
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %4 = load i64, i64* %vm_flags, align 8
  %and23 = and i64 %4, 8
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.else26

if.then25:                                        ; preds = %land.lhs.true22
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %5 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @add_mm_counter_fast(%struct.mm_struct* noundef %5, i32 noundef 1, i32 noundef 1) #17
  call void @page_add_new_anon_rmap(%struct.page* noundef %page, %struct.vm_area_struct* noundef %0, i64 noundef %addr, i1 noundef false) #18
  call void @lru_cache_add_inactive_or_unevictable(%struct.page* noundef %page, %struct.vm_area_struct* noundef %0) #18
  br label %if.end29

if.else26:                                        ; preds = %entry, %land.lhs.true22
  %entry3.sroa.0.162 = phi i64 [ %call18, %land.lhs.true22 ], [ %or, %entry ]
  %vm_mm27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %6 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm27, align 8
  %call28 = call fastcc i32 @mm_counter_file(%struct.page* noundef %page) #17, !range !32
  call fastcc void @add_mm_counter_fast(%struct.mm_struct* noundef %6, i32 noundef %call28, i32 noundef 1) #17
  call void @page_add_file_rmap(%struct.page* noundef %page, i1 noundef false) #18
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then25
  %entry3.sroa.0.161 = phi i64 [ %entry3.sroa.0.162, %if.else26 ], [ %call18, %if.then25 ]
  %pte31 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  %7 = load %struct.pte_t*, %struct.pte_t** %pte31, align 8
  call fastcc void @set_pte_at(%struct.pte_t* noundef %7, i64 %entry3.sroa.0.161) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkold(i64 %pte.coerce) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 1024) #17
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @mm_counter_file(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 524288
  %tobool.not = icmp eq i64 %2, 0
  %. = select i1 %tobool.not, i32 0, i32 3
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_file_rmap(%struct.page* noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @finish_fault(%struct.vm_fault* nocapture noundef %vmf) local_unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1
  %tobool.not = icmp ne i32 %and, 0
  %vm_flags5.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %.pre.pre = load i64, i64* %vm_flags5.phi.trans.insert.phi.trans.insert, align 8
  %and2 = and i64 %.pre.pre, 8
  %tobool3.not = icmp eq i64 %and2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  %page4 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %cow_page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 5
  %page.0.in = select i1 %or.cond, %struct.page** %cow_page, %struct.page** %page4
  %page.0 = load %struct.page*, %struct.page** %page.0.in, align 8
  %and6 = and i64 %.pre.pre, 8
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %2 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call = call fastcc i32 @check_stable_address_space(%struct.mm_struct* noundef %2) #17
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.then8, %entry
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %3 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %pmd13 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %3, i64 0, i32 0
  %4 = load i64, i64* %pmd13, align 8
  %tobool14.not = icmp eq i64 %4, 0
  br i1 %tobool14.not, label %if.then15, label %if.end69

if.then15:                                        ; preds = %if.end12
  %prealloc_pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 9
  %5 = load %struct.page*, %struct.page** %prealloc_pte, align 8
  %tobool23.not = icmp eq %struct.page* %5, null
  br i1 %tobool23.not, label %land.rhs, label %if.then24

if.then24:                                        ; preds = %if.then15
  %call27 = call fastcc %struct.spinlock* @pmd_lock(%struct.pmd_t* noundef %3) #17
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call27, %struct.spinlock** %ptl, align 8
  %6 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %pmd29 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %6, i64 0, i32 0
  %7 = load i64, i64* %pmd29, align 8
  %tobool30.not = icmp eq i64 %7, 0
  br i1 %tobool30.not, label %if.then34, label %if.end40, !prof !9

if.then34:                                        ; preds = %if.then24
  %vm_mm25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %8 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm25, align 8
  call fastcc void @mm_inc_nr_ptes(%struct.mm_struct* noundef %8) #17
  %9 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %10 = load %struct.page*, %struct.page** %prealloc_pte, align 8
  call fastcc void @pmd_populate(%struct.pmd_t* noundef %9, %struct.page* noundef %10) #17
  store %struct.page* null, %struct.page** %prealloc_pte, align 8
  %.pre153 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.then24
  %11 = phi %struct.spinlock* [ %.pre153, %if.then34 ], [ %call27, %if.then24 ]
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %if.end69

land.rhs:                                         ; preds = %if.then15
  %vm_mm55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %12 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm55, align 8
  %call57 = call i32 @__pte_alloc(%struct.mm_struct* noundef %12, %struct.pmd_t* noundef %3) #17
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end69, label %cleanup, !prof !9

if.end69:                                         ; preds = %if.end40, %land.rhs, %if.end12
  %13 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %call77 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %13) #17
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %14 = load i64, i64* %address, align 8
  %call79 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %13, i64 noundef %14) #17
  %ptl80 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call77, %struct.spinlock** %ptl80, align 8
  %rlock.i151 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call77, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i151) #18
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call79, %struct.pte_t** %pte, align 8
  %pte82 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call79, i64 0, i32 0
  %15 = load i64, i64* %pte82, align 8
  %tobool83.not = icmp eq i64 %15, 0
  br i1 %tobool83.not, label %if.then93, label %if.end96, !prof !9

if.then93:                                        ; preds = %if.end69
  %16 = load i64, i64* %address, align 8
  call void @do_set_pte(%struct.vm_fault* noundef %vmf, %struct.page* noundef %page.0, i64 noundef %16) #17
  br label %if.end96

if.end96:                                         ; preds = %if.end69, %if.then93
  %ret.0 = phi i32 [ 0, %if.then93 ], [ 256, %if.end69 ]
  %17 = load %struct.spinlock*, %struct.spinlock** %ptl80, align 8
  %rlock.i152 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i152) #18
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.then8, %if.end96
  %retval.0 = phi i32 [ %ret.0, %if.end96 ], [ %call, %if.then8 ], [ 1, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @check_stable_address_space(%struct.mm_struct* noundef %mm) unnamed_addr #9 {
entry:
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 21
  %3 = and i32 %2, 2
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @numa_migrate_prep(%struct.page* noundef %page, %struct.vm_area_struct* nocapture noundef readnone %vma, i64 noundef %addr, i32 noundef %page_nid, i32* nocapture noundef %flags) local_unnamed_addr #3 {
entry:
  call fastcc void @get_page(%struct.page* noundef %page) #17
  call fastcc void @numa_node_id() #17
  %cmp = icmp eq i32 %page_nid, 0
  br i1 %cmp, label %do.end2, label %if.end

do.end2:                                          ; preds = %entry
  %0 = load i32, i32* %flags, align 4
  %or = or i32 %0, 8
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry
  ret i32 -1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #17
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #10 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @handle_mm_fault(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %flags, %struct.pt_regs* noundef %regs) local_unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @count_vm_event(i32 noundef 20) #17
  call fastcc void @check_sync_rss_stat(%struct.task_struct* noundef %1) #17
  %call29 = call fastcc i32 @__handle_mm_fault(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %flags) #17
  call fastcc void @mm_account_fault(%struct.pt_regs* noundef %regs, i32 noundef %flags, i32 noundef %call29) #17
  ret i32 %call29
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_sync_rss_stat(%struct.task_struct* noundef %task) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cmp.not = icmp eq %struct.task_struct* %1, %task
  br i1 %cmp.not, label %if.end, label %if.end12, !prof !9

if.end:                                           ; preds = %entry
  %events = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 38, i32 0
  %2 = load i32, i32* %events, align 32
  %inc = add i32 %2, 1
  store i32 %inc, i32* %events, align 32
  %cmp2 = icmp sgt i32 %2, 64
  br i1 %cmp2, label %if.then11, label %if.end12, !prof !11

if.then11:                                        ; preds = %if.end
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call void @sync_mm_rss(%struct.mm_struct* noundef %3) #17
  br label %if.end12

if.end12:                                         ; preds = %entry, %if.then11, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__handle_mm_fault(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %flags) unnamed_addr #3 {
entry:
  %vmf = alloca %struct.vm_fault, align 8
  %0 = bitcast %struct.vm_fault* %vmf to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 56, i1 false), !annotation !16
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma1, align 8
  %gfp_mask = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 1
  %call = call fastcc i32 @__get_fault_gfp_mask(%struct.vm_area_struct* noundef %vma) #17
  store i32 %call, i32* %gfp_mask, align 8
  %pgoff = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 2
  %call2 = call fastcc i64 @linear_page_index(%struct.vm_area_struct* noundef %vma, i64 noundef %address) #17
  store i64 %call2, i64* %pgoff, align 8
  %address3 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %and = and i64 %address, -4096
  store i64 %and, i64* %address3, align 8
  %flags4 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  store i32 %flags, i32* %flags4, align 8
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %3 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 4, i32 0, i32 0
  %cow_page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 5
  store %struct.page* null, %struct.page** %cow_page, align 8
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  store %struct.page* null, %struct.page** %page, align 8
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* null, %struct.pte_t** %pte, align 8
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8
  %prealloc_pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 9
  store %struct.page* null, %struct.page** %prealloc_pte, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %4 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %pgd6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i64 0, i32 0, i32 8
  %5 = load %struct.pgd_t*, %struct.pgd_t** %pgd6, align 8
  %call7 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %5, i64 noundef %address) #17
  %call8 = call fastcc %struct.p4d_t* @p4d_alloc(%struct.pgd_t* noundef %call7) #17
  %tobool.not = icmp eq %struct.p4d_t* %call8, null
  br i1 %tobool.not, label %cleanup145, label %if.end

if.end:                                           ; preds = %entry
  %pud = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 3
  %call9 = call fastcc %struct.pud_t* @pud_alloc(%struct.p4d_t* noundef nonnull %call8) #17
  store %struct.pud_t* %call9, %struct.pud_t** %pud, align 8
  %tobool12.not = icmp eq %struct.pud_t* %call9, null
  br i1 %tobool12.not, label %cleanup145, label %if.else

if.else:                                          ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %call65 = call fastcc %struct.pmd_t* @pmd_alloc(%struct.mm_struct* noundef %4, %struct.pud_t* noundef nonnull %call9, i64 noundef %address) #17
  store %struct.pmd_t* %call65, %struct.pmd_t** %pmd, align 8
  %tobool68.not = icmp eq %struct.pmd_t* %call65, null
  br i1 %tobool68.not, label %cleanup145, label %if.else87

if.else87:                                        ; preds = %if.else
  %6 = getelementptr %struct.pmd_t, %struct.pmd_t* %call65, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  %call144 = call fastcc i32 @handle_pte_fault(%struct.vm_fault* noundef nonnull %vmf) #17
  br label %cleanup145

cleanup145:                                       ; preds = %if.else, %if.end, %entry, %if.else87
  %retval.3 = phi i32 [ %call144, %if.else87 ], [ 1, %entry ], [ 1, %if.end ], [ 1, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #19
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_account_fault(%struct.pt_regs* noundef readnone %regs, i32 noundef %flags, i32 noundef %ret) unnamed_addr #3 {
entry:
  %and = and i32 %ret, 3187
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %ret, 4
  %and3 = and i32 %flags, 32
  %0 = or i32 %and1, %and3
  %.not = icmp eq i32 %0, 0
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #16
  %2 = inttoptr i64 %1 to %struct.task_struct*
  br i1 %.not, label %if.end9, label %if.end9.thread

if.end9:                                          ; preds = %if.end
  %min_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 75
  %3 = load i64, i64* %min_flt, align 8
  %inc8 = add i64 %3, 1
  store i64 %inc8, i64* %min_flt, align 8
  br label %cleanup

if.end9.thread:                                   ; preds = %if.end
  %maj_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 76
  %4 = load i64, i64* %maj_flt, align 32
  %inc = add i64 %4, 1
  store i64 %inc, i64* %maj_flt, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end9.thread, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 %address) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pmd_t* @pmd_alloc_one(%struct.mm_struct* noundef %mm) #17
  %tobool.not = icmp eq %struct.pmd_t* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !35
  %call1 = call fastcc %struct.spinlock* @pud_lock(%struct.mm_struct* noundef %mm) #17
  %coerce.dive3 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive3, align 8
  %and = and i64 %0, 288230376151711745
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call fastcc void @mm_inc_nr_pmds(%struct.mm_struct* noundef %mm) #17
  call fastcc void @pud_populate(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, %struct.pmd_t* noundef nonnull %call) #17
  br label %if.end8

if.else:                                          ; preds = %if.end
  call fastcc void @pmd_free(%struct.pmd_t* noundef nonnull %call) #17
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call1, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pmd_t* @pmd_alloc_one(%struct.mm_struct* noundef readnone %mm) unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.mm_struct* %mm, @init_mm
  %spec.store.select = select i1 %cmp, i32 3520, i32 4197824
  %call = call fastcc %struct.page* @alloc_pages(i32 noundef %spec.store.select) #17
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %entry
  call fastcc void @pgtable_pmd_page_ctor(%struct.page* noundef nonnull %call) #17
  %0 = ptrtoint %struct.page* %call to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to %struct.pmd_t*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2
  %retval.0 = phi %struct.pmd_t* [ %1, %if.end2 ], [ null, %entry ]
  ret %struct.pmd_t* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.spinlock* @pud_lock(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.spinlock* @pud_lockptr(%struct.mm_struct* noundef %mm) #17
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  ret %struct.spinlock* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_inc_nr_pmds(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %pgtables_bytes = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12
  call fastcc void @__ll_sc_atomic64_add(i64 noundef 4096, %struct.atomic64_t* noundef %pgtables_bytes) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pud_populate(%struct.mm_struct* noundef readnone %mm, %struct.pud_t* noundef %pudp, %struct.pmd_t* noundef %pmdp) unnamed_addr #3 {
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
  call fastcc void @__pud_populate(%struct.pud_t* noundef %pudp, i64 noundef %cond5, i64 noundef %or) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_free(%struct.pmd_t* noundef %pmd) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.pmd_t* %pmd to i64
  %and = and i64 %0, 4095
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !9

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/asm-generic/pgalloc.h\22; .popsection; .long 14472b - 14470b; .short 140; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !36
  unreachable

do.end6:                                          ; preds = %entry
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  call fastcc void @pgtable_pmd_page_dtor(%struct.page* noundef %2) #17
  call void @free_pages(i64 noundef %0, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @follow_invalidate_pte(%struct.mm_struct* nocapture noundef readonly %mm, i64 noundef %address, %struct.mmu_notifier_range* noundef writeonly %range, %struct.pte_t** nocapture noundef writeonly %ptepp, %struct.pmd_t** nocapture readnone %pmdpp, %struct.spinlock** nocapture noundef %ptlp) local_unnamed_addr #3 {
entry:
  %pgd1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %0 = load %struct.pgd_t*, %struct.pgd_t** %pgd1, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %address) #17
  %call8 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call) #17
  %call27 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %call8) #17
  %pgd30 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call27, i64 0, i32 0, i32 0, i32 0
  %1 = load i64, i64* %pgd30, align 8
  %and = and i64 %1, 3
  %cmp.not = icmp eq i64 %and, 3
  br i1 %cmp.not, label %if.end47, label %cleanup, !prof !37

if.end47:                                         ; preds = %entry
  %call48 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %call27, i64 noundef %address) #17
  %coerce.dive49 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call48, i64 0, i32 0
  %2 = load i64, i64* %coerce.dive49, align 8
  %and75 = and i64 %2, 3
  %cmp76.not = icmp eq i64 %and75, 3
  br i1 %cmp76.not, label %if.end88, label %cleanup, !prof !37

if.end88:                                         ; preds = %if.end47
  %tobool89.not = icmp eq %struct.mmu_notifier_range* %range, null
  br i1 %tobool89.not, label %if.end94, label %if.then90

if.then90:                                        ; preds = %if.end88
  %and91 = and i64 %address, -4096
  %add93 = add i64 %and91, 4096
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %and91, i64 noundef %add93) #17
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end88
  %call95 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef nonnull %call48) #17
  %call96 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef nonnull %call48, i64 noundef %address) #17
  store %struct.spinlock* %call95, %struct.spinlock** %ptlp, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call95, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %pte = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call96, i64 0, i32 0
  %3 = load i64, i64* %pte, align 8
  %and97 = and i64 %3, 288230376151711745
  %tobool98.not = icmp eq i64 %and97, 0
  br i1 %tobool98.not, label %do.body, label %if.end100

if.end100:                                        ; preds = %if.end94
  store %struct.pte_t* %call96, %struct.pte_t** %ptepp, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end94
  %4 = load %struct.spinlock*, %struct.spinlock** %ptlp, align 8
  %rlock.i156 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i156) #18
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry, %if.end47, %if.end100
  %retval.0 = phi i32 [ 0, %if.end100 ], [ -22, %if.end47 ], [ -22, %entry ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #6 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #17
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #17
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @follow_pte(%struct.mm_struct* nocapture noundef readonly %mm, i64 noundef %address, %struct.pte_t** nocapture noundef writeonly %ptepp, %struct.spinlock** nocapture noundef %ptlp) local_unnamed_addr #3 {
entry:
  %call = call i32 @follow_invalidate_pte(%struct.mm_struct* noundef %mm, i64 noundef %address, %struct.mmu_notifier_range* noundef null, %struct.pte_t** noundef %ptepp, %struct.pmd_t** undef, %struct.spinlock** noundef %ptlp) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @follow_pfn(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address, i64* nocapture noundef writeonly %pfn) local_unnamed_addr #3 {
entry:
  %ptl = alloca %struct.spinlock*, align 8
  %ptep = alloca %struct.pte_t*, align 8
  %0 = bitcast %struct.spinlock** %ptl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8, !annotation !16
  %1 = bitcast %struct.pte_t** %ptep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #19
  store %struct.pte_t* null, %struct.pte_t** %ptep, align 8, !annotation !16
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %and = and i64 %2, 17408
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %3 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call = call i32 @follow_pte(%struct.mm_struct* noundef %3, i64 noundef %address, %struct.pte_t** noundef nonnull %ptep, %struct.spinlock** noundef nonnull %ptl) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = load %struct.pte_t*, %struct.pte_t** %ptep, align 8
  %pte = getelementptr inbounds %struct.pte_t, %struct.pte_t* %4, i64 0, i32 0
  %5 = load i64, i64* %pte, align 8
  %and4 = lshr i64 %5, 12
  %shr = and i64 %and4, 68719476735
  store i64 %shr, i64* %pfn, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__access_remote_vm(%struct.mm_struct* noundef %mm, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %gup_flags) local_unnamed_addr #3 {
entry:
  %vma = alloca %struct.vm_area_struct*, align 8
  %page = alloca %struct.page*, align 8
  %0 = bitcast %struct.vm_area_struct** %vma to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vma, align 8, !annotation !16
  %and = and i32 %gup_flags, 1
  %call = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %mm) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %cleanup37

while.cond.preheader:                             ; preds = %entry
  %tobool1.not74 = icmp eq i32 %len, 0
  br i1 %tobool1.not74, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %1 = bitcast %struct.page** %page to i8*
  %tobool17.not = icmp eq i32 %and, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %addr.addr.078 = phi i64 [ %addr, %while.body.lr.ph ], [ %add, %cleanup ]
  %len.addr.077 = phi i32 [ %len, %while.body.lr.ph ], [ %sub28, %cleanup ]
  %buf.addr.075 = phi i8* [ %buf, %while.body.lr.ph ], [ %add.ptr30, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #19
  store %struct.page* null, %struct.page** %page, align 8
  %call2 = call i64 @get_user_pages_remote(%struct.mm_struct* noundef %mm, i64 noundef %addr.addr.078, i64 noundef 1, i32 noundef %gup_flags, %struct.page** noundef nonnull %page, %struct.vm_area_struct** noundef nonnull %vma, i32* noundef null) #18
  %conv = trunc i64 %call2 to i32
  %cmp = icmp slt i32 %conv, 1
  br i1 %cmp, label %cleanup.thread, label %if.else

cleanup.thread:                                   ; preds = %while.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  br label %while.end

if.else:                                          ; preds = %while.body
  %conv6 = and i64 %addr.addr.078, 4095
  %conv7 = sext i32 %len.addr.077 to i64
  %sub = sub nuw nsw i64 4096, %conv6
  %cmp9 = icmp ult i64 %sub, %conv7
  %conv14 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp9, i32 %conv14, i32 %len.addr.077
  %2 = load %struct.page*, %struct.page** %page, align 8
  %call16 = call fastcc i8* @kmap(%struct.page* noundef %2) #17
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.else
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %add.ptr = getelementptr i8, i8* %call16, i64 %conv6
  %conv19 = sext i32 %spec.select to i64
  call void @copy_to_user_page(%struct.vm_area_struct* noundef %3, %struct.page* noundef %2, i64 noundef %addr.addr.078, i8* noundef %add.ptr, i8* noundef %buf.addr.075, i64 noundef %conv19) #18
  %4 = load %struct.page*, %struct.page** %page, align 8
  %call20 = call i32 @set_page_dirty_lock(%struct.page* noundef %4) #18
  br label %cleanup

if.else21:                                        ; preds = %if.else
  %add.ptr23 = getelementptr i8, i8* %call16, i64 %conv6
  %conv24 = sext i32 %spec.select to i64
  %call25 = call i8* @memcpy(i8* noundef %buf.addr.075, i8* noundef %add.ptr23, i64 noundef %conv24) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.else21
  %idx.ext29.pre-phi = phi i64 [ %conv19, %if.then18 ], [ %conv24, %if.else21 ]
  %5 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %5) #17
  %sub28 = sub i32 %len.addr.077, %spec.select
  %add.ptr30 = getelementptr i8, i8* %buf.addr.075, i64 %idx.ext29.pre-phi
  %add = add i64 %addr.addr.078, %idx.ext29.pre-phi
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  %tobool1.not = icmp eq i32 %sub28, 0
  br i1 %tobool1.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.cond.preheader, %cleanup.thread
  %buf.addr.073 = phi i8* [ %buf.addr.075, %cleanup.thread ], [ %buf, %while.cond.preheader ], [ %add.ptr30, %cleanup ]
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) #17
  %sub.ptr.lhs.cast = ptrtoint i8* %buf.addr.073 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv36 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup37

cleanup37:                                        ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %conv36, %while.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_killable(%struct.rw_semaphore* noundef %mmap_lock) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_user_pages_remote(%struct.mm_struct* noundef, i64 noundef, i64 noundef, i32 noundef, %struct.page** noundef, %struct.vm_area_struct** noundef, i32* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_to_user_page(%struct.vm_area_struct* noundef, %struct.page* noundef, i64 noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @access_remote_vm(%struct.mm_struct* noundef %mm, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %gup_flags) local_unnamed_addr #3 {
entry:
  %call = call i32 @__access_remote_vm(%struct.mm_struct* noundef %mm, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %gup_flags) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @access_process_vm(%struct.task_struct* noundef %tsk, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %gup_flags) local_unnamed_addr #3 {
entry:
  %call = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %tsk) #18
  %tobool.not = icmp eq %struct.mm_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @__access_remote_vm(%struct.mm_struct* noundef nonnull %call, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %gup_flags) #17
  call void @mmput(%struct.mm_struct* noundef nonnull %call) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @print_vma_addr(i8* noundef %prefix, i64 noundef %ip) local_unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %call2 = call fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %2) #17
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %2, i64 noundef %ip) #18
  %tobool.not = icmp eq %struct.vm_area_struct* %call3, null
  br i1 %tobool.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call3, i64 0, i32 14
  %3 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool4.not = icmp eq %struct.file* %3, null
  br i1 %tobool4.not, label %if.end18, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call7 = call i64 @__get_free_pages(i32 noundef 2048, i32 noundef 0) #18
  %tobool8.not = icmp eq i64 %call7, 0
  br i1 %tobool8.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.then5
  %4 = inttoptr i64 %call7 to i8*
  %call10 = call i8* @file_path(%struct.file* noundef nonnull %3, i8* noundef nonnull %4, i32 noundef 4096) #18
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %call10) #17
  %spec.select = select i1 %call11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %call10
  %call14 = call fastcc i8* @kbasename(i8* noundef %spec.select) #17
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call3, i64 0, i32 0
  %5 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call3, i64 0, i32 1
  %6 = load i64, i64* %vm_end, align 8
  %sub = sub i64 %6, %5
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* noundef %prefix, i8* noundef %call14, i64 noundef %5, i64 noundef %sub) #20
  call void @free_pages(i64 noundef %call7, i32 noundef 0) #18
  br label %if.end18

if.end18:                                         ; preds = %if.then5, %if.then9, %land.lhs.true, %if.end
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @file_path(%struct.file* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kbasename(i8* noundef %path) unnamed_addr #3 {
entry:
  %call = call i8* @strrchr(i8* noundef %path, i32 noundef 47) #18
  %tobool.not = icmp eq i8* %call, null
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %cond = select i1 %tobool.not, i8* %path, i8* %add.ptr
  ret i8* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !38
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_pud_range(%struct.mmu_gather* noundef %tlb, %struct.p4d_t* noundef %p4d, i64 noundef %addr, i64 noundef %end, i64 noundef %floor, i64 noundef %ceiling) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #17
  %call1 = call fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

if.end:                                           ; preds = %entry
  call fastcc void @free_pmd_range(%struct.mmu_gather* noundef %tlb, %struct.pud_t* noundef %call, i64 noundef %addr, i64 noundef %end, i64 noundef %floor, i64 noundef %ceiling) #17
  br label %do.end

do.end:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* nocapture noundef readonly %pud) unnamed_addr #6 {
entry:
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %and = and i64 %0, 3
  %cmp.not = icmp ne i64 %and, 3
  %retval.0 = zext i1 %cmp.not to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_pmd_range(%struct.mmu_gather* noundef %tlb, %struct.pud_t* noundef %pud, i64 noundef %addr, i64 noundef %end, i64 noundef %floor, i64 noundef %ceiling) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %addr) #17
  %sub1 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %pmd.0 = phi %struct.pmd_t* [ %call, %entry ], [ %incdec.ptr, %do.cond ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %cond, %do.cond ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub1
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call2 = call fastcc i32 @pmd_none_or_clear_bad(%struct.pmd_t* noundef %pmd.0) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.cond

if.end:                                           ; preds = %do.body
  call fastcc void @free_pte_range(%struct.mmu_gather* noundef %tlb, %struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0) #17
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.end
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %cmp3.not = icmp eq i64 %cond, %end
  br i1 %cmp3.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  %and4 = and i64 %addr, -1073741824
  %cmp5 = icmp ult i64 %and4, %floor
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %do.end
  %tobool8.not = icmp eq i64 %ceiling, 0
  br i1 %tobool8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end7
  %and10 = and i64 %ceiling, -1073741824
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7
  %ceiling.addr.0 = phi i64 [ %and10, %if.then9 ], [ 0, %if.end7 ]
  %sub16 = add i64 %ceiling.addr.0, -1
  %cmp17 = icmp ugt i64 %sub1, %sub16
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call20 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %and4) #17
  call fastcc void @pud_clear(%struct.pud_t* noundef %pud) #17
  call fastcc void @tlb_flush_pud_range(%struct.mmu_gather* noundef %tlb, i64 noundef %and4) #17
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, i16* %freed_tables, align 8
  call fastcc void @__pmd_free_tlb(%struct.mmu_gather* noundef %tlb, %struct.pmd_t* noundef nonnull %call20) #17
  %mm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mm_dec_nr_pmds(%struct.mm_struct* noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9, %do.end, %if.end19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pmd_none_or_clear_bad(%struct.pmd_t* noundef %pmd) unnamed_addr #3 {
entry:
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %0, 3
  %cmp.not = icmp eq i64 %and, 3
  br i1 %cmp.not, label %return, label %if.then6, !prof !9

if.then6:                                         ; preds = %if.end
  call void @pmd_clear_bad(%struct.pmd_t* noundef %pmd) #18
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_pte_range(%struct.mmu_gather* noundef %tlb, %struct.pmd_t* noundef %pmd, i64 noundef %addr) unnamed_addr #3 {
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
  call fastcc void @pmd_clear(%struct.pmd_t* noundef %pmd) #17
  call fastcc void @tlb_flush_pmd_range(%struct.mmu_gather* noundef %tlb, i64 noundef %addr) #17
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, i16* %freed_tables, align 8
  call fastcc void @__pte_free_tlb(%struct.mmu_gather* noundef %tlb, %struct.page* noundef %add.ptr3) #17
  %mm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mm_dec_nr_ptes(%struct.mm_struct* noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pud_clear(%struct.pud_t* noundef %pudp) unnamed_addr #3 {
entry:
  call fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @tlb_flush_pud_range(%struct.mmu_gather* nocapture noundef %tlb, i64 noundef %address) unnamed_addr #12 {
entry:
  call fastcc void @__tlb_adjust_range(%struct.mmu_gather* noundef %tlb, i64 noundef %address) #17
  %cleared_puds = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %cleared_puds, align 8
  %bf.set = or i16 %bf.load, 32
  store i16 %bf.set, i16* %cleared_puds, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pmd_free_tlb(%struct.mmu_gather* noundef %tlb, %struct.pmd_t* noundef %pmdp) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.pmd_t* %pmdp to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  call fastcc void @pgtable_pmd_page_dtor(%struct.page* noundef %2) #17
  %3 = inttoptr i64 %add to i8*
  call void @tlb_remove_table(%struct.mmu_gather* noundef %tlb, i8* noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_dec_nr_pmds(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %pgtables_bytes = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12
  call fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %pgtables_bytes) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(%struct.pmd_t* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_clear(%struct.pmd_t* noundef %pmdp) unnamed_addr #3 {
entry:
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @tlb_flush_pmd_range(%struct.mmu_gather* nocapture noundef %tlb, i64 noundef %address) unnamed_addr #12 {
entry:
  call fastcc void @__tlb_adjust_range(%struct.mmu_gather* noundef %tlb, i64 noundef %address) #17
  %cleared_pmds = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %cleared_pmds, align 8
  %bf.set = or i16 %bf.load, 16
  store i16 %bf.set, i16* %cleared_pmds, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pte_free_tlb(%struct.mmu_gather* noundef %tlb, %struct.page* noundef %pte) unnamed_addr #3 {
entry:
  call fastcc void @pgtable_pte_page_dtor(%struct.page* noundef %pte) #17
  %0 = bitcast %struct.page* %pte to i8*
  call void @tlb_remove_table(%struct.mmu_gather* noundef %tlb, i8* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_dec_nr_ptes(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %pgtables_bytes = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12
  call fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %pgtables_bytes) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %pmd.coerce) unnamed_addr #3 {
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
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !39
  call void asm sideeffect "isb", "~{memory}"() #19, !srcloc !40
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__tlb_adjust_range(%struct.mmu_gather* nocapture noundef %tlb, i64 noundef %address) unnamed_addr #12 {
entry:
  %start = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 2
  %0 = load i64, i64* %start, align 8
  %cmp = icmp ult i64 %0, %address
  %cond = select i1 %cmp, i64 %0, i64 %address
  store i64 %cond, i64* %start, align 8
  %end = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 3
  %1 = load i64, i64* %end, align 8
  %add = add i64 %address, 4096
  %cmp3 = icmp ugt i64 %1, %add
  %cond8 = select i1 %cmp3, i64 %1, i64 %add
  store i64 %cond8, i64* %end, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pgtable_pte_page_dtor(%struct.page* nocapture noundef %page) unnamed_addr #3 {
entry:
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %or.i = or i32 %0, 512
  store i32 %or.i, i32* %page_type.i, align 16
  call fastcc void @dec_lruvec_page_state(%struct.page* noundef %page) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_remove_table(%struct.mmu_gather* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_lruvec_page_state(%struct.page* nocapture noundef readnone %page) unnamed_addr #3 {
entry:
  call fastcc void @mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef -1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %val) unnamed_addr #3 {
entry:
  %conv = sext i32 %val to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef 37, i64 noundef %conv) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Jr,*Q"(i64* elementtype(i64) %counter, i64 4096, i64* elementtype(i64) %counter) #19, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %pud.coerce) unnamed_addr #3 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  store i64 %pud.coerce, i64* %pud.sroa.0, align 8
  %0 = bitcast %struct.pud_t* %pudp to i8*
  %call = call fastcc i1 @in_swapper_pgdir(i8* noundef %0) #17
  br i1 %call, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %1 = getelementptr %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0
  call void @set_swapper_pgd(%struct.pgd_t* noundef %1, i64 %pud.coerce) #18
  br label %if.end16

do.body7:                                         ; preds = %entry
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0, align 8
  store volatile i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload, i64* %pud.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body7
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !42
  call void asm sideeffect "isb", "~{memory}"() #19, !srcloc !43
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.then15, %do.body7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @in_swapper_pgdir(i8* noundef %addr) unnamed_addr #2 {
entry:
  %0 = ptrtoint i8* %addr to i64
  %1 = xor i64 %0, ptrtoint ([512 x %struct.pgd_t]* @swapper_pg_dir to i64)
  %cmp = icmp ult i64 %1, 4096
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_swapper_pgd(%struct.pgd_t* noundef, i64) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pgtable_pmd_page_dtor(%struct.page* nocapture noundef %page) unnamed_addr #3 {
entry:
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %or.i = or i32 %0, 512
  store i32 %or.i, i32* %page_type.i, align 16
  call fastcc void @dec_lruvec_page_state(%struct.page* noundef %page) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__pte_alloc_one() unnamed_addr #3 {
entry:
  %call = call fastcc %struct.page* @alloc_pages(i32 noundef 4197824) #17
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @pgtable_pte_page_ctor(%struct.page* noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pgtable_pte_page_ctor(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  call fastcc void @ptlock_init(%struct.page* noundef %page) #17
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %0, -513
  store i32 %and.i, i32* %page_type.i, align 16
  call fastcc void @inc_lruvec_page_state(%struct.page* noundef %page) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ptlock_init(%struct.page* noundef writeonly %page) unnamed_addr #8 {
entry:
  %call1 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %page) #17
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_lruvec_page_state(%struct.page* nocapture noundef readnone %page) unnamed_addr #3 {
entry:
  call fastcc void @mod_lruvec_page_state(%struct.page* noundef %page, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #2 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @pmd_lockptr(%struct.pmd_t* noundef readnone %pmd) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.page* @pmd_to_page(%struct.pmd_t* noundef %pmd) #17
  %call1 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %call) #17
  ret %struct.spinlock* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.page* @pmd_to_page(%struct.pmd_t* noundef %pmd) unnamed_addr #2 {
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
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %ptep, i64 noundef %prot) unnamed_addr #3 {
entry:
  %or = or i64 %prot, %ptep
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %or) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #19, !srcloc !46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pte_t* @__pte_alloc_one_kernel() unnamed_addr #3 {
entry:
  %call = call i64 @__get_free_pages(i32 noundef 3520, i32 noundef 0) #18
  %0 = inttoptr i64 %call to %struct.pte_t*
  ret %struct.pte_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #18
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #18
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #3 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #19, !srcloc !48
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @linear_page_index(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address) unnamed_addr #6 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %address, %0
  %shr = lshr i64 %sub, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %1 = load i64, i64* %vm_pgoff, align 8
  %add = add i64 %shr, %1
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(%struct.page* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_alloc(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #2 {
entry:
  %call5 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #17
  ret %struct.p4d_t* %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_pud_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.p4d_t* noundef %dst_p4d, %struct.p4d_t* noundef readonly %src_p4d, i64 noundef %addr, i64 noundef %end) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pud_t* @pud_alloc(%struct.p4d_t* noundef %dst_p4d) #17
  %tobool.not = icmp eq %struct.pud_t* %call, null
  br i1 %tobool.not, label %cleanup30, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %src_p4d) #17
  %call20 = call fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* noundef %call2) #17
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %do.end

if.end23:                                         ; preds = %if.end
  %call24 = call fastcc i32 @copy_pmd_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pud_t* noundef nonnull %call, %struct.pud_t* noundef %call2, i64 noundef %addr, i64 noundef %end) #17
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end, label %cleanup30

do.end:                                           ; preds = %if.end, %if.end23
  br label %cleanup30

cleanup30:                                        ; preds = %if.end23, %entry, %do.end
  %retval.4 = phi i32 [ 0, %do.end ], [ -12, %entry ], [ -12, %if.end23 ]
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_alloc(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #2 {
entry:
  %call6 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #17
  ret %struct.pud_t* %call6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_pmd_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pud_t* noundef %dst_pud, %struct.pud_t* nocapture noundef readonly %src_pud, i64 noundef %addr, i64 noundef %end) unnamed_addr #3 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %dst_vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call = call fastcc %struct.pmd_t* @pmd_alloc(%struct.mm_struct* noundef %0, %struct.pud_t* noundef %dst_pud, i64 noundef %addr) #17
  %tobool.not = icmp eq %struct.pmd_t* %call, null
  br i1 %tobool.not, label %cleanup32, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %src_pud, i64 noundef %addr) #17
  %sub3 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %src_pmd.0 = phi %struct.pmd_t* [ %call2, %if.end ], [ %incdec.ptr30, %do.cond ]
  %dst_pmd.0 = phi %struct.pmd_t* [ %call, %if.end ], [ %incdec.ptr, %do.cond ]
  %addr.addr.0 = phi i64 [ %addr, %if.end ], [ %cond, %do.cond ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub3
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call22 = call fastcc i32 @pmd_none_or_clear_bad(%struct.pmd_t* noundef %src_pmd.0) #17
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %do.cond

if.end25:                                         ; preds = %do.body
  %call26 = call fastcc i32 @copy_pte_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pmd_t* noundef %dst_pmd.0, %struct.pmd_t* noundef %src_pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond) #17
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.cond, label %cleanup32

do.cond:                                          ; preds = %if.end25, %do.body
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %dst_pmd.0, i64 1
  %incdec.ptr30 = getelementptr %struct.pmd_t, %struct.pmd_t* %src_pmd.0, i64 1
  %cmp31.not = icmp eq i64 %cond, %end
  br i1 %cmp31.not, label %cleanup32, label %do.body

cleanup32:                                        ; preds = %do.cond, %if.end25, %entry
  %retval.4 = phi i32 [ -12, %entry ], [ 0, %do.cond ], [ -12, %if.end25 ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pmd_t* @pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 noundef %address) unnamed_addr #3 {
entry:
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %cond.false, !prof !11

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @__pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 undef) #17
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call6 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %address) #17
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi %struct.pmd_t* [ %call6, %cond.false ], [ null, %land.lhs.true ]
  ret %struct.pmd_t* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_pte_range(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pmd_t* noundef %dst_pmd, %struct.pmd_t* nocapture noundef readonly %src_pmd, i64 noundef %addr, i64 noundef %end) unnamed_addr #3 {
entry:
  %rss = alloca [4 x i32], align 4
  %prealloc = alloca %struct.page*, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %dst_vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_mm1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src_vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm1, align 8
  %2 = bitcast [4 x i32]* %rss to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !16
  %3 = bitcast %struct.page** %prealloc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #19
  store %struct.page* null, %struct.page** %prealloc, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %rss, i64 0, i64 0
  %pmd = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %dst_pmd, i64 0, i32 0
  br label %again

again:                                            ; preds = %if.end157, %entry
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %addr.addr.2, %if.end157 ]
  call fastcc void @init_rss_vec(i32* noundef nonnull %arraydecay) #17
  %4 = load i64, i64* %pmd, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %cond.end, !prof !11

land.lhs.true:                                    ; preds = %again
  %call = call i32 @__pte_alloc(%struct.mm_struct* noundef %0, %struct.pmd_t* noundef %dst_pmd) #17
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %cond.end, label %out

cond.end:                                         ; preds = %again, %land.lhs.true
  %call7 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %dst_pmd) #17
  %call8 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %dst_pmd, i64 noundef %addr.addr.0) #17
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call7, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %tobool9.not = icmp eq %struct.pte_t* %call8, null
  br i1 %tobool9.not, label %out, label %if.end

if.end:                                           ; preds = %cond.end
  %call10 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %src_pmd, i64 noundef %addr.addr.0) #17
  %call11 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %src_pmd) #17
  %rlock.i250 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call11, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i250) #17
  br label %do.body16

do.body16:                                        ; preds = %do.cond115, %if.end
  %src_pte.0 = phi %struct.pte_t* [ %call10, %if.end ], [ %incdec.ptr116, %do.cond115 ]
  %dst_pte.0 = phi %struct.pte_t* [ %call8, %if.end ], [ %incdec.ptr, %do.cond115 ]
  %progress.0 = phi i32 [ 0, %if.end ], [ %add114, %do.cond115 ]
  %ret.1 = phi i32 [ 0, %if.end ], [ %ret.2, %do.cond115 ]
  %addr.addr.1 = phi i64 [ %addr.addr.0, %if.end ], [ %add117, %do.cond115 ]
  %cmp = icmp sgt i32 %progress.0, 31
  br i1 %cmp, label %if.then18, label %if.end28

if.then18:                                        ; preds = %do.body16
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %7 = getelementptr %struct.task_struct, %struct.task_struct* %6, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %7) #18
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end28, label %do.end123

if.end28:                                         ; preds = %if.then18, %do.body16
  %progress.1 = phi i32 [ %progress.0, %do.body16 ], [ 0, %if.then18 ]
  %pte = getelementptr inbounds %struct.pte_t, %struct.pte_t* %src_pte.0, i64 0, i32 0
  %8 = load i64, i64* %pte, align 8
  %tobool29.not = icmp eq i64 %8, 0
  br i1 %tobool29.not, label %do.cond115, label %if.end31

if.end31:                                         ; preds = %if.end28
  %and = and i64 %8, 288230376151711745
  %tobool33.not = icmp eq i64 %and, 0
  br i1 %tobool33.not, label %if.then47, label %if.end90, !prof !11

if.then47:                                        ; preds = %if.end31
  call fastcc void @copy_nonpresent_pte(%struct.mm_struct* noundef %0, %struct.mm_struct* noundef %1, %struct.pte_t* noundef %dst_pte.0, %struct.pte_t* noundef %src_pte.0, %struct.vm_area_struct* noundef %dst_vma, i32* noundef nonnull %arraydecay) #17
  br label %do.cond115

if.end90:                                         ; preds = %if.end31
  %call92 = call fastcc i32 @copy_present_pte(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pte_t* noundef %dst_pte.0, %struct.pte_t* noundef %src_pte.0, i64 noundef %addr.addr.1, i32* noundef nonnull %arraydecay, %struct.page** noundef nonnull %prealloc) #17
  %cmp93 = icmp eq i32 %call92, -11
  br i1 %cmp93, label %do.end123, label %if.end103, !prof !11

if.end103:                                        ; preds = %if.end90
  %9 = load %struct.page*, %struct.page** %prealloc, align 8
  %tobool104.not = icmp eq %struct.page* %9, null
  br i1 %tobool104.not, label %do.cond115, label %if.then112, !prof !9

if.then112:                                       ; preds = %if.end103
  call fastcc void @put_page(%struct.page* noundef nonnull %9) #17
  store %struct.page* null, %struct.page** %prealloc, align 8
  br label %do.cond115

do.cond115:                                       ; preds = %if.end103, %if.then112, %if.end28, %if.then47
  %.sink = phi i32 [ 8, %if.then47 ], [ 1, %if.end28 ], [ 8, %if.then112 ], [ 8, %if.end103 ]
  %ret.2 = phi i32 [ 0, %if.then47 ], [ %ret.1, %if.end28 ], [ %call92, %if.then112 ], [ %call92, %if.end103 ]
  %add114 = add nsw i32 %progress.1, %.sink
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %dst_pte.0, i64 1
  %incdec.ptr116 = getelementptr %struct.pte_t, %struct.pte_t* %src_pte.0, i64 1
  %add117 = add i64 %addr.addr.1, 4096
  %cmp118.not = icmp eq i64 %add117, %end
  br i1 %cmp118.not, label %do.end123, label %do.body16

do.end123:                                        ; preds = %do.cond115, %if.then18, %if.end90
  %ret.3 = phi i32 [ %ret.1, %if.then18 ], [ -11, %if.end90 ], [ %ret.2, %do.cond115 ]
  %addr.addr.2 = phi i64 [ %addr.addr.1, %if.then18 ], [ %addr.addr.1, %if.end90 ], [ %end, %do.cond115 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i250) #18
  call fastcc void @add_mm_rss_vec(%struct.mm_struct* noundef %0, i32* noundef nonnull %arraydecay) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  call fastcc void @_cond_resched() #17
  switch i32 %ret.3, label %if.end157 [
    i32 -11, label %if.then146
    i32 -16, label %out
  ]

if.then146:                                       ; preds = %do.end123
  %call147 = call fastcc %struct.page* @page_copy_prealloc() #17
  store %struct.page* %call147, %struct.page** %prealloc, align 8
  %tobool148.not = icmp eq %struct.page* %call147, null
  br i1 %tobool148.not, label %cleanup, label %if.end157

if.end157:                                        ; preds = %do.end123, %if.then146
  %cmp158.not = icmp eq i64 %addr.addr.2, %end
  br i1 %cmp158.not, label %out, label %again

out:                                              ; preds = %land.lhs.true, %do.end123, %cond.end, %if.end157
  %ret.4 = phi i32 [ 0, %if.end157 ], [ -12, %cond.end ], [ %ret.3, %do.end123 ], [ -12, %land.lhs.true ]
  %10 = load %struct.page*, %struct.page** %prealloc, align 8
  %tobool162.not = icmp eq %struct.page* %10, null
  br i1 %tobool162.not, label %cleanup, label %if.then170, !prof !9

if.then170:                                       ; preds = %out
  call fastcc void @put_page(%struct.page* noundef nonnull %10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %out, %if.then170
  %retval.0 = phi i32 [ %ret.4, %if.then170 ], [ %ret.4, %out ], [ -12, %if.then146 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_rss_vec(i32* noundef %rss) unnamed_addr #3 {
entry:
  %0 = bitcast i32* %rss to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 16) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_nonpresent_pte(%struct.mm_struct* noundef %dst_mm, %struct.mm_struct* noundef %src_mm, %struct.pte_t* noundef %dst_pte, %struct.pte_t* nocapture noundef readonly %src_pte, %struct.vm_area_struct* nocapture noundef readnone %dst_vma, i32* nocapture noundef %rss) unnamed_addr #3 {
entry:
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %src_pte, i64 0, i32 0
  %pte.sroa.0.0.copyload = load i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  %mmlist = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %dst_mm, i64 0, i32 0, i32 16
  %call13 = call fastcc i32 @list_empty(%struct.list_head* noundef %mmlist) #17
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end30, label %if.then22, !prof !9

if.then22:                                        ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @mmlist_lock, i64 0, i32 0, i32 0)) #18
  %call24 = call fastcc i32 @list_empty(%struct.list_head* noundef %mmlist) #17
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.then22
  %mmlist28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %src_mm, i64 0, i32 0, i32 16
  call fastcc void @list_add(%struct.list_head* noundef %mmlist, %struct.list_head* noundef %mmlist28) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then22
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @mmlist_lock, i64 0, i32 0, i32 0)) #18
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %entry
  %arrayidx = getelementptr i32, i32* %rss, i64 2
  %0 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %arrayidx, align 4
  call fastcc void @set_pte_at(%struct.pte_t* noundef %dst_pte, i64 %pte.sroa.0.0.copyload) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_present_pte(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pte_t* noundef %dst_pte, %struct.pte_t* noundef %src_pte, i64 noundef %addr, i32* nocapture noundef %rss, %struct.page** nocapture noundef %prealloc) unnamed_addr #3 {
entry:
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %src_vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags1, align 8
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %src_pte, i64 0, i32 0
  %pte.sroa.0.0.copyload = load i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  %call = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %src_vma, i64 noundef %addr, i64 %pte.sroa.0.0.copyload) #17
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call fastcc i32 @copy_present_page(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pte_t* noundef %dst_pte, %struct.pte_t* noundef %src_pte, i64 noundef %addr, i32* noundef %rss, %struct.page** noundef %prealloc, %struct.page* noundef nonnull %call) #17
  %cmp = icmp slt i32 %call4, 1
  br i1 %cmp, label %cleanup37, label %if.end

if.end:                                           ; preds = %if.then
  call fastcc void @get_page(%struct.page* noundef nonnull %call) #17
  call fastcc void @page_dup_rmap(%struct.page* noundef nonnull %call) #17
  %call6 = call fastcc i32 @mm_counter(%struct.page* noundef nonnull %call) #17
  %1 = zext i32 %call6 to i64
  %arrayidx = getelementptr i32, i32* %rss, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %arrayidx, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %call8 = call fastcc i1 @is_cow_mapping(i64 noundef %0) #17
  %call8.not = xor i1 %call8, true
  %and = and i64 %pte.sroa.0.0.copyload, 2251799813685248
  %tobool10.not = icmp eq i64 %and, 0
  %or.cond = select i1 %call8.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end7
  call fastcc void @ptep_set_wrprotect(%struct.pte_t* noundef %src_pte) #17
  %call13 = call fastcc i64 @pte_wrprotect(i64 %pte.sroa.0.0.copyload) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7
  %pte.sroa.0.0 = phi i64 [ %call13, %if.then11 ], [ %pte.sroa.0.0.copyload, %if.end7 ]
  %and16 = and i64 %0, 8
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call21 = call fastcc i64 @pte_mkclean(i64 %pte.sroa.0.0) #17
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15
  %pte.sroa.0.1 = phi i64 [ %call21, %if.then18 ], [ %pte.sroa.0.0, %if.end15 ]
  %call26 = call fastcc i64 @pte_mkold(i64 %pte.sroa.0.1) #17
  call fastcc void @set_pte_at(%struct.pte_t* noundef %dst_pte, i64 %call26) #17
  br label %cleanup37

cleanup37:                                        ; preds = %if.then, %if.end23
  %retval.1 = phi i32 [ 0, %if.end23 ], [ %call4, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @add_mm_rss_vec(%struct.mm_struct* noundef %mm, i32* nocapture noundef readonly %rss) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %cmp = icmp eq %struct.mm_struct* %2, %mm
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sync_mm_rss(%struct.mm_struct* noundef %mm) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rss, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %if.end
  %conv = sext i32 %3 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0, i64 noundef %conv) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then3
  %arrayidx.1 = getelementptr i32, i32* %rss, i64 1
  %4 = load i32, i32* %arrayidx.1, align 4
  %tobool.not.1 = icmp eq i32 %4, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then3.1

if.then3.1:                                       ; preds = %for.inc
  %conv.1 = sext i32 %4 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1, i64 noundef %conv.1) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc
  %arrayidx.2 = getelementptr i32, i32* %rss, i64 2
  %5 = load i32, i32* %arrayidx.2, align 4
  %tobool.not.2 = icmp eq i32 %5, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then3.2

if.then3.2:                                       ; preds = %for.inc.1
  %conv.2 = sext i32 %5 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 2, i64 noundef %conv.2) #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.2, %for.inc.1
  %arrayidx.3 = getelementptr i32, i32* %rss, i64 3
  %6 = load i32, i32* %arrayidx.3, align 4
  %tobool.not.3 = icmp eq i32 %6, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then3.3

if.then3.3:                                       ; preds = %for.inc.2
  %conv.3 = sext i32 %6 to i64
  call fastcc void @add_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3, i64 noundef %conv.3) #17
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then3.3, %for.inc.2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #3 {
entry:
  %call = call i32 @__cond_resched() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @page_copy_prealloc() unnamed_addr #3 {
entry:
  %call = call fastcc %struct.page* @alloc_pages(i32 noundef 17829066) #17
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #9 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #13 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @mm_counter(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @mm_counter_file(%struct.page* noundef %page) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_dup_rmap(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %_mapcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_mapcount) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #13 {
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.5* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %sub = add i64 %1, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint %struct.page* %page to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #17
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #3 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #18
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #19, !srcloc !50
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_present_page(%struct.vm_area_struct* noundef %dst_vma, %struct.vm_area_struct* noundef %src_vma, %struct.pte_t* noundef %dst_pte, %struct.pte_t* nocapture noundef readnone %src_pte, i64 noundef %addr, i32* nocapture noundef %rss, %struct.page** nocapture noundef %prealloc, %struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @page_needs_cow_for_dma(%struct.vm_area_struct* noundef %src_vma, %struct.page* noundef %page) #17
  br i1 %call, label %if.end, label %cleanup, !prof !11

if.end:                                           ; preds = %entry
  %0 = load %struct.page*, %struct.page** %prealloc, align 8
  %tobool3.not = icmp eq %struct.page* %0, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  store %struct.page* null, %struct.page** %prealloc, align 8
  call void @copy_user_highpage(%struct.page* noundef nonnull %0, %struct.page* noundef %page, i64 noundef %addr, %struct.vm_area_struct* noundef %src_vma) #18
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !51
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %1, 4
  store i64 %or.i.i, i64* %flags.i, align 8
  call void @page_add_new_anon_rmap(%struct.page* noundef nonnull %0, %struct.vm_area_struct* noundef %dst_vma, i64 noundef %addr, i1 noundef false) #18
  call void @lru_cache_add_inactive_or_unevictable(%struct.page* noundef nonnull %0, %struct.vm_area_struct* noundef %dst_vma) #18
  %call6 = call fastcc i32 @mm_counter(%struct.page* noundef nonnull %0) #17
  %2 = zext i32 %call6 to i64
  %arrayidx = getelementptr i32, i32* %rss, i64 %2
  %3 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %arrayidx, align 4
  %4 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %4, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %pgprot = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %dst_vma, i64 0, i32 7, i32 0
  %5 = load i64, i64* %pgprot, align 8
  %or = or i64 %shl, %5
  %call9 = call fastcc i64 @pte_mkdirty(i64 %or) #17
  %call12 = call fastcc i64 @maybe_mkwrite(i64 %call9, %struct.vm_area_struct* noundef %dst_vma) #17
  call fastcc void @set_pte_at(%struct.pte_t* noundef %dst_pte, i64 %call12) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 1, %entry ], [ -11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptep_set_wrprotect(%struct.pte_t* noundef %ptep) unnamed_addr #3 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  %pte.sroa.0.0.sroa_cast2 = bitcast i64* %pte.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast2)
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pte.sroa.0.0.copyload, i64* %pte.sroa.0, align 8
  %0 = bitcast %struct.pte_t* %ptep to i8*
  br label %do.body1

do.body1:                                         ; preds = %do.body1, %entry
  %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload19 = phi i64 [ %call14.i, %do.body1 ], [ %pte.sroa.0.0.copyload, %entry ]
  %call = call fastcc i64 @pte_wrprotect(i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload19) #17
  store i64 %call, i64* %pte.sroa.0, align 8
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %0, i64 noundef %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload19, i64 noundef %call) #18
  store i64 %call14.i, i64* %pte.sroa.0, align 8
  %cmp.not = icmp eq i64 %call14.i, %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload19
  br i1 %cmp.not, label %do.end13, label %do.body1

do.end13:                                         ; preds = %do.body1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast2)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkclean(i64 %pte.coerce) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 36028797018963968) #17
  %call9 = call fastcc i64 @set_pte_bit(i64 %call, i64 128) #17
  ret i64 %call9
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @page_needs_cow_for_dma(%struct.vm_area_struct* nocapture noundef readonly %vma, %struct.page* noundef %page) unnamed_addr #9 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %call = call fastcc i1 @is_cow_mapping(i64 noundef %0) #17
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 43
  %2 = load volatile i64, i64* %flags, align 8
  %3 = and i64 %2, 268435456
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i1 @page_maybe_dma_pinned(%struct.page* noundef %page) #17
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i1 [ %call4, %if.end3 ], [ false, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_user_highpage(%struct.page* noundef, %struct.page* noundef, i64 noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @page_maybe_dma_pinned(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %call = call fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @compound_pincount(%struct.page* noundef %page) #17
  %cmp = icmp sgt i32 %call1, 0
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call2 to %struct.page*
  %call3 = call fastcc i32 @page_ref_count(%struct.page* noundef %0) #17
  %cmp4 = icmp ugt i32 %call3, 1023
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp, %if.then ], [ %cmp4, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 65536
  %tobool.not.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %land.rhs

PageCompound.exit:                                ; preds = %entry
  %3 = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.5* %3 to i64*
  %4 = load volatile i64, i64* %compound_head.i.i, align 8
  %5 = and i64 %4, 1
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %PageCompound.exit
  %call2 = call fastcc i32 @compound_order(%struct.page* noundef %0) #17
  %cmp = icmp ugt i32 %call2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %PageCompound.exit
  %6 = phi i1 [ false, %PageCompound.exit ], [ %cmp, %land.rhs ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_pincount(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %call1 = call fastcc i32 @head_compound_pincount(%struct.page* noundef %0) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_ref_count(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon.5* %2 to %struct.anon.69*
  %compound_order = getelementptr inbounds %struct.anon.69, %struct.anon.69* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @head_compound_pincount(%struct.page* noundef %head) unnamed_addr #9 {
entry:
  %call = call fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef %head) #17
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %call, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef readnone %page) unnamed_addr #2 {
entry:
  %hpage_pinned_refcount = getelementptr %struct.page, %struct.page* %page, i64 2, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %hpage_pinned_refcount to %struct.atomic_t*
  ret %struct.atomic_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #19, !srcloc !52
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #2 {
entry:
  %neg = xor i64 %prot.coerce, -1
  %and = and i64 %neg, %pte.coerce
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #2 {
entry:
  %or = or i64 %prot.coerce, %pte.coerce
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @zap_pud_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, %struct.p4d_t* noundef readonly %p4d, i64 noundef %addr, i64 noundef %end, %struct.zap_details* noundef %details) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #17
  br label %do.body

do.body:                                          ; preds = %do.cond28, %entry
  %pud.0 = phi %struct.pud_t* [ %call, %entry ], [ %incdec.ptr, %do.cond28 ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %call24, %do.cond28 ]
  %call20 = call fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* noundef %pud.0) #17
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.cond28, label %do.end31

do.cond28:                                        ; preds = %do.body
  %call24 = call fastcc i64 @zap_pmd_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, %struct.pud_t* noundef %pud.0, i64 noundef %addr.addr.0, i64 noundef %end, %struct.zap_details* noundef %details) #17
  call fastcc void @_cond_resched() #17
  %incdec.ptr = getelementptr %struct.pud_t, %struct.pud_t* %pud.0, i64 1
  %cmp29.not = icmp eq i64 %call24, %end
  br i1 %cmp29.not, label %do.end31, label %do.body

do.end31:                                         ; preds = %do.body, %do.cond28
  ret i64 %end
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @zap_pmd_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, %struct.pud_t* nocapture noundef readonly %pud, i64 noundef %addr, i64 noundef %end, %struct.zap_details* noundef %details) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %addr) #17
  %sub1 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %next48, %entry
  %pmd.0 = phi %struct.pmd_t* [ %call, %entry ], [ %incdec.ptr, %next48 ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %next.0, %next48 ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub1
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call43 = call fastcc i32 @pmd_none_or_trans_huge_or_clear_bad(%struct.pmd_t* noundef %pmd.0) #17
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %next48

if.end46:                                         ; preds = %do.body
  %call47 = call fastcc i64 @zap_pte_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, %struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, %struct.zap_details* noundef %details) #17
  br label %next48

next48:                                           ; preds = %do.body, %if.end46
  %next.0 = phi i64 [ %cond, %do.body ], [ %call47, %if.end46 ]
  call fastcc void @_cond_resched() #17
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %cmp52.not = icmp eq i64 %next.0, %end
  br i1 %cmp52.not, label %do.end54, label %do.body

do.end54:                                         ; preds = %next48
  ret i64 %end
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pmd_none_or_trans_huge_or_clear_bad(%struct.pmd_t* noundef %pmd) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @pmd_read_atomic(%struct.pmd_t* noundef %pmd) #17
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %and = and i64 %call, 3
  %cmp.not = icmp eq i64 %and, 3
  br i1 %cmp.not, label %cleanup, label %if.then9, !prof !9

if.then9:                                         ; preds = %lor.lhs.false
  call void @pmd_clear_bad(%struct.pmd_t* noundef %pmd) #18
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.then9
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %entry ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @zap_pte_range(%struct.mmu_gather* noundef %tlb, %struct.vm_area_struct* noundef %vma, %struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, %struct.zap_details* noundef readonly %details) unnamed_addr #3 {
entry:
  %rss = alloca [4 x i32], align 4
  %mm1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %1 = bitcast [4 x i32]* %rss to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !16
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %rss, i64 0, i64 0
  %tobool13.not = icmp eq %struct.zap_details* %details, null
  %check_mapping = getelementptr inbounds %struct.zap_details, %struct.zap_details* %details, i64 0, i32 0
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %arrayidx167 = getelementptr inbounds [4 x i32], [4 x i32]* %rss, i64 0, i64 2
  br label %again

again:                                            ; preds = %if.then221, %entry
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %addr.addr.4334, %if.then221 ]
  call fastcc void @init_rss_vec(i32* noundef nonnull %arraydecay) #17
  %call = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #17
  %call3 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr.addr.0) #17
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %do.body4

do.body4:                                         ; preds = %do.cond201, %again
  %pte.0 = phi %struct.pte_t* [ %call3, %again ], [ %incdec.ptr, %do.cond201 ]
  %force_flush.1 = phi i32 [ 0, %again ], [ %force_flush.5.ph, %do.cond201 ]
  %addr.addr.1 = phi i64 [ %addr.addr.0, %again ], [ %add202, %do.cond201 ]
  %ptent.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.0, i64 0, i32 0
  %ptent.sroa.0.0.copyload = load i64, i64* %ptent.sroa.0.0..sroa_idx, align 8
  %tobool.not = icmp eq i64 %ptent.sroa.0.0.copyload, 0
  br i1 %tobool.not, label %do.cond201, label %if.end

if.end:                                           ; preds = %do.body4
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %4 = getelementptr %struct.task_struct, %struct.task_struct* %3, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %4) #18
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end8, label %do.end205

if.end8:                                          ; preds = %if.end
  %and = and i64 %ptent.sroa.0.0.copyload, 288230376151711745
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %if.end105, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %vma, i64 noundef %addr.addr.1, i64 %ptent.sroa.0.0.copyload) #17
  br i1 %tobool13.not, label %if.end25, label %land.lhs.true, !prof !9

land.lhs.true:                                    ; preds = %if.then11
  %tobool16.not = icmp eq %struct.page* %call12, null
  br i1 %tobool16.not, label %if.end25, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  %5 = load %struct.address_space*, %struct.address_space** %check_mapping, align 8
  %tobool18.not = icmp eq %struct.address_space* %5, null
  br i1 %tobool18.not, label %if.end25, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.then17
  %call21 = call i8* @page_rmapping(%struct.page* noundef nonnull %call12) #18
  %6 = bitcast i8* %call21 to %struct.address_space*
  %cmp.not = icmp eq %struct.address_space* %5, %6
  br i1 %cmp.not, label %if.end25, label %do.cond201

if.end25:                                         ; preds = %if.then17, %land.lhs.true19, %land.lhs.true, %if.then11
  %call27 = call fastcc i64 @ptep_get_and_clear_full(%struct.pte_t* noundef %pte.0) #17
  call fastcc void @tlb_flush_pte_range(%struct.mmu_gather* noundef %tlb, i64 noundef %addr.addr.1) #17
  %tobool35.not = icmp eq %struct.page* %call12, null
  br i1 %tobool35.not, label %do.cond201, label %if.end46, !prof !11

if.end46:                                         ; preds = %if.end25
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %call12) #18
  %7 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %7, i64 0, i32 1, i32 0, i32 1
  %8 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %9 = ptrtoint %struct.address_space* %8 to i64
  %10 = and i64 %9, 1
  %tobool48.not = icmp eq i64 %10, 0
  br i1 %tobool48.not, label %if.then49, label %if.end80

if.then49:                                        ; preds = %if.end46
  %and51 = and i64 %call27, 36028797018963968
  %tobool52.not = icmp ne i64 %and51, 0
  %11 = and i64 %call27, 2251799813685376
  %12 = icmp eq i64 %11, 2251799813685248
  %or.cond = or i1 %tobool52.not, %12
  br i1 %or.cond, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then49
  %call61 = call i32 @set_page_dirty(%struct.page* noundef nonnull %call12) #18
  br label %if.end62

if.end62:                                         ; preds = %if.then49, %if.then60
  %force_flush.2 = phi i32 [ 1, %if.then60 ], [ %force_flush.1, %if.then49 ]
  %and64 = and i64 %call27, 1024
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.end80, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end62
  %13 = load i64, i64* %vm_flags, align 8
  %and67 = and i64 %13, 32768
  %tobool68.not = icmp eq i64 %and67, 0
  br i1 %tobool68.not, label %if.then78, label %if.end80, !prof !9

if.then78:                                        ; preds = %land.lhs.true66
  call void @mark_page_accessed(%struct.page* noundef nonnull %call12) #18
  br label %if.end80

if.end80:                                         ; preds = %if.end62, %land.lhs.true66, %if.then78, %if.end46
  %force_flush.3 = phi i32 [ %force_flush.1, %if.end46 ], [ %force_flush.2, %if.then78 ], [ %force_flush.2, %land.lhs.true66 ], [ %force_flush.2, %if.end62 ]
  %call81 = call fastcc i32 @mm_counter(%struct.page* noundef nonnull %call12) #17
  %14 = zext i32 %call81 to i64
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %rss, i64 0, i64 %14
  %15 = load i32, i32* %arrayidx, align 4
  %dec = add i32 %15, -1
  store i32 %dec, i32* %arrayidx, align 4
  call void @page_remove_rmap(%struct.page* noundef nonnull %call12, i1 noundef false) #18
  %call82 = call fastcc i32 @page_mapcount(%struct.page* noundef nonnull %call12) #17
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then92, label %if.end94, !prof !11

if.then92:                                        ; preds = %if.end80
  call fastcc void @print_bad_pte(%struct.vm_area_struct* noundef %vma, i64 noundef %addr.addr.1, i64 %call27, %struct.page* noundef nonnull %call12) #17
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end80
  %call95 = call fastcc i1 @__tlb_remove_page(%struct.mmu_gather* noundef %tlb, %struct.page* noundef nonnull %call12) #17
  br i1 %call95, label %do.end205.thread, label %do.cond201, !prof !11

do.end205.thread:                                 ; preds = %if.end94
  %add = add i64 %addr.addr.1, 4096
  call fastcc void @add_mm_rss_vec(%struct.mm_struct* noundef %0, i32* noundef nonnull %arraydecay) #17
  br label %if.then211

if.end105:                                        ; preds = %if.end8
  br i1 %tobool13.not, label %if.end162, label %do.cond201, !prof !9

if.end162:                                        ; preds = %if.end105
  %16 = load i32, i32* %arrayidx167, align 4
  %dec168 = add i32 %16, -1
  store i32 %dec168, i32* %arrayidx167, align 4
  call fastcc void @print_bad_pte(%struct.vm_area_struct* noundef %vma, i64 noundef %addr.addr.1, i64 %ptent.sroa.0.0.copyload, %struct.page* noundef null) #17
  call fastcc void @pte_clear_not_present_full(%struct.pte_t* noundef %pte.0) #17
  br label %do.cond201

do.cond201:                                       ; preds = %if.end162, %do.body4, %land.lhs.true19, %if.end25, %if.end94, %if.end105
  %force_flush.5.ph = phi i32 [ %force_flush.1, %if.end105 ], [ %force_flush.3, %if.end94 ], [ %force_flush.1, %if.end25 ], [ %force_flush.1, %land.lhs.true19 ], [ %force_flush.1, %do.body4 ], [ %force_flush.1, %if.end162 ]
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.0, i64 1
  %add202 = add i64 %addr.addr.1, 4096
  %cmp203.not = icmp eq i64 %add202, %end
  br i1 %cmp203.not, label %do.end205, label %do.body4

do.end205:                                        ; preds = %if.end, %do.cond201
  %force_flush.5326 = phi i32 [ %force_flush.5.ph, %do.cond201 ], [ %force_flush.1, %if.end ]
  %addr.addr.4 = phi i64 [ %end, %do.cond201 ], [ %addr.addr.1, %if.end ]
  call fastcc void @add_mm_rss_vec(%struct.mm_struct* noundef %0, i32* noundef nonnull %arraydecay) #17
  %tobool210.not = icmp eq i32 %force_flush.5326, 0
  br i1 %tobool210.not, label %if.end218.critedge, label %if.then211

if.then211:                                       ; preds = %do.end205.thread, %do.end205
  %addr.addr.4335 = phi i64 [ %add, %do.end205.thread ], [ %addr.addr.4, %do.end205 ]
  call fastcc void @tlb_flush_mmu_tlbonly(%struct.mmu_gather* noundef %tlb) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  call void @tlb_flush_mmu(%struct.mmu_gather* noundef %tlb) #18
  br label %if.end218

if.end218.critedge:                               ; preds = %do.end205
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %if.end218

if.end218:                                        ; preds = %if.end218.critedge, %if.then211
  %addr.addr.4334 = phi i64 [ %addr.addr.4, %if.end218.critedge ], [ %addr.addr.4335, %if.then211 ]
  %cmp219.not = icmp eq i64 %addr.addr.4334, %end
  br i1 %cmp219.not, label %if.end224, label %if.then221

if.then221:                                       ; preds = %if.end218
  call fastcc void @_cond_resched() #17
  br label %again

if.end224:                                        ; preds = %if.end218
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #19
  ret i64 %end
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_read_atomic(%struct.pmd_t* nocapture noundef readonly %pmdp) unnamed_addr #6 {
entry:
  %retval.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %retval.sroa.0.0.copyload = load i64, i64* %retval.sroa.0.0..sroa_idx, align 8
  ret i64 %retval.sroa.0.0.copyload
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @page_rmapping(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get_and_clear_full(%struct.pte_t* noundef %ptep) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %ptep) #17
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @tlb_flush_pte_range(%struct.mmu_gather* nocapture noundef %tlb, i64 noundef %address) unnamed_addr #12 {
entry:
  call fastcc void @__tlb_adjust_range(%struct.mmu_gather* noundef %tlb, i64 noundef %address) #17
  %cleared_ptes = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %cleared_ptes, align 8
  %bf.set = or i16 %bf.load, 8
  store i16 %bf.set, i16* %cleared_ptes, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_remove_rmap(%struct.page* noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_mapcount(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.then

PageCompound.exit:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon.5* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry, %PageCompound.exit
  %call3 = call i32 @__page_mapcount(%struct.page* noundef %page) #18
  br label %return

if.end:                                           ; preds = %PageCompound.exit
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %add = add i32 %5, 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %add, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__tlb_remove_page(%struct.mmu_gather* noundef %tlb, %struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call i1 @__tlb_remove_page_size(%struct.mmu_gather* noundef %tlb, %struct.page* noundef %page, i32 noundef 4096) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pte_clear_not_present_full(%struct.pte_t* noundef %ptep) unnamed_addr #3 {
entry:
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_flush_mmu_tlbonly(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #3 {
entry:
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %0 = and i16 %bf.load, 124
  %1 = icmp eq i16 %0, 0
  br i1 %1, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @tlb_flush(%struct.mmu_gather* noundef %tlb) #17
  call fastcc void @__tlb_reset_range(%struct.mmu_gather* noundef %tlb) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_flush_mmu(%struct.mmu_gather* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %ptep) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.pte_t* %ptep to i8*
  %call11.i = call fastcc i64 @__xchg_case_64(i8* noundef %0) #18
  ret i64 %call11.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_64(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #19, !srcloc !53
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__tlb_remove_page_size(%struct.mmu_gather* noundef, %struct.page* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #3 {
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
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !54
  call void asm sideeffect "isb", "~{memory}"() #19, !srcloc !55
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tlb_flush(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #3 {
entry:
  %vma = alloca %struct.vm_area_struct, align 8
  %0 = bitcast %struct.vm_area_struct* %vma to i8*
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %0) #19
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %mm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 0
  %1 = bitcast %struct.vm_area_struct* %vma to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(176) %1, i8 0, i64 176, i1 false)
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  store %struct.mm_struct* %2, %struct.mm_struct** %vm_mm, align 8
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %3 = and i16 %bf.load, 4
  %tobool.not = icmp eq i16 %3, 0
  %bf.clear3 = and i16 %bf.load, 1
  %tobool5.not = icmp eq i16 %bf.clear3, 0
  br i1 %tobool5.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.then
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %2) #17
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call1 = call fastcc i32 @tlb_get_level(%struct.mmu_gather* noundef %tlb) #17
  %call = call fastcc i64 @tlb_get_unmap_size(%struct.mmu_gather* noundef %tlb) #17
  %start = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 2
  %4 = load i64, i64* %start, align 8
  %end = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 3
  %5 = load i64, i64* %end, align 8
  call fastcc void @__flush_tlb_range(%struct.vm_area_struct* noundef nonnull %vma, i64 noundef %4, i64 noundef %5, i64 noundef %call, i1 noundef %tobool.not, i32 noundef %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then7, %if.end9
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__tlb_reset_range(%struct.mmu_gather* nocapture noundef %tlb) unnamed_addr #12 {
entry:
  %fullmm = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %fullmm, align 8
  %bf.clear = and i16 %bf.load, 1
  %tobool.not = icmp eq i16 %bf.clear, 0
  %0 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %0
  %.sink26 = select i1 %tobool.not, i64 %shl, i64 -1
  %not.tobool.not = xor i1 %tobool.not, true
  %.sink = sext i1 %not.tobool.not to i64
  %1 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 2
  store i64 %.sink26, i64* %1, align 8
  %2 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 3
  store i64 %.sink, i64* %2, align 8
  %bf.clear15 = and i16 %bf.load, -125
  store i16 %bf.clear15, i16* %fullmm, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @tlb_get_unmap_size(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @tlb_get_unmap_shift(%struct.mmu_gather* noundef %tlb) #17
  %shl = shl nuw i64 1, %call
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @tlb_get_level(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #6 {
entry:
  %freed_tables = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %freed_tables, align 8
  %0 = and i16 %bf.load, 4
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = and i16 %bf.load, 120
  %trunc = trunc i16 %1 to i7
  switch i7 %trunc, label %if.end52 [
    i7 8, label %return
    i7 16, label %return.fold.split
  ]

if.end52:                                         ; preds = %if.end
  %2 = icmp eq i16 %1, 32
  %spec.select = zext i1 %2 to i32
  br label %return

return.fold.split:                                ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end, %return.fold.split, %if.end52, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 3, %if.end ], [ %spec.select, %if.end52 ], [ 2, %return.fold.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !56
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %0, 48
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %shl) #19, !srcloc !57
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #17
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %shl, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #19, !srcloc !58
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dsb ish", "~{memory}"() #19, !srcloc !59
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__flush_tlb_range(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start, i64 noundef %end, i64 noundef %stride, i1 noundef %last_level, i32 noundef %tlb_level) unnamed_addr #3 {
entry:
  %sub = add i64 %stride, -1
  %neg = sub i64 0, %stride
  %and = and i64 %neg, %start
  %sub1 = add i64 %end, -1
  %or = or i64 %sub, %sub1
  %add = sub i64 1, %and
  %sub3 = add i64 %add, %or
  %mul = shl i64 %stride, 9
  %cmp = icmp uge i64 %sub3, %mul
  %cmp5 = icmp ugt i64 %sub3, 8589934591
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %0) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !60
  %vm_mm6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm6, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 42, i32 0, i32 0
  %2 = load volatile i64, i64* %counter.i, align 8
  %cmp9.not382 = icmp ult i64 %sub3, 4096
  br i1 %cmp9.not382, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %shr = lshr i64 %sub3, 12
  %shl = shl i64 %2, 48
  %tobool105 = icmp ne i32 %tlb_level, 0
  %and108 = and i32 %tlb_level, 3
  %3 = or i32 %and108, 4
  %or112 = zext i32 %3 to i64
  %shl136 = shl nuw nsw i64 %or112, 44
  %shr193 = lshr i64 %stride, 12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end191
  %start.addr.0384 = phi i64 [ %and, %while.body.lr.ph ], [ %add192, %if.end191 ]
  %pages.0383 = phi i64 [ %shr, %while.body.lr.ph ], [ %sub194, %if.end191 ]
  %shr14 = lshr i64 %start.addr.0384, 12
  %and15 = and i64 %shr14, 17592186044415
  %or16 = or i64 %and15, %shl
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #18
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %last_level, label %do.body, label %do.body100

do.body:                                          ; preds = %while.body
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %do.body
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #18
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %do.body
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 7) #18
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  %or.cond262 = and i1 %tobool105, %retval.0.i
  %or47 = select i1 %or.cond262, i64 %shl136, i64 0
  %arg.0 = or i64 %or47, %or16
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg.0) #19, !srcloc !61
  %call52 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #17
  br i1 %call52, label %do.body54, label %if.end191

do.body54:                                        ; preds = %cpus_have_const_cap.exit
  %call.i.i355 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #18
  %cmp.i.i356 = icmp sgt i32 %call.i.i355, 0
  br i1 %cmp.i.i356, label %if.then3.i359, label %if.else5.i361

if.then3.i359:                                    ; preds = %do.body54
  %call.i9.i357 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #18
  %cmp1.i.i358 = icmp sgt i32 %call.i9.i357, 0
  br label %cpus_have_const_cap.exit363

if.else5.i361:                                    ; preds = %do.body54
  %call6.i360 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #18
  br label %cpus_have_const_cap.exit363

cpus_have_const_cap.exit363:                      ; preds = %if.then3.i359, %if.else5.i361
  %retval.0.i362 = phi i1 [ %cmp1.i.i358, %if.then3.i359 ], [ %call6.i360, %if.else5.i361 ]
  %or.cond264 = and i1 %tobool105, %retval.0.i362
  %or93 = select i1 %or.cond264, i64 %shl136, i64 0
  %or56 = or i64 %or16, %or93
  %arg55.0 = or i64 %or56, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg55.0) #19, !srcloc !62
  br label %if.end191

do.body100:                                       ; preds = %while.body
  br i1 %cmp.i.i, label %if.then3.i368, label %if.else5.i370

if.then3.i368:                                    ; preds = %do.body100
  %call.i9.i366 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #18
  %cmp1.i.i367 = icmp sgt i32 %call.i9.i366, 0
  br label %cpus_have_const_cap.exit372

if.else5.i370:                                    ; preds = %do.body100
  %call6.i369 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #18
  br label %cpus_have_const_cap.exit372

cpus_have_const_cap.exit372:                      ; preds = %if.then3.i368, %if.else5.i370
  %retval.0.i371 = phi i1 [ %cmp1.i.i367, %if.then3.i368 ], [ %call6.i369, %if.else5.i370 ]
  %or.cond266 = and i1 %tobool105, %retval.0.i371
  %or138 = select i1 %or.cond266, i64 %shl136, i64 0
  %arg101.0 = or i64 %or138, %or16
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg101.0) #19, !srcloc !63
  %call143 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #17
  br i1 %call143, label %do.body145, label %if.end191

do.body145:                                       ; preds = %cpus_have_const_cap.exit372
  %call.i.i373 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #18
  %cmp.i.i374 = icmp sgt i32 %call.i.i373, 0
  br i1 %cmp.i.i374, label %if.then3.i377, label %if.else5.i379

if.then3.i377:                                    ; preds = %do.body145
  %call.i9.i375 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 7, i32 0)) #18
  %cmp1.i.i376 = icmp sgt i32 %call.i9.i375, 0
  br label %cpus_have_const_cap.exit381

if.else5.i379:                                    ; preds = %do.body145
  %call6.i378 = call fastcc i1 @cpus_have_cap(i32 noundef 7) #18
  br label %cpus_have_const_cap.exit381

cpus_have_const_cap.exit381:                      ; preds = %if.then3.i377, %if.else5.i379
  %retval.0.i380 = phi i1 [ %cmp1.i.i376, %if.then3.i377 ], [ %call6.i378, %if.else5.i379 ]
  %or.cond268 = and i1 %tobool105, %retval.0.i380
  %or184 = select i1 %or.cond268, i64 %shl136, i64 0
  %or147 = or i64 %or16, %or184
  %arg146.0 = or i64 %or147, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vae1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vae1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %arg146.0) #19, !srcloc !64
  br label %if.end191

if.end191:                                        ; preds = %cpus_have_const_cap.exit372, %cpus_have_const_cap.exit381, %cpus_have_const_cap.exit, %cpus_have_const_cap.exit363
  %add192 = add i64 %start.addr.0384, %stride
  %sub194 = sub i64 %pages.0383, %shr193
  %cmp9.not = icmp eq i64 %sub194, 0
  br i1 %cmp9.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end191, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #19, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @tlb_get_unmap_shift(%struct.mmu_gather* nocapture noundef readonly %tlb) unnamed_addr #6 {
entry:
  %cleared_ptes = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %tlb, i64 0, i32 4
  %bf.load = load i16, i16* %cleared_ptes, align 8
  %0 = and i16 %bf.load, 8
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = and i16 %bf.load, 16
  %tobool5.not = icmp eq i16 %1, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end
  %2 = and i16 %bf.load, 32
  %tobool12.not = icmp eq i16 %2, 0
  br i1 %tobool12.not, label %if.end14, label %return

if.end14:                                         ; preds = %if.end7
  %3 = and i16 %bf.load, 64
  %tobool19.not = icmp eq i16 %3, 0
  %. = select i1 %tobool19.not, i64 12, i64 30
  br label %return

return:                                           ; preds = %if.end14, %if.end7, %if.end, %entry
  %retval.0 = phi i64 [ 12, %entry ], [ 21, %if.end ], [ 30, %if.end7 ], [ %., %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #9 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #18
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #18
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #18
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #9 {
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
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #9 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #9 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #17
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #17
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #17
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #9 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #17
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #2 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #2 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @validate_page_before_insert(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %1 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %2 = ptrtoint %struct.address_space* %1 to i64
  %3 = and i64 %2, 1
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call.i9 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %4 = inttoptr i64 %call.i9 to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load volatile i64, i64* %flags.i, align 8
  %6 = and i64 %5, 512
  %tobool2.not = icmp eq i64 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @page_has_type(%struct.page* noundef %page) #17
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false3
  call void @flush_dcache_page(%struct.page* noundef %page) #18
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false3 ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pte_t* @get_locked_pte(%struct.mm_struct* noundef %mm, i64 noundef %addr, %struct.spinlock** nocapture noundef writeonly %ptl) unnamed_addr #3 {
entry:
  %call = call %struct.pte_t* @__get_locked_pte(%struct.mm_struct* noundef %mm, i64 noundef %addr, %struct.spinlock** noundef %ptl) #17
  ret %struct.pte_t* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @insert_page_into_pte_locked(%struct.mm_struct* noundef %mm, %struct.pte_t* noundef %pte, %struct.page* noundef %page, i64 %prot.coerce) unnamed_addr #3 {
entry:
  %pte1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i64 0, i32 0
  %0 = load i64, i64* %pte1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @get_page(%struct.page* noundef %page) #17
  %call = call fastcc i32 @mm_counter_file(%struct.page* noundef %page) #17, !range !32
  call fastcc void @add_mm_counter_fast(%struct.mm_struct* noundef %mm, i32 noundef %call, i32 noundef 1) #17
  call void @page_add_file_rmap(%struct.page* noundef %page, i1 noundef false) #18
  %1 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %1, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %page to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %or = or i64 %shl, %prot.coerce
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte, i64 %or) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_has_type(%struct.page* nocapture noundef readonly %page) unnamed_addr #6 {
entry:
  %page_type = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type, align 16
  %cmp = icmp slt i32 %0, -128
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pfn_t_to_pfn(i64 %pfn.coerce) unnamed_addr #2 {
entry:
  %and = and i64 %pfn.coerce, 4503599627370495
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkyoung(i64 %pte.coerce) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 1024) #17
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_set_access_flags(%struct.vm_area_struct* noundef, i64 noundef, %struct.pte_t* noundef, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pfn_t_devmap(i64 %pfn.coerce) unnamed_addr #2 {
entry:
  %and = and i64 %pfn.coerce, 3458764513820540928
  %cmp = icmp eq i64 %and, 3458764513820540928
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkdevmap(i64 %pte.coerce) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 216172782113783808) #17
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pfn_t_pte(i64 %pfn.coerce, i64 %pgprot.coerce) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @pfn_t_to_pfn(i64 %pfn.coerce) #17
  %shl = shl i64 %call, 12
  %or = or i64 %shl, %pgprot.coerce
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkspecial(i64 %pte.coerce) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 72057594037927936) #17
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vm_mixed_ok(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 %pfn.coerce) unnamed_addr #6 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 268435456
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @pfn_t_devmap(i64 %pfn.coerce) #17
  br i1 %call, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call5 = call fastcc i1 @pfn_t_special(i64 %pfn.coerce) #17
  br i1 %call5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call9 = call fastcc i64 @pfn_t_to_pfn(i64 %pfn.coerce) #17, !range !66
  %call10 = call fastcc i32 @is_zero_pfn(i64 noundef %call9) #17
  %tobool11.not = icmp ne i32 %call10, 0
  br label %return

return:                                           ; preds = %if.end7, %if.end3, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %if.end ], [ true, %if.end3 ], [ %tobool11.not, %if.end7 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pfn_t_special(i64 %pfn.coerce) unnamed_addr #2 {
entry:
  %and = and i64 %pfn.coerce, 576460752303423488
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @remap_pud_range(%struct.mm_struct* noundef %mm, %struct.p4d_t* noundef %p4d, i64 noundef %addr, i64 noundef %end, i64 noundef %pfn, i64 %prot.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pud_t* @pud_alloc(%struct.p4d_t* noundef %p4d) #17
  %tobool.not = icmp eq %struct.pud_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call3 = call fastcc i32 @remap_pmd_range(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef nonnull %call, i64 noundef %addr, i64 noundef %end, i64 noundef %pfn, i64 %prot.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call3, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @remap_pmd_range(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 noundef %addr, i64 noundef %end, i64 noundef %pfn, i64 %prot.coerce) unnamed_addr #3 {
entry:
  %shr = lshr i64 %addr, 12
  %sub = sub i64 %pfn, %shr
  %call = call fastcc %struct.pmd_t* @pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 noundef %addr) #17
  %tobool.not = icmp eq %struct.pmd_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %sub2 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %pmd.0 = phi %struct.pmd_t* [ %incdec.ptr, %do.cond ], [ %call, %do.body.preheader ]
  %addr.addr.0 = phi i64 [ %cond, %do.cond ], [ %addr, %do.body.preheader ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub1 = add i64 %and, -1
  %cmp = icmp ult i64 %sub1, %sub2
  %cond = select i1 %cmp, i64 %and, i64 %end
  %shr3 = lshr i64 %addr.addr.0, 12
  %add4 = add i64 %sub, %shr3
  %call6 = call fastcc i32 @remap_pte_range(%struct.mm_struct* noundef %mm, %struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 noundef %add4, i64 %prot.coerce) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.cond, label %cleanup

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %cmp10.not = icmp eq i64 %cond, %end
  br i1 %cmp10.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.cond, %do.body, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %do.cond ], [ %call6, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @remap_pte_range(%struct.mm_struct* noundef %mm, %struct.pmd_t* noundef %pmd, i64 noundef %addr, i64 noundef %end, i64 noundef %pfn, i64 %prot.coerce) unnamed_addr #3 {
entry:
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %cond.end, !prof !11

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @__pte_alloc(%struct.mm_struct* noundef %mm, %struct.pmd_t* noundef %pmd) #17
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %cond.end, label %cleanup

cond.end:                                         ; preds = %entry, %land.lhs.true
  %call6 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #17
  %call7 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #17
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call6, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %tobool8.not = icmp eq %struct.pte_t* %call7, null
  br i1 %tobool8.not, label %cleanup, label %do.body9

do.body9:                                         ; preds = %cond.end, %do.end33
  %pte.0 = phi %struct.pte_t* [ %incdec.ptr, %do.end33 ], [ %call7, %cond.end ]
  %pfn.addr.0 = phi i64 [ %inc, %do.end33 ], [ %pfn, %cond.end ]
  %addr.addr.0 = phi i64 [ %add, %do.end33 ], [ %addr, %cond.end ]
  %pte11 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.0, i64 0, i32 0
  %1 = load i64, i64* %pte11, align 8
  %tobool12.not = icmp eq i64 %1, 0
  br i1 %tobool12.not, label %do.end33, label %do.body25, !prof !9

do.body25:                                        ; preds = %do.body9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2290; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !67
  unreachable

do.end33:                                         ; preds = %do.body9
  %shl = shl i64 %pfn.addr.0, 12
  %or = or i64 %shl, %prot.coerce
  %call40 = call fastcc i64 @pte_mkspecial(i64 %or) #17
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte.0, i64 %call40) #17
  %inc = add i64 %pfn.addr.0, 1
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.0, i64 1
  %add = add i64 %addr.addr.0, 4096
  %cmp.not = icmp eq i64 %add, %end
  br i1 %cmp.not, label %do.body49, label %do.body9

do.body49:                                        ; preds = %do.end33
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %cond.end, %do.body49
  %retval.0 = phi i32 [ 0, %do.body49 ], [ -12, %cond.end ], [ -12, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @apply_to_p4d_range(%struct.mm_struct* noundef %mm, %struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef %create, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  br i1 %create, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.p4d_t* @p4d_alloc_track(%struct.pgd_t* noundef %pgd) #17
  %tobool1.not = icmp eq %struct.p4d_t* %call, null
  br i1 %tobool1.not, label %cleanup, label %do.body

if.else:                                          ; preds = %entry
  %call3 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #17
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %p4d.0 = phi %struct.p4d_t* [ %call, %if.then ], [ %call3, %if.else ]
  %call66 = call fastcc i32 @apply_to_pud_range(%struct.mm_struct* noundef %mm, %struct.p4d_t* noundef %p4d.0, i64 noundef %addr, i64 noundef %end, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef %create, i32* noundef %mask) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body
  %retval.0 = phi i32 [ %call66, %do.body ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_alloc_track(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #2 {
entry:
  %call9 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #17
  ret %struct.p4d_t* %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @apply_to_pud_range(%struct.mm_struct* noundef %mm, %struct.p4d_t* noundef %p4d, i64 noundef %addr, i64 noundef %end, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef %create, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  br i1 %create, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.pud_t* @pud_alloc_track(%struct.p4d_t* noundef %p4d) #17
  %tobool1.not = icmp eq %struct.pud_t* %call, null
  br i1 %tobool1.not, label %cleanup, label %do.body.thread

do.body.thread:                                   ; preds = %if.then
  %pgd6114 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd6114, align 8
  %tobool7.not115 = icmp eq i64 %0, 0
  br label %if.end10

do.body:                                          ; preds = %entry
  %call3 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #17
  %pgd6 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call3, i64 0, i32 0, i32 0, i32 0
  %1 = load i64, i64* %pgd6, align 8
  %tobool7.not = icmp eq i64 %1, 0
  br i1 %tobool7.not, label %do.cond81, label %if.end10

if.end10:                                         ; preds = %do.body.thread, %do.body
  %tobool7.not119 = phi i1 [ %tobool7.not115, %do.body.thread ], [ false, %do.body ]
  %2 = phi i64 [ %0, %do.body.thread ], [ %1, %do.body ]
  %pud.0118 = phi %struct.pud_t* [ %call, %do.body.thread ], [ %call3, %do.body ]
  %and = and i64 %2, 3
  %cmp = icmp eq i64 %and, 1
  br i1 %cmp, label %if.then21, label %if.end32, !prof !11

if.then21:                                        ; preds = %if.end10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2605; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !68
  br label %cleanup

if.end32:                                         ; preds = %if.end10
  %cmp43.not = icmp eq i64 %and, 3
  %or.cond = select i1 %tobool7.not119, i1 true, i1 %cmp43.not
  br i1 %or.cond, label %if.end75, label %if.then59, !prof !69

if.then59:                                        ; preds = %if.end32
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2607; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !70
  br i1 %create, label %if.end75, label %do.cond81

if.end75:                                         ; preds = %if.then59, %if.end32
  %call77 = call fastcc i32 @apply_to_pmd_range(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud.0118, i64 noundef %addr, i64 noundef %end, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef %create, i32* noundef %mask) #17
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.cond81, label %cleanup

do.cond81:                                        ; preds = %if.then59, %do.body, %if.end75
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end75, %do.cond81, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ -22, %if.then21 ], [ %call77, %if.end75 ], [ 0, %do.cond81 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_alloc_track(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #2 {
entry:
  %call10 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #17
  ret %struct.pud_t* %call10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @apply_to_pmd_range(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 noundef %addr, i64 noundef %end, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef %create, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  br i1 %create, label %if.then12, label %if.else

if.then12:                                        ; preds = %entry
  %call13 = call fastcc %struct.pmd_t* @pmd_alloc_track(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 noundef %addr, i32* noundef %mask) #17
  %tobool14.not = icmp eq %struct.pmd_t* %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end18

if.else:                                          ; preds = %entry
  %call17 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %addr) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.else
  %pmd.0 = phi %struct.pmd_t* [ %call13, %if.then12 ], [ %call17, %if.else ]
  %sub20 = add i64 %end, -1
  br label %do.body19

do.body19:                                        ; preds = %do.cond99, %if.end18
  %pmd.1 = phi %struct.pmd_t* [ %pmd.0, %if.end18 ], [ %incdec.ptr, %do.cond99 ]
  %addr.addr.0 = phi i64 [ %addr, %if.end18 ], [ %cond, %do.cond99 ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub20
  %cond = select i1 %cmp, i64 %and, i64 %end
  %pmd22 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd.1, i64 0, i32 0
  %0 = load i64, i64* %pmd22, align 8
  %tobool23.not = icmp eq i64 %0, 0
  %tobool23.not.not = xor i1 %tobool23.not, true
  %brmerge = or i1 %tobool23.not.not, %create
  br i1 %brmerge, label %if.end26, label %do.cond99

if.end26:                                         ; preds = %do.body19
  %and28 = and i64 %0, 3
  %cmp29 = icmp eq i64 %and28, 1
  br i1 %cmp29, label %if.then43, label %if.end55, !prof !11

if.then43:                                        ; preds = %if.end26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2569; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !71
  br label %cleanup

if.end55:                                         ; preds = %if.end26
  %cmp62.not = icmp eq i64 %and28, 3
  %or.cond = or i1 %tobool23.not, %cmp62.not
  br i1 %or.cond, label %if.end93, label %if.then78, !prof !69

if.then78:                                        ; preds = %if.end55
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2571; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !72
  br i1 %create, label %if.end92, label %do.cond99

if.end92:                                         ; preds = %if.then78
  call void @pmd_clear_bad(%struct.pmd_t* noundef %pmd.1) #18
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end55
  %call95 = call fastcc i32 @apply_to_pte_range(%struct.mm_struct* noundef %mm, %struct.pmd_t* noundef %pmd.1, i64 noundef %addr.addr.0, i64 noundef %cond, i32 (%struct.pte_t*, i64, i8*)* noundef %fn, i8* noundef %data, i1 noundef %create, i32* noundef %mask) #17
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.cond99, label %cleanup

do.cond99:                                        ; preds = %do.body19, %if.end93, %if.then78
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.1, i64 1
  %cmp100.not = icmp eq i64 %cond, %end
  br i1 %cmp100.not, label %cleanup, label %do.body19

cleanup:                                          ; preds = %do.cond99, %if.end93, %if.then43, %if.then12
  %retval.0 = phi i32 [ -12, %if.then12 ], [ -22, %if.then43 ], [ 0, %do.cond99 ], [ %call95, %if.end93 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pmd_t* @pmd_alloc_track(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 noundef %address, i32* nocapture noundef %mod_mask) unnamed_addr #3 {
entry:
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end9, !prof !11

if.then:                                          ; preds = %entry
  %call = call i32 @__pmd_alloc(%struct.mm_struct* noundef %mm, %struct.pud_t* noundef %pud, i64 undef) #17
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %mod_mask, align 4
  %2 = or i32 %1, 4
  store i32 %2, i32* %mod_mask, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %call10 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %address) #17
  br label %return

return:                                           ; preds = %if.then, %if.end9
  %retval.0 = phi %struct.pmd_t* [ %call10, %if.end9 ], [ null, %if.then ]
  ret %struct.pmd_t* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @apply_to_pte_range(%struct.mm_struct* noundef %mm, %struct.pmd_t* noundef %pmd, i64 noundef %addr, i64 noundef %end, i32 (%struct.pte_t*, i64, i8*)* noundef readonly %fn, i8* noundef %data, i1 noundef %create, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.mm_struct* %mm, @init_mm
  br i1 %create, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool2.not = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false12

cond.true:                                        ; preds = %if.then
  br i1 %tobool2.not, label %land.lhs.true, label %cond.false, !prof !11

land.lhs.true:                                    ; preds = %cond.true
  %call = call i32 @__pte_alloc_kernel(%struct.pmd_t* noundef %pmd) #17
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %1 = load i32, i32* %mask, align 4
  %2 = or i32 %1, 8
  store i32 %2, i32* %mask, align 4
  br label %cond.false

cond.false:                                       ; preds = %lor.lhs.false, %cond.true
  %call11 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #17
  br label %cond.end34

cond.false12:                                     ; preds = %if.then
  br i1 %tobool2.not, label %land.lhs.true24, label %cond.false28, !prof !11

land.lhs.true24:                                  ; preds = %cond.false12
  %call25 = call i32 @__pte_alloc(%struct.mm_struct* noundef %mm, %struct.pmd_t* noundef %pmd) #17
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cond.false28, label %cleanup

cond.false28:                                     ; preds = %land.lhs.true24, %cond.false12
  %call29 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #17
  %call30 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #17
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call29, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false28, %cond.false
  %ptl.0 = phi %struct.spinlock* [ null, %cond.false ], [ %call29, %cond.false28 ]
  %cond35 = phi %struct.pte_t* [ %call11, %cond.false ], [ %call30, %cond.false28 ]
  %tobool36.not = icmp eq %struct.pte_t* %cond35, null
  br i1 %tobool36.not, label %cleanup, label %do.body

if.else:                                          ; preds = %entry
  br i1 %cmp, label %cond.true40, label %cond.false42

cond.true40:                                      ; preds = %if.else
  %call41 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #17
  br label %do.body

cond.false42:                                     ; preds = %if.else
  %call44 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #17
  %call46 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #17
  %rlock.i143 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call44, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i143) #18
  br label %do.body

do.body:                                          ; preds = %cond.true40, %cond.false42, %cond.end34
  %ptl.2 = phi %struct.spinlock* [ %ptl.0, %cond.end34 ], [ null, %cond.true40 ], [ %call44, %cond.false42 ]
  %pte.0 = phi %struct.pte_t* [ %cond35, %cond.end34 ], [ %call41, %cond.true40 ], [ %call46, %cond.false42 ]
  %tobool71.not = icmp eq i32 (%struct.pte_t*, i64, i8*)* %fn, null
  br i1 %tobool71.not, label %if.end89, label %do.body73

do.body73:                                        ; preds = %do.body, %do.cond85
  %pte.1 = phi %struct.pte_t* [ %pte.2, %do.cond85 ], [ %pte.0, %do.body ]
  %addr.addr.0 = phi i64 [ %add, %do.cond85 ], [ %addr, %do.body ]
  br i1 %create, label %if.then79, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %do.body73
  %pte77 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.1, i64 0, i32 0
  %3 = load i64, i64* %pte77, align 8
  %tobool78.not = icmp eq i64 %3, 0
  br i1 %tobool78.not, label %do.cond85, label %if.then79

if.then79:                                        ; preds = %lor.lhs.false76, %do.body73
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.1, i64 1
  %call80 = call i32 %fn(%struct.pte_t* noundef %pte.1, i64 noundef %addr.addr.0, i8* noundef %data) #18
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.cond85, label %if.end89

do.cond85:                                        ; preds = %lor.lhs.false76, %if.then79
  %pte.2 = phi %struct.pte_t* [ %incdec.ptr, %if.then79 ], [ %pte.1, %lor.lhs.false76 ]
  %add = add i64 %addr.addr.0, 4096
  %cmp86.not = icmp eq i64 %add, %end
  br i1 %cmp86.not, label %if.end89, label %do.body73

if.end89:                                         ; preds = %do.cond85, %if.then79, %do.body
  %err.2 = phi i32 [ 0, %do.body ], [ 0, %do.cond85 ], [ %call80, %if.then79 ]
  %4 = load i32, i32* %mask, align 4
  %5 = or i32 %4, 16
  store i32 %5, i32* %mask, align 4
  %cmp96.not = icmp eq %struct.mm_struct* %mm, @init_mm
  br i1 %cmp96.not, label %cleanup, label %do.body99

do.body99:                                        ; preds = %if.end89
  %rlock.i144 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %ptl.2, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i144) #18
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true24, %land.lhs.true, %if.end89, %do.body99, %cond.end34
  %retval.0 = phi i32 [ -12, %cond.end34 ], [ %err.2, %do.body99 ], [ %err.2, %if.end89 ], [ -12, %land.lhs.true ], [ -12, %land.lhs.true24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_interval_tree_iter_first(%struct.rb_root_cached* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unmap_mapping_range_vma(%struct.vm_area_struct* noundef %vma, i64 noundef %start_addr, i64 noundef %end_addr, %struct.zap_details* noundef %details) unnamed_addr #3 {
entry:
  %sub = sub i64 %end_addr, %start_addr
  call fastcc void @zap_page_range_single(%struct.vm_area_struct* noundef %vma, i64 noundef %start_addr, i64 noundef %sub, %struct.zap_details* noundef %details) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_interval_tree_iter_next(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask) #17
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #18
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 1, i64* elementtype(i64) %0) #19, !srcloc !73
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !74
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkwrite(i64 %pte.coerce) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 2251799813685248) #17
  %call9 = call fastcc i64 @clear_pte_bit(i64 %call, i64 128) #17
  ret i64 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i64) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #18
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !75
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wp_pfn_shared(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 12
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %1, null
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pfn_mkwrite = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %1, i64 0, i32 10
  %2 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %pfn_mkwrite, align 8
  %tobool3.not = icmp eq i32 (%struct.vm_fault*)* %2, null
  br i1 %tobool3.not, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  %3 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %4 = load i32, i32* %flags, align 8
  %or = or i32 %4, 2
  store i32 %or, i32* %flags, align 8
  %5 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %pfn_mkwrite5 = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %5, i64 0, i32 10
  %6 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %pfn_mkwrite5, align 8
  %call = call i32 %6(%struct.vm_fault* noundef %vmf) #18
  %and = and i32 %call, 2419
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end, label %cleanup10

if.end:                                           ; preds = %if.then
  %call8 = call i32 @finish_mkwrite_fault(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup10

if.end9:                                          ; preds = %land.lhs.true, %entry
  call fastcc void @wp_page_reuse(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup10

cleanup10:                                        ; preds = %if.end, %if.then, %if.end9
  %retval.1 = phi i32 [ 8, %if.end9 ], [ %call8, %if.end ], [ %call, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wp_page_copy(%struct.vm_fault* nocapture noundef %vmf) unnamed_addr #3 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %2 = load %struct.page*, %struct.page** %page, align 8
  %3 = bitcast %struct.mmu_notifier_range* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #19
  %call = call fastcc i32 @anon_vma_prepare(%struct.vm_area_struct* noundef %0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %oom, !prof !9

if.end:                                           ; preds = %entry
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 4, i32 0, i32 0
  %4 = load i64, i64* %pte, align 8
  %and = lshr i64 %4, 12
  %shr = and i64 %and, 68719476735
  %call5 = call fastcc i32 @is_zero_pfn(i64 noundef %shr) #17
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %5 = load i64, i64* %address, align 8
  %call8 = call %struct.page* @alloc_zeroed_user_highpage_movable(%struct.vm_area_struct* noundef %0, i64 noundef %5) #18
  %tobool9.not = icmp eq %struct.page* %call8, null
  br i1 %tobool9.not, label %oom, label %if.end22

if.else:                                          ; preds = %if.end
  %call12 = call fastcc %struct.page* @alloc_pages(i32 noundef 17829066) #17
  %tobool13.not = icmp eq %struct.page* %call12, null
  br i1 %tobool13.not, label %oom, label %if.end15

if.end15:                                         ; preds = %if.else
  %call16 = call fastcc i1 @cow_user_page(%struct.page* noundef nonnull %call12, %struct.page* noundef %2, %struct.vm_fault* noundef %vmf) #17
  br i1 %call16, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end15
  call fastcc void @put_page(%struct.page* noundef nonnull %call12) #17
  %tobool18.not = icmp eq %struct.page* %2, null
  br i1 %tobool18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %if.then17
  call fastcc void @put_page(%struct.page* noundef nonnull %2) #17
  br label %cleanup

if.end22:                                         ; preds = %if.end15, %if.then7
  %new_page.0 = phi %struct.page* [ %call8, %if.then7 ], [ %call12, %if.end15 ]
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !51
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %new_page.0, i64 0, i32 0
  %6 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %6, 4
  store i64 %or.i.i, i64* %flags.i, align 8
  %address27 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %7 = load i64, i64* %address27, align 8
  %and28 = and i64 %7, -4096
  %add = add i64 %and28, 4096
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %and28, i64 noundef %add) #17
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %8 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %call31 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %8) #17
  %9 = load i64, i64* %address27, align 8
  %call34 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %8, i64 noundef %9) #17
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call31, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call31, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %pte35 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call34, %struct.pte_t** %pte35, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call34, i64 0, i32 0
  %10 = load i64, i64* %coerce.dive, align 8
  %11 = load i64, i64* %pte, align 8
  %call39 = call fastcc i32 @pte_same(i64 %10, i64 %11) #17
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body, label %if.then48, !prof !11

if.then48:                                        ; preds = %if.end22
  %tobool49.not = icmp eq %struct.page* %2, null
  br i1 %tobool49.not, label %if.end57.sink.split, label %if.then50

if.then50:                                        ; preds = %if.then48
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %2) #18
  %12 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %12, i64 0, i32 1, i32 0, i32 1
  %13 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %14 = ptrtoint %struct.address_space* %13 to i64
  %15 = and i64 %14, 1
  %tobool52.not = icmp eq i64 %15, 0
  br i1 %tobool52.not, label %if.then53, label %if.end57

if.then53:                                        ; preds = %if.then50
  %call54 = call fastcc i32 @mm_counter_file(%struct.page* noundef nonnull %2) #17, !range !32
  call fastcc void @add_mm_counter_fast(%struct.mm_struct* noundef %1, i32 noundef %call54, i32 noundef -1) #17
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.then48, %if.then53
  call fastcc void @add_mm_counter_fast(%struct.mm_struct* noundef %1, i32 noundef 1, i32 noundef 1) #17
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.then50
  %16 = load i64, i64* @memstart_addr, align 8
  %shr64 = ashr i64 %16, 12
  %idx.neg = sub nsw i64 0, %shr64
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %new_page.0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %pgprot = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 7, i32 0
  %17 = load i64, i64* %pgprot, align 8
  %or = or i64 %shl, %17
  %call71 = call fastcc i64 @pte_mkdirty(i64 %or) #17
  %call74 = call fastcc i64 @maybe_mkwrite(i64 %call71, %struct.vm_area_struct* noundef %0) #17
  %18 = load i64, i64* %address27, align 8
  %19 = load %struct.pte_t*, %struct.pte_t** %pte35, align 8
  %call78 = call i64 @ptep_clear_flush(%struct.vm_area_struct* noundef %0, i64 noundef %18, %struct.pte_t* noundef %19) #18
  %20 = load i64, i64* %address27, align 8
  call void @page_add_new_anon_rmap(%struct.page* noundef nonnull %new_page.0, %struct.vm_area_struct* noundef %0, i64 noundef %20, i1 noundef false) #18
  call void @lru_cache_add_inactive_or_unevictable(%struct.page* noundef nonnull %new_page.0, %struct.vm_area_struct* noundef %0) #18
  %21 = load %struct.pte_t*, %struct.pte_t** %pte35, align 8
  call fastcc void @set_pte_at(%struct.pte_t* noundef %21, i64 %call74) #17
  br i1 %tobool49.not, label %do.body.thread, label %if.then87

do.body.thread:                                   ; preds = %if.end57
  %22 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i210216 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i210216) #18
  br label %if.end113

if.then87:                                        ; preds = %if.end57
  call void @page_remove_rmap(%struct.page* noundef nonnull %2, i1 noundef false) #18
  br label %do.body

do.body:                                          ; preds = %if.end22, %if.then87
  %new_page.1.ph = phi %struct.page* [ %new_page.0, %if.end22 ], [ %2, %if.then87 ]
  call fastcc void @put_page(%struct.page* noundef nonnull %new_page.1.ph) #17
  %23 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i210 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i210) #18
  %tobool98.not = icmp eq %struct.page* %2, null
  br i1 %tobool98.not, label %if.end113, label %if.then99

if.then99:                                        ; preds = %do.body
  br i1 %tobool40.not, label %if.end112, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then99
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %24 = load i64, i64* %vm_flags, align 8
  %and101 = and i64 %24, 8192
  %tobool102.not = icmp eq i64 %and101, 0
  br i1 %tobool102.not, label %if.end112, label %if.then103

if.then103:                                       ; preds = %land.lhs.true
  call fastcc void @lock_page(%struct.page* noundef nonnull %2) #17
  %call.i211 = call fastcc i64 @_compound_head(%struct.page* noundef nonnull %2) #18
  %25 = inttoptr i64 %call.i211 to %struct.page*
  %flags.i212 = getelementptr inbounds %struct.page, %struct.page* %25, i64 0, i32 0
  %26 = load volatile i64, i64* %flags.i212, align 8
  %27 = and i64 %26, 2097152
  %tobool105.not = icmp eq i64 %27, 0
  br i1 %tobool105.not, label %if.end108, label %if.then106

if.then106:                                       ; preds = %if.then103
  %call107 = call i32 @munlock_vma_page(%struct.page* noundef nonnull %2) #18
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then103
  call void @unlock_page(%struct.page* noundef nonnull %2) #18
  br label %if.end112

if.end112:                                        ; preds = %if.end108, %land.lhs.true, %if.then99
  call fastcc void @put_page(%struct.page* noundef nonnull %2) #17
  br label %if.end113

if.end113:                                        ; preds = %do.body.thread, %if.end112, %do.body
  %cond = select i1 %tobool40.not, i32 0, i32 8
  br label %cleanup

oom:                                              ; preds = %if.else, %if.then7, %entry
  %tobool115.not = icmp eq %struct.page* %2, null
  br i1 %tobool115.not, label %cleanup, label %if.then116

if.then116:                                       ; preds = %oom
  call fastcc void @put_page(%struct.page* noundef nonnull %2) #17
  br label %cleanup

cleanup:                                          ; preds = %oom, %if.then116, %if.then17, %if.then19, %if.end113
  %retval.0 = phi i32 [ %cond, %if.end113 ], [ 0, %if.then19 ], [ 0, %if.then17 ], [ 1, %if.then116 ], [ 1, %oom ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wp_page_shared(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %1 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @get_page(%struct.page* noundef %1) #17
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 12
  %2 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %2, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %page_mkwrite = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %2, i64 0, i32 9
  %3 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %page_mkwrite, align 8
  %tobool3.not = icmp eq i32 (%struct.vm_fault*)* %3, null
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  %4 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  %call = call fastcc i32 @do_page_mkwrite(%struct.vm_fault* noundef %vmf) #17
  %tobool4.not = icmp eq i32 %call, 0
  %and = and i32 %call, 2419
  %tobool5 = icmp ne i32 %and, 0
  %5 = or i1 %tobool4.not, %tobool5
  br i1 %5, label %cleanup28, label %if.end, !prof !11

if.end:                                           ; preds = %if.then
  %call10 = call i32 @finish_mkwrite_fault(%struct.vm_fault* noundef %vmf) #17
  %and11 = and i32 %call10, 2419
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end25, label %if.then20, !prof !9

if.then20:                                        ; preds = %if.end
  %6 = load %struct.page*, %struct.page** %page, align 8
  call void @unlock_page(%struct.page* noundef %6) #18
  br label %cleanup28

if.else:                                          ; preds = %land.lhs.true, %entry
  call fastcc void @wp_page_reuse(%struct.vm_fault* noundef %vmf) #17
  %7 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @lock_page(%struct.page* noundef %7) #17
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.else
  %call26 = call fastcc i32 @fault_dirty_shared_page(%struct.vm_fault* noundef %vmf) #17
  %or = or i32 %call26, 8
  br label %cleanup28

cleanup28:                                        ; preds = %if.then, %if.then20, %if.end25
  %retval.1 = phi i32 [ %or, %if.end25 ], [ %call10, %if.then20 ], [ %call, %if.then ]
  %8 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %8) #17
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @anon_vma_prepare(%struct.vm_area_struct* noundef %vma) unnamed_addr #3 {
entry:
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %0 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool.not = icmp eq %struct.anon_vma* %0, null
  br i1 %tobool.not, label %if.end, label %return, !prof !11

if.end:                                           ; preds = %entry
  %call = call i32 @__anon_vma_prepare(%struct.vm_area_struct* noundef %vma) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @alloc_zeroed_user_highpage_movable(%struct.vm_area_struct* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cow_user_page(%struct.page* noundef %dst, %struct.page* noundef %src, %struct.vm_fault* nocapture noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %1 = load i64, i64* %address, align 8
  %tobool.not = icmp eq %struct.page* %src, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void @copy_user_highpage(%struct.page* noundef %dst, %struct.page* noundef nonnull %src, i64 noundef %1, %struct.vm_area_struct* noundef %0) #18
  br label %cleanup108

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kmap_atomic(%struct.page* noundef %dst) #17
  %and = and i64 %1, -4096
  %2 = inttoptr i64 %and to i8*
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 4, i32 0, i32 0
  %3 = load i64, i64* %pte, align 8
  %and6 = and i64 %3, 1024
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end41

if.then8:                                         ; preds = %if.end
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %4 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %call10 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %4) #17
  %call12 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %4, i64 noundef %1) #17
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call10, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call10, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %pte13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call12, %struct.pte_t** %pte13, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call12, i64 0, i32 0
  %5 = load i64, i64* %coerce.dive, align 8
  %6 = load i64, i64* %pte, align 8
  %call17 = call fastcc i32 @pte_same(i64 %5, i64 %6) #17
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body, label %if.end28, !prof !11

if.end28:                                         ; preds = %if.then8
  %call32 = call fastcc i64 @pte_mkyoung(i64 %6) #17
  %call36 = call i32 @ptep_set_access_flags(%struct.vm_area_struct* noundef %0, i64 noundef %1, %struct.pte_t* noundef %call12, i64 %call32, i32 noundef 0) #18
  br label %if.end41

if.end41:                                         ; preds = %if.end28, %if.end
  %locked.0 = phi i8 [ 0, %if.end ], [ 1, %if.end28 ]
  %call1.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #18
  %call2.i = call i64 @__arch_copy_from_user(i8* noundef %call, i8* noundef %call1.i, i64 noundef 4096) #18
  %tobool43.not = icmp eq i64 %call2.i, 0
  br i1 %tobool43.not, label %pte_unlock, label %if.then44

if.then44:                                        ; preds = %if.end41
  br i1 %tobool7.not, label %if.then84, label %if.end47

if.end47:                                         ; preds = %if.then44
  %pmd49 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %7 = load %struct.pmd_t*, %struct.pmd_t** %pmd49, align 8
  %call50 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %7) #17
  %call53 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %7, i64 noundef %1) #17
  %ptl54 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call50, %struct.spinlock** %ptl54, align 8
  %rlock.i173 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call50, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i173) #18
  %pte56 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call53, %struct.pte_t** %pte56, align 8
  %coerce.dive59 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call53, i64 0, i32 0
  %8 = load i64, i64* %coerce.dive59, align 8
  %9 = load i64, i64* %pte, align 8
  %call61 = call fastcc i32 @pte_same(i64 %8, i64 %9) #17
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body, label %if.end72, !prof !11

if.end72:                                         ; preds = %if.end47
  %call1.i174 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #18
  %call2.i175 = call i64 @__arch_copy_from_user(i8* noundef %call, i8* noundef %call1.i174, i64 noundef 4096) #18
  %tobool74.not = icmp eq i64 %call2.i175, 0
  br i1 %tobool74.not, label %do.body, label %if.then84

if.then84:                                        ; preds = %if.then44, %if.end72
  %locked.1 = phi i8 [ %locked.0, %if.then44 ], [ 1, %if.end72 ]
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memory.c\22; .popsection; .long 14472b - 14470b; .short 2822; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !76
  call void @clear_page(i8* noundef %call) #18
  br label %pte_unlock

pte_unlock:                                       ; preds = %if.end41, %if.then84
  %locked.2 = phi i8 [ %locked.1, %if.then84 ], [ %locked.0, %if.end41 ]
  %extract.t.not = icmp eq i8 %locked.2, 0
  br i1 %extract.t.not, label %do.end104, label %do.body

do.body:                                          ; preds = %if.end47, %if.then8, %if.end72, %pte_unlock
  %ret.1.off0182 = phi i1 [ true, %pte_unlock ], [ true, %if.end72 ], [ false, %if.then8 ], [ false, %if.end47 ]
  %ptl98 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  %10 = load %struct.spinlock*, %struct.spinlock** %ptl98, align 8
  %rlock.i176 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i176) #18
  br label %do.end104

do.end104:                                        ; preds = %do.body, %pte_unlock
  %ret.1.off0181 = phi i1 [ %ret.1.off0182, %do.body ], [ true, %pte_unlock ]
  call fastcc void @__kunmap_atomic() #17
  call void @flush_dcache_page(%struct.page* noundef %dst) #18
  br label %cleanup108

cleanup108:                                       ; preds = %do.end104, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ %ret.1.off0181, %do.end104 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ptep_clear_flush(%struct.vm_area_struct* noundef, i64 noundef, %struct.pte_t* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @munlock_vma_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__anon_vma_prepare(%struct.vm_area_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !77
  call fastcc void @pagefault_disable() #17
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_page(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #3 {
entry:
  call fastcc void @pagefault_enable() #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !78
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #19, !srcloc !80
  call void asm sideeffect "hint #20", "~{memory}"() #19, !srcloc !81
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !82
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_page_mkwrite(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %page1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %0 = load %struct.page*, %struct.page** %page1, align 8
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  store i32 3, i32* %flags, align 8
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i64 0, i32 14
  %3 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool.not = icmp eq %struct.file* %3, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 17
  %4 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %4, i64 0, i32 0
  %5 = load %struct.inode*, %struct.inode** %host, align 8
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %5, i64 0, i32 4
  %6 = load i32, i32* %i_flags, align 4
  %and = and i32 %6, 256
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i64 0, i32 12
  %7 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %page_mkwrite = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %7, i64 0, i32 9
  %8 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %page_mkwrite, align 8
  %call = call i32 %8(%struct.vm_fault* noundef %vmf) #18
  store i32 %1, i32* %flags, align 8
  %9 = and i32 %call, 2931
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.then25, label %cleanup, !prof !83

if.then25:                                        ; preds = %if.end
  call fastcc void @lock_page(%struct.page* noundef %0) #17
  %mapping = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1, i32 0, i32 1
  %11 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %tobool26.not = icmp eq %struct.address_space* %11, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then25
  call void @unlock_page(%struct.page* noundef %0) #18
  br label %cleanup

if.end28:                                         ; preds = %if.then25
  %or = or i32 %call, 512
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end, %land.lhs.true, %if.then27
  %retval.0 = phi i32 [ 0, %if.then27 ], [ 2, %land.lhs.true ], [ %call, %if.end ], [ %or, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fault_dirty_shared_page(%struct.vm_fault* nocapture noundef readonly %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %page2 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %1 = load %struct.page*, %struct.page** %page2, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 12
  %2 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %2, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %page_mkwrite4 = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %2, i64 0, i32 9
  %3 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %page_mkwrite4, align 8
  %tobool5 = icmp ne i32 (%struct.vm_fault*)* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool5, %land.rhs ]
  %call = call i32 @set_page_dirty(%struct.page* noundef %1) #18
  %tobool6.not = icmp eq i32 %call, 0
  %call8 = call i8* @page_rmapping(%struct.page* noundef %1) #18
  %5 = bitcast i8* %call8 to %struct.address_space*
  call void @unlock_page(%struct.page* noundef %1) #18
  br i1 %4, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 14
  %6 = load %struct.file*, %struct.file** %vm_file, align 8
  %call10 = call i32 @file_update_time(%struct.file* noundef %6) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  br i1 %tobool6.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %tobool13 = icmp ne i8* %call8, null
  %or.cond = select i1 %4, i1 %tobool13, i1 false
  br i1 %or.cond, label %if.then14, label %cleanup20

land.lhs.true:                                    ; preds = %if.end
  %tobool13.old.not = icmp eq i8* %call8, null
  br i1 %tobool13.old.not, label %cleanup20, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call15 = call fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* noundef %vmf) #17
  call void @balance_dirty_pages_ratelimited(%struct.address_space* noundef %5) #18
  %tobool16.not = icmp eq %struct.file* %call15, null
  br i1 %tobool16.not, label %cleanup20, label %if.then17

if.then17:                                        ; preds = %if.then14
  call void @fput(%struct.file* noundef nonnull %call15) #18
  br label %cleanup20

cleanup20:                                        ; preds = %lor.lhs.false, %land.lhs.true, %if.then14, %if.then17
  %retval.1 = phi i32 [ 1024, %if.then17 ], [ 0, %if.then14 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(%struct.file* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @maybe_unlock_mmap_for_io(%struct.vm_fault* nocapture noundef readonly %vmf) unnamed_addr #3 {
entry:
  %flags1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %0 = load i32, i32* %flags1, align 8
  %call = call fastcc i1 @fault_flag_allow_retry_first(i32 noundef %0) #17
  %and = and i32 %0, 8
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = and i1 %call, %tobool2.not
  br i1 %or.cond, label %if.then3, label %cleanup

if.then3:                                         ; preds = %entry
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %1, i64 0, i32 14
  %2 = load %struct.file*, %struct.file** %vm_file, align 8
  %call4 = call fastcc %struct.file* @get_file(%struct.file* noundef %2) #17
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i64 0, i32 6
  %4 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %4) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then3
  %fpin.addr.0 = phi %struct.file* [ %2, %if.then3 ], [ null, %entry ]
  ret %struct.file* %fpin.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(%struct.address_space* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @fault_flag_allow_retry_first(i32 noundef %flags) unnamed_addr #2 {
entry:
  %0 = and i32 %flags, 36
  %1 = icmp eq i32 %0, 4
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @get_file(%struct.file* noundef returned %f) unnamed_addr #3 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(i64 noundef 1, %struct.atomic64_t* noundef %f_count) #18
  ret %struct.file* %f
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__get_fault_gfp_mask(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_file1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file1, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 17
  %1 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %1) #17
  %or2 = or i32 %call, 192
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %or2, %if.then ], [ 3264, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @handle_pte_fault(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %0 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %pmd2 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %0, i64 0, i32 0
  %1 = load i64, i64* %pmd2, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !11

if.then:                                          ; preds = %entry
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  br label %if.then23.sink.split

if.else:                                          ; preds = %entry
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %2 = load i64, i64* %address, align 8
  %call10 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %0, i64 noundef %2) #17
  %pte11 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call10, %struct.pte_t** %pte11, align 8
  %3 = getelementptr %struct.pte_t, %struct.pte_t* %call10, i64 0, i32 0
  %4 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 4, i32 0, i32 0
  %5 = load i64, i64* %3, align 8
  store i64 %5, i64* %4, align 8
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !84
  %6 = load i64, i64* %4, align 8
  %tobool15.not = icmp eq i64 %6, 0
  br i1 %tobool15.not, label %if.then23.sink.split, label %if.end20

if.end20:                                         ; preds = %if.else
  %.pre = load %struct.pte_t*, %struct.pte_t** %pte11, align 8
  %phi.cmp = icmp eq %struct.pte_t* %.pre, null
  %pte21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  br i1 %phi.cmp, label %if.then23, label %if.end29

if.then23.sink.split:                             ; preds = %if.else, %if.then
  %pte.sink = phi %struct.pte_t** [ %pte, %if.then ], [ %pte11, %if.else ]
  store %struct.pte_t* null, %struct.pte_t** %pte.sink, align 8
  br label %if.then23

if.then23:                                        ; preds = %if.then23.sink.split, %if.end20
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %call24 = call fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* noundef %7) #17
  br i1 %call24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then23
  %call26 = call fastcc i32 @do_anonymous_page(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup

if.else27:                                        ; preds = %if.then23
  %call28 = call fastcc i32 @do_fault(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %pte31 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 4, i32 0, i32 0
  %8 = load i64, i64* %pte31, align 8
  %and = and i64 %8, 288230376151711745
  %tobool32.not = icmp eq i64 %and, 0
  br i1 %tobool32.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end29
  %vma45 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %9 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %call47 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %9) #17
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call47, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call47, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %entry1.sroa.0.0.copyload = load i64, i64* %pte31, align 8
  %10 = load %struct.pte_t*, %struct.pte_t** %pte21, align 8
  %coerce.dive51 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %10, i64 0, i32 0
  %11 = load i64, i64* %coerce.dive51, align 8
  %call53 = call fastcc i32 @pte_same(i64 %11, i64 %entry1.sroa.0.0.copyload) #17
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body110, label %if.end68, !prof !11

if.end68:                                         ; preds = %if.end35
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %12 = load i32, i32* %flags, align 8
  %and69 = and i32 %12, 1
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end81, label %if.then71

if.then71:                                        ; preds = %if.end68
  %and73 = and i64 %entry1.sroa.0.0.copyload, 2251799813685248
  %tobool74.not = icmp eq i64 %and73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.then71
  %call76 = call fastcc i32 @do_wp_page(%struct.vm_fault* noundef %vmf) #17
  br label %cleanup

if.end77:                                         ; preds = %if.then71
  %call79 = call fastcc i64 @pte_mkdirty(i64 %entry1.sroa.0.0.copyload) #17
  br label %if.end81

if.end81:                                         ; preds = %if.end77, %if.end68
  %entry1.sroa.0.0 = phi i64 [ %call79, %if.end77 ], [ %entry1.sroa.0.0.copyload, %if.end68 ]
  %call84 = call fastcc i64 @pte_mkyoung(i64 %entry1.sroa.0.0) #17
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma45, align 8
  %address87 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %14 = load i64, i64* %address87, align 8
  %call92 = call i32 @ptep_set_access_flags(%struct.vm_area_struct* noundef %13, i64 noundef %14, %struct.pte_t* noundef %10, i64 %call84, i32 noundef %and69) #18
  br label %do.body110

do.body110:                                       ; preds = %if.end81, %if.end35
  %15 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i163 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i163) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.body110, %if.then75, %if.else27, %if.then25
  %retval.0 = phi i32 [ 0, %do.body110 ], [ %call76, %if.then75 ], [ %call26, %if.then25 ], [ %call28, %if.else27 ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_mask(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #6 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 3
  %0 = load i32, i32* %gfp_mask, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %0, null
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_anonymous_page(%struct.vm_fault* nocapture noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %and = and i64 %1, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %2 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %pmd3 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %2, i64 0, i32 0
  %3 = load i64, i64* %pmd3, align 8
  %tobool4.not = icmp eq i64 %3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end11, !prof !11

land.lhs.true:                                    ; preds = %if.end
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %4 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call = call i32 @__pte_alloc(%struct.mm_struct* noundef %4, %struct.pmd_t* noundef %2) #17
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %5 = load i32, i32* %flags, align 8
  %and24 = and i32 %5, 1
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end56

if.then26:                                        ; preds = %if.end11
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %call27 = call fastcc i64 @my_zero_pfn() #17
  %pgprot = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 7, i32 0
  %6 = load i64, i64* %pgprot, align 8
  %7 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %call32 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %7) #17
  %8 = load i64, i64* %address, align 8
  %call35 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %7, i64 noundef %8) #17
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call32, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call32, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %pte37 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call35, %struct.pte_t** %pte37, align 8
  %pte39 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call35, i64 0, i32 0
  %9 = load i64, i64* %pte39, align 8
  %tobool40.not = icmp eq i64 %9, 0
  br i1 %tobool40.not, label %if.end44, label %do.body140

if.end44:                                         ; preds = %if.then26
  %shl = shl i64 %call27, 12
  %or = or i64 %shl, %6
  %call28 = call fastcc i64 @pte_mkspecial(i64 %or) #17
  %vm_mm30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  %10 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm30, align 8
  %call46 = call fastcc i32 @check_stable_address_space(%struct.mm_struct* noundef %10) #17
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %setpte, label %do.body140

if.end56:                                         ; preds = %if.end11
  %call57 = call fastcc i32 @anon_vma_prepare(%struct.vm_area_struct* noundef %0) #17
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end67, label %cleanup, !prof !9

if.end67:                                         ; preds = %if.end56
  %address68 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %11 = load i64, i64* %address68, align 8
  %call69 = call %struct.page* @alloc_zeroed_user_highpage_movable(%struct.vm_area_struct* noundef %0, i64 noundef %11) #18
  %tobool70.not = icmp eq %struct.page* %call69, null
  br i1 %tobool70.not, label %cleanup, label %if.end72

if.end72:                                         ; preds = %if.end67
  %vm_mm73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 6
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !51
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %call69, i64 0, i32 0
  %12 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %12, 4
  store i64 %or.i.i, i64* %flags.i, align 8
  %13 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %13, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %call69 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl80 = shl i64 %sub.ptr.sub, 6
  %pgprot82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 7, i32 0
  %14 = load i64, i64* %pgprot82, align 8
  %or83 = or i64 %shl80, %14
  %15 = load i64, i64* %vm_flags, align 8
  %and89 = and i64 %15, 2
  %tobool90.not = icmp eq i64 %and89, 0
  br i1 %tobool90.not, label %if.end99, label %if.then91

if.then91:                                        ; preds = %if.end72
  %call94 = call fastcc i64 @pte_mkdirty(i64 %or83) #17
  %call97 = call fastcc i64 @pte_mkwrite(i64 %call94) #17
  br label %if.end99

if.end99:                                         ; preds = %if.then91, %if.end72
  %entry2.sroa.0.0 = phi i64 [ %call97, %if.then91 ], [ %or83, %if.end72 ]
  %16 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %call103 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %16) #17
  %17 = load i64, i64* %address68, align 8
  %call107 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %16, i64 noundef %17) #17
  %ptl108 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call103, %struct.spinlock** %ptl108, align 8
  %rlock.i229 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call103, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i229) #18
  %pte110 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call107, %struct.pte_t** %pte110, align 8
  %pte112 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call107, i64 0, i32 0
  %18 = load i64, i64* %pte112, align 8
  %tobool113.not = icmp eq i64 %18, 0
  br i1 %tobool113.not, label %if.end117, label %release

if.end117:                                        ; preds = %if.end99
  %19 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm73, align 8
  %call119 = call fastcc i32 @check_stable_address_space(%struct.mm_struct* noundef %19) #17
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %release

if.end122:                                        ; preds = %if.end117
  %20 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm73, align 8
  call fastcc void @add_mm_counter_fast(%struct.mm_struct* noundef %20, i32 noundef 1, i32 noundef 1) #17
  %21 = load i64, i64* %address68, align 8
  call void @page_add_new_anon_rmap(%struct.page* noundef nonnull %call69, %struct.vm_area_struct* noundef %0, i64 noundef %21, i1 noundef false) #18
  call void @lru_cache_add_inactive_or_unevictable(%struct.page* noundef nonnull %call69, %struct.vm_area_struct* noundef %0) #18
  br label %setpte

setpte:                                           ; preds = %if.end44, %if.end122
  %entry2.sroa.0.1 = phi i64 [ %entry2.sroa.0.0, %if.end122 ], [ %call28, %if.end44 ]
  %pte136 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  %22 = load %struct.pte_t*, %struct.pte_t** %pte136, align 8
  call fastcc void @set_pte_at(%struct.pte_t* noundef %22, i64 %entry2.sroa.0.1) #17
  br label %do.body140

do.body140:                                       ; preds = %if.then26, %setpte, %release, %if.end44
  %ret.1 = phi i32 [ %ret.2, %release ], [ 0, %setpte ], [ %call46, %if.end44 ], [ 0, %if.then26 ]
  %ptl141 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  %23 = load %struct.spinlock*, %struct.spinlock** %ptl141, align 8
  %rlock.i230 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i230) #18
  br label %cleanup

release:                                          ; preds = %if.end99, %if.end117
  %ret.2 = phi i32 [ %call119, %if.end117 ], [ 0, %if.end99 ]
  call fastcc void @put_page(%struct.page* noundef nonnull %call69) #17
  br label %do.body140

cleanup:                                          ; preds = %if.end56, %if.end67, %land.lhs.true, %entry, %do.body140
  %retval.0 = phi i32 [ %ret.1, %do.body140 ], [ 2, %entry ], [ 1, %land.lhs.true ], [ 1, %if.end67 ], [ 1, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_fault(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 12
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %fault = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %1, i64 0, i32 5
  %2 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %fault, align 8
  %tobool.not = icmp eq i32 (%struct.vm_fault*)* %2, null
  br i1 %tobool.not, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %3 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %3, i64 0, i32 0
  %4 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i32 @pmd_present(i64 %4) #17
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end44, label %if.else, !prof !11

if.else:                                          ; preds = %if.then
  %call11 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %3) #17
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %5 = load i64, i64* %address, align 8
  %call13 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %3, i64 noundef %5) #17
  %ptl = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 8
  store %struct.spinlock* %call11, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call11, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 7
  store %struct.pte_t* %call13, %struct.pte_t** %pte, align 8
  %pte15 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call13, i64 0, i32 0
  %6 = load i64, i64* %pte15, align 8
  %tobool16.not = icmp eq i64 %6, 0
  %. = select i1 %tobool16.not, i32 2, i32 256, !prof !11
  %7 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i75 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i75) #18
  br label %if.end44

if.else31:                                        ; preds = %entry
  %flags = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 1
  %8 = load i32, i32* %flags, align 8
  %and = and i32 %8, 1
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else31
  %call34 = call fastcc i32 @do_read_fault(%struct.vm_fault* noundef %vmf) #17
  br label %if.end44

if.else35:                                        ; preds = %if.else31
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 8
  %9 = load i64, i64* %vm_flags, align 8
  %and36 = and i64 %9, 8
  %tobool37.not = icmp eq i64 %and36, 0
  br i1 %tobool37.not, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else35
  %call39 = call fastcc i32 @do_cow_fault(%struct.vm_fault* noundef %vmf) #17
  br label %if.end44

if.else40:                                        ; preds = %if.else35
  %call41 = call fastcc i32 @do_shared_fault(%struct.vm_fault* noundef %vmf) #17
  br label %if.end44

if.end44:                                         ; preds = %if.then, %if.then33, %if.else40, %if.then38, %if.else
  %ret.1 = phi i32 [ %call41, %if.else40 ], [ %call39, %if.then38 ], [ %call34, %if.then33 ], [ %., %if.else ], [ 2, %if.then ]
  %prealloc_pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 9
  %10 = load %struct.page*, %struct.page** %prealloc_pte, align 8
  %tobool45.not = icmp eq %struct.page* %10, null
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end44
  call fastcc void @pte_free(%struct.page* noundef nonnull %10) #17
  store %struct.page* null, %struct.page** %prealloc_pte, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end44
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @my_zero_pfn() unnamed_addr #6 {
entry:
  %0 = load i64, i64* @zero_pfn, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pmd_present(i64 %pmd.coerce) unnamed_addr #2 {
entry:
  %and = and i64 %pmd.coerce, 288230376151711745
  %tobool.not = icmp eq i64 %and, 0
  %and4 = lshr i64 %pmd.coerce, 59
  %0 = trunc i64 %and4 to i32
  %1 = and i32 %0, 1
  %2 = select i1 %tobool.not, i32 %1, i32 1
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_fault(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 12
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %map_pages = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %1, i64 0, i32 7
  %2 = load i32 (%struct.vm_fault*, i64, i64)*, i32 (%struct.vm_fault*, i64, i64)** %map_pages, align 8
  %tobool.not = icmp ne i32 (%struct.vm_fault*, i64, i64)* %2, null
  %3 = load i64, i64* @fault_around_bytes, align 8
  %cmp = icmp ugt i64 %3, 8191
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %call7 = call fastcc i32 @do_fault_around(%struct.vm_fault* noundef %vmf) #17
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.then, %entry
  %call12 = call fastcc i32 @__do_fault(%struct.vm_fault* noundef %vmf) #17
  %and = and i32 %call12, 3443
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end22, label %cleanup, !prof !9

if.end22:                                         ; preds = %if.end11
  %call23 = call i32 @finish_fault(%struct.vm_fault* noundef %vmf) #17
  %or = or i32 %call23, %call12
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %4 = load %struct.page*, %struct.page** %page, align 8
  call void @unlock_page(%struct.page* noundef %4) #18
  %and24 = and i32 %or, 3443
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cleanup, label %if.then33, !prof !9

if.then33:                                        ; preds = %if.end22
  %5 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %5) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then33, %if.end11, %if.then
  %retval.0 = phi i32 [ %call7, %if.then ], [ %call12, %if.end11 ], [ %or, %if.then33 ], [ %or, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_cow_fault(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %call = call fastcc i32 @anon_vma_prepare(%struct.vm_area_struct* noundef %0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !9

if.end:                                           ; preds = %entry
  %call4 = call fastcc %struct.page* @alloc_pages(i32 noundef 17829066) #17
  %cow_page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 5
  store %struct.page* %call4, %struct.page** %cow_page, align 8
  %tobool6.not = icmp eq %struct.page* %call4, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %call16 = call fastcc i32 @__do_fault(%struct.vm_fault* noundef %vmf) #17
  %and = and i32 %call16, 3443
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end26, label %uncharge_out, !prof !9

if.end26:                                         ; preds = %if.end8
  %and27 = and i32 %call16, 4096
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %if.end26
  %1 = load %struct.page*, %struct.page** %cow_page, align 8
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %2 = load %struct.page*, %struct.page** %page, align 8
  %address = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %3 = load i64, i64* %address, align 8
  call void @copy_user_highpage(%struct.page* noundef %1, %struct.page* noundef %2, i64 noundef %3, %struct.vm_area_struct* noundef %0) #18
  %4 = load %struct.page*, %struct.page** %cow_page, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !51
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %5 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %5, 4
  store i64 %or.i.i, i64* %flags.i, align 8
  %call33 = call i32 @finish_fault(%struct.vm_fault* noundef %vmf) #17
  %or = or i32 %call33, %call16
  %6 = load %struct.page*, %struct.page** %page, align 8
  call void @unlock_page(%struct.page* noundef %6) #18
  %7 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %7) #17
  %and36 = and i32 %or, 3443
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %cleanup, label %uncharge_out, !prof !9

uncharge_out:                                     ; preds = %if.end30, %if.end8
  %ret.0 = phi i32 [ %call16, %if.end8 ], [ %or, %if.end30 ]
  %8 = load %struct.page*, %struct.page** %cow_page, align 8
  call fastcc void @put_page(%struct.page* noundef %8) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26, %if.end, %entry, %uncharge_out
  %retval.0 = phi i32 [ %ret.0, %uncharge_out ], [ 1, %entry ], [ 1, %if.end ], [ %call16, %if.end26 ], [ %or, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_shared_fault(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %call = call fastcc i32 @__do_fault(%struct.vm_fault* noundef %vmf) #17
  %and = and i32 %call, 3443
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !9

if.end:                                           ; preds = %entry
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 12
  %1 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %page_mkwrite = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %1, i64 0, i32 9
  %2 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %page_mkwrite, align 8
  %tobool4.not = icmp eq i32 (%struct.vm_fault*)* %2, null
  br i1 %tobool4.not, label %if.end20, label %if.then5

if.then5:                                         ; preds = %if.end
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %3 = load %struct.page*, %struct.page** %page, align 8
  call void @unlock_page(%struct.page* noundef %3) #18
  %call6 = call fastcc i32 @do_page_mkwrite(%struct.vm_fault* noundef %vmf) #17
  %tobool7.not = icmp eq i32 %call6, 0
  %and8 = and i32 %call6, 2419
  %tobool9 = icmp ne i32 %and8, 0
  %4 = or i1 %tobool7.not, %tobool9
  br i1 %4, label %if.then17, label %if.end20, !prof !11

if.then17:                                        ; preds = %if.then5
  %5 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %5) #17
  br label %cleanup

if.end20:                                         ; preds = %if.then5, %if.end
  %call21 = call i32 @finish_fault(%struct.vm_fault* noundef %vmf) #17
  %or = or i32 %call21, %call
  %and22 = and i32 %or, 3443
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end34, label %if.then31, !prof !9

if.then31:                                        ; preds = %if.end20
  %page32 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %6 = load %struct.page*, %struct.page** %page32, align 8
  call void @unlock_page(%struct.page* noundef %6) #18
  %7 = load %struct.page*, %struct.page** %page32, align 8
  call fastcc void @put_page(%struct.page* noundef %7) #17
  br label %cleanup

if.end34:                                         ; preds = %if.end20
  %call35 = call fastcc i32 @fault_dirty_shared_page(%struct.vm_fault* noundef %vmf) #17
  %or36 = or i32 %call35, %or
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end34, %if.then31, %if.then17
  %retval.0 = phi i32 [ %call6, %if.then17 ], [ %or, %if.then31 ], [ %or36, %if.end34 ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_fault_around(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %address1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 3
  %0 = load i64, i64* %address1, align 8
  %pgoff = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 2
  %1 = load i64, i64* %pgoff, align 8
  %2 = load volatile i64, i64* @fault_around_bytes, align 8
  %shr = lshr i64 %2, 12
  %mul = and i64 %2, -4096
  %neg = sub i64 0, %mul
  %and2 = and i64 %0, %neg
  %vma = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i64 0, i32 0
  %4 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %and2, %4
  %cond = select i1 %cmp, i64 %and2, i64 %4
  %sub5 = sub i64 %0, %cond
  %5 = lshr i64 %sub5, 12
  %conv = and i64 %5, 511
  %sub9 = sub i64 %1, %conv
  %shr10 = lshr i64 %cond, 12
  %and11 = and i64 %shr10, 511
  %sub12 = sub i64 %sub9, %and11
  %sub13 = add i64 %sub12, 511
  %call = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef %3) #17
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i64 0, i32 13
  %6 = load i64, i64* %vm_pgoff, align 8
  %add16 = add i64 %call, -1
  %sub17 = add i64 %add16, %6
  %cmp19 = icmp ult i64 %sub13, %sub17
  %cond24 = select i1 %cmp19, i64 %sub13, i64 %sub17
  %add25 = add nsw i64 %shr, -1
  %sub26 = add i64 %add25, %sub9
  %cmp28 = icmp ult i64 %cond24, %sub26
  %cond33 = select i1 %cmp28, i64 %cond24, i64 %sub26
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %7 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %pmd34 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %7, i64 0, i32 0
  %8 = load i64, i64* %pmd34, align 8
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.then, label %if.end40

if.then:                                          ; preds = %entry
  %call36 = call fastcc %struct.page* @pte_alloc_one() #17
  %prealloc_pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 9
  store %struct.page* %call36, %struct.page** %prealloc_pte, align 8
  %tobool38.not = icmp eq %struct.page* %call36, null
  br i1 %tobool38.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !85
  %.pre = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end, %entry
  %9 = phi %struct.vm_area_struct* [ %.pre, %if.end ], [ %3, %entry ]
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i64 0, i32 12
  %10 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %map_pages = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %10, i64 0, i32 7
  %11 = load i32 (%struct.vm_fault*, i64, i64)*, i32 (%struct.vm_fault*, i64, i64)** %map_pages, align 8
  %call42 = call i32 %11(%struct.vm_fault* noundef %vmf, i64 noundef %sub9, i64 noundef %cond33) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end40
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__do_fault(%struct.vm_fault* noundef %vmf) unnamed_addr #3 {
entry:
  %vma1 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 0, i32 0
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %pmd = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 2
  %1 = load %struct.pmd_t*, %struct.pmd_t** %pmd, align 8
  %pmd2 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %1, i64 0, i32 0
  %2 = load i64, i64* %pmd2, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %prealloc_pte = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 9
  %3 = load %struct.page*, %struct.page** %prealloc_pte, align 8
  %tobool3.not = icmp eq %struct.page* %3, null
  br i1 %tobool3.not, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc %struct.page* @pte_alloc_one() #17
  store %struct.page* %call, %struct.page** %prealloc_pte, align 8
  %tobool6.not = icmp eq %struct.page* %call, null
  br i1 %tobool6.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !86
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i64 0, i32 12
  %4 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %fault = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %4, i64 0, i32 5
  %5 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %fault, align 8
  %call9 = call i32 %5(%struct.vm_fault* noundef %vmf) #18
  %6 = and i32 %call9, 8051
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.then44, label %cleanup, !prof !83

if.then44:                                        ; preds = %if.end8
  %page = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %vmf, i64 0, i32 6
  %8 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @lock_page(%struct.page* noundef %8) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end8, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call9, %if.end8 ], [ %call9, %if.then44 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pgtable_pmd_page_ctor(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  call fastcc void @pmd_ptlock_init(%struct.page* noundef %page) #17
  %page_type.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %page_type.i, align 16
  %and.i = and i32 %0, -513
  store i32 %and.i, i32* %page_type.i, align 16
  call fastcc void @inc_lruvec_page_state(%struct.page* noundef %page) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pmd_ptlock_init(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  call fastcc void @ptlock_init(%struct.page* noundef %page) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @pud_lockptr(%struct.mm_struct* noundef readnone %mm) unnamed_addr #2 {
entry:
  %page_table_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 14
  ret %struct.spinlock* %page_table_lock
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pud_populate(%struct.pud_t* noundef %pudp, i64 noundef %pmdp, i64 noundef %prot) unnamed_addr #3 {
entry:
  %or = or i64 %prot, %pmdp
  call fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %or) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #17
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #2 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #2 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #15

attributes #0 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind "no-builtins" }
attributes #19 = { nounwind }
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
!8 = !{i64 2155856799}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155856969}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 1418801}
!13 = !{i64 2150391180}
!14 = !{i64 2150391421}
!15 = !{i64 2155905255}
!16 = !{!"auto-init"}
!17 = !{i64 2155914777}
!18 = !{i64 2155916146}
!19 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!20 = !{i64 2155920319}
!21 = !{i64 2155921833}
!22 = !{i64 2155923274}
!23 = !{i64 2155924685}
!24 = !{i64 2155918810}
!25 = !{i64 2155930367}
!26 = !{i64 2155938118}
!27 = !{i64 2155939492}
!28 = !{i64 2155959070}
!29 = !{i64 2155981390}
!30 = !{i64 2153053666}
!31 = !{i64 2153054618}
!32 = !{i32 0, i32 4}
!33 = !{i64 2156038978}
!34 = !{i64 2156039229}
!35 = !{i64 2156042545}
!36 = !{i64 2155769534}
!37 = !{!"branch_weights", i32 2000, i32 2002}
!38 = !{i64 2147965696, i64 2147966344, i64 2147966374, i64 2147966405, i64 2147966437, i64 2147966472, i64 2147966497}
!39 = !{i64 2151524880}
!40 = !{i64 2151524929}
!41 = !{i64 2147978581, i64 2147979095, i64 2147979125, i64 2147979151, i64 2147979183, i64 2147979212}
!42 = !{i64 2151528307}
!43 = !{i64 2151528356}
!44 = !{i64 2147964848, i64 2147965362, i64 2147965392, i64 2147965418, i64 2147965450, i64 2147965479}
!45 = !{i64 2149872076}
!46 = !{i64 2149818924}
!47 = !{i64 2149864795}
!48 = !{i64 2148020024, i64 2148020057, i64 2148020110, i64 2148020169, i64 2148020203, i64 2148020258, i64 2148020287, i64 2148020307}
!49 = !{i64 2147924162, i64 2147924678, i64 2147924708, i64 2147924735, i64 2147924769, i64 2147924799}
!50 = !{i64 2147996130, i64 2147996800, i64 2147996830, i64 2147996862, i64 2147996894, i64 2147996928, i64 2147996953}
!51 = !{i64 2150996670}
!52 = !{i64 2148015104, i64 2148015137, i64 2148015188, i64 2148015244, i64 2148015277, i64 2148015331, i64 2148015360, i64 2148015380}
!53 = !{i64 2148045958, i64 2148045990, i64 2148046034, i64 2148046080, i64 2148046106}
!54 = !{i64 2151509270}
!55 = !{i64 2151509319}
!56 = !{i64 2151303546}
!57 = !{i64 2151304932, i64 2151304657, i64 2151305296, i64 2151305342, i64 2151305348, i64 2151306736, i64 2151305385, i64 2151305403, i64 2151306811, i64 2151306859, i64 2151306907, i64 2151306970, i64 2151307019, i64 2151305481, i64 2151305506, i64 2151305532, i64 2151305538, i64 2151306757, i64 2151305575, i64 2151305581, i64 2151305631, i64 2151305677, i64 2151305710}
!58 = !{i64 2151307778, i64 2151307471, i64 2151308142, i64 2151308188, i64 2151308194, i64 2151309582, i64 2151308231, i64 2151308249, i64 2151309657, i64 2151309705, i64 2151309753, i64 2151309816, i64 2151309865, i64 2151308327, i64 2151308352, i64 2151308378, i64 2151308384, i64 2151309603, i64 2151308421, i64 2151308427, i64 2151308477, i64 2151308523, i64 2151308556}
!59 = !{i64 2151309929}
!60 = !{i64 2151321322}
!61 = !{i64 2151353639, i64 2151353367, i64 2151354001, i64 2151354047, i64 2151354053, i64 2151355441, i64 2151354090, i64 2151354108, i64 2151355515, i64 2151355563, i64 2151355611, i64 2151355674, i64 2151355723, i64 2151354186, i64 2151354211, i64 2151354237, i64 2151354243, i64 2151355462, i64 2151354280, i64 2151354286, i64 2151354336, i64 2151354382, i64 2151354415}
!62 = !{i64 2151387405, i64 2151387133, i64 2151387767, i64 2151387813, i64 2151387819, i64 2151389207, i64 2151387856, i64 2151387874, i64 2151389281, i64 2151389329, i64 2151389377, i64 2151389440, i64 2151389489, i64 2151387952, i64 2151387977, i64 2151388003, i64 2151388009, i64 2151389228, i64 2151388046, i64 2151388052, i64 2151388102, i64 2151388148, i64 2151388181}
!63 = !{i64 2151424970, i64 2151424700, i64 2151425330, i64 2151425376, i64 2151425382, i64 2151426770, i64 2151425419, i64 2151425437, i64 2151426843, i64 2151426891, i64 2151426939, i64 2151427002, i64 2151427051, i64 2151425515, i64 2151425540, i64 2151425566, i64 2151425572, i64 2151426791, i64 2151425609, i64 2151425615, i64 2151425665, i64 2151425711, i64 2151425744}
!64 = !{i64 2151458727, i64 2151458457, i64 2151459087, i64 2151459133, i64 2151459139, i64 2151460527, i64 2151459176, i64 2151459194, i64 2151460600, i64 2151460648, i64 2151460696, i64 2151460759, i64 2151460808, i64 2151459272, i64 2151459297, i64 2151459323, i64 2151459329, i64 2151460548, i64 2151459366, i64 2151459372, i64 2151459422, i64 2151459468, i64 2151459501}
!65 = !{i64 2151473672}
!66 = !{i64 0, i64 4503599627370496}
!67 = !{i64 2155934058}
!68 = !{i64 2155952066}
!69 = !{!"branch_weights", i32 4001, i32 1}
!70 = !{i64 2155954178}
!71 = !{i64 2155947999}
!72 = !{i64 2155949943}
!73 = !{i64 2149007052, i64 2149007093, i64 2149007149, i64 2149007201}
!74 = !{i64 2148981106, i64 2148981153, i64 2148981159, i64 2148981196, i64 2148981214, i64 2148982141, i64 2148982189, i64 2148982237, i64 2148982300, i64 2148982349, i64 2148981292, i64 2148981317, i64 2148981343, i64 2148981349, i64 2148981386, i64 2148981392, i64 2148981442, i64 2148981488, i64 2148981521}
!75 = !{i64 2147934735, i64 2147935383, i64 2147935413, i64 2147935445, i64 2147935479, i64 2147935515, i64 2147935540}
!76 = !{i64 2155970306}
!77 = !{i64 2154546557}
!78 = !{i64 2154548815}
!79 = !{i64 2152666337}
!80 = !{i64 5150366, i64 5150390}
!81 = !{i64 2152661144}
!82 = !{i64 2152666544}
!83 = !{!"branch_weights", i32 2000, i32 4002001}
!84 = !{i64 2156038113}
!85 = !{i64 2156032266}
!86 = !{i64 2156008211}
